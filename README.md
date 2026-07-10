# ESPHome Boiler Monitor

[![ESPHome](https://img.shields.io/badge/ESPHome-compatible-000000?logo=esphome)](https://esphome.io/)
[![Home Assistant](https://img.shields.io/badge/Home%20Assistant-integrated-41BDF5?logo=homeassistant&logoColor=white)](https://www.home-assistant.io/)
[![Release](https://img.shields.io/badge/release-v2.0.0--rc1-orange)](release/RELEASE_NOTES_v2.0.0-rc1.md)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

An open-source ESPHome device that optically monitors the warning LED on a boiler, mirrors the indication locally, sounds an audible alarm, records the most recent alarm time, and reports diagnostics to Home Assistant.

![Final solution concept](images/concept/final-solution-concept.png)

> [!IMPORTANT]
> This is a hobby monitoring accessory. It does not replace the boiler manufacturer's safety systems, inspections, alarms, or maintenance requirements.

## Features

- Optical detection using a BPW40/BPW77-style phototransistor
- Adjustable analog threshold
- 300 ms false-trigger filtering
- Local red LED that mirrors the boiler LED
- Green run/status LED
- Active 5 V buzzer driven by a 2N7000
- Physical mute button
- Latched alarm with Home Assistant controls
- Last-alarm timestamp
- Optional DS18B20 temperature measurement
- Built-in ESPHome web server
- Wi-Fi RSSI, signal percentage, IP, SSID, MAC, uptime, and firmware version
- Dedicated hardware-test firmware
- Single-file production firmware
- Home Assistant overview and diagnostics dashboards
- 3D-printable enclosure and optical sensor holder

## Project structure

```text
firmware/
  release/       Ready-to-install single-file firmware
  source/        Development source area

hardware/
  bom/           Bill of materials
  wiring/        Connection table
  enclosure/     STL and OpenSCAD files

docs/
  manual/        Installation, testing, calibration, and diagnostics
  components/    One component/function per document
  checklists/    Pre-power and pre-install checks
  troubleshooting/

homeassistant/
  dashboard/     Overview and diagnostics cards
  automation/    Alarm notifications

images/
  concept/       Intended finished solution
  functions/     Printable function diagrams
```

## Hardware

| Function | ESP32 GPIO |
|---|---:|
| Phototransistor analog input | GPIO34 |
| Buzzer MOSFET gate | GPIO18 |
| Red alarm LED | GPIO19 |
| Green status LED | GPIO21 |
| Mute button | GPIO22 |
| DS18B20 data | GPIO23 |

See the complete [bill of materials](hardware/bom/BOM.md) and [connection table](hardware/wiring/CONNECTION_TABLE.md).

## Installation

### 1. Test the hardware first

Flash:

[`firmware/release/hardware-test.yaml`](firmware/release/hardware-test.yaml)

The startup and button sequences verify the green LED, red LED, buzzer, MOSFET driver, and physical button.

Read the [hardware-test guide](docs/manual/HARDWARE_TEST.md).

### 2. Install the production firmware

Use:

[`firmware/release/boiler-monitor.yaml`](firmware/release/boiler-monitor.yaml)

This is a single ESPHome YAML file and does not depend on package files.

Follow the [installation guide](docs/manual/INSTALLATION.md).

### 3. Add Home Assistant

- [Overview dashboard](homeassistant/dashboard/overview.yaml)
- [Diagnostics dashboard](homeassistant/dashboard/diagnostics.yaml)
- [Alarm notification automation](homeassistant/automation/notifications.yaml)

If the device is on another VLAN, add the ESPHome integration manually using its IP address.

### 4. Calibrate the optical sensor

Follow the [calibration guide](docs/manual/CALIBRATION.md).

## Wiring diagrams

Each diagram covers one function:

- [Power](images/functions/01_power.png)
- [Phototransistor sensor](images/functions/02_phototransistor_sensor.png)
- [Red alarm LED](images/functions/03_red_alarm_led.png)
- [Green status LED](images/functions/04_green_status_led.png)
- [2N7000 and buzzer](images/functions/05_mosfet_buzzer.png)
- [Mute button](images/functions/06_mute_button.png)
- [DS18B20](images/functions/07_ds18b20.png)
- [Combined printable PDF](docs/manual/FUNCTION_DIAGRAMS.pdf)

## 3D printing

Included models:

- [Boiler Alert case STL](hardware/enclosure/stl/boiler_alert_case.stl)
- [Boiler Monitor case STL](hardware/enclosure/stl/boiler_monitor_case.stl)
- [Optical sensor holder STL](hardware/enclosure/stl/sensor_holder.stl)
- [OpenSCAD source](hardware/enclosure/openscad/)

Read the [enclosure guide](docs/manual/ENCLOSURE.md).

## Documentation

- [Build guide](docs/manual/BUILD_GUIDE.md)
- [Installation](docs/manual/INSTALLATION.md)
- [Hardware test](docs/manual/HARDWARE_TEST.md)
- [Calibration](docs/manual/CALIBRATION.md)
- [Diagnostics](docs/manual/DIAGNOSTICS.md)
- [Enclosure](docs/manual/ENCLOSURE.md)
- [Troubleshooting](docs/troubleshooting/TROUBLESHOOTING.md)
- [Pre-power checklist](docs/checklists/PRE_POWER_CHECKLIST.md)
- [Pre-installation checklist](docs/checklists/PRE_INSTALL_CHECKLIST.md)

## External links

- [ESPHome documentation](https://esphome.io/)
- [Home Assistant](https://www.home-assistant.io/)
- [ESPHome integration](https://www.home-assistant.io/integrations/esphome/)
- [Project repository](https://github.com/Username8733/ESPHome-Boiler-Monitor)

## Version history

### v2.0.0-rc1

- First complete review candidate for v2
- Repository-wide English cleanup
- Detailed README with links, image, instructions, and history
- Single-file production firmware and hardware-test firmware
- Home Assistant overview, diagnostics, and notification files
- Function-specific diagrams and printable combined PDF
- Enclosure and sensor-holder STL/SCAD files bundled
- GitHub issue forms, pull-request template, Dependabot, EditorConfig, and roadmap
- English terminology and documentation audit report

### v1.0.0

- First packaged English release
- Firmware, Home Assistant dashboards, diagrams, BOM, documentation, and 3D assets
- Final-solution concept image

### v0.8.1

- Added the single-file firmware release

### v0.8.0

- Added diagnostics
- Added DS18B20 support
- Added last-alarm timestamp
- Added Wi-Fi quality percentage

### v0.7.0

- Added one function diagram per component
- Added printable diagrams and component documentation

### v0.6.0

- Added build manual and cable-by-cable connection table
- Added pre-power and pre-solder checklists

### v0.5.0

- Added breadboard-focused documentation and build sequence

### v0.4.0

- Added perfboard and breadboard prototype guides

### v0.3.0

- Added firmware metadata, buzzer control, alarm-clear delay, self-test, and dashboard improvements

### v0.2.0

- Renamed the project to ESPHome Boiler Monitor
- Added GitHub Actions and improved structure

### v0.1.0

- Initial ESPHome, Home Assistant, BOM, wiring, and OpenSCAD project

## Contributing and security

- [Contributing](CONTRIBUTING.md)
- [Security policy](SECURITY.md)
- [Code of conduct](CODE_OF_CONDUCT.md)
- [Roadmap](ROADMAP.md)

## License

MIT. See [LICENSE](LICENSE).
