# Hardware Test

Flash `firmware/release/hardware-test.yaml` before connecting the optical sensor.

## Startup sequence

1. Green LED turns on briefly.
2. Red LED turns on briefly.
3. Buzzer sounds briefly.
4. Green LED remains on.

## Button test

Pressing the physical button:

- turns off the green LED,
- sounds the buzzer for one second,
- keeps the red LED on for three seconds total,
- then returns to the green status LED.

This verifies GPIO18, GPIO19, GPIO21, GPIO22, the LEDs, the buzzer driver, and the button.
