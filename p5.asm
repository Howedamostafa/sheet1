.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
g1 DWORD ?
g2 DWORD ?
g3 DWORD ?
g4 DWORD ?

x BYTE "Enter first grade " ,0
y BYTE "Enter second grade " ,0
z BYTE "Enter three grade " ,0 
v BYTE "Enter four grade " ,0
string BYTE 40 DUP(?)
t1 BYTE " The sum equal ",0
res1 BYTE 11 DUP(?),0
t2 BYTE "The average equal",0
res2 BYTE 11 DUP(?)

.CODE
MainProc PROC
input x,string ,40
atod string 
mov g1 ,eax
input y,string ,40
atod string 
mov g2 ,eax
input z,string ,40
atod string
mov g3 ,eax
input v,string ,40
atod string 
mov g4 ,eax
mov eax ,g1
add eax,g2
add eax,g3
add eax,g4
dtoa res1 ,eax
output t1,res1
 atod res1
 mov ebx,4
 cdq
 idiv ebx
  dtoa res2,eax
  output t2,res2

mov eax ,0
ret
MainProc ENDP
END






