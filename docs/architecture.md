# Cyber Sentry Defense Architecture

Cyber Sentry Defense is a modular home and small-business cybersecurity stack built on open-source tools. The system combines DNS filtering, intrusion detection, firewall enforcement, and system hardening into a unified security appliance.

## System Components

### 1. Pi-hole (DNS Filtering)
- Blocks ads, trackers, malware domains
- Enforces allowlists and regex rules
- Integrates with Unbound for secure DNS resolution

### 2. Suricata IDS/IPS
- Deep packet inspection
- Custom rules for suspicious domains, TLS anomalies, and HTTP behavior
- EVE JSON logging for analytics and reporting

### 3. Firewall Layer
- UFW for simple rule enforcement
- iptables for advanced packet filtering
- LAN segmentation and inbound traffic control

### 4. Hardening Layer
- SSH lockdown
- Automatic updates
- Fail2ban protection
- Disabled unnecessary services

## Network Flow

Client Device → Pi-hole DNS → Suricata Packet Inspection → Firewall Enforcement → Internet

## Deployment Model

- Raspberry Pi 4 Model B
- Ethernet connection recommended
- Runs headless with remote management

This architecture provides layered security suitable for home users, small businesses, and entry-level MSP deployments.
