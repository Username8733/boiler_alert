# Security Policy

This project is intended for local ESPHome and Home Assistant installations.

## Reporting

Open a private security advisory on GitHub when possible. Do not publish:

- Wi-Fi credentials
- Home Assistant tokens
- Public IP addresses
- API encryption keys
- Complete logs containing private network details

## Network guidance

When the ESP32 and Home Assistant are on different VLANs, allow only the required traffic. The native ESPHome API normally uses TCP port 6053.
