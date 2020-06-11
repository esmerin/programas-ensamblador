section .bss
resultado resb 1

section .text
global _start
_start:

mov eax, 1
mov ebx, 1
mov ecx, 3
mov edx, 0
for:
mov edx,eax
add eax,ebx
mov ebx,edx
loop for

add eax, 48
mov [resultado],eax

mov eax, 4
mov ebx, 1
mov ecx, resultado
mov edx, 1

int 0x80

mov eax, 1
mov ebx, 0

int 0x80