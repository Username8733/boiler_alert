# Release checklist

## Före release

- [ ] ESPHome kompilerar lokalt.
- [ ] GitHub Actions passerar.
- [ ] README stämmer med aktuell firmware.
- [ ] BOM är uppdaterad.
- [ ] Kopplingsdokumentation är uppdaterad.
- [ ] Dashboard-entity-namn är kontrollerade.
- [ ] CHANGELOG är uppdaterad.

## Skapa release

```bash
git tag v0.3.0
git push origin v0.3.0
```

Skapa sedan GitHub Release och bifoga ZIP om önskat.
