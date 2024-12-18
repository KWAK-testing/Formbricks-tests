# TCL-MISC-02

> ### Odniesienia
> - [REQ-MISC-AddMultimedia](../../../requirements.md#req-misc-addmultimedia)
> - [TC-MISC-02](../../high-level/misc.md#tc-misc-02)
> - [TC-MISC-03](../../high-level/misc.md#tc-misc-03)


### Cel
Sprawdzenie poprawności załączania filmów do pytania za pomocą URL (YouTube, Vimeo, Loom).


### Warunki wstępne:
- Użytkownik posiada aktywne konto w aplikacji Formbricks.  
- Użytkownik znajduje się na ekranie dodawania pytania do ankiety.

### Kroki testowe:
  1.
       1. Kliknij ikonę po prawej stronie wybranego pytania:
          ![obraz](https://github.com/user-attachments/assets/e2ce8d63-0294-4baa-b096-0d877cf82adc)
       2. Kliknij opcję "Video".

  2. Dodanie URL do filmu
       1. Wybierz link z `Input`.
       2. Wklej link w odpowiednie pole:
       ![alt text](image-1.png)
       3. Kliknij przycisk "Add".
       4. Sprawdź czy `Expected`.

  3. Usunięcie filmu
       1. Zapisz ankietę.
       2. Otwórz ponownie okno edycji pytania i usuń link do filmu. 
       3. Sprawdź czy film został usunięty i nie jest widoczny na podglądzie ani w ankiecie.
         

### Input/Output

| Test case | Input | Expected |
| ---       | ------      |    ---   |
TCL-MISC-02-01 | [youtube](https://www.youtube.com/watch?v=dQw4w9WgXcQ) | Film widoczny w podglądzie i ankiecie, możliwy do odtworzenia, brak komunikatów o błędach |
TCL-MISC-02-02 | [vimeo](https://vimeo.com/1039842776?share=copy) | Film widoczny w podglądzie i ankiecie, możliwy do odtworzenia, brak komunikatów o błędach |
TCL-MISC-02-03 | [loom](https://www.loom.com/share/d97180be7d674f4fbf57744365457162?t=1) | Film widoczny w podglądzie i ankiecie, możliwy do odtworzenia, brak komunikatów o błędach |
TCL-MISC-02-04 | [youtube-main-page](https://www.youtube.com/) | Film niezaładowany, widoczny komunikat o nieprawidłowym linku |
TCL-MISC-02-05 | [spotify](https://open.spotify.com/track/5hYQAKnuCccdHmp0zCjLlE?si=01ece337e7554882) | Film niezaładowany, widoczny komunikat o niewspieranej platformie |