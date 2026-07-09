# ESPHome Boiler Monitor

v0.8.0 lägger till diagnostik, DS18B20 och tidsstämpel för senaste larm.

## GPIO
| Funktion | GPIO |
|---|---:|
| Fototransistor ADC | GPIO34 |
| Summer via 2N7000 | GPIO18 |
| Röd LED | GPIO19 |
| Grön LED | GPIO21 |
| Tyst-knapp | GPIO22 |
| DS18B20 DATA | GPIO23 |

## Dashboard
- `homeassistant/dashboard/overview.yaml`
- `homeassistant/dashboard/diagnostics.yaml`
