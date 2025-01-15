# INT-RESULT-02 (Google Sheets Integration)
> ### Odniesienia
> - [REQ-INT-Google-Sheets](https://github.com/KWAK-testing/Formbricks-tests/blob/main/docs/requirements.md#req-int-google-sheets)
> - [TC-INT-02](https://github.com/KWAK-testing/Formbricks-tests/blob/main/docs/test-cases/high-level/integrations.md#tc-int-02)
> - [TCL-INT-02](https://github.com/KWAK-testing/Formbricks-tests/blob/main/docs/test-cases/low-level/integrations/tcl-int-02.md)



- ✅ Sprawdź proces OAuth z Google
<br><br>
- ❌ Przetestuj różne formaty danych w odpowiedziach (teksty, daty, liczby, załączniki) <br> 
Wklejenie tekstu "Pana Tadeusza" powoduje nie zapisanie odpowiedzi w arkuszu (w Formbricks jest ona widoczna).
<br><br>
- Zweryfikuj zachowanie przy utracie dostępu do arkusza
<br><br>
- ✅ Sprawdź mechanizm buforowania danych w przypadku problemów z połączeniem
<br><br>
- ⚠️ Przetestuj scenariusze równoczesnego dostępu do arkusza  
W przypadku, gdy odpowiedzi z dwóch ankiet są zapisywane do tego samego arkusza, odpowiedzi mieszają się. Nazwy kolumn są nadpisywane w zależności od tego, do której ankiety należy ostatnia zapisana odpowiedź.
![alt text](/docs/results/integrations/visuals/Int-1.png)
