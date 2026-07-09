# Kopplingsschema för experimentplatta / kopplingsdäck

Detta är huvudschemat för prototypbygget.

## Bildschema

Öppna:

```text
hardware/wiring/breadboard-wiring.svg
```

Det är ett tydligt kopplingsdäck-schema med exakt GPIO-mappning.

## 1. Fototransistor / optisk sensor

Startkoppling:

```text
3V3 ---- 1MΩ ----+---- GPIO34 / ADC
                 |
              Collector
           Fototransistor
              Emitter
                 |
                GND
```

Kommentar:

- När pannans LED lyser ska ADC-värdet normalt öka.
- Om värdet istället minskar: vänd fototransistorn eller ändra logiken i ESPHome.
- Sensorhuvudet bör sitta i svart tub/krympslang så att det bara ser pannans röda LED.

## 2. Röd LED - speglar pannlampan

```text
GPIO19 ---- 330Ω ---->|---- GND
                     Röd LED
```

## 3. Grön LED - driftstatus

```text
GPIO21 ---- 330Ω ---->|---- GND
                     Grön LED
```

## 4. Tyst-knapp

```text
GPIO22 ----[ Tryckknapp ]---- GND
```

Firmware använder `INPUT_PULLUP`, så ingen extern pull-up behövs.

## 5. Summer via 2N7000

```text
ESP32 GPIO18 ---- 220Ω ---- Gate 2N7000

Gate 2N7000 ---- 100kΩ ---- GND

5V ---- (+) Aktiv summer (-) ---- Drain 2N7000
Source 2N7000 ------------------- GND
```

Viktigt:

- Gemensam GND krävs mellan ESP32, summer och MOSFET.
- 2N7000-pinout kan variera mellan kapslar/tillverkare. Kontrollera databladet för din komponent innan lödning.

## Komplett textschema

```text
                         +----------------------+
                         |        ESP32         |
                         |                      |
3V3 ---- 1MΩ ----+-------| GPIO34 ADC           |
                 |       |                      |
             C  /        | GPIO19 ----330Ω---->|---- GND  Red LED
BPW40/BPW77  |<          | GPIO21 ----330Ω---->|---- GND  Green LED
             E  \        |                      |
                 |       | GPIO22 ---- button ---- GND
                GND      |                      |
                         | GPIO18 --220Ω-- Gate 2N7000
                         |                      |
                         | 5V ---- buzzer +     |
                         | GND -----------------+------ Source 2N7000
                         +----------------------+          |
                                                          GND

5V ---- buzzer + 
buzzer - ---- Drain 2N7000
Gate ----100kΩ---- GND
```
