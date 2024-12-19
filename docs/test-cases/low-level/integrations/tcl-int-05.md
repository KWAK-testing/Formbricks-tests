# TCL-INT-05 (Notion Integration)
> ### Odniesienia
> - [REQ-INT-Notion](https://github.com/KWAK-testing/Formbricks-tests/blob/main/docs/requirements.md#req-int-notion)
> - [TC-INT-05](https://github.com/KWAK-testing/Formbricks-tests/blob/main/docs/test-cases/high-level/integrations.md#tc-int-05)


### Cel
Zweryfikować poprawność przesyłania odpowiedzi ankiet do bazy danych Notion oraz zgodność z wymaganiami OWASP ASVS.

## Podejście eksploracyjne
czas sesji: **90 minut**

### Wskazówki
- Sprawdź proces autoryzacji z API Notion
- Przetestuj mapowanie różnych typów pól ankiety na właściwości w Notion
- Zweryfikuj zachowanie przy zmianach struktury bazy danych w Notion
- Przetestuj scenariusze utraty połączenia i ponownej synchronizacji
- Zweryfikuj proces wyłączania integracji
