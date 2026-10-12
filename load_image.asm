.code

load_image proc
push ebp
mov ebp,esp


push 16
push 431
push 1400
push 0 
push offset background_pic
push 0
call _LoadImageA@24
mov [hbmp_bkg],eax

push 16
push 400
push 1400
push 0 
push offset background_pic2
push 0
call _LoadImageA@24
mov [hbmp_bkg2],eax

push 16
push 680
push 1400
push 0 
push offset background_pic3
push 0
call _LoadImageA@24
mov [hbmp_bkg3],eax

push 16
push 66
push 400
push 0 
push offset sonic_run
push 0
call _LoadImageA@24
mov [hbmp_sonic_run],eax

push 16
push 65
push 49
push 0 
push offset sonic_stand
push 0
call _LoadImageA@24
mov [hbmp_sonic_stand],eax

push 16
push 55
push 218
push 0 
push offset sonic_roll
push 0
call _LoadImageA@24
mov [hbmp_sonic_roll],eax

push 16
push 69
push 65
push 0 
push offset sonic_jump
push 0
call _LoadImageA@24
mov [hbmp_sonic_jump],eax


push 16
push 45
push 63
push 0 
push offset sonic_bullet
push 0
call _LoadImageA@24
mov [hbmp_sonic_bullet],eax


push 16
push 700
push 1400
push 0 
push offset start_it
push 0
call _LoadImageA@24
mov [hbmp_start],eax

push 16
push 64
push 551
push 0 
push offset boom_it
push 0
call _LoadImageA@24
mov [hbmp_boom],eax

push 16
push 700
push 1400
push 0 
push offset game_over
push 0
call _LoadImageA@24
mov [hbmp_over],eax

push 16
push 40
push 160
push 0 
push offset start_btn
push 0
call _LoadImageA@24
mov [hbmp_start_btn],eax

push 16
push 60
push 160
push 0 
push offset quit_btn
push 0
call _LoadImageA@24
mov [hbmp_quit_btn],eax

push 16
push 60
push 160
push 0 
push offset restart_btn
push 0
call _LoadImageA@24
mov [hbmp_restart_btn],eax

mov esp,ebp
pop ebp

ret
load_image endp
