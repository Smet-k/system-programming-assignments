.386
	.model flat, stdcall
	.stack 4096
	GetStdHandle proto :dword
	WriteConsoleA proto :dword, :dword, :dword, :dword, :dword
	ExitProcess proto :dword

.data
    A dd 00112233h
    B dw 00A5h
    Cc dd 44556677h
    D dq 3.14e8
    E dq 123456789ABCDEFh
    F dq 123456789ABCDEFh
    K equ 311
	HelloMessage db 'Kozak Yaroslav', 13, 10
	NumberOfCharsToWrite dd $-HelloMessage
	hConsoleOutput dd 0
	NumberOfCharsWritten dd 0

.code
	start:
	push -11
	call GetStdHandle
	mov hConsoleOutput, eax
	push 0
	push offset NumberOfCharsWritten
	push NumberOfCharsToWrite
	push offset HelloMessage
	push hConsoleOutput
	call WriteConsoleA
	push 0
	call ExitProcess
end start