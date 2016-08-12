@despliega en pantalla la cadena apuntada por r1 
.text
.global main
main:
  MOV	R7,#4		@4=llamado a "write" swi
  MOV	R0,#1		@1=stdout (monitor)
  MOV	R2,#12		@long cadena: 12 caracteres
  LDR	R1,=string	@apunta a la cadena
  SWI	0
 
  MOV	R7, #1		@salida al Sistema Operativo
  SWI	0
.data
string:	.asciz "Hello World\n"

