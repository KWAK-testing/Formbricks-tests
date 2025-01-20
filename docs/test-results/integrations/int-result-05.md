# INT-RESULT-05 (Notion Integration)

> Odniesienia
> 
> - [REQ-INT-Notion](https://github.com/KWAK-testing/Formbricks-tests/blob/main/docs/requirements.md#req-int-notion)
> - [TC-INT-05](https://github.com/KWAK-testing/Formbricks-tests/blob/main/docs/test-cases/high-level/integrations.md#tc-int-05)
> - [TCL-INT-05](https://github.com/KWAK-testing/Formbricks-tests/blob/main/docs/test-cases/low-level/integrations/tcl-int-05.md)

# Status: ❌

## Wykryte defekty

### ❌ Zgodność typów

### Reprodukcja defektu
- Przygotuj ankietę połączoną z bazą danych Notion z różnymi typami pytań
- W dashboardzie cloudowym Formbricks połącz każde pytanie ankiety z kolumną bazy danych na Notion
- Wyślij przykładową odpowiedź na ankietę

![Screenshot (926)](https://github.com/user-attachments/assets/015db2e1-7168-426b-bfec-e226784076da)
![Screenshot (928)](https://github.com/user-attachments/assets/b08c2ef5-f640-4ce8-845b-cff974de3ccb)
![Screenshot (931)](https://github.com/user-attachments/assets/8753ed19-a629-4ab5-99b7-86d7b2434339)

### Rezultat:
Sugestia użycia typu kolumny, który nie istnieje na Notion.

### Oczekiwany wynik:
Wszystkie sugestie są możliwe do zrealizowania na platformie, z którą jest integracja
LUB
zablokowanie możliwości mapowania metadanych na bazie danych Notion.


### ❌ Brak aktualizacji integracji w czasie rzeczywistym 

![Screenshot (932)](https://github.com/user-attachments/assets/c251d05f-715f-49b9-96a6-17412c406f4e)

### Rezultat:
Błąd o niepoprawnym typie wyświetla się pomimo jego poprawy.  

### Oczekiwany wynik:
Aktualizacja komunikatów o błędach po ich naprawie, bez potrzeby wychodzenia z panelu integracji.


## Dodatkowe uwagi

✅ proces łączenia się z konkretną stroną na Notion - defektów nie wykryto  
✅ proces połączenia konkretnych pytań z resztą testowanych typów - nie wykryto.  
✅ pojawianie się odpowiedzi na Notion w czasie rzeczywistym - defektów nie wykryto.  

![Screenshot (934)](https://github.com/user-attachments/assets/ce2f3bd3-9153-4a34-bba7-b2c45a282ebb)

## Wersja

Cloud
