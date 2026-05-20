#!/usr/bin/env python3

import csv
from collections import defaultdict
from pathlib import Path

import matplotlib.pyplot as plt


def load_scalability_data(csv_path: Path):
	benchmarks = defaultdict(list)

	with csv_path.open(newline="", encoding="utf-8") as f:
		reader = csv.DictReader(f)
		for row in reader:
			bench = row["Benchmark"].strip()
			pe_count = float(row["PE Count"])
			speedup = float(row["Speedup"])
			benchmarks[bench].append((pe_count, speedup))

	for bench in benchmarks:
		benchmarks[bench].sort(key=lambda x: x[0])

	return benchmarks


def draw_scalability(ax, data, title):
	# Color-blind-safe benchmark palette + marker shapes.
	styles = [
		{"color": "#0072B2", "marker": "o", "linestyle": "-"},
		{"color": "#009E73", "marker": "s", "linestyle": "-"},
		{"color": "#E69F00", "marker": "^", "linestyle": "-"},
	]

	for i, benchmark in enumerate(sorted(data.keys())):
		points = data[benchmark]
		x = [p[0] for p in points]
		y = [p[1] for p in points]
		style = styles[i % len(styles)]
		ax.plot(
			x,
			y,
			label=benchmark,
			color=style["color"],
			marker=style["marker"],
			linestyle=style["linestyle"],
			linewidth=2.0,
			markersize=7,
			zorder=2,
		)

	# Ideal linear scalability: speedup equals PE count. Keep it visually on top.
	ax.plot([1, 100], [1, 100], "--", color="red", linewidth=2.0, label="Ideal linear scalability", zorder=5)

	ax.set_xlim(0, 80)
	ax.set_ylim(0, 80)
	ax.set_aspect("equal", adjustable="box")

	ax.set_xlabel("PE Count")
	ax.set_ylabel("Speedup (T1 / Tn)")
	ax.set_title(title)
	ax.set_xticks([0, 1, 4, 16, 32, 64])
	ax.set_yticks([0, 1, 4, 16, 32, 64])
	ax.set_xticklabels(["", "1", "4", "16", "32", "64"])
	ax.set_yticklabels(["", "1", "4", "16", "32", "64"])
	ax.grid(True, linestyle=":", linewidth=0.8, alpha=0.7)
	ax.legend(frameon=False)


def main():
	here = Path(__file__).resolve().parent
	hs_data = load_scalability_data(here / "HS-data.csv")
	data = load_scalability_data(here / "data.csv")

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

	fig, axes = plt.subplots(1, 2, figsize=(14, 7))

	draw_scalability(axes[0], hs_data, "(a) HardCilk")
	draw_scalability(axes[1], data, "(b) AIECilk")

	plt.tight_layout()
	plt.savefig(here / "scalability.pdf")


if __name__ == "__main__":
	main()
