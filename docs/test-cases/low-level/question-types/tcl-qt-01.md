# TCL-QT-01

> ### Odniesienia
>- [REQ-QT-FileUpload](https://github.com/KWAK-testing/Formbricks-tests/blob/misc-low-level-test-cases-qt/docs/requirements.md#req-qt-fileupload)
>- [TC-QT-01](https://github.com/KWAK-testing/Formbricks-tests/blob/misc-low-level-test-cases-qt/docs/test-cases/high-level/question-types.md#tc-qt-01)

### Cel
Sprawdzenie poprawności działania dodawania jednego lub wielu plików w odpowiedzi do ankiety. Sprawdzenie ograniczeń dotyczących maksymalnej ilości, rozmiaru oraz dopuszczalnych rozszerzeń plików

### Warunki wstępne:
- Użytkownik posiada aktywne konto w aplikacji Formbricks.
- Użytkownik znajduje się na ekranie dodawania pytania typu File Upload do ankiety.

### Kroki testowe:
1. Utwórz ankietę zgodną z ustawieniami i ich ewentualnymi ograniczeniami z `Settings`.
2. Dodaj wskazany obraz w `Input`
3. Sprawdź czy `Expected`

| Test case            | Setting                                      | Input                                                                           | Expected                                                                                       |
|----------------------|----------------------------------------------|--------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------|
| TCL-QT-01-01         | Allow multiple files = No                   | Brak inputu                                                                    | Odpowiedni komunikat błędu (brak wybranego pliku).                                             |
| TCL-QT-01-02         | Allow multiple files = Yes  | Dokładnie 25 plików                                                            | Pliki załadowane poprawnie.                                                                   |
| TCL-QT-01-03         | Allow multiple files = Yes  | 26 plików                                                                      | Odpowiedni komunikat błędu (przekroczono maksymalną liczbę plików).                           |
| TCL-QT-01-04         | Allow multiple files = Yes                  | 5 takich samych plików                                                         | Odpowiedni komunikat błędu (dodanie duplikatów plików).                                        |
| TCL-QT-01-05         | Max file size = 10 MB                       | Plik o dokładnie 10 MB                                                         | Plik załadowany poprawnie.                                                                    |
| TCL-QT-01-06         | Max file size = 10 MB                       | Plik o rozmiarze bliskim 9.999 MB                                                      | Plik załadowany poprawnie.                                                                    |
| TCL-QT-01-07         | Max file size = 10 MB                       | Plik o rozmiarze bliskim 10.001 MB                                                     | Odpowiedni komunikat błędu (plik przekracza maksymalny rozmiar).                              |
| TCL-QT-01-08         | Max file size = 10 MB                       | Plik o rozmiarze 0 bajtów                                                      | Odpowiedni komunikat błędu (plik jest pusty).                                                 |
| TCL-QT-01-09         | Max file size = 10 MB                       | Plik o rozmiarze >= 15 MB                                                          | Odpowiedni komunikat błędu (plik jest zbyt duży).                                             |
| TCL-QT-01-10         | Allowed file types = .jpg, .png             | Plik z nieobsługiwanym rozszerzeniem (.exe)                                    | Odpowiedni komunikat błędu (nieobsługiwany typ pliku).                                        |
| TCL-QT-01-11         | Allowed file types = .jpg, .png             | Plik z dwoma kropkami w nazwie (plik.kropka.txt)                               | Odpowiedni komunikat błędu (nieobsługiwany typ pliku).                                        |
| TCL-QT-01-12         | Allowed file types = .jpg, .png             | Plik bez rozszerzenia                                                          | Odpowiedni komunikat błędu (nie można określić typu pliku).                                   |
| TCL-QT-01-13         | Allowed file types = .jpg, .png             | Plik z rozszerzeniem wielkimi literami (OBRAZ.JPG)                             | Plik załadowany poprawnie.                                                                    |
| TCL-QT-01-14         | Allowed file types = .jpg, .png             | Plik z ukrytym rozszerzeniem (plik.exe.jpg)                                    | Odpowiedni komunikat błędu (nieobsługiwany typ pliku).                                        |
| TCL-QT-01-15         | N/A                                         | Plik z bardzo długą nazwą (>255 znaków)                                        | Odpowiedni komunikat błędu (nazwa pliku jest zbyt długa).                                     |

