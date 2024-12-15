# TCL-MISC-01

> ### Odniesienia
> - [REQ-MISC-AddMultimedia](../../../requirements.md#req-misc-addmultimedia)
> - [TC-MISC-01](../../high-level/misc.md#tc-misc-01)


### Cel
Sprawdzenie poprawności obsługi najpopularniejszych formatów obrazów (JPG, PNG, GIF) podczas dodawania zdjęć do pytania ankietowanego.


### Warunki wstępne:
- Użytkownik posiada aktywne konto w aplikacji Formbricks.  
- Użytkownik znajduje się na ekranie dodawania pytania do ankiety.

### Input/Output

| Test case | Input#Image | Expected |
| ---       | ------      |    ---   |
TCL-MISC-01-01 | [jp2.jpg](../../../../seed/images/jpg/jp2.jpg) | Zdjęcie widoczne w podglądzie i ankiecie, brak komunikatów o błędach |
TCL-MISC-01-02 | [lock.png](../../../../seed/images/png/lock.png) | Zdjęcie widoczne w podglądzie i ankiecie, brak komunikatów o błędach |
TCL-MISC-01-03 | [mrexploder.jpg](../../../../seed/images/jpg/mrexploder.jpg) | Zdjęcie niezaładowane, widoczny komunikat o zbyt dużym pliku |


### Kroki testowe:
  1.
       1. Kliknij ikonę po prawej stronie wybranego pytania
          ![obraz](https://github.com/user-attachments/assets/e2ce8d63-0294-4baa-b096-0d877cf82adc)
       2. Kliknij pole "Click or drag to upload files."

  2. Dodanie obrazu
       1. Wybierz plik `Input#Image`
       2. Kliknij przycisk "Open".

  3. Sprawdź czy `Expected`
