#!/bin/bash
while true; do
  hp-scan --adf -o /var/scan/$(date +"%Y-%m-%d_%H-%M").pdf -d $DEVICE_URI
  sleep 3
done
