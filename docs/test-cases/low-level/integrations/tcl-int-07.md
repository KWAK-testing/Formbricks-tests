# TCL-INT-07 (WordPress Integration)
> ### Odniesienia
> - [REQ-INT-Wordpress](https://github.com/KWAK-testing/Formbricks-tests/blob/main/docs/requirements.md#req-int-wordpress)
> - [TC-INT-07](https://github.com/KWAK-testing/Formbricks-tests/blob/main/docs/test-cases/high-level/integrations.md#tc-int-07)


### Cel
Zweryfikować poprawność publikacji ankiet na WordPress oraz zgodność z wymogami bezpieczeństwa OWASP ASVS.

## Podejście eksploracyjne
czas sesji: **90 minut**

### Wskazówki
- Sprawdź proces autoryzacji z API WordPress'a
- Przetestuj różne tryby publikacji (draft, published, private)
- Zweryfikuj obsługę błędów API
- Sprawdź zachowanie przy problemach z połączeniem
- Zweryfikuj proces wyłączania integracji
