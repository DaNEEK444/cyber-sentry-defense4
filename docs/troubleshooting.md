# Cyber Sentry Defense Troubleshooting Guide

Common issues and solutions for the CSD security appliance.

## Pi-hole Issues

### Pi-hole not blocking ads
- Check DNS settings on router
- Ensure clients use CSD device as DNS
- Restart Pi-hole:
pihole restartdns

### Web dashboard not loading
- Ensure port 80 is allowed in firewall
- Check service:
sudo systemctl status lighttpd

## Suricata Issues

### No alerts in eve.json
- Ensure Suricata is running:
sudo systemctl status suricata
- Verify interface in `suricata.yaml`
- Check permissions on log directory

### High CPU usage
- Change detect profile to `low`
- Reduce rule count

## Firewall Issues

### Device cannot access internet
- Ensure LAN subnet is allowed
- Check default policies:
sudo ufw status

## General Issues

### SSH connection refused
- Hardening script may have disabled password login
- Use SSH key authentication

### Slow network speeds
- Inline mode may require better cabling
- Switch to DNS-only mode

This guide covers the most common issues encountered during deployment.

