
.code

register_class proc
push ebp
mov ebp,esp


    mov [window_class].cbsize,48 ;SIZEOF WNDCLASSEXA1
    mov [window_class].style,0

    mov eax,wnd_function
    mov [window_class].lpfnwndproc,eax

    mov [window_class].cbclsextra,0
    mov [window_class].cbwndextra,0
    mov [window_class].hinstance,0
    mov [window_class].hicon,0
    mov [window_class].hcursor,0

    push 00478B75h
    call _CreateSolidBrush@4

    mov [window_class].hbrbackground,eax
    mov [window_class].lpszmenuname,0

        lea eax,wnd_class_name
    mov [window_class].lpszclassname,eax 

    mov [window_class].hiconsm,0

mov eax,wnd_function
mov [window_class].lpfnwndproc,eax

lea eax,window_class
push eax
call _RegisterClassExA@4


mov esp,ebp
pop ebp

ret
register_class endp
