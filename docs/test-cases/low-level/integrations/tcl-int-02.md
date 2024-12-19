# TCL-INT-02 (Google Sheets Integration)
> ### Odniesienia
> - [REQ-INT-Google-Sheets](https://github.com/KWAK-testing/Formbricks-tests/blob/main/docs/requirements.md#req-int-google-sheets)
> - [TC-INT-02](https://github.com/KWAK-testing/Formbricks-tests/blob/main/docs/test-cases/high-level/integrations.md#tc-int-02)


### Cel
Zweryfikować poprawność przesyłania odpowiedzi do Google Sheets, obsługę błędów oraz zgodność z wymaganiami bezpieczeństwa OWASP ASVS.

## Podejście eksploracyjne
czas sesji: **90 minut**

### Wskazówki
- Sprawdź proces OAuth z Google
- Przetestuj różne formaty danych w odpowiedziach (teksty, daty, liczby, załączniki)
- Zweryfikuj zachowanie przy utracie dostępu do arkusza
- Sprawdź mechanizm buforowania danych w przypadku problemów z połączeniem
- Przetestuj scenariusze równoczesnego dostępu do arkusza
