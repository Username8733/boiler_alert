# Bygg på experimentplatta / perfboard

Målet är att du ska kunna testa allt innan permanent montering.

## Rekommenderad layout

Placera delarna så här:

```text
+--------------------------------------------------+
| ESP32 DevKit                                     |
|                                                  |
| GPIO34  <- sensor connector                      |
| GPIO18  -> 2N7000 -> buzzer                      |
| GPIO19  -> red LED                               |
| GPIO21  -> green LED                             |
| GPIO22  <- mute button                           |
|                                                  |
| [Sensor 2-pin] [Buzzer] [Button] [LEDs]          |
+--------------------------------------------------+
```

## Praktiska tips

- Använd sockellister till ESP32 så att kortet går att lossa.
- Håll sensorkabeln borta från summerledningarna.
- Sätt 100 nF nära GPIO34/GND om signalen är brusig.
- Märk upp kontakterna: SENSOR, BUZZER, BUTTON.
- Testa med USB innan du monterar i kapsling.

## Första test utan panna

Du kan testa sensorn med:

- röd LED,
- TV-fjärrkontroll fungerar ibland sämre eftersom den är IR,
- ficklampa bakom röd plast,
- mobilens skärm med röd bild.

I Home Assistant ska `LED Level` ändras tydligt när sensorn får ljus.
