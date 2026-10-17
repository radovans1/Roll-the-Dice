# Roll the Dice

Jednoduchá školská aplikácia vo Flutteri. Tlačidlo **Hoď kockou** vyberie náhodnú hodnotu 1–6 a zobrazí príslušný lokálny PNG obrázok.

## Spustenie

```sh
flutter pub get
flutter run
```

## Implementácia

- `StatefulWidget` a `setState()` spravujú aktuálnu hodnotu.
- `Random` z `dart:math`: `randomizer.nextInt(6) + 1`.
- Šesť obrázkov `assets/images/dice-1.png` až `dice-6.png`, registrovaných v `pubspec.yaml`.
- Použité sú pôvodné obrázky kocky dodané k školskému zadaniu (WebP s pôvodnou príponou .png; Flutter ich načíta podľa obsahu).
- Podpora iOS, Android a web.

## Overenie

```sh
flutter analyze
flutter test
```

Screenshoty dvoch rôznych hodov z emulátora alebo zariadenia treba doplniť pred odovzdaním.
