# TCL-INFOSEC-02

> ### Odniesienia
> - [REQ-N-MISC-INFOSEC](../../../requirements.md#req-n-misc-infosec)
> - [TC-INFOSEC-02](../../high-level/infosec.md#tc-infosec-02)

### Cel
Zweryfikować, że możliwość zarządzania integracjami posiadają użytkownicy z odpowiednią rolą:

| Role    | Access |
| ------- | ---- |
| Billing | NO |
| Member  | YES  |
| Manager | YES  |
| Owner   | YES  |

## Podejście eksploracyjne
czas sesji: **90 minut**

### Wskazówki
- Przeanalizuj mechanizmy Access Control w poszukiwaniu w poszukiwaniu błędów Broken Access Control
- Zwróć uwagę na sposób przyznawania ról, przełączanie kontekstów, dane kontrolowane przez użytkownika, a używane procesie autoryzacji