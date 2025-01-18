# MISC-RESULT-02
> ### Odniesienia
> - [REQ-MISC-AddMultimedia](../../requirements.md#req-misc-addmultimedia)
> - [TC-MISC-02](../../test-cases/high-level/misc.md#tc-misc-02)
> - [TCL-MISC-02](../../test-cases/low-level/misc/tcl-misc-02.md)

# Status: ✅

## Kroki testowe:
  1. Początek
       - ✅ Karta dodania video wyświetla się poprawnie.

  2. Dodanie URL do filmu
       - ✅ TCL-MISC-02-01 link da się otworzyć w oknie edycji poprawnie
       - ✅ TCL-MISC-02-02 link da się otworzyć w oknie edycji poprawnie
       - ✅ TCL-MISC-02-03 link da się otworzyć w oknie edycji poprawnie
       - ✅ TCL-MISC-02-04 wypisuje błąd `not supported URL`
       - ✅ TCL-MISC-02-05 wypisuje błąd `not supported URL`
       - ✅ Poprawne filmy można obejrzeć w preview.

  3. Usunięcie filmu
       - ✅ Ankieta zapisana poprawnie.
       - ✅ Wideo usuwają się poprawnie i nie są dostępne ani w preview, ani w ankiecie. 
         

## Dodatkowe uwagi
- Po przejściu do następnego pytania wideo z poprzedniego nadal gra.
- Wideo gra nawet po naciśnięciu przycisku `restart`.
