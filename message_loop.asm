
.code

message_loop proc
push ebp
mov ebp,esp

A:
push 0
push 0
push 0
push offset msg
call _GetMessageA@16
cmp eax,0
je E1

push offset msg
call _TranslateMessage@4


push offset msg
call _DispatchMessageA@4



jmp A



E1:

push 5 
call _exit


mov esp,ebp
pop ebp


ret

message_loop endp
