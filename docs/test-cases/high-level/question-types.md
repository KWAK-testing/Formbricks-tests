# Przypadki testowe wysokiego poziomu - QUESTION TYPES

## TC-QT-01  
Weryfikacja ograniczeń przesyłanych plików
### Wymagania  
- REQ-QT-FileUpload  

### Cel  
Zweryfikować, czy ankieta akceptuje i odrzuca pliki zgodnie z ograniczeniami dotyczącymi maksymalnego rozmiaru, liczby oraz typu plików.  


## TC-QT-02
Poprawne rezerwowanie spotkań  
### Wymagania  
- REQ-QT-MeetinScheduler  

### Cel  
Zweryfikować, czy użytkownik może poprawnie zarezerwować spotkanie, wprowadzając datę, godzinę, imię, nazwisko oraz email. Zweryfikować poprawność wyboru różnych stref czasowych.


## TC-QT-03
Integracja z platformą cal.com  
### Wymagania  
- REQ-QT-MeetinScheduler  

### Cel  
Zweryfikować, czy odpowiedź w ankiecie powoduje prawidłowe utworzenie spotkania w systemie cal.com.  


## TC-QT-04
Integracja z self-hosted wersją platformy cal.com  
### Wymagania  
- REQ-QT-MeetinScheduler  

### Cel  
Zweryfikować, czy odpowiedź w ankiecie powoduje prawidłowe utworzenie spotkania w systemie cal.com. Zwerywikować czy custom hostname przetwarzany jest poprawnie. 


## TC-QT-05
Wybór zdjęcia/zdjęć przez ankietowanego
### Wymagania  
- REQ-QT-PictureSelection  

### Cel  
Zweryfikować, czy użytkownik może poprawnie wybrać jedno lub wiele zdjęć z dostępnej listy.  


## TC-QT-06
Dołączanie dostępnych do wyboru zdjęć
### Wymagania  
- REQ-QT-PictureSelection  

### Cel  
Zweryfikować, czy ankieta oddolnie wymusza załączenie conajmniej dwóch zdjęć. Zweryfikować, czy ankieta jest poprawnie przetwarzana i wyświetla odpowiedni błąd w przypadku załączenia dużej ilości zdjęć / zdjęć o bardzo dużym rozmiarze.


## TC-QT-07
Odpowiedzi w formacie tekstowym  
### Wymagania  
- REQ-QT-FreeText  

### Cel  
Zweryfikować, czy pytanie akceptuje odpowiedzi tekstowe zgodnie z ustawionymi ograniczeniami. Funkcjonalność powinna umożliwiać walidację tekstu, np. poprzez limit znaków. Zweryfikować, czy ankieta domyślnie jest poprawnie przetwarzana i wyświetla odpowiedni błąd w przypadku przesłania w odpowiedzi bardzo długiego tekstu.


## TC-QT-08
Dostępne formaty w odpowiedziach FreeText
### Wymagania  
- REQ-QT-FreeText  

### Cel  
Zweryfikować, czy pytanie akceptuje poprawnie typy text, email, number, phone oraz odrzuca odpowiedzi w nieodpowiednim formacie.


## TC-QT-09
Weryfikacja szczegółów dla wybranego Question Type
### Wymagania  
- REQ-QT-*

### Cel  
Zweryfikować poprawność działania dostępnych do dodania dla danego Question Type szczegółow, np. tytułu, opisu, załączonego do pytania obrazu.

