@@ Julio Barahona M
@@ main.s
@@ 12.08.2016
@@ Ejercicio 3 Temario B

.global main
.func name

main:

@@ Lee los valores de los carros
	MOV R7, #3		@3=llamado a "read" swi
	MOV R0, #0		@0=stdout (teclado)
	MOV R2, #11		@longitud de la cadena: 10 caracteres
  	LDR R1, =string	@apunta a la variable donde se guarda
  	SWI 0

	mov r7, #1	@r7=1 salida 
	swi 0

.data

@@ Capacidad en Galones de ambos carros
.global tanqueA
tanqueA:
	.asciz "   "

.global tanqueB
tanqueB:
	.asciz "   "


@@ Kilometraje inicial de ambos carros
.global megakilometrosinicialA
megakilometrosinicialA:
	.asciz "   "


.global megakilometrosinicialB
megakilometrosinicialB:
	.asciz "   "

@@ Kilometraje final de ambos carros
.global megakilometrosfinalA
megakilometrosfinalA:
	.asciz "   "

.global megakilometrosfinalA
megakilometrosfinalA:
	.asciz "   "

@@ Mensages e instrucciones
.global IngresoGalones 
IngresoGalones:
	.asciz "Ingrese la capacidad en Galones de los carros A y B\n"

.global IngresoKilometrajeInicial
IngresoKilometrajeInicial:
	.asciz "Ingrese el kilometraje inicial de los carros A y B\n"

.global IngresoKilometrajeFinal
IngresoKilometrajeFinal:
	.asciz "Ingrese el kilometraje inicial de los carros A y B\n"