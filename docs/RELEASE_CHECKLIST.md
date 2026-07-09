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

1. Skapa tagg, exempel:

```bash
git tag v0.2.0
git push origin v0.2.0
```

2. Skapa GitHub Release.
3. Bifoga ZIP med projektfiler om önskat.
