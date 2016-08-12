@********************************************************
@ readString.s
@ Autor: Martha L. Naranjo
@ Fecha: 24/06/2014
@ Curso: CC4010 Taller de Assembler
@ Lee una cadena y la muestra
@********************************************************
@area del codigo
.global _start
_start:
@ Lee el caracter
  MOV R7, #3		@3=llamado a "read" swi
  MOV R0, #0		@0=stdout (teclado)
  MOV R2, #11		@longitud de la cadena: 10 caracteres
  LDR R1, =string	@apunta a la variable donde se guarda
  SWI 0

@ Muestra la cadena leida
  MOV R7, #4		@4=llamado a "write" swi
  MOV R0, #1		@1=stdout (monitor)
  MOV R2, #11		@longitud de la cadena: 11 caracteres
  LDR R1, =string	@apunta a la cadena
  SWI 0

@ Muestra el enter
  MOV R7, #4		@4=llamado a "write" swi
  MOV R0, #1		@1=stdout (monitor)
  MOV R2, #1		@longitud de la cadena: 1 caracter
  LDR R1, =enter	@apunta a la cadena
  SWI 0

@ Salida al S.O.
  MOV R7, #1
  SWI 0
@********************************************************
@area de datos 
.data
string: .asciz "           "		@etiqueta donde se guarda el valor leido
enter: 	.asciz "\n"	@enter
