# Felsökning

## Röd LED på boxen lyser hela tiden

- Tröskelvärdet är för lågt.
- Sensorn tar in omgivningsljus.
- Fototransistorn kan vara felvänd.

## Röd LED reagerar inte

- Tröskelvärdet är för högt.
- Sensorn är inte riktad mot pannlampan.
- Fototransistorn kan vara felvänd.
- Kontrollera GPIO34 och GND/3V3.

## Summern låter inte

- Kontrollera att `Boiler Monitor Buzzer Enabled` är på.
- Testa med `Boiler Monitor Test Buzzer`.
- Kontrollera 2N7000-orientering.
- Kontrollera att summern är aktiv och för rätt spänning.

## Tyst-knappen fungerar inte

- Knappen ska koppla GPIO22 till GND.
- GPIO22 använder intern pull-up.
