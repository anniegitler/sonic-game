call_all_bitblt proc
push ebp
mov ebp,esp



BTBT:

cmp game_start_stat,1
je BTBT

cmp game_over_stat,1
je BTBT

;cmp game_over_stat,1
;je BOOM

call score

call move_x1
call move_x2
call move_x3
call move_x5
call move_x4
call move_x6 
call bullet_moving 

call bitblit_bkg1
call bitblit_bkg2
call bitblit_bkg3
call bitblit_bullet

cmp status_sonic_run,1
je CALL_RUN

;-----

;cmp status_sonic_jump,1
;je CALL_JUMP

;-----

cmp status_sonic_roll,1
je CALL_ROLL

;-----

call bitblit_sonic_stand
jmp PRESENT

;-----

;CALL_JUMP:

;call bitblit_sonic_jump

jmp PRESENT

CALL_ROLL:

call bitblit_sonic_roll

jmp PRESENT

CALL_RUN:

call bitblit_sonic_run

jmp PRESENT

BOOM:


;call move_boom

;call bitblit_boom

;call bitblit_game_over



PRESENT:

push SRCCOPY
push 0
push 0
push dword ptr [hdc_backbuffer]
push 680
push 1400
push 0
push 0
push dword ptr [hdc]
call _BitBlt@36

push 16
call __sleep
jmp BTBT


E1:

mov esp,ebp
pop ebp
ret
call_all_bitblt endp