# TCL-INFOSEC-07
> ### Odniesienia
> - [REQ-QT-LogicEditor](../../../requirements.md#req-misc-logiceditor)
> - [REQ-QT-RecallData](../../../requirements.md#req-misc-recalldata)
> - [REQ-N-MISC-INFOSEC](../../../requirements.md#req-n-misc-infosec)
> - [TC-INFOSEC-06](../../high-level/infosec.md#tc-infosec-07)

### Cel
Zweryfikować czy dane pochodzące z logiki ankiety (pomijanie pytań zmienne itd) są obsługiwane zgodnie z OWASP ASVS uniemożliwiając na przykład XSS. Priorytetem jest wykonanie skryptu po stronie twórcy ankiety pod wpływem akcji odpowiadająceg. Sytuacja w drugą stronę może nie być błędem bezpieczeństwa zalecana, szczegółowa analiza

## Podejście eksploracyjne
czas sesji: **120 minut**

### Wskazówki
- Analiza przetwarzania zmiennych i warunków logicznych
- Używaj XSS polyglot
- Zweryfikuj logikę walidacji i sanityzacji