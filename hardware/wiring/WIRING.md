# Koppling

## GPIO

| ESP32 GPIO | Ansluts till |
|---:|---|
| GPIO34 | Fototransistor/ADC-signal |
| GPIO18 | 2N7000 gate via 220 Ω |
| GPIO19 | Röd LED via 330 Ω |
| GPIO21 | Grön LED via 330 Ω |
| GPIO22 | Tyst-knapp till GND, intern pullup |
| 5V | Aktiv summer + |
| 3V3 | Sensor pull-up/pull-down enligt vald fototransistorkoppling |
| GND | Gemensam jord |

## Summer med 2N7000

```text
ESP32 GPIO18 ── 220Ω ── Gate 2N7000
Gate 2N7000 ── 100kΩ ── GND

+5V ── Summer + 
Summer - ── Drain 2N7000
Source 2N7000 ── GND
```

## LED

```text
GPIO19 ── 330Ω ── Röd LED ── GND
GPIO21 ── 330Ω ── Grön LED ── GND
```

## Tyst-knapp

```text
GPIO22 ── Tryckknapp ── GND
```

## Fototransistor

Rekommenderad startpunkt:

```text
3V3 ── 1MΩ ── ADC GPIO34 ── Fototransistor ── GND
```

Om signalen blir inverterad kan jämförelsen i ESPHome ändras.
