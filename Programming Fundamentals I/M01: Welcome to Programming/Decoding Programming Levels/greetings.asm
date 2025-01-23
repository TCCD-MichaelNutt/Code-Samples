; Assembly (x86-64, NASM syntax)
section .data
  message: db "Hello, World!", 10  ; 10 is the ASCII code for newline

section .text
  global _start

_start:
  ; Write the message to stdout
  mov rax, 1       ; syscall number for write
  mov rdi, 1       ; file descriptor for stdout
  mov rsi, message  ; address of the message
  mov rdx, 13      ; length of the message
  syscall

  ; Exit the program
  mov rax, 60      ; syscall number for exit
  mov rdi, 0       ; exit code 0
  syscall