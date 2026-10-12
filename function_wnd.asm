.code

function_wnd proc
push ebp
mov ebp,esp



cmp [ebp+12], dword ptr WM_COMMAND 
je COMMAND_MESSAGE

jmp E1

COMMAND_MESSAGE:

cmp word ptr [ebp+16], word ptr BTN_0_ID 
je END_START

jmp E1

END_START:

mov thread_stat_2,0
mov thread_stat,1 

E1:

push [ebp+20]  ;lparam
push [ebp+16]  ;wparam
push [ebp+12]  ;message 
push [ebp+8]   ;hwnd
call _DefWindowProcA@16

mov esp,ebp
pop ebp

ret

function_wnd endp

