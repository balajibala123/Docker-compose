#!/bin/bash

echo "Updating packages..."
sudo yum update -y

echo "Installing Git..."
sudo yum install git -y

echo "Git version:"
git --version

echo "Git installation completed successfully."