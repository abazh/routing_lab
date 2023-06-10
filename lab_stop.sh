#!/bin/bash

echo "Delete Lab ..."
docker compose down
echo "Reset the directory ownership ..."
sudo chown -R $USER:$USER .
