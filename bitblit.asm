

.code

bitblit_bkg1 proc

push ebp
mov ebp,esp





push 00CC0020h
push 0
push 0
push dword ptr [hdc_memory1]
push h
push w
push y1
push x1
push dword ptr [hdc_backbuffer]
call _BitBlt@36

push 00CC0020h
push 0
push 0
push dword ptr [hdc_memory1]
push h
push w
push y_1
push x_1
push dword ptr [hdc_backbuffer]
call _BitBlt@36

mov esp,ebp
pop ebp

ret
bitblit_bkg1 endp


;--------------------------------------------------

bitblit_bkg2 proc

push ebp
mov ebp,esp




push color_bkg 
push h2
push w2
push 0
push 0
push dword ptr [hdc_memory2]
push h2
push w2
push y2
push x2
push dword ptr [hdc_backbuffer]
call _TransparentBlt@44



push color_bkg 
push h2
push w2
push 0
push 0
push dword ptr [hdc_memory2]
push h2
push w2
push y_2
push x_2
push dword ptr [hdc_backbuffer]
call _TransparentBlt@44



mov esp,ebp
pop ebp

ret
bitblit_bkg2 endp


;--------------------------------------------------

bitblit_bkg3 proc

push ebp
mov ebp,esp


push color_bkg
push h3
push w3
push 0
push 0
push dword ptr [hdc_memory3]
push h3
push w3
push y3
push x3
push dword ptr [hdc_backbuffer]
call _TransparentBlt@44




push color_bkg 
push h3
push w3
push 0
push 0
push dword ptr [hdc_memory3]
push h3
push w3
push y_3
push x_3
push dword ptr [hdc_backbuffer]
call _TransparentBlt@44






mov esp,ebp
pop ebp

ret
bitblit_bkg3 endp


;--------------------------------------------------

bitblit_sonic_run proc

push ebp
mov ebp,esp




push 00FF00FFh
push h4
push w4
push 0
mov eax,w4
imul eax,i
push eax
push dword ptr [hdc_memory4]
push h4
push w4
push y4
push x4
push dword ptr [hdc_backbuffer]
call _TransparentBlt@44




mov esp,ebp
pop ebp

ret
bitblit_sonic_run endp

;--------------------------------------------------

bitblit_sonic_stand proc
push ebp
mov ebp,esp
 


push color_bkg
push h5
push w5
push 0
push 0
push dword ptr [hdc_memory5]
push h5
push w5
push y4
push x4
push dword ptr [hdc_backbuffer]
call _TransparentBlt@44



mov esp,ebp
pop ebp

ret
bitblit_sonic_stand  endp


;--------------------------------------------------

bitblit_sonic_roll proc

push ebp
mov ebp,esp




push 00FF00FFh
push h6
push w6
push 0
mov eax,w6
imul eax,i_2
push eax
push dword ptr [hdc_memory6]
push h6
push w6
push y6
push x4
push dword ptr [hdc_backbuffer]
call _TransparentBlt@44




mov esp,ebp
pop ebp

ret
bitblit_sonic_roll endp

;--------------------------------------------------

bitblit_sonic_jump proc

push ebp
mov ebp,esp


push 00FF00FFh
push h7
push w7
push 0
push 0
push dword ptr [hdc_memory7]
push h7
push w7
push sonic_y
push sonic_x
push dword ptr [hdc_backbuffer]
call _TransparentBlt@44



mov esp,ebp
pop ebp

ret
bitblit_sonic_jump endp

;--------------------------------------------------

bitblit_bullet proc

push ebp
mov ebp,esp



push 00FF00FFh
push h8
push w8
push 0
push 0
push dword ptr [hdc_memory8]
push h8
push w8
push y8
push x8
push dword ptr [hdc_backbuffer]
call _TransparentBlt@44

push 00FF00FFh
push h8
push w8
push 0
push 0
push dword ptr [hdc_memory8]
push h8
push w8
push y9
push x9
push dword ptr [hdc_backbuffer]
call _TransparentBlt@44

push 00FF00FFh
push h8
push w8
push 0
push 0
push dword ptr [hdc_memory8]
push h8
push w8
push y10
push x10
push dword ptr [hdc_backbuffer]
call _TransparentBlt@44



mov esp,ebp
pop ebp

ret
bitblit_bullet endp

;--------------------------------------------------

start_blit proc
push ebp
mov ebp,esp

LOOP1:

cmp game_start_stat,1
jne LOOP1

push 00CC0020h
push 0
push 0
push dword ptr [hdc_memory_start]
push 680
push 1400
push 0
push 0
push dword ptr [hdc]
call _BitBlt@36

jmp LOOP1

E1:

mov esp,ebp
pop ebp
ret
start_blit endp

;--------------------------------------------------

bitblit_boom proc

push ebp
mov ebp,esp


push 00CC483Fh
push hboom
push wboom
push 0
mov  eax,wboom
imul eax,i_boom
push eax
push dword ptr [hdc_memory_boom]
push hboom
push wboom
push y4
push x4
push dword ptr [hdc_backbuffer]
call _TransparentBlt@44



mov esp,ebp
pop ebp

ret
bitblit_boom endp

;--------------------------------------------------

over_blit proc
push ebp
mov ebp,esp

LOOP1:

cmp game_over_stat,1
jne LOOP1

push 00CC0020h
push 0
push 0
push dword ptr [hdc_memory_over]
push 680
push 1400
push 0
push 0
push dword ptr [hdc]
call _BitBlt@36

jmp LOOP1

E1:

mov esp,ebp
pop ebp
ret
over_blit endp