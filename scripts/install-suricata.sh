#!/bin/bash

# Cyber Sentry Defense - Suricata Installation Script

sudo apt update && sudo apt install -y suricata

# Copy custom Suricata config
if [ -f "/home/pi/cyber-sentry-defense4/suricata/suricata.yaml" ]; then
    sudo cp /home/pi/cyber-sentry-defense4/suricata/suricata.yaml /etc/suricata/suricata.yaml
fi

# Copy custom rules
if [ -f "/home/pi/cyber-sentry-defense4/suricata/custom-rules.rules" ]; then
    sudo cp /home/pi/cyber-sentry-defense4/suricata/custom-rules.rules /etc/suricata/rules/custom.rules
fi

# Update Suricata rule index
sudo suricata-update

# Restart Suricata
sudo systemctl restart suricata

echo "Suricata installation complete."
