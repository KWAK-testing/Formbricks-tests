# TCL-INFOSEC-03
> ### Odniesienia
> - [REQ-INT-*](../../../requirements.md)
> - [REQ-N-MISC-INFOSEC](../../../requirements.md#req-n-misc-infosec)
> - [TC-INFOSEC-03](../../high-level/infosec.md#tc-infosec-03)

### Cel
Zweryfikować, czy treści i dane odpowiedzi ankietowej są odpowiednio obsługiwane w API pipelinu i odpowiedzi (walidowane, oczyszczane i enkodowane) w celu zapobiegnięcia atakom typu Injection. Sprawdzić, czy program poprawnie obsługuje zbyt długie wartości. Sprawdzić zgodność z sekcją 5 OWASP ASVS

## Podejście eksploracyjne
czas sesji: **120 minut**

### Wskazówki
- Przeanalizuj logikę endpointu wejściowego do pipelinu
- Upewnij się, że klucze dostępu nie wyciekają
- Spróbuj ataków injection, zweryfikuj czy sanityzacja jest poprawnie zaimplementowana
- Sprawdzaj komunikaty potencjalnych błędów pod kątem wycieku kluczy, zmiennych środowiskowych i innych danych wrażliwych