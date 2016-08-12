@ Clements3.9.10.s
@ Autor: Alan Clements. Modificado por: Martha L. Naranjo
@ Fecha: 24/06/2014
@ Curso: CC4010 Taller de Assembler
@ Despliega en pantalla el valor guardado en r1 en formato hexadecimal
.global _start
_start:
		mov 	r1, #0xA1		@valor guardado en r1
		mov 	r2, #8		@repetir 8 veces. r2 es el contador
next:	mov 	r0, r1, lsr #28	@obtener 4 bits
		add 	r0, r0, #0x30	@convertirlo a caracter
		cmp 	r0,#0x39
		addge	 r0,r0,#7		@en el caso de A..F
		push 	{r0-r8}
		ldr 	r1,=string		@guarda en la etiqueta string
		str 	r0,[r1]
		mov 	r7, #4			@4=llamado a "write" swi
		mov 	r0, #1			@1=stdout (monitor)
		mov 	r2, #1			@longitud de la cadena: 1 caracter
		ldr 	r1, =string		@apunta 
		swi 	0				@mostrarlo en pantalla
		pop 	{r0-r8}
		mov 	r1, r1, lsl #4	@mover los bits un nibble a la izquierda
		subs 	r2, r2, #1		@disminuir contador
		bne 	next			@hasta imprimir 8 caracteres
		
		mov		r7, #1			@salida a Linux
		swi		0			
  .data
string: .word 0				@etiqueta donde se guarda el valor leido
