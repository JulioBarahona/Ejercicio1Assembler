@subrutina str_to_num
@r0: cadena
@salida r0: numero

str_to_num:
	@decenas
	ldrb r2,[r0]
	sub r2,r2,#0x30
	ldr r3,=diez
	ldr r3,[r3]
	mul r2,r2,r3	@r2 tiene las decenas
	@unidades
	add r0,r0,#1
	ldrb r4,[r0]
	sub r4,r4,#0x30
	add r0,r2,r4	@numero convertido
	mov pc,lr
.data
diez: .word 10
