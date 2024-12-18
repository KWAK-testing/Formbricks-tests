# TCL-MISC-04

> ### Odniesienia
> - [REQ-MISC-RecallData](../../../requirements.md#req-misc-RecallData)
> - [TC-MISC-10](../../high-level/misc.md#tc-misc-10)
> - [TC-MISC-11](../../high-level/misc.md#tc-misc-11)
> - [TC-MISC-12](../../high-level/misc.md#tc-misc-12)
> - [TC-MISC-13](../../high-level/misc.md#tc-misc-13)
> - [TC-MISC-14](../../high-level/misc.md#tc-misc-14)


### Cel
Sprawdzenie możliwości dynamicznego wstawiania odpowiedzi i umieszczania ich w kolejnych pytaniach lub opisach. Sprawdzenie obsługi błędów w przypadku brakujących danych i zmiany architektury ankiety.


### Warunki wstępne:
- Użytkownik posiada aktywne konto w aplikacji Formbricks.  
- Użytkownik znajduje się na ekranie dodawania pytania do ankiety.

### Kroki testowe:
  1. Stworzenie ankiety
       1. Utwórz pytania zgodnie z `Questions`.
       2. Zapisz ankietę.

  2. Wpisanie danych
       1. Wpisz odpowiedzi na pytania zgodnie z `Input` (spacje w danych zostały oznaczone jako '_').

  3. Sprawdź czy `Expected`.
    


Q1: <br>![alt text](/docs/test-cases/low-level/misc/visuals/image-11.png) <br>  
Q2: <br>![alt text](/docs/test-cases/low-level/misc/visuals/image-12.png)<br>
Q3: <br>![alt text](/docs/test-cases/low-level/misc/visuals/image-13.png)<br>
Q4: <br>![alt text](/docs/test-cases/low-level/misc/visuals/image-14.png)<br>
Q5: <br>![alt text](/docs/test-cases/low-level/misc/visuals/image-15.png)<br>

| Test case | Input       | Expected |
| ---       | ------      |    ---   |
TCL-MISC-04-01 | A1: Anna | Pytanie Q2 brzmi: "Cześć Anna! Ile masz lat?" |
TCL-MISC-04-02 | A1: _ Anna _ _ _ Kowalska _ _ | Pytanie Q2 brzmi: "Cześć Anna! Ile masz lat?", zbędne spacje zostały usunięte |
TCL-MISC-04-03 | Brak odpowiedzi na pytanie Q1  | Pytanie Q2 brzmi: "Cześć użytkowniku! Ile masz lat?" |
TCL-MISC-04-05 | A1: Jan<br>A2: 40<br>A3: Mężczyzna<br>A4: 4 | Opis pytania Q5 brzmi: "Imie: Jan, Wiek: 40, Płeć: Mężczyzna, Ocena: 4" |
TCL-MISC-04-06 | Brak odpowiedzi na pytania  | Opis pytania Q5 brzmi: "Imie: Użytkownik, Wiek: 0, Płeć: Inna, Ocena: 5" |
TCL-MISC-04-07 | 1. Do pytania o wiek (Q2) dodaj warunek logiczny: <ul><li> < 18 - skocz do Q5 </li><li> >= 18 -  przejdź do kolejnego pytania </li></ul> 2. Wpisz odpowiedzi: <br>A1: Jan <br>A2: 16 | Opis pytania Q5 brzmi: "Imie: Jan , Wiek: 16, Płeć: Inna, Ocena: 5" |
TCL-MISC-04-08 | 1. Usuń pytanie o wiek (Q2) <br> 2.Wpisz odpowiedzi: <br>A1: Jan<br>A3: Mężczyzna<br>A4: 4| Opis pytania Q5 brzmi: "Imie: Użytkownik, Wiek: 0, Płeć: Mężczyzna, Ocena: 4" |
