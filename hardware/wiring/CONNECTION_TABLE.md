# Kabeltabell

Använd denna tabell när du bygger på kopplingsdäck.

| ID | Färg | Från | Till | Funktion |
|---|---|---|---|---|
| W01 | Röd | ESP32 5V | +5V-skena | Matning |
| W02 | Svart | ESP32 GND | GND-skena | Jord |
| W03 | Orange | ESP32 3V3 | 1M ohm ena sidan | Sensor pull-up |
| W04 | Lila | 1M ohm andra sidan | ESP32 IO34 | ADC sensorsignal |
| W05 | Svart | Fototransistor emitter | GND-skena | Sensor jord |
| W06 | Lila | Fototransistor collector | IO34-nod | Sensor signal |
| W07 | Röd signal | ESP32 IO19 | 330 ohm | Röd LED styrning |
| W08 | Svart | Röd LED katod | GND-skena | Röd LED jord |
| W09 | Grön | ESP32 IO21 | 330 ohm | Grön LED styrning |
| W10 | Svart | Grön LED katod | GND-skena | Grön LED jord |
| W11 | Gul | ESP32 IO18 | 220 ohm | MOSFET gate styrning |
| W12 | Gul | 220 ohm | 2N7000 Gate | MOSFET gate |
| W13 | Svart | 100k ohm | GND-skena | Gate pulldown |
| W14 | Röd | +5V-skena | Summer + | Summer matning |
| W15 | Svart | Summer - | 2N7000 Drain | Summer switchad jord |
| W16 | Svart | 2N7000 Source | GND-skena | MOSFET jord |
| W17 | Blå | ESP32 IO22 | Tryckknapp ena sidan | Tyst-knapp signal |
| W18 | Svart | Tryckknapp andra sidan | GND-skena | Tyst-knapp jord |
