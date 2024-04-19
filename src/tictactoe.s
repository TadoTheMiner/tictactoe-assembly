global _start

section .text
clearscreen:
    mov rsi, clearscreen_string,
    mov rdx, 2,
    call print
    ret
stdin:
    mov rax, 0
    mov rdi, 0
    syscall
exit: 
    mov rax, 60
    mov rdi, 0
    syscall
print:
    mov rax, 1
    mov rdi, 1
    syscall
    ret 
_start:
    mov rsi, screen
    mov rdx, 30
    call print
    mov rsi, cords
    mov rdx, 2
    call stdin
    call exit          
section .rodata
    clearscreen_string: db 27, "c"
section .data
    screen: db " | | ", 10, "-----", 10, " | | ", 10, "-----", 10, " | | ", 10, "  ", 10
    cords: db "  "

