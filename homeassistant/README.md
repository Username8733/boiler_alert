# Home Assistant

## Automation

`automation.yaml` skickar notis när pannans LED detekteras.

Byt:

```yaml
notify.mobile_app_DIN_TELEFON
```

till din faktiska notify-tjänst.

## Dashboard

`dashboard.yaml` är ett enkelt Lovelace-kort som visar larm, LED-nivå, tröskelvärde och kvitteringsknappar.

Entity-namn kan skilja sig något beroende på hur ESPHome namnger enheten i din installation.
