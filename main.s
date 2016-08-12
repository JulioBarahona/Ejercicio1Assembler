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
@----------------------------------------------------------------------------
@							 Capacidad de vehiculos
@----------------------------------------------------------------------------

.global tanqueA
tanqueA:
	.asciz "   "

.global tanqueB
tanqueB:
	.asciz "   "

@----------------------------------------------------------------------------
@	 							Megametraje inicial 
@----------------------------------------------------------------------------

.global megametrosinicialA
megametrosinicialA:
	.asciz "   "


.global megametrosinicialB
megametrosinicialB:
	.asciz "   "

@----------------------------------------------------------------------------
@	 							Megametraje final 
@----------------------------------------------------------------------------

.global megametrosfinalA
megametrosfinalA:
	.asciz "   "

.global megametrosfinalB
megametrosfinalB:
	.asciz "   "

@----------------------------------------------------------------------------
@	 							Mensajes para usuario
@----------------------------------------------------------------------------
.global IngresoGalones 
IngresoGalones:
	.asciz "Ingrese la capacidad en Galones de los carros A y B\n"

.global IngresoKilometrajeInicial
IngresoKilometrajeInicial:
	.asciz "Ingrese el kilometraje inicial de los carros A y B\n"

.global IngresoKilometrajeFinal
IngresoKilometrajeFinal:
	.asciz "Ingrese el kilometraje inicial de los carros A y B\n"