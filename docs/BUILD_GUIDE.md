# Byggbeskrivning

## 1. Bygg sensorhuvudet

1. Löda fast tvåledarkabel på fototransistorn.
2. Isolera benen med krympslang.
3. Montera fototransistorn i en svart tub eller den 3D-printade sensorhållaren.
4. Fäst sensorn framför pannans röda LED med 3M VHB-tejp.

## 2. Bygg elektronikboxen

1. Montera ESP32 på experimentkort.
2. Koppla fototransistorn till GPIO34.
3. Koppla röd LED till GPIO19 via 330 Ω.
4. Koppla grön LED till GPIO21 via 330 Ω.
5. Koppla summern via 2N7000 till GPIO18.
6. Koppla tyst-knappen mellan GPIO22 och GND.

## 3. Flasha firmware

1. Kopiera `secrets.yaml.example` till `secrets.yaml`.
2. Fyll i WiFi.
3. Installera via ESPHome.
4. Kontrollera att enheten dyker upp i Home Assistant.

## 4. Kalibrera

1. Läs av `Boiler Monitor LED Level` när pannans LED är släckt.
2. Läs av nivån när pannans LED lyser.
3. Ställ `LED Threshold` mellan dessa två värden.
4. Testa att röd LED på boxen speglar pannlampan.
5. Testa summern med `Boiler Monitor Test Buzzer`.
