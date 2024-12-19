# TCL-INT-10 (Webhook Security)
> ### Odniesienia
> - [REQ-INT-Webhook](https://github.com/KWAK-testing/Formbricks-tests/blob/main/docs/requirements.md#req-int-webhooks)
> - [TC-INT-10](https://github.com/KWAK-testing/Formbricks-tests/blob/misc-low-level-test-cases-int/docs/test-cases/high-level/integrations.md#tc-int-10)

### Cel
Zweryfikować zabezpieczenia webhooków przed SSRF i CSRF.

## Podejście eksploracyjne
czas sesji: **120 minut**

### Wskazówki
- Przetestuj mechanizmy autoryzacji webhooków
- Sprawdź limity na ilość webhooków
- Przetestuj scenariusze kierowania na adresy wewnętrzne
- Zweryfikuj proces rotacji sekretów webhooków
