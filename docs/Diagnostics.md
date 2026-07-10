# Diagnostics

The built-in ESPHome web server and Home Assistant diagnostics page expose:

- Firmware version
- IP address, SSID, MAC address
- Wi-Fi RSSI and calculated percentage
- Uptime
- LED level and threshold
- Boiler LED detected
- Latched alarm
- Buzzer active, muted, and enabled
- DS18B20 temperature
- Last alarm timestamp
- Hardware test, buzzer test, and restart controls

When Home Assistant and the ESP32 are on different VLANs, add the ESPHome integration manually by IP address and allow TCP 6053.
