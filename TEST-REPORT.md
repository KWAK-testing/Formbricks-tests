# Raport z testów oprogramowania Formbricks

## 1. Informacje ogólne

### 1.1. Zakres testów
Testy obejmowały aplikację Formbricks w dwóch wersjach:
- Wersja cloudowa
- Wersja self-hosted

### 1.2. Zespół testowy
**Organizacja: KWAK**
- Jakub Stępień
- Weronika Żygis
- Alicja Wojciechowska
- Kacper Myćka

Nadzór: dr inż. Jarosław Hryszko

### 1.3. Testowane moduły
1. Integrations
2. Question Types
3. Miscellaneous
4. InfoSec

## 2. Zakres wymagań

| Kategoria | Wymaganie | Status |
|-----------|-----------|--------|
| Integrations | REQ-INT-Airtable | Wykonano |
| Integrations | REQ-INT-Google-Sheets | Wykonano |
| Integrations | REQ-INT-n8n | Pominięto |
| Integrations | REQ-INT-Notion | Wykonano |
| Integrations | REQ-INT-Slack | Wykonano |
| Integrations | REQ-INT-Wordpress | Pominięto |
| Integrations | REQ-INT-Zapier | Wykonano |
| Integrations | REQ-INT-Webhooks | Wykonano |
| Integrations | REQ-INT-Remove | Wykonano |
| Integrations | REQ-N-INT-Privacy | Wykonano |
| Question Types | REQ-QT-FileUpload | Wykonano |
| Question Types | REQ-QT-MeetinScheduler | Wykonano |
| Question Types | REQ-QT-PictureSelection | Wykonano |
| Question Types | REQ-QT-FreeText | Wykonano |
| Miscellaneous | REQ-MISC-AddMultimedia | Wykonano |
| Miscellaneous | REQ-MISC-LogicEditor | Wykonano |
| Miscellaneous | REQ-MISC-RecallData | Wykonano |
| InfoSec | REQ-N-MISC-InfoSec | Wykonano |

## 3. Wykonane testy

#### Integrations
- TCL-INT-01
- TCL-INT-02
- TCL-INT-05
- TCL-INT-06
- TCL-INT-08
- TCL-INT-09
- TCL-INT-10
- TCL-INT-11

#### Miscellaneous
- TCL-MISC-01
- TCL-MISC-02
- TCL-MISC-03
- TCL-MISC-04

#### Question Types
- TCL-QT-01
- TCL-QT-02
- TCL-QT-03

#### InfoSec
- TCL-INFOSEC-01
- TCL-INFOSEC-03
- TCL-INFOSEC-04
- TCL-INFOSEC-05
- TCL-INFOSEC-06
- TCL-INFOSEC-07

## 4. Statystyki testów

| Moduł | Testy bez defektów | Wykryte defekty |
|-------|-------------------|-----------------|
| Integrations | 2/8 | 12 |
| Miscellaneous | 4/4 | 0 |
| Question Types | 1/3 | 2 |
| InfoSec | 6/6 | 0 |
| Pozostałe | - | 2 |

![alt text](/charts/statistics.png)

## 5. Odstępstwa od planu testów

### Przypadki usunięte z zakresu
1. Ze względu na brak możliwości integracji w wersji self-hosted:
   - TCL-INT-03 (Make)

2. Ze względu na ograniczony czas:
   - TCL-INT-04 (n8n)
   - TCL-INT-07 (Wordpress)

3. Inne powody:
   - TCL-QT-04 (testy wykonywane przez inny zespół)
   - TCL-INFOSEC-02 (role niedostępne w darmowej wersji)

## 6. Napotkane problemy

1. Nowe wydanie Formbricks (3.1.0) zawierało defekt uniemożliwiający wykonanie testów na wersji self-hosted
2. Ograniczenia dostępności funkcjonalności:
   - Część funkcji dostępna tylko w wersji self-hosted
   - Część funkcji dostępna tylko w wersji płatnej
3. Opóźnienia w otrzymaniu wyników od zewnętrznego zespołu testowego

## 7. Dokumentacja i referencje

### Repozytoria i zasoby
- Dokumentacja: [GitHub - docs](https://github.com/KWAK-testing/Formbricks-tests/tree/main/docs)
- Dane testowe: [GitHub - seed](https://github.com/KWAK-testing/Formbricks-tests/tree/main/seed)
- Narzędzia: [GitHub - tools](https://github.com/KWAK-testing/Formbricks-tests/tree/main/tools/setup)
- Status defektów: [GitHub - defects](https://github.com/orgs/KWAK-testing/projects/7)
- Status tasków: [GitHub - tasks](https://github.com/orgs/KWAK-testing/projects/2)

## 8. Wnioski

1. Optymalizacja zakresu wymagań:
   - Należy unikać nadmiernej liczby wymagań
   - Każdy moduł aplikacji może zawierać defekty

2. Priorytety w procesie testowym:
   - Testy powinny mieć wyższy priorytet
   - Warto rozpocząć testy wcześniej, nawet kosztem skrócenia fazy planowania
   - Wczesne wykrycie problemów z dokumentacją ułatwia ich naprawę

3. Rekomendacje:
   - Szybsze rozpoczęcie fazy testów
   - Lepsze planowanie dostępności zasobów
   - Uwzględnienie ograniczeń wersji darmowych w planowaniu