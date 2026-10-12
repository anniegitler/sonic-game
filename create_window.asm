
.code

create_window proc

push ebp
mov ebp,esp


push 0
push 0
push 0
push 0
push 700
push 1400
push 50
push 30
mov eax,010CF0000h
or eax,02000000h      
push eax
push offset wnd_name
push offset wnd_class_name
push 0
call _CreateWindowExA@48
mov [hwnd],eax

START_BUTTON:
cmp game_start_stat,1
jne SKIP

push 0
push 0
push BTTN_START
push hwnd
push 40
push 160
push 90
push 880

mov eax,010000000h
or eax,040000000h
or eax,BS_BITMAP
push eax
push 0
push offset btn_start
push 0
call _CreateWindowExA@48
mov [hwnd_start],eax

push dword ptr [hbmp_start_btn]
push 0
push BM_SETIMAGE
push dword ptr [hwnd_start]
call _SendMessageA@16

SKIP:


push 0
push 0
push BTTN_RESTART
push hwnd
push 60
push 160
push 200
push 680

mov eax,040000000h
or eax,BS_BITMAP
push eax
push 0
push offset btn_restart
push 0
call _CreateWindowExA@48
mov [hwnd_restart],eax

push dword ptr [hbmp_restart_btn]
push 0
push BM_SETIMAGE
push dword ptr [hwnd_restart]
call _SendMessageA@16

push 0
push 0
push BTTN_QUIT
push hwnd
push 60
push 160
push 280
push 680

mov eax,040000000h
or eax,BS_BITMAP
push eax
push 0
push offset btn_restart
push 0
call _CreateWindowExA@48
mov [hwnd_quit],eax

push dword ptr [hbmp_quit_btn]
push 0
push BM_SETIMAGE
push dword ptr [hwnd_quit]
call _SendMessageA@16

E1:

mov esp,ebp
pop ebp

ret
create_window endp
