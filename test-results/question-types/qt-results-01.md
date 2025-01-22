# TCL-QT-01 - Testowanie funkcjonalności File Upload

>### Odniesienia
>- [REQ-QT-FileUpload](../../../requirements.md#req-qt-fileupload)
>- [TC-QT-01](../../high-level/question-types.md#tc-qt-01)

# Status: ❌

### Kroki testowe:
1. Utwórz ankietę zgodną z ustawieniami i ich ewentualnymi ograniczeniami z Settings.
2. Dodaj wskazany obraz w Input. Dla testów TCL-QT-01-02 oraz TCL-QT-01-03 należy najpierw uruchomić skrypt w pythonie i utworzyć pliki generateFiles.py
3. Sprawdź czy Expected
   - ✅ TCL-QT-01-01: Odpowiedni komunikat błędu (brak wybranego pliku).
   - ✅ TCL-QT-01-02: Pliki załadowane poprawnie.
   - ✅ TCL-QT-01-03: Odpowiedni komunikat błędu (przekroczono maksymalną liczbę plików).
   - ❌ TCL-QT-01-04: Możliwe jest dodanie duplikatów.
   - ✅ TCL-QT-01-05: Plik załadowany poprawnie.
   - ✅ TCL-QT-01-06: Plik załadowany poprawnie.
   - ✅ TCL-QT-01-07: Odpowiedni komunikat błędu (plik przekracza maksymalny rozmiar).
   - ✅ TCL-QT-01-08: Plik załadowany poprawnie.
   - ⚠️✅ TCL-QT-01-09: Plik został dodany, nie uwzględnione w expected, ale to poprawne zachowanie.
   - ⚠️✅ TCL-QT-01-10: Plik został dodany, nie uwzględnione w expected, ale to poprawne zachowanie. 
   - ⚠️✅ TCL-QT-01-11: Plik został dodany, nie uwzględnione w expected, ale to poprawne zachowanie.
   - ✅ TCL-QT-01-12: Plik załadowany poprawnie.

## Zgłoszone defekty
[Duplicates in File Upload questions are allowed](https://github.com/formbricks/formbricks/issues/4634)
