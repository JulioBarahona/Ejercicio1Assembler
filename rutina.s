@@ Julio Barahona M
@@ rutinas.s
@@ 12.08.2016
@@ Ejercicio 3 Temario B


@@ Subrutina para pedir todos los datos al usuario
.global ingresoDatos
ingresoDatos:

	push {lr}
	
	@@ Ingreso de galones maximos
	MOV R7, #4					@3 es para decir que se esta imprimiendo datos
	MOV R0, #1					@1 para decir que es en monitor
	MOV R2, #52					@largo de cadena: 51 + 1 de enter = 52
	LDR R1, =IngresoGalones		@apunta a la cadena
	SWI 0

	@@ Ingreso de galones
	MOV R7, #3			@3 es para decir que se esta escribiendo datos
  	MOV R0, #0			@0 para decir que es teclado
  	MOV R2, #3			@largo de cadena: 2 + 1 de enter = 3
  	LDR R1, =tanqueA	@apunta a la variable donde se guarda
  	SWI 0


	MOV R7, #3			@3 es para decir que se esta escribiendo datos
  	MOV R0, #0			@0 para decir que es teclado
  	MOV R2, #3			@largo de cadena: 2 + 1 de enter = 3
  	LDR R1, =tanqueB	@apunta a la variable donde se guarda
  	SWI 0

	@@ Imprimir Ingreso de megametraje inical
	MOV R7, #4					@3 es para decir que se esta imprimiendo datos
	MOV R0, #1					@1 para decir que es en monitor
	MOV R2, #52					@largo de cadena: 51 + 1 de enter = 52
	LDR R1, =IngresoGalones		@apunta a la cadena
	SWI 0
	
	@@ Ingreso megametraje inicial
	
	MOV R7, #3						@3 es para decir que se esta escribiendo datos
  	MOV R0, #0						@0 para decir que es teclado
  	MOV R2, #3						@largo de cadena: 2 + 1 de enter = 3
  	LDR R1, =megametrosinicialA		@apunta a la variable donde se guarda
  	SWI 0

	MOV R7, #3						@3 es para decir que se esta escribiendo datos
  	MOV R0, #0						@0 para decir que es teclado
  	MOV R2, #3						@largo de cadena: 2 + 1 de enter = 3
  	LDR R1, =megametrosinicialB		@apunta a la variable donde se guarda
  	SWI 0

	@@ Imprimir Ingreso de megametraje final
	
	@@ Ingreso megametraje final
	
	MOV R7, #3						@3 es para decir que se esta escribiendo datos
  	MOV R0, #0						@0 para decir que es teclado
  	MOV R2, #3						@largo de cadena: 2 + 1 de enter = 3
  	LDR R1, =megametrosfinalA		@apunta a la variable donde se guarda
  	SWI 0	
	
	MOV R7, #3						@3 es para decir que se esta escribiendo datos
  	MOV R0, #0						@0 para decir que es teclado
  	MOV R2, #3						@largo de cadena: 2 + 1 de enter = 3
  	LDR R1, =megametrosfinalB		@apunta a la variable donde se guarda
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