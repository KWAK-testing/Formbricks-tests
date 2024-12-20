# TCL-QT-04

> ### Odniesienia
>- [REQ-QT-MeetinScheduler](../../../docs/requirements.md#req-qt-meetinscheduler)
>- [TC-QT-02](../../high-level/question-types.md#tc-qt-02)
>- [TC-QT-03](../../high-level/question-types.md#tc-qt-03)
>- [TC-QT-04](../../high-level/question-types.md#tc-qt-04)

### Cel
Zweryfikować poprawność integracji pytania o rezerwację spotkań z self-hosted wersją platformy cal.com, w tym prawidłowe przetwarzanie custom hostname.

### Warunki wstępne:
- Użytkownik posiada aktywne konto w aplikacji Formbricks.
- Użytkownik znajduje się na ekranie wypełniania ankiety zawierającej pytanie typu MeetingScheduler.
- Konfiguracja systemu cal.com z niestandardowym hostname została zakończona. Dla testu TCL-QT-04-02 wymagana konfiguracja wersji self-hosted.

### Kroki testowe:
1. Utwórz ankietę z pytaniem MeetingScheduler zgodnie z ustawieniami i ich ograniczeniami z `Settings`.
2. Wprowadź wskazane dane w `Input`.
3. Sprawdź, czy `Expected`.

| Test case            | Setting                                      | Input                                                                 | Expected                                                                                       |
|----------------------|----------------------------------------------|----------------------------------------------------------------------|-----------------------------------------------------------------------------------------------|
| TCL-QT-04-01         | Cal.com username zgodny z skonfigurowanym kontem cal.com                                         | Data: 2024-12-20, Godzina: 15:00, Imię: Jan, Nazwisko: Kowalski, Email: jan.kowalski@example.com | Spotkanie zostało poprawnie utworzone.                                 |
| TCL-QT-04-02         | Custom hostname ustawiony dla skonfigurowanej wersji self-hosted serwisu cal.com                  | Data: 2024-12-20, Godzina: 15:00, Imię: Anna, Nazwisko: Nowak, Email: anna.nowak@example.com | Spotkanie zostało poprawnie utworzone z przetworzeniem custom hostname. |
| TCL-QT-04-03       | Cal.com username zgodny z skonfigurowanym kontem cal.com                   | Data: 2024-12-20, Godzina: 15:00, Imię: Jan, Nazwisko: Kowalski, Email: jan.kowalski@com | Odpowiedni komunikat błędu (niepoprawny format emaila).                                       |
| TCL-QT-04-04     | Cal.com username zgodny z skonfigurowanym kontem cal.com                        | Data: 2024-12-20, Godzina: 15:00, Imię: Jan, Nazwisko: Kowalski, Email: (brak) | Odpowiedni komunikat błędu (pole wymagane).                                                   |
| TCL-QT-04-05     | Cal.com username zgodny z skonfigurowanym kontem cal.com                        | Data: 2024-12-20, Godzina: 15:00, Imię: (brak), Nazwisko: Kowalski, Email: jan.kowalski@example.com | Odpowiedni komunikat błędu (pole wymagane).                                                   |
| TCL-QT-04-06         | Cal.com username zgodny z skonfigurowanym kontem cal.com                             | Data: 2024-12-20, Godzina: 15:00, Imię: Jan, Nazwisko: Kowalski, Email: jan.kowalski@example.com | Spotkanie zostało poprawnie utworzone wraz z dodaniem gości. Goście: guest1@example.com, guest2@example.com                               |
| TCL-QT-04-07         | Cal.com username zgodny z skonfigurowanym kontem cal.com                        | Strefa organizatora: UTC+1, Strefa rezerwującego: UTC-5, Data: 2024-12-20, Godzina: 15:00, Imię: Jan, Nazwisko: Kowalski, Email: jan.kowalski@example.com | Spotkanie utworzone poprawnie, czas przeliczony zgodnie ze strefą czasową.    
