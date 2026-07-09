# Home Assistant

## Automationer

`automation.yaml` innehåller två automationer:

1. Notis när larm aktiveras.
2. Loggboksrad när summern kvitteras.

Byt:

```yaml
notify.mobile_app_DIN_TELEFON
```

till din faktiska notify-tjänst.

## Dashboard

`dashboard.yaml` är ett enkelt Lovelace-kort som visar:

- larmat läge,
- pannans LED-detektering,
- summerstatus,
- LED-nivå,
- tröskelvärde,
- kvitteringsknappar.

Entity-namn kan skilja sig något beroende på hur ESPHome namnger enheten i din installation.
