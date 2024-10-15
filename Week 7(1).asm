org 100h
mov dx,offset msg_input
mov ah,09h
int 21h
mov ah,01h
int 21h
mov al,al 
mov bl,al
cmp al,'0'
jl NotDigit
cmp al,'9'
jg NotDigit
mov dx,offset msg_output
mov ah,09h
int 21h    
mov dl,bl
mov ah,02h
int 21h
jmp endprogram
NotDigit:
mov dx,offset msg_error
mov ah,09h
int 21h
endprogram:
mov ah,4Ch
int 21h
msg_input DB "enter a digit:$"
msg_output Db 0dh,0ah,"The entered digit is:$"
msg_error db 0dh,0ah,"Error: Not a digit!$ "
END

