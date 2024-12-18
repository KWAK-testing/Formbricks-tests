# TCL-INFOSEC-01
> ### Odniesienia
> - [REQ-N-MISC-INFOSEC](../../../requirements.md#req-n-misc-infosec)
> - [REQ-N-INT-PRIVACY](../../../requirements.md#req-n-int-privacy)
> - [TC-INFOSEC-01](../../high-level/infosec.md#tc-infosec-01)

### Cel
Zweryfikować, że system pobiera i przechowuje jedynie niezbędne do działania dane w sposobó zgodny z sekcją 8 standardu OWASP ASVS

## Podejście eksploracyjne
czas sesji: **60 minut**

### Wskazówki
- Zweryfikuj, parametry `scope` w OAuth pod kątem niepotrzebnych dostępów
- Przeglądnij mechanizmy ciasteczek, localstorage itd pod kątem niepotrzebnych prywatnych danych użytkownika
- Przeanalizuj schemat bazy danych pod kątem gromadzonych danych prywatnych