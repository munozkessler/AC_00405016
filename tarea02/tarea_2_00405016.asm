                org     100h

                ;EJERCICIO 1
                ;carnet 00405016 -> 0+5+0+1+6 = 12/5 = 2.4 = 2
            
                        

                mov     ax, 0000h
                add     ax, 0d
                add     ax, 5d
                add     ax, 0d
                add     ax, 1d
                add     ax, 6d
                mov     cl, 5d
                div     cl

                ;Aun se pasa

                mov     cl, "A"
                mov [200h], cl
                mov     cl, "u"
                mov [201h], cl
                mov     cl, "n"
                
                mov [202h], cl
                mov     cl, ""
            

                mov     cl, "s"
                mov [205h], cl
                mov     cl, "e"
                mov [206h], cl

                mov     cl, ""
                mov [207h], cl
                        
                mov     cl, "p"
                mov [208h], cl
                mov     cl, "a"     
                mov [209h], cl
                mov     cl, "s"
                mov [20Ah], cl
                mov     cl, "a"
                mov [20Bh], cl

                ;EJERCICIO 2

                mov     ax, 0000h
                mov     al, 2d
                mov     bx, 210h
                mov     cx, 2d
estimacion:     mul     cx
                mov     [bx], ax
                cmp     ah, 00h
                ja      dos
                je      uno
dos:            add     bx, 2h
                jmp     sig
uno:            add     bx, 1h
sig:            cmp     bx, 21Fh
                jb      estimacion


                ;EJERCICIO 3 

                 mov     ax, 0000h
                 mov     ax, 0d
                 mov     [220h], ax  ; F0 = 0
                 mov     ax, 1d
                 mov     [221h], ax  ; F1 = 1
                 mov     bx, 222h
fibonacci:            mov     ax, 0000h
                 mov     [bx], ax
                 sub     bx, 2h
                 mov     al, [bx]
                 add     bx, 1h
                 add     ax, [bx]
                 add     bx, 1h
                 mov     [bx], ax
                 add     bx, 1h
                 cmp     bx, 22Fh
                 jb      fibonacci

        int 20h