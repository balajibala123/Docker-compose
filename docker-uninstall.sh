#!/bin/bash

echo "Stopping Docker service..."
sudo systemctl stop docker

echo "Disabling Docker service..."
sudo systemctl disable docker

echo "Removing Docker packages..."
sudo dnf remove -y docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-engine

echo "Removing Docker data..."
sudo rm -rf /var/lib/docker
sudo rm -rf /var/lib/containerd

echo ""
echo "=================================="
echo "Docker Uninstalled Successfully!"
echo "Checking Docker version..."
docker --version 2>/dev/null || echo "Docker is no longer installed."
echo "=================================="
