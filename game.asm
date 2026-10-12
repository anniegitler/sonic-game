.model flat


include externs.asm
include create_window.asm
include load_image.asm
include message_loop.asm
include register_class.asm
include wnd_function.asm
include bitblit.asm
include thread.asm
include move_x.asm
include call_all_bitblit.asm
include creat_dc.asm
include textout.asm



WNDCLASSEXA1 struct
    cbsize dd ?
    style dd ?
    lpfnwndproc dd ?
    cbclsextra dd ?
    cbwndextra dd ?
    hinstance dd ?
    hicon dd ?
    hcursor dd ?
    hbrbackground dd ?
    lpszmenuname dd ?
    lpszclassname dd ?
    hiconsm dd ?
WNDCLASSEXA1 ends

MSG1 struct
    hwnd dd ?
    message dd ?
    wParam dd ?
    lParam dd ?
    time dd ?
    lPrivate dd ?
MSG1 ends

WM_PAINT   equ 0Fh
WM_KEYDOWN equ 0100h
WM_KEYUP   equ 0101h
VK_RIGHT   equ 27h
VK_DOWN    equ 28h
VK_UP      equ 26h
SRCCOPY    equ 00CC0020h


BM_SETIMAGE   equ 0F7h
BS_BITMAP     equ 080h
EM_REPLACESEL equ 00C2h
WS_BORDER     equ 00800000h
IMAGE_BITMAP  equ 0
WM_COMMAND    equ 0111h
BM_GETTEXT    equ 0Dh
WM_SETTEXT    equ 0Ch

BTTN_START      equ 100
BTTN_RESTART    equ 150
BTTN_QUIT       equ 200

SW_HIDE equ 0

.data

sonic_run         db "sonic.bmp",0
sonic_roll        db "roll.bmp",0
sonic_stand       db "standin.bmp",0
sonic_jump        db "jump.bmp",0
sonic_bullet      db "bullet.bmp",0
background_pic    db "bkg.bmp",0
background_pic2   db "bkg2.bmp",0
background_pic3   db "bkg3.bmp",0
start_it          db "start.bmp",0
boom_it           db "boom.bmp",0
game_over         db "game_over.bmp",0
start_btn         db "start_btn.bmp",0
quit_btn          db "quit_btn.bmp",0
restart_btn       db "restart_btn.bmp",0

window_class WNDCLASSEXA1 <>
msg MSG1 <>

wnd_class_name    db "sonic",0
wnd_name          db "Sonic",0

btn_start_nm db "start",0
btn_start  db "button",0

btn_restart_nm db "restart",0
btn_restart  db "button",0

btn_quit_nm db "quit",0
btn_quit  db "button",0



hbmp_bkg           dd 0
hbmp_bkg2          dd 0
hbmp_bkg3          dd 0
hbmp_sonic_run     dd 0
hbmp_sonic_stand   dd 0
hbmp_sonic_roll    dd 0 
hbmp_sonic_jump    dd 0 
hbmp_sonic_bullet  dd 0 
hbmp_start         dd 0
hbmp_boom          dd 0
hbmp_start_btn     dd 0
hbmp_quit_btn     dd 0
hbmp_restart_btn     dd 0

hbmp_backbuffer dd ?

hwnd          dd 0
hwnd_start    dd 0
hwnd_restart  dd 0
hwnd_quit     dd 0
hbmp_over     dd 0

hdc dd 0


hdc_backbuffer dd 0
hdc_memory1 dd 0
hdc_memory2 dd 0
hdc_memory3 dd 0
hdc_memory4 dd 0
hdc_memory5 dd 0
hdc_memory6 dd 0
hdc_memory7 dd 0
hdc_memory8 dd 0

hdc_memory_start dd 0
hdc_memory_boom  dd 0
hdc_memory_over  dd 0
hdc_memory_start_btn  dd 0
hdc_memory_quit_btn  dd 0
hdc_memory_restart_btn  dd 0

thread_id  dd ?
thread_id2 dd ?
thread_id3 dd ?
thread_id4 dd ?
thread_id5 dd ?

h dd 431
w dd 1400

h1 dd 680
w1 dd 1400

h2 dd 400
w2 dd 1400

h3 dd 680
w3 dd 1400

h4 dd 66
w4 dd 50

h5 dd 65
w5 dd 49

h6 dd 55
w6 dd 55

h7 dd 55
w7 dd 55

h8 dd 45
w8 dd 63

hboom dd 63
wboom dd 63

;--------------

x1 dd 0
y1 dd 0

x_1 dd 1400
y_1 dd 0

x2 dd 0
y2 dd 210

x_2 dd 1400
y_2 dd 210

x3 dd 0
y3 dd 0

x_3 dd 1400
y_3 dd 0

x4 dd 10
y4 dd 555

x5 dd 10
y5 dd 570

y6 dd 570

y7 dd 570

x8 dd 1400
y8 dd 550

x9 dd 1800
y9 dd 510

x10 dd 2000
y10 dd 520

sonic_x dd 10
sonic_y dd 560

;--------------

jump_vel dd 0
ground_y dd 550

i      dd 0
i_2    dd 0   
i_boom dd 0


color_bkg dd 00FF00FFh 


status_bkg1        dd 1
status_bkg2        dd 1
status_bkg3        dd 1
status_sonic_run   dd 0
status_sonic_stand dd 1
status_sonic_roll  dd 0
status_sonic_jump dd 0

game_start_stat      dd 1
game_menu_stat       dd 0
game_over_stat       dd 0
fmt db "%d", 0


score_buf      dd 0

score_text db "SCORE:", 0

.code
 

_main proc



call load_image

call register_class

call create_window

call create_dc

call thread_sonic

call message_loop


ret 
_main endp
end _main