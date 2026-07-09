# Kalibrering

Målet är att hitta ett tröskelvärde där sensorn tydligt skiljer mellan släckt och tänd pann-LED.

Exempel:

| Läge | LED Level |
|---|---:|
| Släckt | 0.10 V |
| Tänd | 1.45 V |

Bra tröskelvärde: cirka 0.70 V.

## Rekommenderad process

1. Sätt `LED Threshold` lågt, exempelvis 0.20 V.
2. Kontrollera att `Boiler LED Detected` inte är aktiv när pannlampan är släckt.
3. Höj eller sänk tröskeln tills det finns marginal.
4. Tänd pannlampan eller testa med röd LED/ficklampa.
5. Kontrollera att röd LED på boxen speglar signalen.

## Automatisk återställning

`Alarm Clear Delay` är normalt 0 s, vilket betyder att larmat läge ligger kvar tills du återställer manuellt.

Sätter du exempelvis 300 s återställs larmat läge automatiskt om pannlampan varit släckt i fem minuter.
