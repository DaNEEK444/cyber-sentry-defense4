# Cyber Sentry Defense Suricata EVE JSON Schema

Suricata's eve.json log contains structured security events. CSD uses the following fields:

## Alert Events
- timestamp
- event_type: "alert"
- src_ip
- src_port
- dest_ip
- dest_port
- proto
- alert.signature
- alert.category
- alert.severity

## DNS Events
- event_type: "dns"
- dns.type
- dns.rrname
- dns.rcode
- dns.id

## HTTP Events
- event_type: "http"
- http.hostname
- http.url
- http.http_user_agent
- http.status

## TLS Events
- event_type: "tls"
- tls.sni
- tls.version
- tls.subject
- tls.issuerdn

## SSH Events
- event_type: "ssh"
- ssh.client.proto_version
- ssh.client.software_version

This schema helps CSD parse logs for dashboards, alerts, and client reporting.
