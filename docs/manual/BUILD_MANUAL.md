# ESPHome Boiler Monitor - Byggmanual

Denna manual är avsedd för prototypbygge på kopplingsdäck och senare flytt till experimentplatta.

Kort: D1 R32 / ESP32 UNO.

## 0. Viktigt före start

- Kontrollera att ESP32 inte är ansluten till USB när du bygger.
- Röd kabel betyder alltid +5V.
- Svart kabel betyder alltid GND.
- GPIO34 får aldrig matas med mer än 3.3V.
- Kontrollera 2N7000-pinout mot databladet innan du kopplar summern.
- Bygg och testa en del i taget.

## 1. Delar

| Del | Antal |
|---|---:|
| ESP32 D1 R32 / ESP32 UNO | 1 |
| Fototransistor BPW40/BPW77 | 1 |
| 2N7000 | 1 |
| Aktiv summer 5V | 1 |
| Röd LED | 1 |
| Grön LED | 1 |
| Tryckknapp NO | 1 |
| 1M ohm | 1 |
| 100k ohm | 1 |
| 220 ohm | 1 |
| 330 ohm | 2 |
| Kopplingsdäck | 1 |
| Jumperkablar | flera |

## 2. ESP32 på kopplingsdäcket

Placera ESP32-kortet så att pinnarna hamnar på varsin sida om mittspåret.

Kontrollera att du kan komma åt:

- 5V
- 3V3
- GND
- IO34
- IO18
- IO19
- IO21
- IO22

## 3. Ström

Kabel W01:

- Från ESP32 5V
- Till röd +5V-skena på kopplingsdäcket

Kabel W02:

- Från ESP32 GND
- Till svart GND-skena på kopplingsdäcket

Test: Mät med multimeter mellan +5V-skena och GND-skena. Du ska se cirka 5V när USB är ansluten.

## 4. Fototransistor

Koppling:

```text
3V3 -- 1M ohm -- GPIO34 -- fototransistor -- GND
```

Steg:

1. Sätt 1M ohm mellan 3V3 och sensornoden.
2. Koppla sensornoden till IO34.
3. Koppla fototransistorns ena ben till sensornoden.
4. Koppla andra benet till GND.

Om LED Level minskar när sensorn får ljus, vänd fototransistorn eller ändra logiken i ESPHome.

## 5. Röd LED

Koppling:

```text
IO19 -- 330 ohm -- röd LED -- GND
```

Den röda LED:n speglar pannans LED.

## 6. Grön LED

Koppling:

```text
IO21 -- 330 ohm -- grön LED -- GND
```

Grön LED visar att firmware kör.

## 7. Summer via 2N7000

Koppling:

```text
IO18 -- 220 ohm -- Gate
Gate -- 100k ohm -- GND
5V -- summer + 
summer - -- Drain
Source -- GND
```

Kontrollera 2N7000-ben noggrant.

## 8. Tyst-knapp

Koppling:

```text
IO22 -- tryckknapp -- GND
```

Firmware använder intern pull-up.

## 9. Första start

1. Koppla ur summern om du är osäker.
2. Flasha ESPHome.
3. Kontrollera att enheten dyker upp i Home Assistant.
4. Läs av `Boiler Monitor LED Level`.
5. Testa `Boiler Monitor Test Buzzer`.

## 10. Kalibrering

1. Läs LED Level när pannlampan är släckt.
2. Läs LED Level när pannlampan lyser.
3. Sätt `LED Threshold` mellan dessa värden.
4. Kontrollera att `Boiler LED Detected` bara blir ON när pannlampan lyser.

## 11. Flytta till experimentplatta

När allt fungerar på kopplingsdäck:

1. Flytta en del i taget.
2. Börja med ström och GND.
3. Fortsätt med sensor.
4. Fortsätt med LED.
5. Fortsätt med summer.
6. Avsluta med tyst-knapp.
7. Testa efter varje flyttad del.
