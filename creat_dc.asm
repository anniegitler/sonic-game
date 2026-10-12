create_dc proc
push ebp
mov ebp,esp


push [hwnd]
call _GetDC@4
mov [hdc],eax

push dword ptr [hdc]
call _CreateCompatibleDC@4
mov hdc_memory1,eax

push dword ptr [hdc]
call _CreateCompatibleDC@4
mov hdc_memory2,eax

push dword ptr [hdc]
call _CreateCompatibleDC@4
mov hdc_memory3,eax

push dword ptr [hdc]
call _CreateCompatibleDC@4
mov hdc_memory4,eax

push dword ptr [hdc]
call _CreateCompatibleDC@4
mov hdc_memory5,eax

push dword ptr [hdc]
call _CreateCompatibleDC@4
mov hdc_memory6,eax

push dword ptr [hdc]
call _CreateCompatibleDC@4
mov hdc_memory7,eax

push dword ptr [hdc]
call _CreateCompatibleDC@4
mov hdc_memory8,eax

push dword ptr [hdc]
call _CreateCompatibleDC@4
mov hdc_memory_start,eax

push dword ptr [hdc]
call _CreateCompatibleDC@4
mov hdc_memory_boom,eax


push dword ptr [hdc]
call _CreateCompatibleDC@4
mov [hdc_memory_over],eax


;-------------------------------------------------

push dword ptr [hbmp_bkg]
push dword ptr [hdc_memory1]
call _SelectObject@8

push dword ptr [hbmp_bkg2]
push dword ptr [hdc_memory2]
call _SelectObject@8

push dword ptr [hbmp_bkg3]
push dword ptr [hdc_memory3]
call _SelectObject@8

push dword ptr [hbmp_sonic_run]
push dword ptr [hdc_memory4]
call _SelectObject@8

push dword ptr [hbmp_sonic_stand]
push dword ptr [hdc_memory5]
call _SelectObject@8

push dword ptr [hbmp_sonic_roll]
push dword ptr [hdc_memory6]
call _SelectObject@8

push dword ptr [hbmp_sonic_jump]
push dword ptr [hdc_memory7]
call _SelectObject@8

push dword ptr [hbmp_sonic_bullet]
push dword ptr [hdc_memory8]
call _SelectObject@8

push dword ptr [hbmp_start]
push dword ptr [hdc_memory_start]
call _SelectObject@8

push dword ptr [hbmp_boom]
push dword ptr [hdc_memory_boom]
call _SelectObject@8

push dword ptr [hbmp_over]
push dword ptr [hdc_memory_over]
call _SelectObject@8

push dword ptr [hbmp_start_btn]
push dword ptr [hdc_memory_start_btn]
call _SelectObject@8


;-------------------------------------------------

push dword ptr [hdc]
call _CreateCompatibleDC@4
mov hdc_backbuffer, eax

push 680
push 1400
push dword ptr [hdc]
call _CreateCompatibleBitmap@12
mov hbmp_backbuffer, eax

push hbmp_backbuffer
push hdc_backbuffer
call _SelectObject@8


mov esp,ebp
pop ebp
ret
create_dc endp