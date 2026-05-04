Algoritmo LoginLibros
	
	Definir usuarioIngresado Como Caracter
	Definir claveIngresada Como Caracter
	Definir usuarioCorrecto Como Caracter
	Definir claveCorrecta Como Caracter
	Definir intentos, opcionMenu, opcionLista, i Como Entero
	Definir logueado Como Logico
	
	Definir ficcion Como Caracter
	Definir historia Como Caracter
	Definir ciencia Como Caracter
	
	Dimension ficcion(4)
	Dimension historia(4)
	Dimension ciencia(4)
	
	usuarioCorrecto = "admin"
	claveCorrecta = "1234"
	
	ficcion(1) = "Cien anos de soledad"
	ficcion(2) = "1984"
	ficcion(3) = "Fahrenheit 451"
	
	historia(1) = "Sapiens"
	historia(2) = "Historia de la Argentina"
	historia(3) = "La segunda guerra mundial"
	
	ciencia(1) = "Cosmos"
	ciencia(2) = "Breve historia del tiempo"
	ciencia(3) = "El gen egoista"
	
	intentos = 3
	logueado = Falso
	
	Mientras intentos > 0 Y logueado = Falso Hacer
		Escribir "Ingrese usuario:"
		Leer usuarioIngresado
		Escribir "Ingrese clave:"
		Leer claveIngresada
		
		Si usuarioIngresado = usuarioCorrecto Y claveIngresada = claveCorrecta Entonces
			logueado = Verdadero
			Escribir "Bienvenido al sistema ", usuarioIngresado
		SiNo
			intentos = intentos - 1
			Escribir "Usuario o clave incorrectos"
		FinSi
	FinMientras
	
	Si logueado = Falso Entonces
		Escribir "No se pudo loguear por el momento"
	SiNo
		Repetir
			Escribir "---------------------------"
			Escribir "1. Visualizar listas de libros"
			Escribir "2. Salir"
			Escribir "Ingrese una opcion:"
			Leer opcionMenu
			
			Segun opcionMenu Hacer
				1:
					Escribir "Seleccione una categoria:"
					Escribir "1. Ficcion"
					Escribir "2. Historia"
					Escribir "3. Ciencia"
					Leer opcionLista
					
					Segun opcionLista Hacer
						1:
							Escribir "Libros de ficcion:"
							Para i = 1 Hasta 3 Hacer
								Escribir ficcion(i)
							FinPara
						2:
							Escribir "Libros de historia:"
							Para i = 1 Hasta 3 Hacer
								Escribir historia(i)
							FinPara
						3:
							Escribir "Libros de ciencia:"
							Para i = 1 Hasta 3 Hacer
								Escribir ciencia(i)
							FinPara
						De Otro Modo:
							Escribir "Opcion invalida"
					FinSegun
					
				2:
					Escribir "Fin del programa"
					
				De Otro Modo:
					Escribir "Opcion invalida"
			FinSegun
			
		Hasta Que opcionMenu = 2
	FinSi
	
FinAlgoritmo