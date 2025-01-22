# QT-RESULT-02
> ### Odniesienia
>- [REQ-QT-PictureSelection](../../../requirements.md#req-qt-pictureselection)
>- [TC-QT-05](../../high-level/question-types.md#tc-qt-05)
>- [TC-QT-06](../../high-level/question-types.md#tc-qt-06)
>- [TCL-QT-02](../../test-cases/low-level/question-types/tcl-qt-02.md)

# Status: ✅

### Kroki testowe:
1. ✅ Wygeneruj obrazy za pomocą skryptu w Pythonie [generateImages.py](./assets/generateImages.py)
2. ✅ Utwórz ankietę z pytaniem Picture Selection zgodnie z ustawieniami i ich ograniczeniami z `Settings`.
3. Dodaj wskazane zdjęcia w `Input` dla konfiguracji pytania lub wyboru odpowiedzi
    - ✅ TCL-QT-02-01 Zdjęcia dodane poprawnie, pytanie utworzone.
    - ✅ TCL-QT-02-02 1000 zdjęć dodane poprawnie.
    - ✅ TCL-QT-02-03 Zdjęcie dodane poprawnie, pytanie utworzone.
    - ✅ TCL-QT-02-04 Zdjęcia dodane poprawnie, pytanie utworzone, zdjęcia poprawnie wybrane, zdjęcie poprawnie wybrane.
    - ✅ TCL-QT-02-05 Zdjęcie dodane poprawnie, pytanie utworzone, zdjęcie poprawnie wybrane.
    - ✅ TCL-QT-02-06 Zdjęcia dodane poprawnie, pytanie utworzone, brak możliwości wybrania 2 zdjęć, zaznaczenie przeskakuje z jednego na drugie zdjęcie odznaczając się przy naciśnięcu.
    - ✅ TCL-QT-02-07 Zdjęcie dodane poprawnie.
    - ✅ TCL-QT-02-08 Zdjęcie dodane poprawnie, pytanie utworzone, zdjęcie poprawnie wybrane, zdjęcie poprawnie odznaczone.


## Dodatkowe uwagi
- Jeśli umożliwione jest dodanie tak dużej ilości zdjęć jak w przypadku TCL-QT-02-02, Poręcznym dla użytkownika byłby przycisk usunięcia wszystkich zdjęć.
