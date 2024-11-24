section .data
    msg db "Hello, World!", 0xA  ; Message with a newline
    msg_len equ $ - msg          ; Length of the message

section .text
    global _start

_start:
    ; Write message to stdout
    mov rax, 1                  ; Syscall number (1 = write in x64 Linux)
    mov rdi, 1                  ; File descriptor (1 = stdout)
    lea rsi, [msg]              ; Address of the message
    mov rdx, msg_len            ; Length of the message
    syscall                     ; Make the syscall


    ; Exit the program
    mov rax, 60                 ; Syscall number (60 = exit in x64 Linux)
    xor rdi, rdi                ; Exit code 0
    syscall
