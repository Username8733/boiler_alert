# Connection Table

| ID | Color | From | To | Function |
|---|---|---|---|---|
| W01 | Red | ESP32 5V | +5V rail | Power |
| W02 | Black | ESP32 GND | GND rail | Common ground |
| W03 | Orange | ESP32 3V3 | 1 Mohm resistor | Sensor bias |
| W04 | Purple | Sensor node | ESP32 GPIO34 | Analog input |
| W05 | Black | Phototransistor emitter | GND | Sensor ground |
| W06 | Purple | Phototransistor collector | GPIO34 node | Sensor signal |
| W07 | Red signal | ESP32 GPIO19 | 330 ohm resistor | Red LED |
| W08 | Black | Red LED cathode | GND | Red LED ground |
| W09 | Green | ESP32 GPIO21 | 330 ohm resistor | Green LED |
| W10 | Black | Green LED cathode | GND | Green LED ground |
| W11 | Yellow | ESP32 GPIO18 | 220 ohm resistor | MOSFET gate |
| W12 | Yellow | 220 ohm resistor | 2N7000 gate | Buzzer control |
| W13 | Black | Gate via 100 kohm | GND | Gate pulldown |
| W14 | Red | +5V | Buzzer + | Buzzer supply |
| W15 | Black | Buzzer - | 2N7000 drain | Switched ground |
| W16 | Black | 2N7000 source | GND | MOSFET ground |
| W17 | Blue | ESP32 GPIO22 | Pushbutton | Mute input |
| W18 | Black | Pushbutton | GND | Mute ground |
| W19 | Orange | ESP32 3V3 | DS18B20 VDD | Temperature supply |
| W20 | Black | ESP32 GND | DS18B20 GND | Temperature ground |
| W21 | Brown | ESP32 GPIO23 | DS18B20 DATA | 1-Wire data |
| W22 | Orange | DS18B20 DATA | 4.7 kohm to 3V3 | 1-Wire pull-up |
