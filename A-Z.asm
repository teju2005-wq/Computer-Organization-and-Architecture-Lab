org 100h

start:
    mov cx, 26      ; Set the loop counter for 26 letters
    mov dl, 'A'     ; Start with the letter 'A'

print_loop:
    mov ah, 02h     ; DOS function to print character
    int 21h         ; Call DOS interrupt to print character in DL
    inc dl          ; Move to the next letter (increment DL)
    loop print_loop  ; Loop until CX is zero

    mov ah, 4Ch     ; DOS function to exit program
    int 21h         ; Call DOS interrupt to terminate



