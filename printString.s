@********************************************************
@ printString.s
@ Autor: Martha L. Naranjo
@ Fecha: 24/06/2014
@ Curso: CC4010 Taller de Assembler
@ Despliega en pantalla la cadena apuntada por R1
@********************************************************
@area del codigo
.global _start
_start:
  MOV R7, #4		@4=llamado a "write" swi
  MOV R0, #1		@1=stdout (monitor)
  MOV R2, #12		@longitud de la cadena: 1 caracter
  LDR R1, =string	@apunta a la cadena
  SWI 0
  
  
  MOV R7, #1		@salida al sistema operativo
  SWI 0
@********************************************************
@area de datos
  .data
string:
  .ascii "Hello World\n"