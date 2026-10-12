; includelib    msvcrt.lib
;includelib    user32.lib
;includelib    gdi32.lib
;includelib    kernel32.lib
includelib winmm.lib


includelib "C:\Users\Anuk\Desktop\New folder\prgr\compilers\masm32\lib\msvcrt.lib"
includelib "C:\Users\Anuk\Desktop\New folder\prgr\compilers\masm32\lib\user32.lib"
includelib "C:\Users\Anuk\Desktop\New folder\prgr\compilers\masm32\lib\gdi32.lib"
includelib "C:\Users\Anuk\Desktop\New folder\prgr\compilers\masm32\lib\msimg32.lib"

extern _wsprintfA:proc
extern _ShowWindow@8:proc
extern _PlaySoundA@12:proc
extern _CreateCompatibleBitmap@12:proc
extern _TransparentBlt@44:proc
extern _GetLastError@0:proc
extern _CreateThread@24:proc
extern _SetWindowRgn@12:proc
extern _CreateEllipticRgn@16:proc
extern _SendMessageA@16:proc
extern _SendDlgItemMessageA@20:proc
extern _DestroyWindow@4:proc
extern _AppendMenuA@16:proc
extern _CreatePopupMenu@0:proc
extern _CreateMenu@0:proc
extern _SetMenu@8:proc
extern _CreateWindowExA@48:proc
extern _DispatchMessageA@4:proc
extern _TranslateMessage@4:proc
extern _GetMessageA@16:proc

extern _PostQuitMessage@4:proc
extern _CreateWindowExA@48:proc
extern _DispatchMessageA@4:proc
extern _TranslateMessage@4:proc
extern _GetMessageA@16:proc
extern _RegisterClassExA@4:proc

extern _DefWindowProcA@16:proc


extern _BitBlt@36:proc
extern _LoadImageA@24:proc

extern _GetSystemMetrics@4:proc
extern _GetObjectA@12:proc
extern _CreateCompatibleDC@4:proc

extern _CreatePen@12:proc
extern _CreateSolidBrush@4:proc
extern _SelectObject@8:proc
extern _Sleep@4:proc
extern _Polygon@12:proc
extern _GetConsoleWindow@0:proc
extern _FindWindowA@8:proc
extern _GetConsoleTitleA@8:proc
 extern _putchar:PROC
 extern _GetKeyboardState@4:PROC
 extern _GetKeyState@4:PROC
 extern _GetAsyncKeyState@4:PROC
 extern _getchar:PROC
 extern __getch:PROC
 extern _GetDC@4:PROC
 extern _SelectObject@8:PROC
 extern _CreateFontA@56:PROC
 extern _TextOutA@20:PROC
 extern _SetBkColor@8:PROC
 extern _SetTextColor@8:PROC
 extern _strlen:PROC
 extern _SetBkMode@8:PROC
 extern _GetCursorPos@4:PROC
 extern _Rectangle@20:PROC
 extern _exit:PROC
 extern _SetPixel@16:PROC
extern _MessageBoxA@16:proc
extern __sleep:proc
extern _GetSystemMetrics@4:proc
extern _GetObjectA@12:proc
extern _CreateCompatibleDC@4:proc
extern _scanf:proc
extern _puts:proc
extern _sprintf:proc
extern _printf:proc
extern _fopen:proc
extern _fwrite:proc
extern _fclose:proc
extern _fread:proc