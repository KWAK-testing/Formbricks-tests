# MISC-RESULT-03
> ### Odniesienia
> - [REQ-MISC-AddMultimedia](../../../requirements.md#req-misc-addmultimedia)
> - [TC-MISC-06](../../test-cases/high-level/misc.md#tc-misc-06)
> - [TCL-MISC-03](../../test-cases/low-level/misc/tcl-misc-02.md)


# Status: ✅

## Kroki testowe:
  1. Początek
       1. ✅ Stworzona forma z 3 pytań.

  2. Dodanie URL do filmu
       1. ✅ TCL-MISC-03-01 po wyborze true da się przejść do Q2, natomiast po false idzie do end.
       2. ✅ TCL-MISC-03-02 Pytania Q2 i Q3 są nie osiągalne.
       3. ⚠️✅ TCL-MISC-03-03 System nie pozwala na stworzenie takiej logiki. W liście pytań do których można przejść nie ma opcji Q1 (jaka jest wybrana na zdjęciu Q2, Q3 przypadku)
       4. ✅ TCL-MISC-03-04 System wyświetla komunikat o możliwym spowodowaniu błędów w logice kolejnych pytań.
       5. ✅ TCL-MISC-03-05 System wyświetla komunikat, że pytanie jest używane w logice innego pytania.
