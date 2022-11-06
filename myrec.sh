#!/bin/bash

echo $$
arecord -q -fdat stackoverflow.wav&
sid=($!)                   # Capture the PID of sleep
trap "kill ${sid[@]}" INT   # Define handler for SIGINT

asciinema rec -t "Demo test2"
echo "ascii"

