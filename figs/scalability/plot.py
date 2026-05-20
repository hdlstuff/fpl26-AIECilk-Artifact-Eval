#!/usr/bin/env python3

from __future__ import annotations

import csv
from dataclasses import dataclass
from pathlib import Path

import matplotlib.pyplot as plt


@dataclass(frozen=True)
class DataPoint:
    benchmark: str
    pe_count: float
    speedup: float
    dataset: str


def parse_log_file(path: Path, dataset: str) -> list[DataPoint]:
    data_points: list[DataPoint] = []

    with path.open(newline="", encoding="utf-8") as file:
        reader = csv.DictReader(file)
        for row in reader:
            data_points.append(
                DataPoint(
                    benchmark=row["Benchmark"].strip(),
                    pe_count=float(row["PE Count"]),
                    speedup=float(row["Speedup"]),
                    dataset=dataset,
                )
            )

    return data_points


def _group_and_sort_by_benchmark(
    data_points: list[DataPoint],
) -> dict[str, list[DataPoint]]:
    grouped: dict[str, list[DataPoint]] = {}

    for data_point in data_points:
        grouped.setdefault(data_point.benchmark, []).append(data_point)

    for benchmark_data_points in grouped.values():
        benchmark_data_points.sort(key=lambda item: item.pe_count)

    return grouped


def plot_combined_scalability(
    left_data_points: list[DataPoint],
    right_data_points: list[DataPoint],
    left_title: str,
    right_title: str,
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

    fig, axes = plt.subplots(
        1, 2,
        figsize=(10, 5), 
        gridspec_kw={"wspace": 0.05},
        sharey=True
    )

    _draw_scalability_on_axis(axes[0], left_data_points, left_title)
    _draw_scalability_on_axis(axes[1], right_data_points, right_title, True)
    fig.supxlabel("PE Count")

    fig.savefig(output_path, format="pdf", bbox_inches="tight")
    plt.close(fig)


def _draw_scalability_on_axis(
    ax: plt.Axes,
    data_points: list[DataPoint],
    title: str,
    skipYLabel: bool = False
) -> None:
    grouped_data = _group_and_sort_by_benchmark(data_points)

    styles = [
        {"color": "#0072B2", "marker": "o", "linestyle": "-"},
        {"color": "#009E73", "marker": "s", "linestyle": "-"},
        {"color": "#E69F00", "marker": "^", "linestyle": "-"},
    ]

    ax.plot(
        [1, 100],
        [1, 100],
        "--",
        color="red",
        linewidth=2.0,
        label="Ideal linear scalability",
        zorder=-3
    )

    for index, benchmark in enumerate(sorted(grouped_data)):
        benchmark_points = grouped_data[benchmark]
        x_values = [point.pe_count for point in benchmark_points]
        y_values = [point.speedup for point in benchmark_points]
        style = styles[index % len(styles)]

        ax.scatter(
            x_values,
            y_values,
            label=benchmark,
            color=style["color"],
            marker=style["marker"],
            s=80,
            # linestyle=style["linestyle"],
            linewidth=2.0,
            # markersize=7
        )
    
    ax.set_box_aspect(1)

    ax.set_xlim(1, 80)
    ax.set_ylim(1, 80)

    ax.set_xscale("log", base=2)
    ax.set_yscale("log", base=2)
    ax.set_xticks([1, 2, 4, 8, 16, 32, 64])
    ax.set_yticks([1, 2, 4, 8, 16, 32, 64])
    ax.set_xticklabels(["1", "2", "4", "8", "16", "32", "64"])
    ax.set_yticklabels(["1", "2", "4", "8", "16", "32", "64"])

    # ax.set_aspect("equal", adjustable="box")

    if not skipYLabel:
        ax.set_ylabel("Speedup (T1 / Tn)")
        ax.legend(frameon=False, loc="upper left")
    ax.set_title(title, fontweight="bold")
    ax.grid(True, linestyle=":", linewidth=0.8, alpha=0.7)


def main() -> None:
    here = Path(__file__).resolve().parent

    hardcilk_data = parse_log_file(here / "HS-data.csv", dataset="HardCilk")
    aiecilk_data = parse_log_file(here / "data.csv", dataset="AIECilk")

    plot_combined_scalability(
        hardcilk_data,
        aiecilk_data,
        left_title="(a) HardCilk",
        right_title="(b) AIECilk",
        output_path=here / "scalability.pdf",
    )


if __name__ == "__main__":
    main()
