;           Muhammad Hamza 1602028
;           Calculate the Power of Number

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data
x dword 3
y dword 5
temp dword ?
.code
main proc
                       ; ***** This Portion of Code Calculate the X power *****
     mov EBX,x
	 mov EDX,OFFSET temp
	 PUSH EBX
  CALL polly
     mov EDX,EBX
	 add EDX,1
                       ; ***** This Portion of Code Calculate the X power *****
     mov EBX,y
	 mov EDX,OFFSET temp
	 PUSH EBX
  CALL polly
     mov EDX,EBX
	 add EDX,1

invoke ExitProcess,0
main endp
                      ;***** This is Poly Function *****
  polly PROC
	 PUSH EBP
	 mov EBP,ESP
	PUSH [EBP+8]
	CALL pow   
     mov ESP,EBP
     pop EBP
	 ret
   polly ENDP
                        ;***** This is Pow Function *****
   pow PROC
     PUSH EBP
	 mov EBP,ESP
	 mov AX,[EBP+8]
	 MUL AX
	 movzx EBX,AX
	 PUSH EBX
	 mov ESP,EBP
     pop EBP
	 ret
   pow ENDP
end main