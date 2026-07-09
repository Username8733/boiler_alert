# Koppling

För byggbar prototyp: börja med `breadboard-wiring.svg` och `SCHEMATIC_PERFBOARD.md`.

## GPIO

| ESP32 GPIO | Ansluts till |
|---:|---|
| GPIO34 | Fototransistor/ADC-signal |
| GPIO18 | 2N7000 gate via 220 Ω |
| GPIO19 | Röd LED via 330 Ω |
| GPIO21 | Grön LED via 330 Ω |
| GPIO22 | Tyst-knapp till GND, intern pullup |
| 5V | Aktiv summer + |
| 3V3 | Sensorresistor/fototransistor |
| GND | Gemensam jord |
