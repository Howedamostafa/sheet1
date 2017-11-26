.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
grade1 DWORD ?
weight1 DWORD ?
grade2 DWORD ?
weight2 DWORD ?
grade3 DWORD ?
weight3 DWORD ?
grade4 DWORD ?
weight4 DWORD ?
R1 DWORD ?
R2 DWORD ?
R3 DWORD ?
R4 DWORD ?

x1 BYTE "Enter grade1 ",0
y1 BYTE "Enter weight1" ,0
x2 BYTE "Enter grade2 ",0
y2 BYTE "Enter weight2 ",0
x3 BYTE "Enter grade3 ",0
y3 BYTE "Enter weight3 ",0
x4 BYTE "Enter grade4 ",0
y4 BYTE "Enter weight4",0
string BYTE 40 DUP(?),0
str1 BYTE "weightedsum equal ",0
res1 BYTE 11 DUP(?),0
str2 BYTE "sum of weight ",0
res2 BYTE 11 DUP(?),0
str3 BYTE "averag equal ",0
res3 BYTE 11 DUP(?)

.CODE
MainProc PROC
input x1,string ,40
atod string 
mov grade1 ,eax
input y1 ,string, 40
atod string 
mov weight1 ,eax
input x2,string ,40
atod string 
 mov grade2,eax
 input y2,string ,40
 atod string
 mov weight2 ,eax
 input x3,string ,40
 atod string 
 mov grade3,eax
 input y3,string ,40
 atod string 
 mov weight3,eax
input x4,string ,40
atod string
mov grade4,eax
input y4,string ,40
atod string
mov weight4 ,eax
mov eax,grade1
imul eax,weight1
mov R1 ,eax
mov eax,grade2
imul eax,weight2
mov R2,eax
mov eax,grade3
imul eax,weight3
mov R3,eax
mov eax,grade4
imul eax,weight4
mov R4,eax
mov eax,R1
add eax,R2
add eax,R3
add eax,R4
mov ebx,eax
dtoa res1,eax
output str1,res1

mov eax,weight1
add eax,weight2
add eax,weight3
add eax,weight4
dtoa res2,eax
output str2,res2


atod res2
xchg eax,ebx
cdq
div ebx
dtoa res3,eax
output str3,res3
mov eax,0
ret
MainProc ENDP
END