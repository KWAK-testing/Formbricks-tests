# MISC-RESULT-02
> ### Odniesienia
> - [REQ-MISC-RecallData](../../requirements.md#req-misc-recalldata)
> - [TC-MISC-04](../../test-cases/high-level/misc.md#tc-misc-08)
> - [TCL-MISC-04](../../test-cases/low-level/misc/tcl-misc-04.md)

# Status: ✅

## Kroki testowe:
  1. Początek
       1. ✅ Ankieta poprawnie utworzona i zapisana.

  2. Wypełnianie ankiety z danymi testowymi:
       1. ✅ TCL-MISC-04-01 po wprowadzeniu odpowiedniego inputu, w pytaniu 2. wyświetla się: Cześć Anna! Ile masz lat?
       2. ⚠️ TCL-MISC-04-02 po wprowadzeniu odpowiedniego inputu, w pytaniu 2. wyświetla się: Cześć Anna Kowalska ! Ile masz lat?
       - Oczekiwany wynik: Cześć Anna Kowalska! Ile masz lat?
       3. ✅ TCL-MISC-04-03 po wprowadzeniu pustego inputu, w pytaniu 2. wyświetla się: Cześć Użytkownik! Ile masz lat?
       4. ✅ TCL-MISC-04-05 po wprowadzeniu odpowiedniego inputu, opis pytania 5. pokazuje: Imie: Jan, Wiek: 40, Płeć: Mężczyzna, Ocena: 4
       5. ✅ TCL-MISC-04-06 po wprowadzeniu pustych inputów, opis pytania 5. pokazuje: Imie: Użytkownik, Wiek: 0, Płeć: Inna, Ocena: 5
       6. ✅ TCL-MISC-04-07 podczas dodawania warunku logicznego nie widać opcji <18, sprawdzony został jednak warunek logiczny z 'if question 1 is skipped' w takim przypadku opis pytania 5. pokazuje: Imie: Jan, Wiek: 0, Płeć: inna, Ocena: 5
       7. ✅ TCL-MISC-04-05 po wprowadzeniu odpowiedniego inputu, opis pytania 5. pokazuje: Imie: Jan, Wiek: 0, Płeć: Mężczyzna, Ocena: 4