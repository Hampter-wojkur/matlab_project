sum:
        push    rbp ; wartość rejestru base pointer żeby ją zachować
        mov     rbp, rsp ; ustawiamy rbp na rsp zeby miec ramke stosu
        mov     DWORD PTR [rbp-4], edi ; do stosu wkladamy argument 1 
        mov     DWORD PTR [rbp-8], esi ; do stosu wkladamy argument 2
        mov     edx, DWORD PTR [rbp-4] ; wkladamy teraz wartosci do rejestrow ogolnego przeznaczenia
        mov     eax, DWORD PTR [rbp-8] ; 
        add     eax, edx ; eax to wartosc zwracana z funkcji
        pop     rbp ; base pointer dajemy taki jaki byl prze
        ret ; wracamy z funkcji