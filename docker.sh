#!/bin/bash

echo "Updating packages..."
sudo dnf update -y

echo "Installing Docker..."
sudo dnf install docker -y

echo "Starting Docker service..."
sudo systemctl start docker

echo "Enabling Docker on boot..."
sudo systemctl enable docker

echo "Adding ec2-user to docker group..."
sudo usermod -aG docker ec2-user

echo ""
echo "=================================="
echo "Docker Installed Successfully!"
echo "Docker Version:"
docker --version
echo "=================================="