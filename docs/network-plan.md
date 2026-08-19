# Cyber Sentry Defense Network Plan

This document outlines the recommended network layout for deploying the CSD security appliance.

## Recommended Layout

### Option A — Inline Security Appliance (Best Protection)
Router → CSD Device → Switch → Client Devices

Pros:
- Full packet visibility
- Suricata sees all traffic
- Strongest protection

Cons:
- Requires two Ethernet ports

### Option B — DNS Security Only (Simplest)
Router → Switch → Client Devices  
CSD Device (DNS only)

Pros:
- Easiest setup
- Pi-hole protects all DNS traffic

Cons:
- Suricata only monitors device-level traffic

## IP Addressing

- CSD Device: 192.168.1.10 (static)
- Router: 192.168.1.1
- DHCP Range: 192.168.1.100–192.168.1.200

## DNS Configuration

Router DNS:
- Primary: 192.168.1.10 (CSD)
- Secondary: 1.1.1.1 (Cloudflare)

## Firewall Zones

- LAN Zone: Trusted
- WAN Zone: Untrusted
- CSD Device: Protected Zone

This plan ensures consistent protection and easy troubleshooting.
