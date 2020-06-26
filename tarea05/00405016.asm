org 	100h

section .text

	call 	grafico	
        
	xor 	si, si
	xor 	di, di

	mov 	si, 20d 
	mov 	di, 60d 
	call 	lineav1

    mov 	si, 140d 
	mov 	di, 100d 
	call 	lineav1

    mov 	si, 180d 
	mov 	di, 60d 
	call 	lineav1

	mov 	si, 60d 
	mov 	di, 100d 
	call 	lineav1

	mov 	si, 80d 
	mov 	di, 100d 
	call 	lineav1

	mov 	si, 120d 
	mov 	di, 100d 
	call 	lineav1

    mov		si, 20d 
	mov 	di, 60d 
	call 	lineah1

    mov		si, 20d 
	mov 	di, 180d 
	call 	lineah2

    mov		si, 140d 
	mov 	di, 180d 
	call 	lineah3

    mov		si, 80d 
	mov 	di, 180d 
	call 	lineah4

    mov		si, 60d 
	mov 	di, 100d 
	call 	lineah5

    mov		si, 120d 
	mov 	di, 100d 
	call 	lineah6

	call 	kb

	int 	20h

grafico:
	mov		ah, 00h
	mov		al, 13h
	int 	10h
	ret

pixel:	
	mov		ah, 0Ch
	mov		al, 1100b
	int 	10h
	ret


lineah1: 
lh1:	
	mov 	cx, 0d ; Columna 
	add 	cx, si
	mov		dx, di ; Fila
	call 	pixel
	inc 	si
	cmp 	si, 180d
	jne 	lh1
	ret

lineah2:
lh2:	
	mov 	cx, 0d ; Columna 
	add 	cx, si
	mov		dx, di ; Fila
	call 	pixel
	inc 	si
	cmp 	si, 61d
	jne 	lh2
	ret


lineah3:
lh3:	
	mov 	cx, 0d ; Columna 
	add 	cx, si
	mov	dx, di ; Fila
	call 	pixel
	inc 	si
	cmp 	si, 181d
	jne 	lh3
	ret

lineah4:
lh4:	
	mov 	cx, 0d ; Columna 
	add 	cx, si
	mov	dx, di ; Fila
	call 	pixel
	inc 	si
	cmp 	si, 121d
	jne 	lh4
	ret

lineah5:
lh5:	
	mov 	cx, 0d ; Columna 
	add 	cx, si
	mov	dx, di ; Fila
	call 	pixel
	inc 	si
	cmp 	si, 80d
	jne 	lh5
	ret

lineah6:
lh6:	
	mov 	cx, 0d ; Columna 
	add 	cx, si
	mov	dx, di ; Fila
	call 	pixel
	inc 	si
	cmp 	si, 140d
	jne 	lh6
	ret

lineav1: 
lv1:	
	mov 	cx, si ; Columna 
	mov		dx, 0d ; Fila
	add 	dx, di
	call 	pixel
	inc 	di
	cmp 	di, 180d
	jne 	lv1
	ret




kb: 	mov	ah, 00h
	int 	16h
	ret