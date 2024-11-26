# Przypadki testowe wysokiego poziomu - INTEGRATIONS

## TC-INT-01
Integracja z Airtable
### Wymagania
- REQ-INT-Airtable
- OWASP ASVS Sekcja 13 (API and Web Service)

### Cel
Zweryfikować, czy system poprawnie przesyła odpowiedzi ankiet do wybranych tabel Airtable. Sprawdzić, czy dane są przesyłane zgodnie z wymaganiami OWASP ASVS oraz czy użytkownik może wyłączyć automatyczne przesyłanie danych w dowolnym momencie.

## TC-INT-02
Integracja z Google Sheets
### Wymagania
- REQ-INT-Google-Sheets
- OWASP ASVS Sekcja 13 (API and Web Service)

### Cel
Zweryfikować, czy odpowiedzi ankiet są poprawnie przesyłane do wybranych plików Google Sheets oraz czy system obsługuje błędy integracji, generując odpowiednie komunikaty.

## TC-INT-03
Integracja z Make
### Wymagania
- REQ-INT-Make
- OWASP ASVS Sekcja 13 (API and Web Service)

### Cel
Zweryfikować, czy integracja z Make umożliwia automatyzację przepływów pracy zgodnie z dokumentacją oraz spełnia wymogi bezpieczeństwa OWASP ASVS.


## TC-INT-04
Integracja z n8n
### Wymagania
- REQ-INT-n8n
- OWASP ASVS Sekcja 13 (API and Web Service)

### Cel
Zweryfikować, czy system poprawnie konfiguruje automatyzację przepływów pracy na platformie n8n i czy dane są przesyłane zgodnie z zasadami bezpieczeństwa API.


## TC-INT-05
Integracja z Notion
### Wymagania
- REQ-INT-Notion
- OWASP ASVS Sekcja 13 (API and Web Service)

### Cel
Zweryfikować, czy odpowiedzi ankiet są przesyłane do wybranej bazy danych na Notion, spełniając wymagania OWASP ASVS, oraz czy system obsługuje błędy integracji.



## TC-INT-06
Integracja z Slack
### Wymagania
- REQ-INT-Slack
- OWASP ASVS Sekcja 13 (API and Web Service)

### Cel
Zweryfikować, czy odpowiedzi ankiet mogą być przesyłane na wybrany kanał Slack zgodnie z dokumentacją oraz czy system poprawnie obsługuje błędy integracji.



## TC-INT-07
Integracja z WordPress
### Wymagania
- REQ-INT-Wordpress
- OWASP ASVS Sekcja 13 (API and Web Service)

### Cel
Zweryfikować, czy system umożliwia automatyczne przesyłanie ankiet na stronę WordPress oraz czy proces ten spełnia wymogi bezpieczeństwa API i zgodności z OWASP ASVS.



## TC-INT-08
Integracja z Zapier
### Wymagania
- REQ-INT-Zapier
- OWASP ASVS Sekcja 13 (API and Web Service)

### Cel
Zweryfikować, czy system poprawnie przesyła dane do Zapier i aktywuje odpowiednie przepływy zgodnie z dokumentacją oraz wymogami OWASP ASVS.


## TC-INT-09
Obsługa błędów integracji
### Wymagania
- REQ-INT-*
- OWASP ASVS Sekcja 9 (Error Handling and Logging)

### Cel
Zweryfikować, czy system generuje odpowiednie komunikaty o błędach w przypadku nieudanej integracji oraz uniemożliwia przesyłanie niekompletnych danych.



## TC-INT-10
Bezpieczeństwo webhooków
### Wymagania
- Wszystkie REQ-INT-*
- OWASP ASVS Sekcja 12.6 (SSRF Protection)

### Cel
Zweryfikować, czy system uniemożliwia wykorzystanie podatności SSRF i CSRF w integracjach, szczególnie w przypadku webhooków, zgodnie z sekcją 12.6 OWASP ASVS.
