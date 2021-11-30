#!/bin/bash

echo "Starting Lab ..."
docker-compose up -d
echo "Setting Up routes ..."
./route_clean.sh
