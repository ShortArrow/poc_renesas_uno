#!/bin/bash
arduino-cli compile \
  --build-path build \
  --log \
  --config-file arduino-cli.yaml \
  --fqbn arduino:renesas_uno:minima

