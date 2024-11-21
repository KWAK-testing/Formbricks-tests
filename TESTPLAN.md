# FORMBRICKS TEST PLAN
> Dokument zawiera plan testów (ISO-29119) otwartoźródłówej aplikacji [Formbricks](https://formbricks.com/)

## 1. Wprowadzenie
 ### Cel testów 

Celem planu testu jest określenie strategii i zakresu testów oraz sporządzenie harmonogramu działań niezbędnych do weryfikacji poprawnego działania aplikacji Formbricks. Testy nie tylko przyczynią się do zapewnienia bezpieczeństwa i prywatności danych użytkowników czy wykryciu krytycznych defektów, ale także do zwiększenia kompetencji zespołu.

### Kontekst biznesowy aplikacji

Formbricks to wszechstronna, otwartoźródłowa platforma oferująca narzędzia ułatwiające tworzenie ankiet i zbieranie opinii klientów. Jako projekt open source, Formbricks zapewnia dużą elastyczność w tworzeniu nowych kwestionariuszy i niski koszt wdrożenia, jednocześnie dbając o bezpieczeństwo i prywatność.


### Zakres testów

Zakres testów obejmuje sprawdzanie kluczowych funkcjonalności aplikacji, w tym:

- Integracja z zewnętrznymi platformami, takimi jak Airtable, Google Sheets, Notion, Slack, Zapier, Wordpress, Make i n8n.

- Załączanie multimediów do pytań i odbieranie plików o zadanych rozszerzeniach od ankietowanych.

- Rozbudowana działanie ankiet - automatyczne uzupełnianie danych, tworzenie złożonej logiki warunkowej, automatyczne wyświetlanie kwestionariuszy w odpowiedzi na zdarzenie w aplikacji.

- Szeroka możliwość personalizowania ankiet - opcja nadpisania przewodniego stylu i pliku CSS. 

Typy testów, które nie będą uwzględniane:

- Jednostkowe – skupiamy się na wyższych poziomach testowania.

- Wydajnościowe – z uwagi na ograniczenia związane z self-hostingiem

- Regresji – brak potrzeby w obecnym kontekście rozwoju aplikacji.



## 2. Cele i kryteria testów

### Kryteria wejścia wyjścia

### Kryteria akceptacji


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

### Przypisanie ról i odpowiedzialności w zespole


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

### Sposób raportowania wyników testów
