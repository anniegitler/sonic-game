

.code

thread_sonic proc

push ebp
mov ebp,esp

cmp game_start_stat, 1
jne DRAW_GAME


;THIS SHIT IS SUPPOSED TO DRAW START MENU ON THE WINDOW



push offset thread_id
push 0
push 0
push offset start_blit
push 0
push 0
call _CreateThread@24

DRAW_GAME:

;THIS SHIT IS SUPPOSED TO DRAW THE GAME ON THE WINDOW

push offset thread_id2
push 0
push 0
push offset call_all_bitblt
push 0
push 0
call _CreateThread@24

;THIS SHIT IS SUPPOSED TO DRAW THE GAME OVER IMAGE

push offset thread_id
push 0
push 0
push offset over_blit
push 0
push 0
call _CreateThread@24








E1:


mov esp,ebp
pop ebp

ret
thread_sonic endp
