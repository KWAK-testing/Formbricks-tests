# FORMBRICKS TEST PLAN
> Dokument zawiera plan testów (ISO-29119) otwartoźródłówej aplikacji [Formbricks](https://formbricks.com/)

## 1. Wprowadzenie

### Cel testów

### Kontekst biznesowy

### Zakres testów (test scope)


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

### Plany łagodzenia ryzyka

## 6. Metryki i raportowanie

### Kluczowe wskaźniki jakości

### Sposób raportowania wyników testów