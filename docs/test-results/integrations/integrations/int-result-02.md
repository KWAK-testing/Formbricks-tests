# INT-RESULT-02 (Google Sheets Integration)
> ### Odniesienia
> - [REQ-INT-Google-Sheets](https://github.com/KWAK-testing/Formbricks-tests/blob/main/docs/requirements.md#req-int-google-sheets)
> - [TC-INT-02](https://github.com/KWAK-testing/Formbricks-tests/blob/main/docs/test-cases/high-level/integrations.md#tc-int-02)
> - [TCL-INT-02](https://github.com/KWAK-testing/Formbricks-tests/blob/main/docs/test-cases/low-level/integrations/tcl-int-02.md)
# Status: ❌
## Wykryte defekty
### ❌ Duży input
#### Reprodukcja defektu:
- Przygotuj ankietę połączoną z arkuszem google sheet i pytaniem typu Free Text
- W odpowiedzi wklej tekst "Pana Tadeusza" i wyślij
#### Rezultat:
Odpowiedź zapisana w Formbricks, a w arkuszu nie, bez informacji o błędzie
#### Oczekiwany wynik:
Powiadomienie ankietera o błędzie zapisu (na przykład mailowo)
### ❌ Utrata dostępu do arkusza
#### Reprodukcja defektu:
- Przygotuj ankietę połączoną z arkuszem google sheet
- Usuń arkusz i wyślij kolejną odpowiedź do ankiety
#### Rezultat:
Brak informacji o utracie dostępu do arkusza. Błąd wyskakuje dopiero przy próbie edycji integracji z nieistniejącym arkuszem. <br><br>
![alt text](/docs/results/integrations/visuals/int-04.png)
#### Oczekiwany wynik:
Powiadomienie ankietera o błędzie zapisu lub utracie do arkusza (na przykład mailowo)
## Dodatkowe uwagi
- ✅ proces OAuth z Google - defektów nie wykryto
<br><br>
- ✅ Mechanizm kolejkowania i dosyłania odpowiedzi w przypadku braku połączenia działajacy poprawnie: defektów nie wykryto
<br><br>
- ⚠️ Przetestuj scenariusze równoczesnego dostępu do arkusza  
W przypadku, gdy odpowiedzi z dwóch ankiet są zapisywane do tego samego arkusza, odpowiedzi mieszają się. Nazwy kolumn są nadpisywane w zależności od tego, do której ankiety należy ostatnia zapisana odpowiedź. 
<br><br>
![alt text](/docs/results/integrations/visuals/int-01.png)
![alt text](/docs/results/integrations/visuals/int-02.png)
![alt text](/docs/results/integrations/visuals/int-03.png)
## Wersja 
Cloud