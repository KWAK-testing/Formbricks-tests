# FORMBRICKS TEST PLAN
> Dokument zawiera plan testów (ISO-29119) otwartoźródłówej aplikacji [Formbricks](https://formbricks.com/)

> DOC ID: TP-Formbricks-v0.1

## 1. Wprowadzenie
 ### Cel testów 

Celem planu testu jest określenie strategii i zakresu testów oraz sporządzenie harmonogramu działań niezbędnych do weryfikacji poprawnego działania aplikacji Formbricks. Testy nie tylko przyczynią się do zapewnienia bezpieczeństwa i prywatności danych użytkowników czy wykryciu krytycznych defektów, ale także do zwiększenia kompetencji zespołu.

### Kontekst biznesowy aplikacji

Formbricks to wszechstronna, otwartoźródłowa platforma oferująca narzędzia ułatwiające tworzenie ankiet i zbieranie opinii klientów. Jako projekt open source, Formbricks zapewnia dużą elastyczność w tworzeniu nowych kwestionariuszy i niski koszt wdrożenia, jednocześnie dbając o bezpieczeństwo i prywatność.


### Zakres testów

Zakres testów obejmuje sprawdzanie kluczowych funkcjonalności aplikacji, w tym:

- Integracja z zewnętrznymi platformami, takimi jak Airtable, Google Sheets, Notion, Slack, Zapier, Wordpress, Make i n8n.

- Załączanie multimediów do pytań i odbieranie plików o zadanych rozszerzeniach od ankietowanych.

- Rozbudowane działanie ankiet - automatyczne uzupełnianie danych, tworzenie złożonej logiki warunkowej, automatyczne wyświetlanie kwestionariuszy w odpowiedzi na zdarzenie w aplikacji.

Oraz weryfikację bezpieczeństwa platformy, zgodności z standardem **OWASP ASVS** i poszanowania prywatności użytkowników.

Typy i poziomy testów, które nie będą uwzględniane:

- Jednostkowe – skupiamy się na wyższych poziomach testowania.

- Wydajnościowe – z uwagi na złożonośći pomiarów związane z self-hostingiem, oraz niski priorytet wydajności w wymaganiach

- Regresji – brak potrzeby w obecnym kontekście rozwoju aplikacji.



## 2. Cele i kryteria testów

### Kryteria wejścia
- Środowisko i narzędzia testowe zostały poprawnie skonfigurowane:
  - obraz Docker zawierający aplikację Formbricks w wersji self-hosted.  
  - Framework Playwright do automatyzacji testów.  
  - Python do tworzenia dodatkowych skryptów wspierających testy.  
  - Przeglądarki (Chrome, Firefox, Edge) do testów kompatybilności. 
- Wszystkie wymagane funkcjonalności są gotowe do testowania.
- Przypadki testowe zaprojektowane w sposób pozwalający na ich wykonanie
- Zespół testerski ma przypisane konkretne zadania.

### Kryteria wyjścia
- Przeprowadzono pełną weryfikację kluczowych funkcji zgodnie z dokumentacją. 
- Wszystkie testy automatyczne zostały uruchomione przynajmniej raz i mają status zaakceptowany lub zgłoszono związane z nimi błędy do twórców.  
- Został przygotowany końcowy raport testów. 

### Kryteria akceptacji

- **Integracje z systemami zewnętrznymi**  
  System poprawnie przesyła dane do zewnętrznych serwisów (np. Airtable, Google Sheets, Slack, Notion) zgodnie z dokumentacją i obsługuje wymagane funkcje integracyjne. Użytkownik może w dowolnym momencie wyłączyć automatyczne przesyłanie danych do systemów zewnętrznych.

- **Przetwarzanie odpowiedzi z ankiet**  
  Odpowiedzi ankiet są automatycznie przesyłane do zintegrowanych systemów lub aktywują odpowiednie triggery (np. Make, Zapier).

- **Bezpieczeństwo i zarządzanie dostępem**  
  - System zapewnia przesyłanie i przechowywanie tylko danych niezbędnych do realizacji funkcji, jednocześnie uniemożliwiając dostęp nieautoryzowanym użytkownikom oraz blokując nieautoryzowane działania.
  - System spełnia wymagania zdefiniowane w [OWASP Application Security Verifictation Standard](https://owasp.org/www-project-application-security-verification-standard/) a w szególności wymagania zdefiniowane w punktach:
      - V2 Authentication
      - V3 Session Management
      - V4 Access Control
      - V5 Validation, Sanitization and Encoding
      - V8 Data Protection
      - V9 Communication
      - V12 Files and Resources
      - V13 API and Web Service

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

W procesie testowym będą wykorzystywane 2 skrajne podejścia:
1. Testy funkcjonalne zautomatyzowane z reguły oparte na technikach czarnoskrzynkowych
2. Testy niefunkcjonalne, bezpieczeństwa, eksploracyjne wykonywane głównie manualnie i z reguły oparte na technikach białoskrzynkowych

W trakcie całego procesu procesu strategia testowania będzie płynnie przechodzić z pierwszej w drugą.

Priorytet testów wygląda następująco (od najwyższego):
1. Testy pipelinu/integracji thirdparty
2. Pozostałe testy funkcjonalne
3. Testy bezpieczeństwa i testy eksploracyjne, weryfikacja wymagań dotyczących prywatności

Testy będą przeprowadzane w kolejności od priorytetu najwyższego do najniższego z doborem odpowiedniej strategii:
1. Testy pipelinu/integracji thirdparty: **Podejście 1**
2. Pozostałe testy funkcjonalne **Podejście 1/2 dobierane do przypadku testowego**
3. Testy bezpieczeństwa i testy eksploracyjne, weryfikacja wymagań dotyczących prywatności **Podejście 2**

Kolejność testów ma sprzyjać zaznajamianiu się z systemem członków zespołu, w celu osiągnięcia jak najlepszego zrozumienia działania systemu w momencie wykonywania testów eksploracyjnych pod koniec procesu

### Typy testów
Jak wynika z poprzedniego punktu
- Testy funkcjonalne, e2e, automatyczne
- Testy eksploracyjne, niefunkcjonalne, manualne

### Narzędzia i środowisko testowe

- Środowiskiem testowym będzie dostarczony przez twórców obraz docker
- Narzędzie do testów automatycznych: [Playwright](https://playwright.dev/)
- Pozostałe skrypty: Python

## 4. Harmonogram i zasoby

### Harmonogram testów

| Data        | Zadanie                                                                                       |
|-------------|-----------------------------------------------------------------------------------------------|
| 08.11.2024  | Przedstawienie zespołu, członków i ich zadań, oraz rozpoznanych ryzyk i kryteriów wyboru Formbricks. |
| 15.11.2024  | Przedstawienie specyfikacji wymagań.                                                         |
| 22.11.2024  | Przedstawienie planu testów.                                                                |
| 29.11.2024  | Przypadki testowe - iteracja 1: przypadki wysokopoziomowe.  |
| 06.12.2024  | Przypadki testowe - iteracja 2: przypadki niskopoziomowe.  |
| 13.12.2024  | Testy - iteracja 1: testowanie przypadków innego zespołu i programu (wynika z formatu zajęć).    |
| 20.12.2024  | Testy - iteracja 2: testowanie wybranych funkcjonalności Formbricks. Testy pipelinu/integracji thirdparty. |
| 03.01.2025  | Testy - iteracja 3: testowanie wybranych funkcjonalności Formbricks. Pozostałe testy funkcjonalne. |
| 10.01.2025  | Testy - iteracja 4: testowanie wybranych funkcjonalności Formbricks. Testy bezpieczeństwa i testy eksploracyjne, weryfikacja wymagań dotyczących prywatności. |
| 17.01.2025  | Raporty z testów (prezentacja + oneslider).                                                   |
| 24.01.2025  | Contingency reserve (rezerwa czasowa).                                                       |

### Przypisanie ról i odpowiedzialności w zespole
- **Zarządzanie repozytorium, wybranymi narzędziami i środowiskiem testowym**: Kuba.  
- **Konsultacje dotyczące doświadczeń użytkownika (UX/UI)**: Weronika.
- **Sporządzanie notatek ze spotkań zesopołu**: Ala.  
- **Komunikacja z zespołem Formbricks**: Kacper.
- **Testowanie funkcjonalności**: Wszyscy członkowie zespołu zgodnie z podziałem zadań.    
- **Zgłaszanie i kontaktowanie się w sprawie wykrytych defektów**: Osoba, która znajdzie defekt, jest odpowiedzialna za jego zgłoszenie oraz komunikację z odpowiednimi osobami.  


## 5. Zarządzanie ryzykiem

### Potencjalne ryzyka i ich wpływ na proces testowy

1. Niewystarczające umiejętności i brak doświadczenia zespołu testerskiego może skutkować niewykryciem istniejących defektów. (wypływ wysoki, prawdopodobieństwo niskie)

2. Wielkość aplikacji i różnorodne funkcjonalności skomplikują testy przez co będą one niedokładne. (wpływ średni, prawdopodobieństwo średnie)

3. Zły wybór modułu, który będzie przedmiotem testów. (wpływ średni, prawdopodobieństwo średnie)

4. Ograniczony bądź zerowy kontakt z twórcami. (wpływ wysoki, prawdopodobieństwo niskie)

5. Problemy z ustalaniem terminów spotkań. (wpływ niski, prawdopodobieństwo wysokie)

### Plany łagodzenia ryzyka

1. Podniesienie kwalifikacji zespołu oraz zapytanie twórców o moduły, które nie są wystarczająco przetestowane.

2. Wybór konkretnych modułów i funkcjonalności aplikacji.

3. Dokładna analiza kodu źródłowego, zgłoszonych defektów i problemów. Skorzystanie z zasady Pareto.

4. Ustalenie innych kanałów komunikacji.

5. Ustalanie spotkań z wyprzedzeniem, przy wykorzystaniu narzędzi ułatwiających planowanie.

## 6. Metryki i raportowanie

### Kluczowe wskaźniki jakości
- pokrycie testów
- ilość błędów krytycznych (wg uznania zespołu, odpowiednio oznaczone na GitHubie)
- ilość przypadków testowych weryfikująca wymagania OWASP ASVS
- ilość wykrytych błędów bezpieczeństwa

### Sposób raportowania wyników testów
- rejestrowanie defektu na tablicy projektu na GitHubie KWAK i przypisanie go do siebie
- W przypadku:
  - Błędu bezpieczeństwa: zgłoszenie błędu przez email, lub inną niepubliczną metodą podaną w README repozytorium formbricksa
  - Innego błędu: zgłoszenie buga do Issues na GitHubie Formbricks
- podtrzymywanie kontaktu z twórcami
- w przypadku potwierdzenia błędu i odpowiednie oznaczenie go na GitHubie KWAK
- w przypadku naprawienia błędu retesty i odpowiednie oznaczenie na GitHubie KWAK


## 7. Przydatne linki
- **Repozytorium testów**: [https://github.com/KWAK-testing/Formbricks-tests](https://github.com/KWAK-testing/Formbricks-testse)
- **Repozytorium formbricksa**: [https://github.com/formbricks/formbricks](https://github.com/formbricks/formbricks)
- **OWASP ASVS**: [https://owasp.org/www-project-application-security-verification-standard/](https://owasp.org/www-project-application-security-verification-standard/)
