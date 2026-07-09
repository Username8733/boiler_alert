# Boiler Alert

ESPHome-baserad pannövervakare som optiskt läser av en röd larmlampa på värmepannan och skickar larm till Home Assistant.

## Funktioner

- Optisk avläsning med fototransistor på ESP32 ADC
- Justerbart tröskelvärde från Home Assistant
- Röd LED speglar pannans larmlampa 1:1
- Summer larmar efter 300 ms verifierad larmsignal
- Tyst-knapp på enheten
- Kvitteringsknapp från Home Assistant
- Grön driftindikering
- Diagnostik: WiFi-signal, uptime, IP-adress och rå ljusnivå
- Home Assistant-automation och enkel dashboard
- OpenSCAD-filer för 3D-printbar kapsling och sensorhållare

## GPIO

| GPIO | Funktion |
|---:|---|
| GPIO34 | Analog ljussignal från fototransistor |
| GPIO18 | Summer via 2N7000 |
| GPIO19 | Röd LED, speglar pannans LED |
| GPIO21 | Grön drift-LED |
| GPIO22 | Tyst-knapp, INPUT_PULLUP |

## Lägg in i GitHub

```bash
git clone https://github.com/Username8733/boiler_alert.git
cd boiler_alert
# packa upp ZIP-filen här
git add .
git commit -m "Initial Boiler Alert project"
git push
```
