sum:
        push    rbp
        mov     rbp, rsp
        movss   DWORD PTR [rbp-4], xmm0 ; 32 bitowe rejestry pojedynczej precyzji
        movss   DWORD PTR [rbp-8], xmm1
        movss   xmm0, DWORD PTR [rbp-4] ;movss 32 bitowe 
        addss   xmm0, DWORD PTR [rbp-8] ; 
        pop     rbp
        ret