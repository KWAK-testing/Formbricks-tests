# TCL-MISC-01

> ### Odniesienia
> - [REQ-MISC-AddMultimedia](../../../requirements.md#req-misc-addmultimedia)
> - [TC-MISC-01](../../high-level/misc.md#tc-misc-01)
> - [TC-MISC-03](../../high-level/misc.md#tc-misc-03)
> - [TC-MISC-04](../../high-level/misc.md#tc-misc-04)
> - [TC-MISC-05](../../high-level/misc.md#tc-misc-05)


### Cel
Sprawdzenie poprawności obsługi najpopularniejszych formatów obrazów (JPG, PNG, GIF) podczas dodawania zdjęć do pytania ankietowanego.


### Warunki wstępne:
- Użytkownik posiada aktywne konto w aplikacji Formbricks.  
- Użytkownik znajduje się na ekranie dodawania pytania do ankiety ("Start from scratch").


### Kroki testowe:
  1.
       1. Kliknij ikonę po prawej stronie wybranego pytania:
          ![obraz](https://github.com/user-attachments/assets/e2ce8d63-0294-4baa-b096-0d877cf82adc)
       2. Kliknij pole "Click or drag to upload files."

  2. Dodanie obrazu
       1. Wybierz plik z `Input`
       2. Kliknij przycisk "Open".
       3. Sprawdź czy `Expected`.

  3. Usunięcie obrazu
       1. Zapisz ankietę.
       2. Otwórz ponownie okno edycji pytania i usuń obraz. 
       3. Sprawdź czy obraz został usunięty i nie jest widoczny na podglądzie ani w ankiecie.


### Input/Output

| Test case | Input | Expected |
| ---       | ------      |    ---   |
TCL-MISC-01-01 | [capybara.jpg](../../../../seed/images/capybara.jpg) | Zdjęcie widoczne w podglądzie i ankiecie, brak komunikatów o błędach |
TCL-MISC-01-02 | [account.png](../../../../seed/images/account.png) | Zdjęcie widoczne w podglądzie i ankiecie, brak komunikatów o błędach |
TCL-MISC-01-03 | [picture.webp](../../../../seed/images/picture.webp) | Zdjęcie widoczne w podglądzie i ankiecie, brak komunikatów o błędach |
TCL-MISC-01-04 | [huge.jpg](../../../../seed/images/huge.jpg) | Zdjęcie widoczne w podglądzie i ankiecie, brak komunikatów o błędach |
TCL-MISC-01-05 | [cat.bmp](../../../../seed/images/cat.bmp) | Zdjęcie niezaładowane, widoczny komunikat o niewspieranym formacie pliku |
TCL-MISC-01-06 | [mrexploder.jpeg](../../../../seed/images/mrexploder.jpeg) | Zdjęcie niezaładowane, widoczny komunikat o zbyt dużym pliku |
