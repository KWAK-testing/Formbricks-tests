# MISC-RESULT-02
> ### Odniesienia
> - [REQ-MISC-AddMultimedia](../../requirements.md#req-misc-addmultimedia)
> - [TC-MISC-02](../../test-cases/high-level/misc.md#tc-misc-02)
> - [TCL-MISC-02](../../test-cases/low-level/misc/tcl-misc-02.md)

# Status: ✅

## Kroki testowe:
  1. Początek
       1. ✅ Karta dodania video wyświetla się poprawnie.

  2. Dodanie URL do filmu
       1. ✅ TCL-MISC-02-01 link da się otworzyć w oknie edycji poprawnie
       2. ✅ TCL-MISC-02-02 link da się otworzyć w oknie edycji poprawnie
       3. ✅ TCL-MISC-02-03 link da się otworzyć w oknie edycji poprawnie
       4. ✅ TCL-MISC-02-04 wypisuje błąd `not supported URL`
       5. ✅ TCL-MISC-02-05 wypisuje błąd `not supported URL`
       6. ✅ Poprawne filmy można obejrzeć w preview.

  3. Usunięcie filmu
       1. ✅ Ankieta zapisana poprawnie.
       2. ✅ Wideo usuwają się poprawnie i nie są dostępne ani w preview, ani w ankiecie. 
         

## Dodatkowe uwagi
1. Po przejściu do następnego pytania wideo z poprzedniego nadal gra.
2. Wideo gra nawet po naciśnięciu przycisku `restart`.
