#!/bin/bash

echo "Starting Lab ..."
docker compose up -d
echo "Setting Up routes ..."
sh ./route_clean.sh
