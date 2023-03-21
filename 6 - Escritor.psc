Algoritmo escritor
	definir frase , dato Como Caracter
	definir retorno como logico
	definir pos como entero
	Escribir "ingrese una frase."
	Repetir
		leer frase
		retorno <- long(frase)
		si retorno = Falso
			Escribir "Ingresa otra frase, de sólo 20 caracteres."
		FinSi
	Mientras Que retorno = falso
	vector(frase)
FinAlgoritmo
///////////////////////////////////////////////////////////////////verifica si la frase es demasiado extensa.
funcion retorno <- long(frase)
	definir retorno Como Logico
	definir Q como entero
	Q = longitud(frase)
	si Q > 20
		retorno  = Falso
	SiNo
		retorno = verdadero
	FinSi
FinSubProceso
//////////////////////////////////////////////////////////////// convierte la frase en una cadena y carga una matriz con las letras de la cadena.
subproceso vector(frase)
	definir i como entero
	definir letras , letra Como Caracter
	dimension letras(20)
	para i <- 0 hasta 19 con paso 1 Hacer
		letra = subcadena(frase, i, i)
		letras(i) = letra
	FinPara
	intercalar(letras)
FinSubProceso
///////////////////////////////////////////////////////////////verifica si la posición está vacia y reemplaza por un caracter dado.
subproceso intercalar(letras)
	definir i , pos como entero
	definir dato como caracter
	Escribir "Inserte un caracter a intercalar"; leer dato
	Escribir "Elija una posición (entre 1 y 20)" ; leer pos
	si letras(pos-1) = " " Entonces
		letras(pos-1) = dato
		para i <- 0 hasta 19 con paso 1 Hacer
		escribir sin saltar letras(i)
		FinPara
	SiNo
		Escribir "Espacio ocupado por " letras(pos-1) "."
	FinSi
FinSubProceso
//////////////////////////////////////////////////////////////

	