# ESPHome Boiler Monitor

[![ESPHome](https://img.shields.io/badge/ESPHome-compatible-000000?logo=esphome)](https://esphome.io/)
[![Home Assistant](https://img.shields.io/badge/Home%20Assistant-integrated-41BDF5?logo=homeassistant&logoColor=white)](https://www.home-assistant.io/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

An open-source optical alarm monitor for boilers and other appliances with a visible warning LED.

![Final solution concept](images/concept/final-solution-concept.png)

## What it does

A phototransistor is mounted in front of the boiler's red warning LED. The ESP32 reads the light level, mirrors it on a local red LED, latches an alarm, sounds an active buzzer, and reports the state to Home Assistant. An optional DS18B20 adds temperature monitoring.

## Main features

- Optical warning-LED detection
- Adjustable analog threshold
- 300 ms false-trigger filtering
- Red LED mirrors the boiler LED
- Audible alarm with physical and Home Assistant mute controls
- Green run/status LED
- Last-alarm timestamp
- DS18B20 temperature monitoring
- Built-in web server and diagnostics
- Wi-Fi RSSI, signal percentage, IP, SSID, MAC, uptime, and firmware version
- Hardware self-test
- Home Assistant dashboards and notifications
- Single-file release firmware
- Modular source firmware
- 3D-printable enclosure and sensor holder

## Hardware overview

| Function | GPIO |
|---|---:|
| Phototransistor ADC | GPIO34 |
| Buzzer MOSFET gate | GPIO18 |
| Red alarm LED | GPIO19 |
| Green status LED | GPIO21 |
| Mute button | GPIO22 |
| DS18B20 DATA | GPIO23 |

## Quick start

1. Copy `firmware/release/secrets.yaml.example` to your ESPHome secrets file.
2. Flash `firmware/release/hardware-test.yaml`.
3. Verify the LEDs, buzzer, and button.
4. Build the sensor circuit using [the connection table](hardware/wiring/CONNECTION_TABLE.md).
5. Flash `firmware/release/boiler-monitor.yaml`.
6. Add the device to Home Assistant.
7. Import the [overview dashboard](homeassistant/dashboard/overview.yaml) and [diagnostics dashboard](homeassistant/dashboard/diagnostics.yaml).
8. Calibrate the threshold using the [calibration guide](docs/manual/CALIBRATION.md).

## Wiring diagrams

- [Power](images/functions/01_power.png)
- [Phototransistor sensor](images/functions/02_phototransistor_sensor.png)
- [Red alarm LED](images/functions/03_red_alarm_led.png)
- [Green status LED](images/functions/04_green_status_led.png)
- [MOSFET and buzzer](images/functions/05_mosfet_buzzer.png)
- [Mute button](images/functions/06_mute_button.png)
- [DS18B20](images/functions/07_ds18b20.png)
- [Combined printable PDF](docs/manual/FUNCTION_DIAGRAMS.pdf)

## Firmware

### Recommended

Use the single-file release:

- [`firmware/release/boiler-monitor.yaml`](firmware/release/boiler-monitor.yaml)
- [`firmware/release/hardware-test.yaml`](firmware/release/hardware-test.yaml)

### Development source

The modular source is under [`firmware/source/`](firmware/source/).

## Home Assistant

- [Overview dashboard](homeassistant/dashboard/overview.yaml)
- [Diagnostics dashboard](homeassistant/dashboard/diagnostics.yaml)
- [Alarm notification automation](homeassistant/automation/notifications.yaml)

If Home Assistant and the ESP32 are on different VLANs, automatic discovery may not work. Add the ESPHome integration manually by IP address and allow TCP port 6053 between VLANs.

## 3D-printable files

- [Boiler Alert case - STL](hardware/enclosure/stl/boiler_alert_case.stl)
- [Boiler Monitor case - STL](hardware/enclosure/stl/boiler_monitor_case.stl)
- [Sensor holder - STL](hardware/enclosure/stl/sensor_holder.stl)
- [OpenSCAD source files](hardware/enclosure/openscad/)

## Documentation

- [Build guide](docs/manual/BUILD_GUIDE.md)
- [Calibration](docs/manual/CALIBRATION.md)
- [Diagnostics](docs/manual/DIAGNOSTICS.md)
- [Enclosure and sensor holder](docs/manual/ENCLOSURE.md)
- [Bill of materials](hardware/bom/BOM.md)
- [Connection table](hardware/wiring/CONNECTION_TABLE.md)
- [Pre-power checklist](docs/checklists/PRE_POWER_CHECKLIST.md)
- [Pre-installation checklist](docs/checklists/PRE_INSTALL_CHECKLIST.md)

## Repository

- GitHub: https://github.com/Username8733/ESPHome-Boiler-Monitor
- ESPHome documentation: https://esphome.io/
- Home Assistant ESPHome integration: https://www.home-assistant.io/integrations/esphome/

## Version history

### v1.0.0 - English release

- Complete English translation
- Comprehensive README with images, links, installation steps, and full history
- Single-file production firmware
- Single-file hardware-test firmware
- Modular source firmware retained
- Home Assistant overview and diagnostics dashboards
- Last-alarm timestamp
- DS18B20 support
- Built-in diagnostics and hardware self-test
- English per-function PNG/PDF wiring diagrams
- Combined printable wiring manual
- All enclosure and sensor-holder STL/SCAD files included
- Final-solution concept image included

### v0.8.1

- Added single-file firmware release

### v0.8.0

- Added diagnostics dashboard
- Added DS18B20 support
- Added Wi-Fi quality percentage
- Added last-alarm timestamp
- Added expanded diagnostic entities

### v0.7.0

- Added one function diagram per component
- Added printable function-diagram PDF
- Added component-specific documentation

### v0.6.0

- Added build manual
- Added cable-by-cable connection table
- Added pre-power and pre-solder checklists

### v0.5.0

- Added breadboard-focused documentation
- Added detailed pin mapping and build sequence

### v0.4.0

- Added perfboard and breadboard prototype guides
- Added test sequence before soldering

### v0.3.0

- Added firmware metadata
- Added buzzer enable control
- Added hardware test controls
- Added alarm clear delay
- Added improved Home Assistant dashboard

### v0.2.0

- Renamed project to ESPHome Boiler Monitor
- Added GitHub Actions and issue templates
- Improved project structure and documentation

### v0.1.0

- Initial project structure
- ESPHome firmware
- Home Assistant automation
- Basic BOM, wiring documentation, and OpenSCAD models

## Safety and limitations

This is a hobby project and is not a certified safety device. It only observes an existing indicator LED and must not replace the boiler manufacturer's safety systems, alarms, inspections, or maintenance procedures.

## License

MIT License. See [LICENSE](LICENSE).
