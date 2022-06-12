[org 0x0100]

array: dw 0,10,40,5,34,4556,894,4,945,767,2, -1
max: dw 0
min: dw 0

mov ax, array
start:
cmp ax,-1
je terminate

cmp ax, max
jg maximum
cmp ax, min
jl minimum
jmp start

maximum:
mov [max],ax
add ax, 2
jmp start

minimum:
mov [min],ax
add ax, 2
jmp start


terminate:

mov ax, 0x4c00
int 21h