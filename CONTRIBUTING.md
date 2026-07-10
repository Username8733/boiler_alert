# Contributing

Thank you for helping improve ESPHome Boiler Monitor.

## Before opening a pull request

1. Keep the existing hardware and GPIO mapping unless the change is discussed first.
2. Keep all user-facing text, comments, diagrams, and documentation in English.
3. Compile both release firmware files with the current ESPHome release.
4. Update `README.md` and the version history when behavior changes.
5. Do not commit real Wi-Fi credentials, API keys, or private network information.

## Terminology

Use these terms consistently:

- **Boiler LED**: the warning LED on the boiler.
- **Red alarm LED**: the local red LED on the monitor.
- **Green status LED**: the local green run indicator.
- **Mute**: silence the buzzer without clearing the latched alarm.
- **Reset alarm**: clear the latched alarm state.
