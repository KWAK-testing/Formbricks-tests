# TCL-RESULT-01 (Airtable Integration)
> ### Odniesienia
> - [REQ-INT-Airtable](https://github.com/KWAK-testing/Formbricks-tests/blob/main/docs/requirements.md#req-int-airtable)
> - [TC-INT-01](https://github.com/KWAK-testing/Formbricks-tests/blob/main/docs/test-cases/high-level/integrations.md#tc-int-12)
> - [TCL-INT-01](https://github.com/KWAK-testing/Formbricks-tests/blob/main/docs/test-cases/low-level/integrations/tcl-int-01.md)
# Status: ❌
## Wykryte defekty

### ❌ Duży input
#### Reprodukcja defektu:
- Przygotuj ankietę połączoną z tabelą Airtable i pytaniem typu Free Text
- W odpowiedzi wklej tekst "Pana Tadeusza" i wyślij
#### Rezultat:
Odpowiedź zapisana w Formbricks, a w arkuszu nie, bez informacji o błędzie
#### Oczekiwany wynik:
Powiadomienie ankietera o błędzie zapisu (na przykład mailowo) <br><br>
![alt text](/docs/test-results/integrations/visuals/int-07.png)
![alt text](/docs/test-results/integrations/visuals/int-08.png)
### ❌ Polskie znaki
#### Reprodukcja defektu:
- Przygotuj ankietę połączoną z tabelą Airtable i pytaniem typu Free Text
- W odpowiedzi wklej tekst "ąęóźżćł" i wyślij
#### Rezultat:
Odpowiedź zapisana w Formbricks, a w arkuszu nie, bez informacji o błędzie
#### Oczekiwany wynik:
Powiadomienie ankietera o błędzie zapisu (na przykład mailowo) <br><br>
![alt text](/docs/test-results/integrations/visuals/int-09.png)
![alt text](/docs/test-results/integrations/visuals/int-10.png)
### ❌ Pytanie z wielokrotnym wyborem
#### Reprodukcja defektu:
- Przygotuj ankietę połączoną z tabelą Airtable i pytaniem typu multi-select
- Wyślij odpowiedź na ankietę
#### Rezultat:
Odpowiedź zapisana w Formbricks, a w arkuszu nie, bez informacji o błędzie
#### Oczekiwany wynik:
Powiadomienie ankietera o błędzie zapisu (na przykład mailowo) <br><br>
![alt text](/docs/test-results/integrations/visuals/int-11.png)
![alt text](/docs/test-results/integrations/visuals/int-12.png)

### ❌ Utrata dostępu do tabeli
#### Reprodukcja defektu:
- Przygotuj ankietę połączoną z tabelą Airtable
- Usuń arkusz i wyślij kolejną odpowiedź do ankiety
#### Rezultat:
Brak informacji o utracie dostępu do tabeli. Przy edycji integracji miejsce z nazwą tabeli zostaje ustawione na puste
#### Oczekiwany wynik:
Powiadomienie ankietera o utracie dostępu do tabeli (na przykład mailowo)

### ❌ Utrata dostępu do zarządzania integracją
#### Rezultat:
Brak możliwości zarządzaniem integracjami z Airtable, pomimo udzielonego dostępu. Sytuacja nie zmienia się po usunięciu integracji przez aplikację Airtable. <br><br>
![alt text](/docs/test-results/integrations/visuals/int-05.png)
![alt text](/docs/test-results/integrations/visuals/int-06.png)

## Dodatkowe uwagi
- ✅ Sprawdź proces autoryzacji OAuth z Airtable, zwracając uwagę na poprawność scope i token handling
<br><br>
- ✅ Przetestuj scenariusze błędów: niedostępność API, błędne mapowania, przekroczenie limitów
<br><br>
- ✅ Przetestuj obsługę równoczesnych odpowiedzi od wielu respondentów
## Wersja 
Cloud