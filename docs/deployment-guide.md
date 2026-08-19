# Cyber Sentry Defense Deployment Guide

This guide explains how to deploy the CSD security appliance from start to finish.

## 1. Flash Raspberry Pi OS
- Use Raspberry Pi Imager
- OS: Raspberry Pi OS Lite (64-bit)
- Enable SSH
- Set hostname: csd-device

## 2. Initial Setup
sudo apt update && sudo apt upgrade -y

## 3. Install Pi-hole
Run:
bash install-pihole.sh

## 4. Install Suricata
Run:
bash install-suricata.sh

## 5. Apply Firewall Rules
Choose one:
bash ufw-rules.sh
bash iptables-rules.sh

## 6. Apply Hardening
bash hardening.sh

## 7. Configure Router
- Set DNS to CSD device IP
- Reserve static IP
- Disable router DNS filtering

## 8. Verify Operation
- Pi-hole dashboard loads
- Suricata logs appear in `/var/log/suricata/eve.json`
- Firewall rules active

Your CSD device is now fully deployed.
