# TCL-QT-01 - Testowanie funkcjonalności File Upload

## Odniesienia
- [REQ-QT-FileUpload](../../../requirements.md#req-qt-fileupload)
- [TC-QT-01](../../high-level/question-types.md#tc-qt-01)

## Cel
Sprawdzenie poprawności działania dodawania jednego lub wielu plików w odpowiedzi do ankiety. Sprawdzenie ograniczeń dotyczących maksymalnej ilości, rozmiaru oraz dopuszczalnych rozszerzeń plików.

## Warunki wstępne
- Użytkownik posiada aktywne konto w aplikacji Formbricks.
- Użytkownik znajduje się na ekranie dodawania pytania typu File Upload do ankiety.

## Wyniki testów

| Test Case           | Setting                                      | Input                                                                           | Expected                                                                                       | Result                              |
|---------------------|----------------------------------------------|--------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------|-------------------------------------|
| TCL-QT-01-01        | Allow multiple files = No                   | Brak inputu                                                                    | Odpowiedni komunikat błędu (brak wybranego pliku).                                             | **Poprawnie**                       |
| TCL-QT-01-02        | Allow multiple files = Yes                  | Dokładnie 25 plików                                                            | Pliki załadowane poprawnie.                                                                   | **Poprawnie**                       |
| TCL-QT-01-03        | Allow multiple files = Yes                  | 26 plików                                                                      | Odpowiedni komunikat błędu (przekroczono maksymalną liczbę plików).                           | **Poprawnie**                       |
| TCL-QT-01-04        | Allow multiple files = Yes                  | 5 takich samych plików [longText.txt](./assets/longText.txt)                    | Odpowiedni komunikat błędu (dodanie duplikatów plików).                                        | **BŁĄD – Można dodać duplikaty!**   |
| TCL-QT-01-05        | Max file size = 1 MB                        | Plik o dokładnie 1 MB [1MB_file.txt](./assets/1MB_file.txt)                    | Plik załadowany poprawnie.                                                                    | **Poprawnie**                       |
| TCL-QT-01-06        | Max file size = 1 MB                        | Plik o rozmiarze bliskim 0.999 MB [0.999MB_file.txt](./assets/0.999MB_file.txt) | Plik załadowany poprawnie.                                                                    | **Poprawnie**                       |
| TCL-QT-01-07        | Max file size = 1 MB                        | Plik o rozmiarze bliskim 1.001 MB [1.001MB_file.txt](./assets/1.001MB_file.txt) | Odpowiedni komunikat błędu (plik przekracza maksymalny rozmiar).                              | **Poprawnie**                       |
| TCL-QT-01-08        | Max file size = 1 MB                        | Plik o rozmiarze 0 bajtów [zero_byte_file](./assets/zero_byte_file)             | Plik załadowany poprawnie.                                                                    | **Poprawnie**                       |
| TCL-QT-01-09        | Allowed file types = .jpg, .png             | Plik z nieobsługiwanym rozszerzeniem [empty_file.exe](./assets/empty_file.exe)  | Odpowiedni komunikat błędu (nieobsługiwany typ pliku).                                        | **BŁĄD – Plik .exe został dodany!** |
| TCL-QT-01-10        | Allowed file types = .jpg, .png             | Plik z dwoma kropkami w nazwie [plik.kropka.text](./assets/plik.kropka.text)    | Odpowiedni komunikat błędu (nieobsługiwany typ pliku).                                        | **BŁĄD – Plik został dodany!**      |
| TCL-QT-01-11        | Allowed file types = .jpg, .png             | Plik bez rozszerzenia [no_extension_file](./assets/no_extension_file)           | Odpowiedni komunikat błędu (nie można określić typu pliku).                                   | **BŁĄD – Plik został dodany!**      |
| TCL-QT-01-12        | Allowed file types = .jpg, .png             | Plik z rozszerzeniem wielkimi literami [OBRAZ.JPG](./assets/OBRAZ.JPG)          | Plik załadowany poprawnie.                                                                    | **Poprawnie**                       |
| TCL-QT-01-13        | Allowed file types = .jpg, .png             | Plik z ukrytym rozszerzeniem [plik.exe.jpg](./assets/plik.exe.jpg)              | Odpowiedni komunikat błędu (nieobsługiwany typ pliku).                                        | **BŁĄD – Brak komunikatu!**         |

## Podsumowanie

Podczas testowania funkcjonalności File Upload zidentyfikowano następujące problemy:

1. **Dodawanie duplikatów plików** (TCL-QT-01-04): System pozwala na dodanie kilku identycznych plików, co nie powinno mieć miejsca.
2. **Nieobsługiwane rozszerzenia plików** (TCL-QT-01-09, TCL-QT-01-10): System akceptuje pliki z nieobsługiwanymi rozszerzeniami, np. `.exe` lub z dwiema kropkami w nazwie.
3. **Pliki bez rozszerzenia** (TCL-QT-01-11): System akceptuje pliki bez rozszerzeń, co powinno być zablokowane.
4. **Ukryte rozszerzenia** (TCL-QT-01-13): Brak komunikatu o błędzie dla plików z ukrytymi rozszerzeniami.

### Rekomendacje
- Poprawić walidację plików, aby blokować duplikaty.
- Dodać bardziej restrykcyjną weryfikację typów plików, szczególnie dla plików bez rozszerzeń i ukrytych rozszerzeń.
- Przeprowadzić dodatkowe testy regresji po wprowadzeniu poprawek, aby upewnić się, że zmiany nie wpłynęły na istniejącą funkcjonalność.