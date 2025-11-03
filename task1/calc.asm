section .data
    msg db "Result = %d", 10, 0

section .text
    global _main
    extern _printf

_main:
    mov rax, 10        ; b
    sub rax, 3         ; c
    add rax, 5         ; a
    mov rsi, rax       ; другий аргумент printf
    lea rdi, [rel msg] ; перший аргумент printf
    xor rax, rax       ; для printf
    call _printf
    ret

