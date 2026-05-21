#!/usr/bin/env python3
"""Parse power-consumption logs and report summary statistics.

Expected usage:
    python3 power_stats.py hls-dynamic.log
"""

from __future__ import annotations

import argparse
import csv
import math
import re
import statistics
import sys
from pathlib import Path


POWER_VALUE_RE = re.compile(
    r"(?<![A-Za-z0-9_.-])([+-]?\d+(?:\.\d+)?)\s*(uW|mW|W|kW|Watts?)\b",
    re.IGNORECASE,
)


def _to_watts(value: float, unit: str) -> float:
    unit_norm = unit.lower()
    if unit_norm == "uw":
        return value / 1_000_000.0
    if unit_norm == "mw":
        return value / 1_000.0
    if unit_norm in {"w", "watt", "watts"}:
        return value
    if unit_norm == "kw":
        return value * 1_000.0
    raise ValueError(f"Unsupported unit: {unit}")


def parse_power_values(file_path: Path) -> tuple[list[float], int]:
    values_watts: list[float] = []
    ignored_lines = 0

    with file_path.open("r", encoding="utf-8", errors="replace") as handle:
        for line in handle:
            match = POWER_VALUE_RE.search(line)
            if not match:
                ignored_lines += 1
                continue

            numeric_value = float(match.group(1))
            unit = match.group(2)
            values_watts.append(_to_watts(numeric_value, unit))

    return values_watts, ignored_lines


def parse_vccint_power_values_csv(file_path: Path) -> tuple[list[float], bool]:
    """Parse vccint_power column (if present) from CSV logs."""
    values_watts: list[float] = []

    with file_path.open("r", encoding="utf-8", errors="replace", newline="") as handle:
        reader = csv.DictReader(handle)
        fieldnames = reader.fieldnames or []
        if "vccint_power" not in fieldnames:
            return values_watts, False

        for row in reader:
            raw = (row.get("vccint_power") or "").strip()
            if not raw or raw.upper() == "PARSE_ERROR":
                continue

            # Preferred path: logger writes numeric watts already.
            try:
                values_watts.append(float(raw))
                continue
            except ValueError:
                pass

            # Fallback: accept values with units (e.g., "8.2 W").
            match = POWER_VALUE_RE.search(raw)
            if not match:
                continue

            numeric_value = float(match.group(1))
            unit = match.group(2)
            values_watts.append(_to_watts(numeric_value, unit))

    return values_watts, True


def confidence_error_bound_95(samples: list[float]) -> float:
    """Return 95% confidence interval half-width (normal approximation)."""
    n = len(samples)
    if n < 2:
        return 0.0

    std_dev = statistics.stdev(samples)
    stderr = std_dev / math.sqrt(n)
    return 1.96 * stderr


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(
        description="Parse a power log and print average power with a 95% error bound."
    )
    parser.add_argument(
        "filename",
        type=Path,
        help="Path to input power log file (for example: hls-dynamic.log)",
    )
    return parser


def main() -> int:
    parser = build_parser()
    args = parser.parse_args()

    if not args.filename.is_file():
        print(f"Error: file not found: {args.filename}", file=sys.stderr)
        return 1

    values, ignored = parse_power_values(args.filename)
    if not values:
        print("No power samples found in the file.", file=sys.stderr)
        return 2

    avg = statistics.mean(values)
    err = confidence_error_bound_95(values)
    vccint_values, has_vccint_column = parse_vccint_power_values_csv(args.filename)

    print(f"File: {args.filename}")
    print(f"Samples parsed: {len(values)}")
    print(f"Ignored lines: {ignored}")
    print(f"Average power: {avg:.3f} W")
    print(f"Error bound (95% CI): +/- {err:.3f} W")

    if has_vccint_column:
        print(f"vccint_power samples parsed: {len(vccint_values)}")
        if vccint_values:
            vccint_avg = statistics.mean(vccint_values)
            vccint_err = confidence_error_bound_95(vccint_values)
            print(f"Average vccint_power: {vccint_avg:.3f} W")
            print(f"vccint_power error bound (95% CI): +/- {vccint_err:.3f} W")
        else:
            print("Average vccint_power: n/a (no valid samples)")
            print("vccint_power error bound (95% CI): n/a")

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
