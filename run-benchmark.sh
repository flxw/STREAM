#!/bin/sh

CONFIGURATIONS=(200 150 100 50)
EXECUTABLE="./stream_c.exe"

for config in "${CONFIGURATIONS[@]}"; do
  cgexec -g memory:limitedrss/limit$config "$EXECUTABLE" | grep --after-context=3 'Copy:' | sed -r s/^/"$config "/g | sed s/://g | sed -r s/\\s+/,/g
done
