
.code

call_start proc
push ebp
mov ebp,esp


START_SON:
cmp game_menu_stat,1 
jne E1


call start_blit

push 16
call __sleep
jmp START_SON

E1:

mov esp,ebp
pop ebp
ret
call_start endp