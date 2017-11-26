.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
x DWORD ?
y DWORD ?
z DWORD ?
w DWORD ?
s1 BYTE "Enter first value ",0
s2 BYTE "Enter second value ",0
s3 BYTE "Enter three value ",0
string BYTE 40 DUP(?)
te BYTE "the result equal ",0
res BYTE 11 DUP(?),0
.CODE
MainProc PROC
input s1,string ,40
atod string 
mov x,eax
input s2,string ,40
 atod string 
 mov y,eax
 input s3,string ,40
 atod string 
 mov z,eax
 imul eax,2
 mov w,eax
 mov eax,x
 add eax,y
 sub eax,w
 inc eax
 neg eax
 dtoa res,eax
 output te ,res
 mov eax,0
 ret
 MainProc ENDP
 END


