[bits 32]

; int x = getchar()
call [ebx+2*4]  ; getchar()
cmp eax, 'A'
jne dalej

call wypisz_hello
db 'hello world', 0xa, 0

wypisz_hello:
call [ebx+3*4] ; printf
add esp, 4
call [ebx]

dalej:
call wypisz_xyz
db 'xyz', 0xa, 0
wypisz_xyz:
call [ebx+3*4] ; printf
add esp, 4
call [ebx] ; exit