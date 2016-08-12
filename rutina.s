@@ Julio Barahona M
@@ rutinas.s
@@ 12.08.2016
@@ Ejercicio 3 Temario B


@@ Subrutina para pedir todos los datos al usuario
.global ingresoDatos
ingresoDatos:
	@@ Imprimir Ingreso de Datos

	@@ Ingreso de galones
	push {lr}

	MOV R7, #3		@3 es para decir que se esta escribiendo datos
  	MOV R0, #0		@0 para decir que es teclado
  	MOV R2, #3		@largo de cadena: 2 + 1 de enter = 3
  	LDR R1, =tanqueA	@apunta a la variable donde se guarda
  	SWI 0


	MOV R7, #3		@3 es para decir que se esta escribiendo datos
  	MOV R0, #0		@0 para decir que es teclado
  	MOV R2, #3		@largo de cadena: 2 + 1 de enter = 3
  	LDR R1, =tanqueB	@apunta a la variable donde se guarda
  	SWI 0



    pop {pc}


@@ Subrutina para sacar la eficiencia de ambos carros
.global division
division:

    push {lr}

    pop {pc}


@@ Subrutina para convertir strings a integers
.global str2int
str2int:

    push {lr}

    pop {pc}


@@ Subrutina para convertir integers a strings
.global int2str
int2str:

    push {lr}

    pop {pc}