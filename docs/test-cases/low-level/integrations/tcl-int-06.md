# TCL-INT-06 (Slack Integration)
> ### Odniesienia
> - [REQ-INT-Slack](https://github.com/KWAK-testing/Formbricks-tests/blob/main/docs/requirements.md#req-int-slack)
> - [TC-INT-06](https://github.com/KWAK-testing/Formbricks-tests/blob/main/docs/test-cases/high-level/integrations.md#tc-int-06)

### Cel
Zweryfikować poprawność przesyłania powiadomień na kanały Slack oraz obsługę błędów integracji.

## Podejście eksploracyjne
czas sesji: **60 minut**

### Wskazówki
- Sprawdź proces OAuth z workspace Slack'a
- Przetestuj formatowanie wiadomości dla różnych typów odpowiedzi
- Zweryfikuj obsługę limitów API Slack'a
- Sprawdź zachowanie przy usunięciu kanału i zmianie uprawnień
- Przetestuj mechanizm kolejkowania wiadomości przy problemach z API
- Zweryfikuj proces dezaktywacji integracji ze Slack
