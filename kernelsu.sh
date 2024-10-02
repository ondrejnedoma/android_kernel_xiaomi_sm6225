#!/bin/bash

# Download and run the KernelSU add script (latest non-GKI version)
curl -LSs "https://raw.githubusercontent.com/tiann/KernelSU/main/kernel/setup.sh" | bash -s v0.9.5

# Define defconfig path
DEFCONFIG="arch/arm64/configs/vendor/spes-perf_defconfig"

# Add kprobes to the defconfig
echo "CONFIG_KPROBES=y" >> "$DEFCONFIG"
echo "CONFIG_HAVE_KPROBES=y" >> "$DEFCONFIG"
echo "CONFIG_KPROBE_EVENTS=y" >> "$DEFCONFIG"