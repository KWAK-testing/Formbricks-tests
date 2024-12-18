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


## TC-INFOSEC-04
REST API security

### Wymagania
- REQ-INT-*
- REQ-N-MISC-InfoSec
- OWASP ASVS Sekcja 13 (Api and Web Service)

### Cel
Zweryfikować zgodność implementacji endpointów dotyczących pipelinu, ankietowanych i odpowiedzi ankietowej z sekcją 13 standardu OWASP ASVS

## TC-INFOSEC-05
SSRF & CSRF

### Wymagania
- REQ-INT-*
- REQ-N-MISC-InfoSec
- Sekcja 12.6 (SSRF Protection) OWASP ASVS

### Cel
Zweryfikować czy funkcje integracji a zwłaszcza webhooków uniemożliwiają wykorzystanie podatności SSRF (lub ewentualnie CSRF)


## TC-INFOSEC-06
XSS/DOS/CSRF przez upload pliku

### Wymagania
- REQ-QT-FileUpload
- REQ-N-MISC-InfoSec
- Sekcja 12 (Files and resources) OWASP ASVS

### Cel
Zweryfikować czy uploadowane pliki w formie odpowiedzi są obsługiwane zgodnie z OWASP ASVS. (Potencjalne podatności: DOS, Injection, LFI, RFI, SSRF, XSS)

## TC-INFOSEC-07
XSS/CSRF... poprzez Recall i Conditional logic

## Wymagania
- REQ-MISC-LogicEditor
- REQ-MISC-RecallData
- REQ-N-MISC-InfoSec
- Sekcja 5 (Validation, Sanitization and Encoding) OWASP ASVS

## Cel
Zweryfikować czy dane pochodzące z logiki ankiety (pomijanie pytań zmienne itd) są obsługiwane zgodnie z OWASP ASVS uniemożliwiając na przykład XSS. Priorytetem jest wykonanie skryptu po stronie twórcy ankiety pod wpływem akcji odpowiadająceg. Sytuacja w drugą stronę może nie być błędem bezpieczeństwa zalecana, szczegółowa analiza