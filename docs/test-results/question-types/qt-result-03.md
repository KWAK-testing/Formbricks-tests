# QT-RESULT-03
> ### Odniesienia
> - [REQ-QT-FreeText](../../../requirements.md#req-qt-freetext)
> - [TC-QT-07](../../high-level/question-types.md#tc-qt-07)
> - [TC-QT-08](../../high-level/question-types.md#tc-qt-08)
> - [TCL-QT-03](../../test-cases/low-level/question-types/tcl-qt-03.md)

# Status: ❌

## Kroki testowe

1. ✅ Utwórz ankietę z pytaniem Free Text zgodnie z ustawieniami i ich ograniczeniami z `Settings`.
2. ✅ Wprowadź wskazane dane w `Input`.
3. ❌ Sprawdź, czy `Expected`.
    - ❌ TCL-MQT-03-08: Nieoczekiwane efekty odpowiedzi formularza w przypadku użycia znaków `.`, `-` oraz niestandardowych długości numerów telefonu.

## Zgłoszone defekty
[Unexpected behaviour of number field in FreeText question](https://github.com/formbricks/formbricks/issues/4633)
