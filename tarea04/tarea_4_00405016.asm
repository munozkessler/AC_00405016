org 	100h

section .text

	mov 	dx, msg
	call 	w_strng

	xor 	si, si 	
lupi:	call 	kb
	cmp 	al, "$"
	je	avgprev
        sub     al, 30h
	mov	[300h+si], al 
	inc 	si
	jmp 	lupi

avgprev:mov     bx, 0000h
        mov     ax, 0000h
avg:    add     al, [300h+bx]
        inc     bx
        cmp     bx, 05h
        jb      avg
        mov     [310h], al
        mov     [320h], bl
        mov     cl, bl
        div     cl
        mov     [330h], al

show:mov 	dx, nl     
	call	w_strng
	cmp     al, 0Ah
        je      text1
        cmp     al, 09h
        je      text2
        cmp     al, 08h
        je      text3
        cmp     al, 07h
        je      text4
        cmp     al, 06h
        je      text5
        cmp     al, 05h
        je      text6
        cmp     al, 04h
        je      text7
        cmp     al, 03h
        je      text8
        cmp     al, 02h
        je      text9
        cmp     al, 01h
        je      text10

text1:	mov 	dx, msg2
        jmp     stop
text2:	mov 	dx, msg3
        jmp     stop
text3:	mov 	dx, msg4
        jmp     stop
text4:	mov 	dx, msg5
        jmp     stop
text5:	mov 	dx, msg6
        jmp     stop
text6:	mov 	dx, msg7
        jmp     stop
text7:	mov 	dx, msg8
        jmp     stop
text8:	mov 	dx, msg9
        jmp     stop
text9:	mov 	dx, msg10
        jmp     stop
text10:	mov 	dx, msg11
        jmp     stop
	
stop:   call 	w_strng
	call 	kb	
	int 	20h


texto:	mov 	ah, 00h
	mov	al, 03h
	int 	10h
	ret

kb: 	mov	ah, 1h 
	int 	21h
	ret

w_strng:mov	ah, 09h
	int 	21h
	ret

section .data

msg 	db 	"Ingrese los ultimos 5 digitos de su carnet: $"
msg2 	db 	"Perfecto solo Dios$"
msg3 	db 	"Siempre me esfuerzo$"
msg4 	db 	"Colocho$"
msg5 	db 	"Muy bien$"
msg6 	db 	"Peor es nada$"
msg7 	db 	"En el segundo$"
msg8 	db 	"Me recupero$"
msg9 	db 	"Hay salud$"
msg10 	db 	"Aun se pasa$"
msg11 	db 	"Solo necesito el 0$"
nl	db 	0xA, 0xD, "$"