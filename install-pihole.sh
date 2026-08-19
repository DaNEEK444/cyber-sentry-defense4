#!/bin/bash

# Cyber Sentry Defense - Pi-hole Installation Script

sudo apt update && sudo apt upgrade -y

# Install Pi-hole
curl -sSL https://install.pi-hole.net | bash

# Apply custom blocklists
if [ -f "/home/pi/cyber-sentry-defense4/pi-hole/blocklists.txt" ]; then
    sudo cp /home/pi/cyber-sentry-defense4/pi-hole/blocklists.txt /etc/pihole/adlists.list
fi

# Restart Pi-hole
pihole restartdns

echo "Pi-hole installation complete."
