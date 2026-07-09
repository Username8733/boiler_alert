# Byggbeskrivning

1. Löda fototransistorn på tvåledarkabel.
2. Montera fototransistorn i svart tub eller 3D-printad sensorhållare.
3. Koppla sensor till GPIO34 enligt `hardware/wiring/WIRING.md`.
4. Koppla röd LED, grön LED, summer via 2N7000 och tyst-knapp.
5. Flasha `firmware/boiler-alert.yaml` med ESPHome.
6. Justera `LED Threshold` i Home Assistant.
