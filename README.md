# ESPHome Boiler Monitor

Optisk pannövervakare för Home Assistant / ESPHome.

Den läser en röd larmlampa på värmepannan med fototransistor, visar samma signal på en röd LED, och aktiverar summer tills larmet kvitteras.

## Börja här

1. `docs/manual/BUILD_MANUAL.md`
2. `hardware/wiring/CONNECTION_TABLE.md`
3. `docs/checklists/PRE_POWER_CHECKLIST.md`
4. `firmware/boiler-monitor.yaml`

## GPIO

| Funktion | ESP32 GPIO |
|---|---:|
| Fototransistor ADC | GPIO34 |
| Summer via 2N7000 | GPIO18 |
| Röd LED | GPIO19 |
| Grön LED | GPIO21 |
| Tyst-knapp | GPIO22 |

## Färgstandard

| Färg | Betydelse |
|---|---|
| Röd | +5V |
| Svart | GND |
| Orange | +3.3V |
| Lila | Analog sensorsignal |
| Gul | Summer / MOSFET |
| Grön | Grön LED |
| Blå | Knapp |

## Status

v0.6.0 fokuserar på byggmanual och verifierbar kabeltabell för D1 R32 / ESP32 UNO.
