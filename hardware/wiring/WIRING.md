# Koppling

Se först `SCHEMATIC_PERFBOARD.md` för komplett byggschema.

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

## Viktigt

- GPIO34 är endast ingång och passar bra för ADC.
- ESP32:s ADC är inte perfekt, men räcker bra här eftersom pannlampan lyser minst cirka 1 sekund.
- Röd LED på boxen speglar pannlampan.
- Summern styrs separat och kan tystas.
