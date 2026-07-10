# Troubleshooting

## Device is visible in ESPHome Builder but not Home Assistant

Automatic discovery may not cross VLAN boundaries. Add the ESPHome integration manually using the device IP address.

## Red alarm LED is always on

- Increase the LED threshold.
- Block ambient light from reaching the phototransistor.
- Verify the phototransistor orientation.

## Boiler LED is never detected

- Lower the LED threshold.
- Check GPIO34 wiring.
- Verify the 1 Mohm sensor resistor.
- Reverse the phototransistor if the signal moves in the wrong direction.

## Buzzer does not sound

- Run the hardware-test firmware.
- Verify the active buzzer polarity.
- Verify the 2N7000 gate, drain, and source using its exact datasheet.
- Confirm the buzzer is rated for 5 V.

## DS18B20 is missing

- Verify DATA is connected to GPIO23.
- Add 4.7 kohm between DATA and 3V3.
- Check VDD and GND.
