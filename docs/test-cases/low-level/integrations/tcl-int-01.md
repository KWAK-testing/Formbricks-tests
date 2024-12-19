# TCL-INT-01 (Airtable Integration)
> ### Odniesienia
> - [REQ-INT-Airtable](https://github.com/KWAK-testing/Formbricks-tests/blob/main/docs/test-cases/high-level/integrations.md#tc-int-01)
> - [TC-INT-01](https://github.com/KWAK-testing/Formbricks-tests/blob/main/docs/requirements.md#req-int-airtable)

### Cel
Zweryfikować poprawność przesyłania odpowiedzi ankiet do tabel Airtable, zgodność z OWASP ASVS oraz możliwość kontroli nad integracją przez użytkownika.

## Podejście eksploracyjne
czas sesji: **90 minut**

### Wskazówki
- Sprawdź proces autoryzacji OAuth z Airtable, zwracając uwagę na poprawność scope i token handling
- Zweryfikuj mapowanie pól ankiety na kolumny w Airtable, testując różne typy danych
- Przetestuj scenariusze błędów: niedostępność API, błędne mapowania, przekroczenie limitów
- Zweryfikuj zachowanie systemu przy usunięciu docelowej tabeli w Airtable
- Przetestuj obsługę równoczesnych odpowiedzi od wielu respondentów
