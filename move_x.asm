
move_x1 proc

push ebp
mov ebp,esp


push 27h
call _GetAsyncKeyState@4
test ax,8000h
jnz MOVE_RIGHT


jmp E1

MOVE_RIGHT:

sub x1,2
sub x_1,2

cmp x1,-1400
je RESET_X1_RIGHT

cmp x_1,-1400
je RESET_X_1_RIGHT


jmp E1

RESET_X1_RIGHT:

add x1,2800

jmp E1

RESET_X_1_RIGHT:
add x_1,2800


jmp E1
  

E1:

mov esp,ebp
pop ebp

ret
move_x1 endp


;--------------------------------------------------------------


move_x2 proc

push ebp
mov ebp,esp


push 27h
call _GetAsyncKeyState@4
test ax,8000h
jnz MOVE_RIGHT


jmp E1

MOVE_RIGHT:

sub x2,5
sub x_2,5

cmp x2,-1400
je RESET_X2_RIGHT

cmp x_2,-1400
je RESET_X_2_RIGHT


jmp E1

RESET_X2_RIGHT:

add x2,2800

jmp E1

RESET_X_2_RIGHT:
add x_2,2800


jmp E1
  

E1:

mov esp,ebp
pop ebp

ret
move_x2 endp


;--------------------------------------------------------------


move_x3 proc
push ebp
mov ebp,esp


push 27h
call _GetAsyncKeyState@4
test ax,8000h
jnz MOVE_RIGHT


jmp E1

MOVE_RIGHT:

sub x3,10
sub x_3,10

cmp x3,-1400
je RESET_X3_RIGHT

cmp x_3,-1400
je RESET_X_3_RIGHT

jmp E1

RESET_X3_RIGHT:

add x3,2800

jmp E1

RESET_X_3_RIGHT:
add x_3,2800

jmp E1
  
E1:


mov esp,ebp
pop ebp

ret
move_x3 endp

;--------------------------------------------------------------


move_x4 proc

push ebp
mov ebp,esp


cmp [i],7
je NEXT_LINE_H

push 27h
call _GetAsyncKeyState@4
test ax,8000h
jnz ROLL

 

jmp E1
  


ROLL:

inc i
cmp x4,700
ja E1

add x4,10
jmp E1

NEXT_LINE_H:
mov i,0
jmp E1


E1:

mov esp,ebp
pop ebp

ret
move_x4 endp

;--------------------------------------------------------------

move_x5 proc

push ebp
mov ebp,esp


cmp status_sonic_jump,0
je E1

mov eax, y4
add eax, jump_vel
mov y4, eax

add jump_vel, 2

mov eax, ground_y
cmp y4, eax
jl E1

mov y4, eax
mov status_sonic_jump,0
mov jump_vel,0




E1:

mov esp,ebp
pop ebp

ret
move_x5 endp
 
;--------------------------------------------------------------


move_x6 proc

push ebp
mov ebp,esp


cmp [i_2],3
je NEXT_LINE_H

push 28h
call _GetAsyncKeyState@4
test ax,8000h
jnz ROLL

jmp E1
  

ROLL:

inc i_2

jmp E1

NEXT_LINE_H:
mov i_2,0
jmp E1


E1:

mov esp,ebp
pop ebp

ret
move_x6 endp

 ;--------------------------------------------------------------

bullet_moving proc
push ebp
mov ebp,esp


sub x8,20
sub x9,14
sub x10,17



cmp x8,-30
jl AGAIN_1

cmp x9,-30
jl AGAIN_2

cmp x10,-30
jl AGAIN_3


mov eax, x4
add eax, 30       
mov ebx, x8         
cmp eax, ebx
jl CHECK_ENEMY2

mov eax, x4         
mov ebx, x8
add ebx, 30          
cmp eax, ebx
jg CHECK_ENEMY2 

mov eax, y4
add eax, 30        
mov ebx, y8          
cmp eax, ebx
jl CHECK_ENEMY2

mov eax, y4          
mov ebx, y8
add ebx, 30        
cmp eax, ebx
jg CHECK_ENEMY2

jmp COLLISION

CHECK_ENEMY2:

mov eax, x4
add eax, 30
cmp eax, x9
jl CHECK_ENEMY3

mov eax, x4
mov ebx, x9
add ebx, 30
cmp eax, ebx
jg CHECK_ENEMY3

mov eax, y4
add eax, 30
cmp eax, y9
jl CHECK_ENEMY3

mov eax, y4
mov ebx, y9
add ebx, 30
cmp eax, ebx
jg CHECK_ENEMY3

jmp COLLISION

CHECK_ENEMY3:

mov eax, x4
add eax, 30
cmp eax, x10
jl E2

mov eax, x4
mov ebx, x10
add ebx, 35
cmp eax, ebx
jg E2

mov eax, y4
add eax, 30
cmp eax, y10
jl E2

mov eax, y4
mov ebx, y10
add ebx, 30
cmp eax, ebx
jg E2


COLLISION:

mov game_over_stat,1
mov game_over_stat,1

push 5                         
push dword ptr [hwnd_quit]
call _ShowWindow@8

push 5
push dword ptr [hwnd_restart]
call _ShowWindow@8

jmp E2

AGAIN_1:

mov x8,2000

jmp E2	

AGAIN_2:

mov x9,1400

jmp E2	

AGAIN_3:

mov x10,2350

jmp E2	




E2:

mov esp,ebp
pop ebp

ret
bullet_moving  endp

;--------------------------------------------------------------


move_boom proc

push ebp
mov ebp,esp


cmp [i_boom],9
je E1

inc i_boom

push 100
call __sleep

E1:



mov esp,ebp
pop ebp

ret
move_boom endp

;--------------------------------------------------------------
