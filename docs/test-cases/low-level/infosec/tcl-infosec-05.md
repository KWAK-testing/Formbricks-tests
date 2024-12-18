# TCL-INFOSEC-05
> ### Odniesienia
> - [REQ-N-MISC-INFOSEC](../../../requirements.md#req-n-misc-infosec)
> - [TC-INFOSEC-05](../../high-level/infosec.md#tc-infosec-05)

### Cel
Zweryfikować czy funkcje integracji a zwłaszcza webhooków uniemożliwiają wykorzystanie podatności SSRF (lub ewentualnie CSRF)


## Podejście eksploracyjne
czas sesji: **60 minut**

### Wskazówki
- Sprawdź czy white-listowanie zasobaów jest poprawnie zaimplementowane
- Przeanalizuj mechanizm webhookó, jakie headery ustawia, czy załącza jakieś metadana, które można wykorzystać
- Webhook do siebie samego?