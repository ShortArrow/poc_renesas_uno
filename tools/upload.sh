#!/bin/bash
sudo arduino-cli upload \
  -p /dev/ttyACM0 \
  --fqbn arduino:renesas_uno:minima \
  --input-dir build \
  --log \
  --config-file arduino-cli.yaml
