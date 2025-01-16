# MISC-RESULT-01
> ### Odniesienia
> - [REQ-MISC-AddMultimedia](../../../requirements.md#req-misc-addmultimedia)
> - [TC-MISC-01](../../test-cases/high-level/misc.md#tc-misc-01)
> - [TC-MISC-03](../../test-cases/high-level/misc.md#tc-misc-03)
> - [TC-MISC-04](../../test-cases/high-level/misc.md#tc-misc-04)
> - [TC-MISC-05](../../test-cases/high-level/misc.md#tc-misc-05)
> - [TCL-MISC-01](../../test-cases/low-level/misc/tcl-misc-01.md)

# Status: ✅

## Kroki testowe:
1. Pierwszy krok:
	- wszystkie poprawnie
2. Pierwszy krok:
	- ✅ (Y) capybara.jpg
	- ✅ (Y) mrexploder.jpeg 
		- Komunikat błędu: Some files failed to upload
	- ✅ (Y) picture.webp
	- ✅ (Y) cat.bmp
		- brak możliwości dodanie zdjęcia o tym formacie
	- ✅ (Y) huge.jpg
3. Drugi krok:
	- wszystkie poprawnie

Poprawne usuwanie działa dla każdego przypadku

## Dodatkowe uwagi
- Brak zdjęcia na githubie dla TCL-MISC-01-02: lock.png
- obraz po usunięciu nadal jest dostępny po jego adresie np: `http://localhost:3000/_next/image?url=http%3A%2F%2Flocalhost%3A3000%2Fstorage%2Fcm5pgpuz9000alf01lc7xtpk8%2Fpublic%2Fpicture--fid--75fedc1d-75a4-4266-9337-e0df12540f46.webp&w=1200&q=100`

