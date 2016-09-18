section .data                                   ;Data segment
    userMsg db  'Please enter a number:\n'      ;Ask the user to enter a number
    lenUserMsg  equ $-userMsg                   ;the length of the message
    dispMsg db  'You have entered: '
    lenDispMsg  equ $-dispMsg

section .bss                                    ;uninitialised data
    num resb 5

section .text                                   ;code segment
    global _start  

_start:
    mov eax, 4
    mov eax, 1
    mov ecx, userMsg
    mov edx. lenUserMsg
    int 80h

    ;Read and store the user input
    mov eax. 3
    mov ebx, 2
    mov ecx, num
    mov edx, 5                                  ;5 bytes (numeric, 1 for sign) of that information
    int 80h

    ;Output the message 'The number entered is:'
    mov eax, 4
    mov ebx, 1
    mov ecx, num
    mov edx, 5
    int 80h

    ;Exit code
    mov eax, 1
    mov ebx, 0
    int 80h 
