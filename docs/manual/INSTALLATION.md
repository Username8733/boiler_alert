# Installation

## ESPHome Builder

1. Copy `firmware/release/boiler-monitor.yaml` into the ESPHome configuration directory.
2. Copy the required values from `firmware/release/secrets.yaml.example` into your ESPHome `secrets.yaml`.
3. Open the YAML file in ESPHome Builder.
4. Select **Install** and compile the firmware.
5. Flash by USB for the first installation. Later updates can use OTA.

The single-file release does not require the `packages` directory.

## Home Assistant

If automatic discovery works, approve the discovered ESPHome device.

When Home Assistant and the ESP32 are on different VLANs:

1. Open **Settings > Devices & services**.
2. Add the **ESPHome** integration manually.
3. Enter the ESP32 IP address.
4. Allow TCP 6053 from Home Assistant to the IoT VLAN.
