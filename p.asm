.586
.MODEL FLAT 
INCLUDE io.h
.STACK 4096
.DATA
X DWORD ?
Y DWORD ?
Z DWORD ?
W DWORD ?
S1 BYTE "ENTER FIRST NUM ",0
S2 BYTE "ENTER SECOND  NUM ",0
S3 BYTE "ENTER THREE NUM ", 0
string BYTE 40 dup (?)
te BYTE " the result is ",0
res BYTE 11 DUP (?) 
.CODE 
MainProc PROC
input S1 ,string ,40
atod string 
mov X, eax 
input S2, string ,40
atod string 
mov Y ,eax
input S3,string ,40
atod string 
mov Z,eax
mov eax ,X
add eax,Y
mov W,eax
imul eax,2
add eax,Z
dtoa res,eax
output te,res
mov eax,0
ret
MainProc ENDP
END
