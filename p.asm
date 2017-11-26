.586
.MODEL FLAT 
INCLUDE io.h
.STACK 4096
.DATA
cent DWORD ?
nickels DWORD ?
Dims DWORD ?
quarter DWORD ?
fifty DWORD ?
dolar DWORD ?

s1 BYTE " Enter cent " ,0
s2 BYTE " Enter nickles " ,0
s3 BYTE "Enter dimes ",0
s4 BYTE "Enter quarter ",0
s5 BYTE "Enter fifty-cent ",0
s6 BYTE "Enter dolar ",0
string BYTE 40 DUP(?) ,0
t1 BYTE "The result = ",0
res1 BYTE 11 DUP (?);0
t2 BYTE "reminder ",0
res2  BYTE 11 DUP (?)
.CODE 
MainProc PROC
input s1,string ,40
atod string 
mov cent,eax
input s2,string ,40
atod string 
mov nickels,eax
input s3,string ,40
atod string 
mov Dims,eax
input s4,string ,40
atod string 
mov quarter,eax
input s5,string ,40
atod string 
mov fifty,eax
input s6 ,string ,40
atod string 
mov dolar ,eax
 mov eax,cent
  
 mov eax, nickels
 imul eax,5
 mov nickels,eax

mov eax,Dims
imul eax,10
mov Dims,eax

mov eax,quarter
imul eax,25
mov quarter,eax

mov eax,fifty
imul eax,50
mov fifty,eax 

mov eax,dolar 
imul eax,100
;mov dolar,eax

add eax,nickels
add eax,dims
add eax,quarter 
add eax, fifty
add eax,cent 
mov ebx,100
cdq
idiv ebx
dtoa string ,eax
output t1, string
 
dtoa res2,edx
output t2,res2

mov eax,0
 ret
 MainProc ENDP
END





