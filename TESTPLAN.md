# FORMBRICKS TEST PLAN
> Dokument zawiera plan testów (ISO-29119) otwartoźródłówej aplikacji [Formbricks](https://formbricks.com/)

## 1. Wprowadzenie

### Cel testów

### Kontekst biznesowy

### Zakres testów (test scope)


## 2. Cele i kryteria testów

### Kryteria wejścia
- Środowisko testowe zostało poprawnie skonfigurowane:
  - obraz Docker zawierający aplikację Formbricks w wersji self-hosted.  
  - Framework Playwright do automatyzacji testów.  
  - Python do tworzenia dodatkowych skryptów wspierających testy.  
  - Przeglądarki (Chrome, Firefox, Edge) do testów kompatybilności. 
- Wszystkie wymagane funkcjonalności są gotowe do testowania.
- Zespół testerski ma przypisane konkretne zadania.

### Kryteria wyjścia
- Przeprowadzono pełną weryfikację kluczowych funkcji zgodnie z dokumentacją. 
- Wszystkie testy automatyczne zostały uruchomione i mają status zaakceptowany lub zgłoszono związane z nimi błędy do twórców.  
- Przeprowadzono pełną weryfikację kluczowych funkcji zgodnie z dokumentacją.  
- Został przygotowany końcowy raport testów. 

### Kryteria akceptacji

- **Integracje z systemami zewnętrznymi**  
  System poprawnie przesyła dane do zewnętrznych serwisów (np. Airtable, Google Sheets, Slack, Notion) zgodnie z dokumentacją i obsługuje wymagane funkcje integracyjne. Użytkownik może w dowolnym momencie wyłączyć automatyczne przesyłanie danych do systemów zewnętrznych.

- **Przetwarzanie odpowiedzi z ankiet**  
  Odpowiedzi ankiet są automatycznie przesyłane do zintegrowanych systemów lub aktywują odpowiednie triggery (np. Make, Zapier).

- **Bezpieczeństwo i zarządzanie dostępem**  
  System zapewnia przesyłanie i przechowywanie tylko danych niezbędnych do realizacji funkcji, jednocześnie uniemożliwiając dostęp nieautoryzowanym użytkownikom oraz blokując nieautoryzowane działania.

- **Obsługa błędów integracji**  
  W przypadku problemów z integracją system generuje komunikaty o błędach i zapobiega przesyłaniu niekompletnych danych.

- **Webhooks**  
  System umożliwia definiowanie webhooków, które są aktywowane przy tworzeniu, aktualizacji lub zakończeniu odpowiedzi w ankiecie.

- **Personalizacja ankiet**  
  Ankiety mogą być dostosowywane wizualnie (np. poprzez CSS) i wstępnie uzupełniane danymi dostarczonymi przez parametry URL.

- **Typy pytań**  
  Wszystkie typy pytań (np. tekstowe, załączniki, wybór obrazka, rezerwacja spotkań) działają zgodnie z założeniami.

- **Logika i warunki ankiet**  
  System umożliwia tworzenie logiki opartej na warunkach i akcjach, zapewniając spersonalizowane wyświetlanie pytań.


### Kryteria zawieszenia
- Testy są wstrzymywane w przypadku awarii środowiska testowego (np. błąd konfiguracji Docker, niedostępność aplikacji).  
- Wystąpienie błędów krytycznych uniemożliwiających dalsze testowanie danej funkcjonalności.  
- Problemy organizacyjne, takie jak brak dostępu do wymaganych zasobów lub komunikacji z zespołem developerskim.  
- Testy mogą zostać wznowione po usunięciu przeszkód i ponownym przeglądzie środowiska testowego.  

## 3. Strategia testowania

### Podejście do testowania

### Typy testów

### Narzędzia i środowisko testowe


## 4. Harmonogram i zasoby

### Harmonogram testów

### Przypisanie ról i odpowiedzialności w zespole


## 5. Zarządzanie ryzykiem

### Potencjalne ryzyka i ich wpływ na proces testowy

### Plany łagodzenia ryzyka

## 6. Metryki i raportowanie

### Kluczowe wskaźniki jakości

### Sposób raportowania wyników testów
