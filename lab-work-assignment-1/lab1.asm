section .text
        global  _start

_start:
        mov rax, 1
        mov rdi, 1
        mov rsi, message
        mov rdx, message_len
        syscall

        mov rax, 1
        mov rdi, 1
        mov rsi, art
        mov rdx, art_len
        syscall

        mov rax, 60
        xor rdi, rdi
        syscall

section .data
        message db "Yaroslav Kozak", 0Ah
        message_len equ $ - message
        art db '   ▄▄▄▄▄▄', 0Ah
            db ' █▀      ▀▀▄', 0Ah
        times 2 db ' █         █', 0Ah 
            db ' █       ▄▀', 0Ah 
            db ' █    ███', 0Ah 
            db ' █       ▀▄', 0Ah 
        times 3 db ' █         █', 0Ah 
            db ' █▀▀▀▀▀▀▀▀▀', 0Ah 
        times 4 db ' █', 0Ah
        art_len equ $ - art

