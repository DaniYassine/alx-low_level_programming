section .data
    hello db 'Hello, Holberton', 0   ; null-terminated string
    fmt db '%s', 10, 0   ; format string with newline

section .text
    global main
    extern printf

main:
    push rbp
    mov rdi, fmt
    mov rsi, hello
    mov rax, 0
    call printf
    pop rbp

    ; Exit the program
    mov eax, 60   ; syscall number for exit
    xor edi, edi  ; status 0
    syscall
