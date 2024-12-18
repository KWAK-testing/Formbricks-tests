# TCL-INFOSEC-04
> ### Odniesienia
> - [REQ-N-MISC-INFOSEC](../../../requirements.md#req-n-misc-infosec)
> - [TC-INFOSEC-04](../../high-level/infosec.md#tc-infosec-04)

### Cel
Zweryfikować zgodność implementacji endpointów dotyczących pipelinu, ankietowanych i odpowiedzi ankietowej z sekcją 13 standardu OWASP ASVS

## Podejście eksploracyjne
czas sesji: **60 minut**

### Wskazówki
- Sprawdź blokowanie niewspieranych metod HTTP
- Sprawdzaj złośliwe obiekty JSON, puste pola, nieistniejące pola
- Upewnij się, że walidacja i parsing odbywa się w jednym konkretnym module
- Szukaj alternatywnych endpointów bez zaimplementowanej walidacji