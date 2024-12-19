# TCL-QT-03

> ### Odniesienia
>- [REQ-QT-FreeText](https://github.com/KWAK-testing/Formbricks-tests/blob/misc-low-level-test-cases-qt/docs/requirements.md#req-qt-freetext)
>- [TC-QT-07](https://github.com/KWAK-testing/Formbricks-tests/blob/misc-low-level-test-cases-qt/docs/test-cases/high-level/question-types.md#tc-qt-07)
>- [TC-QT-08](https://github.com/KWAK-testing/Formbricks-tests/blob/misc-low-level-test-cases-qt/docs/test-cases/high-level/question-types.md#tc-qt-08)

### Cel
Zweryfikować poprawność obsługi odpowiedzi tekstowych w pytaniach FreeText, w tym akceptację różnych formatów danych oraz reakcję systemu na odpowiedzi o bardzo małej i dużej ilości znaków.

### Warunki wstępne:
- Użytkownik posiada aktywne konto w aplikacji Formbricks.
- Użytkownik znajduje się na ekranie wypełniania ankiety zawierającej pytanie typu FreeText.

### Kroki testowe:
1. Utwórz ankietę z pytaniem Free Text zgodnie z ustawieniami i ich ograniczeniami z `Settings`.
2. Wprowadź wskazane dane w `Input`.
3. Sprawdź, czy `Expected`.

| Test case            | Setting                          | Input                                                                 | Expected                                                                                       |
|----------------------|----------------------------------|----------------------------------------------------------------------|-----------------------------------------------------------------------------------------------|
| TCL-QT-03-01         | Input type = text               | Tekst o długości 1 znaku                                             | Odpowiedź zaakceptowana.                                                                      |
| TCL-QT-03-02         | Input type = text               | Tekst o bardzo dużej długości (>10,000 znaków)                       | Odpowiedni komunikat błędu (zbyt duża ilość znaków) lub zaakceptowane pytanie. Brak błędu krytycznego. |
| TCL-QT-03-03         | Input type = email              | Poprawny email (np. test@example.com)                                | Odpowiedź zaakceptowana.                                                                      |
| TCL-QT-03-04         | Input type = email              | Niepoprawny email (np. test@com)                                     | Odpowiedni komunikat błędu (niepoprawny format email).                                        |
| TCL-QT-03-05         | Input type = number             | Poprawny numer (np. 12345)                                           | Odpowiedź zaakceptowana.                                                                      |
| TCL-QT-03-06         | Input type = number             | Niepoprawny numer (np. 12345abc)                                     | Odpowiedni komunikat błędu (niepoprawny format liczby).                                       |
| TCL-QT-03-07         | Input type = phone              | Poprawny numer telefonu (np. +48123456789)                           | Odpowiedź zaakceptowana.                                                                      |
| TCL-QT-03-08         | Input type = phone              | Niepoprawny numer telefonu (np. 123-abc)                             | Odpowiedni komunikat błędu (niepoprawny format numeru telefonu).                              |
