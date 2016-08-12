@@ Julio Barahona M
@@ main.s
@@ 12.08.2016
@@ Ejercicio 3 Temario B

.global main
.func name

main:

	@@ Se llama a la subrutina de pedir datos assignar valores
	@@@@@@@@@@@@@ FINISH


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