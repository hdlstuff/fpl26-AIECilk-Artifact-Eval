#!/usr/bin/env python3

import csv
from collections import defaultdict
from pathlib import Path

import matplotlib.pyplot as plt


def load_efficiency_data(csv_path: Path):
	data = defaultdict(list)
	with csv_path.open(newline="", encoding="utf-8") as f:
		reader = csv.DictReader(f)
		for row in reader:
			experiment = row["experiment"].strip()
			config = float(row["config"])
			efficiency = float(row["Efficiency"])
			data[experiment].append((config, efficiency))

	for experiment in data:
		data[experiment].sort(key=lambda p: p[0])

	return data


def config_to_delay_ns(config_value: float, frequency_hz: float):
	# Task delay (ns) = cycles / frequency (Hz) * 1e9
	return (config_value / frequency_hz) * 1e9


def draw_panel(ax, data, frequency_hz, title, xlim=None):
	styles = [
		{"color": "#0072B2", "marker": "o", "linestyle": "-"},
		{"color": "#009E73", "marker": "s", "linestyle": "-"},
		{"color": "#E69F00", "marker": "^", "linestyle": "-"},
	]

	for i, experiment in enumerate(sorted(data.keys())):
		points = data[experiment]
		x = [config_to_delay_ns(config, frequency_hz) for config, _ in points]
		y = [eff for _, eff in points]
		style = styles[i % len(styles)]
		ax.plot(
			x,
			y,
			label=experiment,
			color=style["color"],
			marker=style["marker"],
			linestyle=style["linestyle"],
			linewidth=2.0,
			markersize=7,
		)

	ax.set_title(title)
	ax.set_xlabel("Task Delay (ns)")
	ax.set_ylabel("Efficiency")
	ax.set_xscale("log")
	if xlim is not None:
		ax.set_xlim(*xlim)
	# height / width; < 1 makes the panel wider than tall.
	ax.set_box_aspect(0.5)
	ax.set_ylim(0, 1.05)
	ax.grid(True, linestyle=":", linewidth=0.8, alpha=0.7)
	ax.legend(frameon=False, loc="lower right")


def main():
	here = Path(__file__).resolve().parent
	hs_data = load_efficiency_data(here / "HS-data.csv")
	aie_data = load_efficiency_data(here / "data.csv")

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

	fig, axes = plt.subplots(1, 2, figsize=(16, 4), constrained_layout=True)

	# Use a shared x-range (task delay in ns) across both panels.
	hs_x = [
		config_to_delay_ns(config, 250e6)
		for points in hs_data.values()
		for config, _ in points
	]
	aie_x = [
		config_to_delay_ns(config, 1.25e9)
		for points in aie_data.values()
		for config, _ in points
	]
	all_x = hs_x + aie_x
	x_min = min(all_x)
	x_max = max(all_x)
	pad = 0.03 * (x_max - x_min) if x_max > x_min else 1.0
	shared_xlim = (x_min - pad, x_max + pad)

	# HardCilk at 250 MHz
	draw_panel(axes[0], hs_data, 250e6, "(a) HardCilk", xlim=shared_xlim)

	# AIECilk at 1.25 GHz
	draw_panel(axes[1], aie_data, 1.25e9, "(b) AIECilk", xlim=shared_xlim)

	plt.savefig(here / "efficiency.pdf")


if __name__ == "__main__":
	main()
