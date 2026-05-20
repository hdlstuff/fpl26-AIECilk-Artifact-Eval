#!/usr/bin/env python3

from __future__ import annotations

import csv
from dataclasses import dataclass
from pathlib import Path

import matplotlib.pyplot as plt


@dataclass(frozen=True)
class DataPoint:
    source: str
    experiment: str
    config: float
    efficiency: float
    frequency_hz: float

    @property
    def task_delay_ns(self) -> float:
        return (self.config / self.frequency_hz) * 1e9


def parse_log_file(
    csv_path: Path,
    *,
    source: str,
    frequency_hz: float,
) -> list[DataPoint]:
    data_points: list[DataPoint] = []

    with csv_path.open(newline="", encoding="utf-8") as file:
        reader = csv.DictReader(file)
        for row in reader:
            data_points.append(
                DataPoint(
                    source=source,
                    experiment=row["experiment"].strip(),
                    config=float(row["config"]),
                    efficiency=float(row["Efficiency"]),
                    frequency_hz=frequency_hz,
                )
            )

    data_points.sort(key=lambda point: (point.experiment, point.config))
    return data_points


def group_by_experiment(
    data_points: list[DataPoint],
) -> dict[str, list[DataPoint]]:
    grouped: dict[str, list[DataPoint]] = {}

    for point in data_points:
        grouped.setdefault(point.experiment, []).append(point)

    for points in grouped.values():
        points.sort(key=lambda point: point.config)

    return grouped


def compute_shared_xlim(
    left_data_points: list[DataPoint],
    right_data_points: list[DataPoint],
) -> tuple[float, float]:
    all_x = [
        point.task_delay_ns for point in left_data_points + right_data_points
    ]

    x_min = min(all_x)
    x_max = max(all_x)
    pad = 0.03 * (x_max - x_min) if x_max > x_min else 1.0
    return (x_min - pad, x_max + pad)


def plot_efficiency_panel(
    ax: plt.Axes,
    data_points: list[DataPoint],
    *,
    title: str,
    xlim: tuple[float, float] | None = None,
    show_ylabel: bool = True,
) -> None:
    grouped = group_by_experiment(data_points)

    styles = [
        {"color": "#0072B2", "marker": "o", "linestyle": "-"},
        {"color": "#009E73", "marker": "s", "linestyle": "-"},
        {"color": "#E69F00", "marker": "^", "linestyle": "-"},
    ]

    for index, experiment in enumerate(sorted(grouped)):
        points = grouped[experiment]
        style = styles[index % len(styles)]

        x_values = [point.task_delay_ns for point in points]
        y_values = [point.efficiency for point in points]

        ax.plot(
            x_values,
            y_values,
            label=experiment,
            color=style["color"],
            marker=style["marker"],
            linestyle=style["linestyle"],
            linewidth=2.0,
            markersize=7,
        )

    ax.set_title(title, fontweight="bold", pad=0)
    if show_ylabel:
        ax.set_ylabel("Efficiency")
    ax.set_xscale("log")

    if xlim is not None:
        ax.set_xlim(*xlim)

    ax.set_ylim(0, 1.05)
    ax.grid(True, linestyle=":", linewidth=0.8, alpha=0.7)

    if not show_ylabel:
        ax.legend(frameon=False, loc="lower right")


def plot_efficiency_figure(
    hs_data_points: list[DataPoint],
    aie_data_points: list[DataPoint],
    output_path: Path,
) -> None:
    plt.rcParams.update(
        {
            "font.size": 16,
            "axes.labelsize": 18,
            "axes.titlesize": 20,
            "xtick.labelsize": 15,
            "ytick.labelsize": 15,
            "legend.fontsize": 15,
        }
    )

    figure, axes = plt.subplots(
        1,
        2,
        figsize=(10, 6),
        gridspec_kw={"wspace": 0.05},
        sharey=True
    )

    shared_xlim = compute_shared_xlim(hs_data_points, aie_data_points)

    plot_efficiency_panel(
        axes[0],
        hs_data_points,
        title="(a) HardCilk",
        xlim=shared_xlim,
        show_ylabel=True,
    )
    plot_efficiency_panel(
        axes[1],
        aie_data_points,
        title="(b) AIECilk",
        xlim=shared_xlim,
        show_ylabel=False,
    )

    figure.supxlabel("Task Delay (ns)")
    figure.savefig(output_path, format="pdf", bbox_inches="tight")
    plt.close(figure)


def main() -> None:
    here = Path(__file__).resolve().parent

    hs_data_points = parse_log_file(
        here / "HS-data.csv",
        source="HardCilk",
        frequency_hz=250e6,
    )
    aie_data_points = parse_log_file(
        here / "data.csv",
        source="AIECilk",
        frequency_hz=1.25e9,
    )

    plot_efficiency_figure(
        hs_data_points,
        aie_data_points,
        here / "efficiency.pdf",
    )


if __name__ == "__main__":
    main()
