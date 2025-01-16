# INT-RESULT-06 (Slack Integration)

> Odniesienia
> 
> - [REQ-INT-Slack](https://github.com/KWAK-testing/Formbricks-tests/blob/main/docs/requirements.md#req-int-slack)
> - [TC-INT-06](https://github.com/KWAK-testing/Formbricks-tests/blob/main/docs/test-cases/high-level/integrations.md#tc-int-06)
> - [TCL-INT-06](https://github.com/KWAK-testing/Formbricks-tests/blob/main/docs/test-cases/low-level/integrations/tcl-int-06.md)
# Status: ❌

## Wykryte defekty

### ❌ Brak wiadomości na Slack'u w przypadku długiej odpowiedzi tekstowej

### Reprodukcja defektu
- Przygotuj ankietę połączoną z kanałem na Slacku z różnymi typami pytań
- Wyślij przykładowe odpowiedzi na pytania, które obejmują przypadki brzegowe 

![Screenshot (960)](https://github.com/user-attachments/assets/f37207e4-0baf-46e9-9b25-7f4b3f16ab66)
![Screenshot (961)](https://github.com/user-attachments/assets/7eb28840-2932-4d1b-937a-f1ad3e7650bd)


### Rezultat:
W przypadku wysłania całości "Pana Tadeusza" do bloku typu free text, odpowiedź się zapisuje na Formbricks, ale nie jest wysłana na kanał Slack.

### Oczekiwany wynik:
Na kanale Slack pojawia się wiadomość, że ktoś wysłał ankietę, ale konkretne pole jest zbyt długie.


## Dodatkowe uwagi

✅ proces łączenia się z konkretnym kanale na Slacku - defektów nie wykryto  
✅ pojawianie się odpowiedzi na kanale w czasie rzeczywistym - defektów nie wykryto.  


![Screenshot (942)](https://github.com/user-attachments/assets/e03492a6-364e-4a4c-9144-e6a1ecd9e90b)



## Wersja

Cloud
