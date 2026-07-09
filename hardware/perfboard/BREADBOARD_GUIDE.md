# Kopplingsdäck-guide

Det här är guiden att använda innan du löder på experimentplatta.

Öppna gärna `hardware/wiring/breadboard-wiring.svg` i webbläsaren eller skriv ut den.

## Komponenter på kopplingsdäcket

| Steg | Del | Koppling |
|---:|---|---|
| 1 | GND | ESP32 GND till blå/minus-skena |
| 2 | 5V | ESP32 5V/VIN till röd/plus-skena |
| 3 | Fototransistor | 3V3 → 1MΩ → GPIO34 → fototransistor → GND |
| 4 | Röd LED | GPIO19 → 330Ω → LED → GND |
| 5 | Grön LED | GPIO21 → 330Ω → LED → GND |
| 6 | Summer | 5V → aktiv summer → 2N7000 drain/source → GND |
| 7 | Gate | GPIO18 → 220Ω → 2N7000 gate |
| 8 | Gate pulldown | 2N7000 gate → 100kΩ → GND |
| 9 | Knapp | GPIO22 → tryckknapp → GND |

## Testa i rätt ordning

1. Flasha ESP32 utan extern hårdvara.
2. Kontrollera att ESPHome-enheten dyker upp.
3. Koppla grön LED.
4. Koppla röd LED.
5. Koppla fototransistor och kontrollera `LED Level`.
6. Koppla 2N7000 och summer.
7. Koppla tyst-knappen.
8. Testa larmkedjan med en röd LED eller ficklampa.

## Viktigt om 2N7000

2N7000 kan ha olika pinout beroende på tillverkare och kapsel. Kontrollera alltid databladet för just din komponent.

Vanlig TO-92-orientering kan vara:

```text
platt sida mot dig:
1 = Source
2 = Gate
3 = Drain
```

men anta inte detta utan att kontrollera.
