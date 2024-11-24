# Przypadki testowe wysokiego poziomu - INFOSEC

## TC-INFOSEC-01
Przechowywanie prywatnych informacji
### Wymagania
- REQ-N-INT-Privacy
- OWASP ASVS Sekcja 8 (Data protection)

### Cel
Zweryfikować, że system pobiera i przechowuje jedynie niezbędne do działania dane w sposobó zgodny z sekcją 8 standardu OWASP ASVS


## TC-INFOSEC-02
Kontrola dostępu do third-party integracji

### Wymagania
- REQ-INT-*
- REQ-N-MISC-InfoSec
- OWASP ASVS Sekcja 4 (Access control)

### Cel
Zweryfikować, że możliwość zarządzania integracjami posiadają użytkownicy z odpowiednią rolą:

| Role    | Access |
| ------- | ---- |
| Billing | NO |
| Member  | YES  |
| Manager | YES  |
| Owner   | YES  |

## TC-INFOSEC-03
Walidacja i sanityzacja danych odpowiedzi

### Wymagania
- REQ-INT-*
- REQ-N-MISC-InfoSec
- OWASP ASVS Sekcja 5 (Validation, Snitization and Encoding)

### Cel
Zweryfikować, czy treści i dane odpowiedzi ankietowej są odpowiednio obsługiwane w API pipelinu i odpowiedzi (walidowane, oczyszczane i enkodowane) w celu zapobiegnięcia atakom typu Injection. Sprawdzić, czy program poprawnie obsługuje zbyt długie wartości. Sprawdzić zgodność z sekcją 5 OWASP ASVS


## TC-INFOSEC-4
Pipeline REST API security

### Wymagania
- REQ-INT-*
- REQ-N-MISC-InfoSec
- OWASP ASVS Sekcja 13 (Api and Web Service)

### Cel
Zweryfikować zgodność implementacji endpointó dotyczących pipelinu i odpowiedzi ankietowej z sekcją 13 standardu OWASP ASVS