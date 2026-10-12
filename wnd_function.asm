.code

wnd_function proc
push ebp
mov ebp,esp

cmp [ebp+12], dword ptr WM_COMMAND 
je COMMAND_MESSAGE

;cmp [ebp+12], dword ptr WM_PAINT
;je WM_PAINT_1

cmp [ebp+12],dword ptr WM_KEYDOWN
je WM_KEYDOWN_1

cmp [ebp+12], dword ptr WM_KEYUP
je WM_KEYUP_1


jmp E1


COMMAND_MESSAGE:

cmp word ptr [ebp+16], BTTN_START 
je BT_START

cmp word ptr [ebp+16], BTTN_RESTART 
je BT_RESTART

cmp word ptr [ebp+16], BTTN_QUIT 
je BT_QUIT


jmp E1

BT_START:

mov game_start_stat,0

push SW_HIDE
push dword ptr [hwnd_start]
call _ShowWindow@8

jmp E1

BT_RESTART:

push SW_HIDE
push dword ptr [hwnd_quit]
call _ShowWindow@8

push SW_HIDE
push dword ptr [hwnd_restart]
call _ShowWindow@8

mov x4, 10
mov y4, 555

mov x5, 10
mov y5,570

mov y6,570

mov y7,570

mov x8,1400
mov y8,550

mov x9,1800
mov y9, 510

mov x10,2000
mov y10,520

mov sonic_x, 10
mov sonic_y,560

mov game_start_stat,0
mov game_over_stat,0

xor eax,eax 

jmp E1

BT_QUIT:

push 0                         
push 0                         
push 0010h                     
push dword ptr [hwnd]           
call _SendMessageA@16

xor eax,eax

jmp E1

WM_KEYUP_1:
cmp [ebp+16], word ptr VK_RIGHT
je STOP_RUN


cmp [ebp+16], word ptr VK_DOWN
je STOP_RUN_1
jmp E1



STOP_RUN:
mov status_sonic_run, 0
mov status_sonic_stand, 1
jmp E1

STOP_RUN_1:
mov status_sonic_roll, 0


push VK_RIGHT
call _GetAsyncKeyState@4
test ax,8000h
jnz WM_PAINT_1

mov status_sonic_stand,1
jmp E1




WM_KEYDOWN_1:

cmp [ebp+16], word ptr VK_RIGHT
je WM_PAINT_1

cmp [ebp+16], word ptr VK_DOWN
je WM_PAINT_2

cmp [ebp+16], word ptr VK_UP
je START_JUMP

jmp E1

WM_PAINT_1:


mov status_sonic_stand,0
mov status_sonic_run,1

jmp E1

WM_PAINT_2:

mov status_sonic_roll,1
mov status_sonic_stand,0
mov status_sonic_run,0

jmp E1

START_JUMP:

cmp status_sonic_jump,1
je E1 

mov status_sonic_jump,1
mov jump_vel,-20 

;COMMAND_MESSAGE:

;mov eax,[ebp+16]
;and eax,0FFFFh
;cmp eax,BTN_0_ID
;je END_START

jmp E1

END_START:

mov game_menu_stat,0
mov game_start_stat,1 

E1:

push [ebp+20]  ;lparam
push [ebp+16]  ;wparam
push [ebp+12]  ;message 
push [ebp+8]   ;hwnd
call _DefWindowProcA@16

mov esp,ebp
pop ebp

ret

wnd_function endp

