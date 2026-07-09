# Byggbeskrivning

## Rekommenderad ordning

1. Läs `hardware/perfboard/BREADBOARD_GUIDE.md`.
2. Öppna `hardware/wiring/breadboard-wiring.svg`.
3. Bygg på kopplingsdäck innan du löder.
4. Flytta till experimentplatta/perfboard när allt fungerar.
5. Montera i kapsling först när kalibreringen är stabil.

## Firmware

1. Kopiera `firmware/secrets.yaml.example` till `firmware/secrets.yaml`.
2. Fyll i WiFi.
3. Installera via ESPHome.
4. Kontrollera att enheten dyker upp i Home Assistant.

## Kalibrera

1. Läs av `Boiler Monitor LED Level` när pannans LED är släckt.
2. Läs av nivån när pannans LED lyser.
3. Ställ `LED Threshold` mellan dessa två värden.
4. Testa att röd LED på boxen speglar pannlampan.
5. Testa summern med `Boiler Monitor Test Buzzer`.
