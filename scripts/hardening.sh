#!/bin/bash

# Cyber Sentry Defense - System Hardening Script

# Disable password SSH login
sudo sed -i 's/#PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config

# Enable automatic updates
sudo apt install -y unattended-upgrades
sudo dpkg-reconfigure -plow unattended-upgrades

# Disable unused services
sudo systemctl disable avahi-daemon
sudo systemctl disable triggerhappy

# Enable firewall
sudo ufw enable

# Fail2ban installation
sudo apt install -y fail2ban
sudo systemctl enable fail2ban

echo "System hardening complete."
