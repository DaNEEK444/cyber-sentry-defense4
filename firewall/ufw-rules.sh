#!/bin/bash

# Cyber Sentry Defense UFW Firewall Rules
# Lightweight firewall optimized for Raspberry Pi security appliance

sudo ufw --force reset

# Default policies
sudo ufw default deny incoming
sudo ufw default allow outgoing

# Allow SSH
sudo ufw allow 22/tcp

# Allow Pi-hole DNS
sudo ufw allow 53/tcp
sudo ufw allow 53/udp

# Allow Pi-hole Web Admin
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp

# Allow Suricata AF-Packet interface (if needed)
# sudo ufw allow in on eth1

# Allow local network access
sudo ufw allow from 192.168.0.0/16

# Enable firewall
sudo ufw enable
