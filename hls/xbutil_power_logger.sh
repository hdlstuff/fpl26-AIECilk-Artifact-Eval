#!/usr/bin/env bash

# Periodically sample xbutil electrical data and append the Power row to a file.

set -u

DEVICE="01:00.1"
INTERVAL_SECONDS=5
OUTPUT_FILE="xbutil_power.log"
MONITOR_PID=""
CMD_STDOUT_FILE=""
CMD_STDERR_FILE=""
CONTINUOUS_MODE=0

usage() {
  cat <<'EOF'
Usage: xbutil_power_logger.sh [-d DEVICE] [-i INTERVAL_SECONDS] [-o OUTPUT_FILE] [-O CMD_STDOUT] [-E CMD_STDERR] [-- command [args...]]

Options:
  -d DEVICE             PCIe device ID (default: 01:00.1)
  -i INTERVAL_SECONDS   Polling interval in seconds; non-negative number
                        (default: 5, use 0 for continuous logging)
  -o OUTPUT_FILE        File to append results to (default: xbutil_power.log)
  -O CMD_STDOUT         Redirect monitored command stdout to this file
  -E CMD_STDERR         Redirect monitored command stderr to this file
  -- command [args...]  Run command and stop logging when it finishes
  -h                    Show this help
EOF
}

while getopts ":d:i:o:O:E:h" opt; do
  case "$opt" in
    d)
      DEVICE="$OPTARG"
      ;;
    i)
      INTERVAL_SECONDS="$OPTARG"
      ;;
    o)
      OUTPUT_FILE="$OPTARG"
      ;;
    O)
      CMD_STDOUT_FILE="$OPTARG"
      ;;
    E)
      CMD_STDERR_FILE="$OPTARG"
      ;;
    h)
      usage
      exit 0
      ;;
    :)
      echo "Error: Option -$OPTARG requires an argument." >&2
      usage
      exit 1
      ;;
    \?)
      echo "Error: Invalid option -$OPTARG" >&2
      usage
      exit 1
      ;;
  esac
done

shift $((OPTIND - 1))

if ! awk -v v="$INTERVAL_SECONDS" 'BEGIN {
  if (v ~ /^([0-9]+([.][0-9]+)?|[.][0-9]+)$/ && v + 0 >= 0) {
    exit 0
  }
  exit 1
}'; then
  echo "Error: interval must be a non-negative number (e.g. 0, 0.5, 1, 2.25)." >&2
  exit 1
fi

if awk -v v="$INTERVAL_SECONDS" 'BEGIN { exit !((v + 0) == 0) }'; then
  CONTINUOUS_MODE=1
fi

if [ ! -f "$OUTPUT_FILE" ]; then
  printf "timestamp,power,vccint_voltage,vccint_current,vccint_power\n" > "$OUTPUT_FILE"
fi

log_power_sample() {
  local ts
  local parsed_values
  local power_value
  local vccint_voltage
  local vccint_current
  local vccint_power

  ts="$(date +"%Y-%m-%d %H:%M:%S")"

  parsed_values="$(xbutil examine -r electrical -d "$DEVICE" 2>/dev/null | awk '
    BEGIN {
      power = ""
      v = ""
      c = ""
    }

    /^[[:space:]]*Power[[:space:]]*:/ {
      if ($0 ~ /Max Power/ || $0 ~ /Power Warning/) {
        next
      }
      line = $0
      sub(/^[^:]*:[[:space:]]*/, "", line)
      gsub(/^[[:space:]]+|[[:space:]]+$/, "", line)
      power = line
    }

    /^[[:space:]]*vccint[[:space:]]*:/ {
      line = $0
      sub(/^[^:]*:[[:space:]]*/, "", line)
      gsub(/[[:space:]]+/, " ", line)
      n = split(line, parts, " ")

      if (n >= 3 && parts[1] != "N/A" && parts[3] != "N/A") {
        v = parts[1]
        c = parts[3]
      }
    }

    END {
      if (power == "") {
        power = "PARSE_ERROR"
      }

      if (v != "" && c != "") {
        vp = sprintf("%.3f", v * c)
      } else {
        v = "PARSE_ERROR"
        c = "PARSE_ERROR"
        vp = "PARSE_ERROR"
      }

      printf "%s,%s,%s,%s", power, v, c, vp
    }
  ')"

  IFS=',' read -r power_value vccint_voltage vccint_current vccint_power <<EOF
$parsed_values
EOF

  printf "%s,%s,%s,%s,%s\n" "$ts" "$power_value" "$vccint_voltage" "$vccint_current" "$vccint_power" >> "$OUTPUT_FILE"
  echo "$ts Power: $power_value | vccint: ${vccint_voltage}V ${vccint_current}A -> ${vccint_power}W" >&2
}

cleanup() {
  if [ -n "$MONITOR_PID" ] && kill -0 "$MONITOR_PID" 2>/dev/null; then
    kill "$MONITOR_PID" 2>/dev/null || true
  fi
}

handle_interrupt() {
  cleanup
  exit 130
}

handle_terminate() {
  cleanup
  exit 143
}

trap cleanup EXIT
trap handle_interrupt INT
trap handle_terminate TERM

if [ "$#" -gt 0 ]; then
  if [ "$CONTINUOUS_MODE" -eq 1 ]; then
    echo "Logging xbutil Power for device $DEVICE continuously -> $OUTPUT_FILE" >&2
  else
    echo "Logging xbutil Power for device $DEVICE every ${INTERVAL_SECONDS}s -> $OUTPUT_FILE" >&2
  fi
  echo "Stopping automatically when command exits: $*" >&2

  if [ -n "$CMD_STDOUT_FILE" ] && [ -n "$CMD_STDERR_FILE" ]; then
    "$@" >"$CMD_STDOUT_FILE" 2>"$CMD_STDERR_FILE" &
  elif [ -n "$CMD_STDOUT_FILE" ]; then
    "$@" >"$CMD_STDOUT_FILE" &
  elif [ -n "$CMD_STDERR_FILE" ]; then
    "$@" 2>"$CMD_STDERR_FILE" &
  else
    "$@" &
  fi

  MONITOR_PID="$!"

  while kill -0 "$MONITOR_PID" 2>/dev/null; do
    log_power_sample
    if [ "$CONTINUOUS_MODE" -eq 0 ]; then
      sleep "$INTERVAL_SECONDS"
    fi
  done

  wait "$MONITOR_PID"
  exit "$?"
fi

if [ "$CONTINUOUS_MODE" -eq 1 ]; then
  echo "Logging xbutil Power for device $DEVICE continuously -> $OUTPUT_FILE" >&2
else
  echo "Logging xbutil Power for device $DEVICE every ${INTERVAL_SECONDS}s -> $OUTPUT_FILE" >&2
fi
echo "Press Ctrl+C to stop." >&2

while true; do
  log_power_sample

  if [ "$CONTINUOUS_MODE" -eq 0 ]; then
    sleep "$INTERVAL_SECONDS"
  fi
done
