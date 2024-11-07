#!/bin/bash
# Check if Apache is installed
if command -v apache2 &>/dev/null; then
	echo "Apache is already installed."
else
	echo "Installing Apache..."
	sudo apt update && sudo apt install -y apache2
fi

# Check if Apache service is running
if sudo systemctl is-active --quiet apache2; then
	echo "Apache is already running."
else
	echo "Starting Apache..."
	sudo systemctl start apache2
fi

# Ensure Apache starts on boot
sudo systemctl enable apache2

