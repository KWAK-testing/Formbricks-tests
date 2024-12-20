# TCL-QT-02

> ### Odniesienia
>- [REQ-QT-PictureSelection](https://github.com/KWAK-testing/Formbricks-tests/blob/misc-low-level-test-cases-qt/docs/requirements.md#req-qt-pictureselection)
>- [TC-QT-05](https://github.com/KWAK-testing/Formbricks-tests/blob/misc-low-level-test-cases-qt/docs/test-cases/high-level/question-types.md#tc-qt-05)
>- [TC-QT-06](https://github.com/KWAK-testing/Formbricks-tests/blob/misc-low-level-test-cases-qt/docs/test-cases/high-level/question-types.md#tc-qt-06)

### Cel
Zweryfikować poprawność wyboru zdjęć przez ankietowanego oraz poprawność obsługi dodawania zdjęć do pytania.

### Warunki wstępne:
- Użytkownik posiada aktywne konto w aplikacji Formbricks.
- Użytkownik znajduje się na ekranie edycji ankiety z pytaniem typu Picture Selection.
- Ankieta wymusza dodanie co najmniej dwóch zdjęć, a odpowiedź użytkownika może być w formie wyboru jednego lub wielu zdjęć.

### Kroki testowe:
1. Wygeneruj obrazy za pomocą skryptu w Pythonie [generateImages.py](./assets/generateImages.py)
1. Utwórz ankietę z pytaniem Picture Selection zgodnie z ustawieniami i ich ograniczeniami z `Settings`.
2. Dodaj wskazane zdjęcia w `Input` dla konfiguracji pytania lub wyboru odpowiedzi.
3. Sprawdź, czy `Expected`.

| Test case            | Setting                                      | Input                                                                           | Expected                                                                                       |
|----------------------|----------------------------------------------|--------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------|
| TCL-QT-02-01         | N/A                                         | Dodanie dokładnie dwóch zdjęć do pytania                                       | Zdjęcia dodane poprawnie, pytanie utworzone.                                                  |
| TCL-QT-02-02         | N/A                                         | Dodanie bardzo dużej liczby zdjęć (np. 1000) do pytania                        | Odpowiedni komunikat błędu (przekroczono limit systemowy liczby zdjęć).                       |
| TCL-QT-02-03         | Allow multiple selection = Yes              | Wybór jednego zdjęcia                                                          | Zdjęcie wybrane poprawnie.                                           |
| TCL-QT-02-04         | Allow multiple selection = Yes              | Wybór wielu zdjęć (np. 5)                                                      | Zdjęcia wybrane poprawnie.                                                                    |
| TCL-QT-02-05         | Allow multiple selection = No               | Wybór jednego zdjęcia                                                          | Zdjęcie wybrane poprawnie.                                                 |
| TCL-QT-02-06         | Allow multiple selection = No               | Wybór więcej niż jednego zdjęcia                                               | Odpowiedni komunikat błędu (dozwolony wybór tylko jednego zdjęcia).                           |
| TCL-QT-02-07         | N/A                                         | Dodanie zdjęcia o nietypowej nazwie. Wypakuj plik .zip i użyj umieszczonego zdjęcia [unusualName.zip](./assets/unusualName.zip) | Zdjęcie dodane poprawnie.                                                                    |                               |
| TCL-QT-02-08         | N/A                                         | Wybór zdjęcia i jego odznaczenie                                               | Zdjęcie zostało poprawnie odznaczone, wybór nie został zapisany.                              |
