#!/bin/bash

# UFW Basic Firewall Configuration
# Task 2 - Oasis Infobyte Security Analyst Internship

echo "Starting UFW configuration..."

# Allow SSH traffic - TCP port 22
sudo ufw allow 22/tcp

# Deny HTTP traffic - TCP port 80
sudo ufw deny 80/tcp

# Allow HTTPS traffic - TCP port 443
sudo ufw allow 443/tcp

# Deny traffic from the specified IP range
sudo ufw deny from 10.10.10.0/24

# Enable UFW
sudo ufw --force enable

# Display active firewall rules
sudo ufw status verbose

echo "UFW configuration completed."
