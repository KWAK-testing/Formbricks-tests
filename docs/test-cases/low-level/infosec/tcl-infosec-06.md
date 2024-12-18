# TCL-INFOSEC-06
> ### Odniesienia
> - [REQ-QT-FileUpload](../../../requirements.md#req-qt-fileupload)
> - [REQ-N-MISC-INFOSEC](../../../requirements.md#req-n-misc-infosec)
> - [TC-INFOSEC-06](../../high-level/infosec.md#tc-infosec-06)

### Cel
Zweryfikować czy uploadowane pliki w formie odpowiedzi są obsługiwane zgodnie z OWASP ASVS. (Potencjalne podatności: DOS, Injection, LFI, RFI, SSRF, XSS)

## Podejście eksploracyjne
czas sesji: **120 minut**

### Wskazówki
- Duży plik
- Zmiany rozszerzenia
- Sprawdzić, gdzie pliki są przechowywane i jak serwowane
- Stripowanie metadanych???
- Przeanalizuj logikę uploadu