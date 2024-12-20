# Wymagania / Zakres testów

## Pipeline - REQ-INT-*

### REQ-INT-Airtable
Program powinien
umożliwić
automatyczne
wysyłanie odpowiedzi
ankiet do wybranych
plików Airtable.

### REQ-INT-Google-Sheets
Program powinien
umożliwić
automatyczne
wysyłanie odpowiedzi
ankiet do wybranych
plików Google Sheet.

### REQ-INT-n8n
Program powinien
umożliwić
automatyczne
uruchamianie triggerów
w systemie n8n w
momencie
stworzenia/aktualizacji/
zakończenia odpowiedzi
w ankiecie.

### REQ-INT-Notion
Program powinien
umożliwić
automatyczne
wysyłanie odpowiedzi
ankiet do wybranej bazy
danych w Notion.

### REQ-INT-Slack
Program powinien
umożliwić
automatyczne
wysyłanie odpowiedzi
ankiet na wybrany kanał
na platformie Slack.

### REQ-INT-Wordpress
Program powinien
umożliwić uruchomienie
targetowanych ankiet
(app surveys)
zdeniowanych w
panelu formbricksa na
stronie zarządzanej
przez system wordpress
przy pomocy pluginu.

### REQ-INT-Zapier
Program powinien
umożliwić
automatyczne
uruchamianie triggerów
w systemie Zapier w
momencie
stworzenia/aktualizacji/
zakończenia odpowiedzi
w ankiecie.

### REQ-INT-Webhooks
System powinien
umożliwiać zdeniowanie
webhooków pozwlając w ten
sposób na integrację z
niewspieraną domyślnie
aplikacją webową.Webhooki
uruchamiają się przy okazji
utworzenia / zaktualizowania /
zakończenia odpowiedzi w
ankiecie.

### REQ-INT-Remove
Program powinien
umożliwić przerwanie
automatycznego
przesyłania odpowiedzi
do dowolnego systemu
zewnętrznego.

### REQ-N-INT-Privacy
System w
przypadku integracji z
zewnętrznym serwisem
powinien pobierać i
przechowywać tylko
niezbędne dane i
informacje o
użytkowniku.

## Question Types

### REQ-QT-FileUpload
Ankieta powinna
umożliwić stworzenie pytania
na które ankietowany
odpowiada przesyłając
plik/pliki. Użytkownik definiuje
maksymalną liczbę, rozmiar
oraz dopuszczalne typy plików.
Pliki niespełniające kryteriów
są odrzucane.

### REQ-QT-MeetinScheduler
Ankieta powinna
umożliwić stworzenie pytania
o rezerwację spotkania.
Ankietowany odpowiada przez
wybranie daty, godziny,
imenia, nazwiska oraz emaila.
Po udzieleniu odpowiedzi
system rezerwuje odpowiedni
meeting w systemie cal.com

### REQ-QT-PictureSelection
Ankieta powinna
umożliwić stworzenie pytania
złożonego z kilku zdjęć.
Ankietowany odpowiada
wybierając jedno lub wiele
zdjęć z listy.

### REQ-QT-FreeText
Ankieta powinna
umożliwić stworzenie pytania,
na które ankietowany
odpowiada tekstem. Tekst
może zostać ograniczony do
jednego z typów: text, email,
number, phone.

## Miscellaneous

### REQ-MISC-AddMultimedia
Program powinien
umożliwiać dołączenie
zdjęć lub filmów do
dowolnego pytania
ankietowego.

### REQ-MISC-LogicEditor
System powinien
oferować tworzenie złożonej
logiki ankietowej z
wykorzystaniem warunków,
akcji i zmiennych, aby
zapewnić spersonalizowane
doświadczenie użytkownika.

### REQ-MISC-RecallData
Twórca ankiety
powinien mieć
możliwość użycia w
pytaniu odpowiedzi
udzielonych na
poprzednie pytania
(np. imię).

### REQ-N-MISC-InfoSec
Program powinien
uniemożliwiać próby dostępu
do danych nieupoważnionym
osobom, oraz blokować
wszelkie próby wykonania
dowolnej akcji systemowej
przez nieautoryzowanego
użytkownika.
