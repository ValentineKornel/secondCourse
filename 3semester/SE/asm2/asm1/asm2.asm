.586P
.MODEL FLAT, STDCALL
includelib kernel32.lib

ExitProcess PROTO : DWORD
MessageBoxA PROTO: DWORD, : DWORD, : DWORD, :DWORD

.STACK 4096

.CONST

.DATA
MB_OK   EQU 0
STR1    DB "Lab 2", 0
STR2    DB "��������� �������� =  ", 0
LL      DB 5
HW      DD ? 

.CODE

main PROC
START :
	MOV ax, 3
	ADD ax, 4
	ADD ax, 30h
	MOV ebx, LENGTHOF STR2 - 2
	MOV [STR2 + ebx], al

	INVOKE MessageBoxA, HW, OFFSET STR2, OFFSET STR1, MB_OK

	push 0
	call ExitProcess
main ENDP

end main