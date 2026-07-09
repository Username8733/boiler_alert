# ESPHome Boiler Monitor

ESPHome-baserad pannövervakare som optiskt läser av en röd larmlampa på värmepannan och skickar larm till Home Assistant.

Projektet är byggt för ett enkelt och robust scenario: pannans röda LED lyser eller blinkar långsamt när larm finns. En fototransistor tejpas framför indikatorn och läses analogt av en ESP32.

## Funktioner

- Optisk avläsning med fototransistor på ESP32 ADC
- Justerbart tröskelvärde från Home Assistant
- Röd LED på boxen speglar pannans larmlampa 1:1
- Summer larmar efter 300 ms verifierad larmsignal
- Tyst-knapp på enheten
- Kvitteringsknapp från Home Assistant
- Grön driftindikering
- Diagnostik: WiFi-signal, uptime, IP-adress, firmwareversion och rå ljusnivå
- Home Assistant-automation och enkel dashboard
- Kopplingsschema för experimentplatta/perfboard
- OpenSCAD-filer för 3D-printbar kapsling och sensorhållare

## Hårdvara

| Komponent | Funktion |
|---|---|
| ESP32 DevKit / ESP32 UNO | Kör ESPHome och ansluter till Home Assistant |
| BPW40/BPW77 fototransistor | Läser pannans röda LED optiskt |
| 2N7000 | Driver aktiv summer |
| Aktiv summer 5 V | Lokalt ljudlarm |
| Röd LED | Speglar pannans LED |
| Grön LED | Driftindikering |
| Tryckknapp NO | Tystar summer |
| Motstånd/kondensatorer | Pull-up, skydd och enkel filtrering |

## GPIO

| GPIO | Funktion |
|---:|---|
| GPIO34 | Analog ljussignal från fototransistor |
| GPIO18 | Summer via 2N7000 |
| GPIO19 | Röd LED, speglar pannans LED |
| GPIO21 | Grön drift-LED |
| GPIO22 | Tyst-knapp, INPUT_PULLUP |

## Bygg prototyp först

Börja med:

1. `hardware/wiring/SCHEMATIC_PERFBOARD.md`
2. `hardware/perfboard/PERFBOARD_BUILD.md`
3. `docs/BUILD_GUIDE.md`
4. `firmware/boiler-monitor.yaml`

## Snabbstart firmware

1. Kopiera `firmware/secrets.yaml.example` till `firmware/secrets.yaml`.
2. Fyll i WiFi-uppgifter.
3. Öppna `firmware/boiler-monitor.yaml` i ESPHome.
4. Flasha ESP32.
5. Lägg till enheten i Home Assistant.
6. Justera `LED Threshold` tills `Boiler Monitor Alarm` bara aktiveras när pannans röda LED lyser.

## Status

v0.4.0 är en prototypfokuserad version för experimentplatta/perfboard. Ingen PCB-version ännu.

## Licens

MIT.
