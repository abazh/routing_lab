#!/bin/bash

echo "Set ownership of config/ directory for container to run ..."
sudo chown -R 100:101 config/
echo "Starting Lab ..."
docker compose up -d
echo "Setting Up routes ..."
sh ./route_clean.sh
