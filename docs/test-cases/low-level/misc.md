# Przypadki testowe niskiego poziomu - MISC

## TCL-MISC-01
Załączanie różnych formatów obrazów  

### Odniesienia
  - REQ-MISC-AddMultimedia
  - TC-MISC-01

### Cel
Sprawdzenie poprawności obsługi najpopularniejszych formatów obrazów (JPG, PNG, GIF) podczas dodawania zdjęć do pytania ankietowanego.

### Warunki wstępne:
  Użytkownik posiada aktywne konto w aplikacji Formbricks.  
  Użytkownik znajduje się na ekranie dodawania pytania do ankiety.

### Kroki testowe:
  1.
       1. Kliknij ikonę po prawej stronie wybranego pytania
          ![obraz](https://github.com/user-attachments/assets/e2ce8d63-0294-4baa-b096-0d877cf82adc)
       2. Kliknij pole "Click or drag to upload files."

  2. Dodanie obrazu w formacie JPG
       1. Wybierz plik z rozszerzeniem .jpg
       2. Kliknij przycisk "Open".
          
  3. Dodanie obrazu w formacie PNG
     1. Wybierz plik z rozszerzeniem .png
     2. Kliknij przycisk "Open".

  4. Dodanie obrazu w formacie WEBP
       1. Wybierz plik z rozszerzeniem .webp
       2. Kliknij przycisk "Open".
    
  5. Dodanie obrazu w nieobsługiwanym formacie BMP
       1. Wybierz plik z rozszerzeniem .bmp
       2. Kliknij przycisk "Open".
          
  6. Dodanie obrazu o dużym rozmiarze
       1. Wybierz plik o nazwie "pan-tadeusz.jpg"
       2. Kliknij przycisk "Open".


### Oczekiwane wyniki:
Dla kroków testowych o numerach: 2, 3, 4   
  - Zdjęcie zostało poprawnie załadowane i jest widoczne nad pytaniem.
  - Nie wystąpił żaden komunikat o błędzie.
    
Dla kroku testowego nr 5  
  - Zdjęcie nie zostało dodane do pytania.  
  - System wyświetla komunikat o niewspieranym formacie pliku.
    
Dla kroku testowego nr 6  
  - Zdjęcie nie zostało dodane do pytania.  
  - System wyświetla komunikat o zbyt dużym rozmiarze pliku.  


