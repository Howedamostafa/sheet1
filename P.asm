.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
l DWORD ?
w DWORD ?
r DWORD ?
x BYTE "Enter length ",0
y BYTE "Enter width ",0
string BYTE 40 DUP(?)
te BYTE "The result is",0
res BYTE 11 DUP(?)
.CODE
MainProc PROC
input x,string ,40
atod string
mov l,eax
input y,string ,40
atod string
mov w,eax
mov eax,l
add eax,w
mov r,eax
imul eax,2
dtoa res ,eax
output te,res
mov eax,0
ret
MainProc ENDP
END

