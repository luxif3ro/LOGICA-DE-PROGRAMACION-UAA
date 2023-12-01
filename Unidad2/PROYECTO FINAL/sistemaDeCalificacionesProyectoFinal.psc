//SISTEMA DE CONTROL ACADEMICO
//PROYECTO FINAL DE LA MATERIA LOGICA DE PROGRAMACION
//DOCENTE: DR. CARLOS ARGELIO AREVALO MERCADO
//REALIZADO POR:
//ID:391107, SERRANO LEYVA DANTE IVAN
//ID:440243, VALDES DIAZ LEONARDO
//ID:454327, BALDERAS ANDRACA GISSELA LIZET
//ID:466239, GARCIA LOPEZ JESUS SALVADOR

Proceso sistemaDeCalificacionesProyectoFinal
	//DIFINICION DE VARIABLES Y CONSTANTES A USAR
	Definir ID,password,intentos,IDvalido,passwordValido Como Entero;
	Definir alumnos como cadena;
	Definir parciales Como Real;
	Dimensionar alumnos[3,13],parciales[5,13];
	Definir ACCESO Como Logico;
	intentos<-0;
	ACCESO<-Falso;
	IDvalido<-1234;
	passwordValido<-1234;
	
	//INICIO DEL PROCESO YA CON LAS VARIABLES
	Escribir "|BIENVENIDO PROFESOR|";
	Escribir "Para acceder a los datos registra lo siguiente";
	Repetir//CICLO QUE PERMITE LA VALIDACION DE LOS 3 INTENTOS
		Escribir "ID "Sin Saltar;//PIDE EL ID DEL PROFESOR
		Leer ID;//LEE EL ID DADO POR EL USUARIO
		Escribir "Contraseña "Sin Saltar;//PIDE LA CONTRASEÑA DEL PROFESOR
		Leer password;//LEE LA CONTRASEÑA DADA POR EL USUARIO
		
		si (ID==IDvalido)&(password==passwordValido)//VERIFICA EL USUARIO Y CONTRASEÑA PARA EL ACCESO
			ACCESO<-Verdadero;//SE LE AVISA AL SISTEMA QUE EL ACCESO ES CORRECTO PARA QUE NO TENGA UN ERROR DE LOGICA
			intentos<-3;//CUMPLE LA CONDICION DE SALIDA DEL CICLO
			Limpiar Pantalla;//LIMPIA LA PANTALLA
			Escribir "ACCESO CORRECTO";//LE COMUNICA AL USUARIO SU ACCESO CORRECTO
			carga('NULL');//SE LLAMA A LA FUNCION CARGA LA CUAL SIRVE COMO TRANSICION EN VARIAS PARTES DEL CODIGO
			llenadoArreglo(alumnos,parciales);//SE LLAMA A LA FUNCION LLENADOARREGLO EN LA CUAL EL USUARIO COLOCARA LAS CALIFICACIONES DE LOS ALUMNOS REGISTRADOS
		SiNo//SI LAS CONDICIONES DE VALIDACION ANTERIORES NO SE CUMPLEN REALIZA OTRA ACCION
			si (ID<>IDvalido)//VERIFICA QUE EL ID SEA ERRONEO
				Escribir "¡ID ERRONEO!";//LE COMUNICA AL USUARIO QUE EL ID DADO ES ERRONEO
			FinSi
			si (password<>passwordValido)//VERIFICA QUE LA CONTRASEÑA SEA ERRONEA
				Escribir "¡CONTRASEÑA ERRONEA!";//LE COMUNICA AL USUARIO QUE SU CONTRASEÑA DADA ES ERRONEA
			FinSi
			intentos<-intentos+1;//SE LE QUITA UN INTENTO AL USUARIO
			Escribir "quedan ",(3-intentos)," intentos posibles";//SE LE NOTIFICA CUANTOS INTENTOS LE QUEDAN PARA PONER LOS DATOS CORRECTOS
			Escribir "Vuelva a intentarlo";//SE LE NOTIFICA AL USUARIO 	QUE VUELVA A COLOCAR LOS DATOS
			
		FinSi
	Hasta Que (intentos==3)//SE ESTABLECE HASTA CUANDO SE REPETIRA EL REGISTRO DE DATOS,CONCORDANDO CON LOS INTENTOS PERMITIDOS
	si !ACCESO Entonces//EL SISTEMA VERIFICA QUE EL ACCESO SEA CORRECTO SI NO SE HARA LO SIGUIENTE
		Limpiar Pantalla;//LIMPIA LA PANTALLA
		Escribir "INTENTOS AGOTADOS VUELVA LUEGO";//LE COMUNICA AL USUARIO QUE TERMINO SUS INTENTOS
	FinSi
FinProceso

SubProceso carga(NULL)//DECLARACION DE LA FUNCION CARGA LA CUAL SERA USADA EN VARIAS AREAS DEL PROGRAMA
	//SE DEFINEN LAS VARIABLES A USAR EN LA FUNCION
	Definir i Como Entero;
	
	//INICIO EL PROCESO DE LA FUNCION 
	Esperar 2 Segundos;//SE LE COMUNICA AL SISTEMA QUE ESPERE UN MOMENTO
	Limpiar Pantalla;//LIMPIA LA PANTALLA
	//EL SIGUIENTE PROCESO IMITA UNA CARGA 
	Escribir "CARGANDO." Sin Saltar;
	Para i<-1 Hasta 5 Hacer//ESTE PARA CONTROLA EL TIEMPO EL CUAL SE TARDA LA CARGA 
		Escribir "." Sin Saltar;
		Esperar 1 Segundos;
	FinPara
	Limpiar Pantalla;
	Escribir "CARGA COMPLETA";
	Esperar 3 Segundos;
FinSubProceso

SubProceso llenadoArreglo(alumnos,parciales)
	//DEFINICION DE VARIABLES A USAR EN LA FUNCION 
	definir i,j Como Entero
	Definir suma,promedio,calificacion Como Real
	Definir aceptada Como Logico
	//LLENADO DE LOS ALUMNOS PRIMERA PARTE, ID
	alumnos[0,0]<-'440243'
	alumnos[0,1]<-'391107'
	alumnos[0,2]<-'454327'
	alumnos[0,3]<-'466239'
	alumnos[0,4]<-'494411'
	alumnos[0,5]<-'307171'
	alumnos[0,6]<-'371088'
	alumnos[0,7]<-'388486'
	alumnos[0,8]<-'332574'
	alumnos[0,9]<-'300383'
	alumnos[0,10]<-'300181'
	alumnos[0,11]<-'346328'
	alumnos[0,12]<-'351025'
	
	//LLENADO DE LOS ALUMNOS SEGUNDA PARTE, PRIMER NOMBRE
	alumnos[1,0]<-'LENARDO'
	alumnos[1,1]<-'DANTE'
	alumnos[1,2]<-'GISSELA'
	alumnos[1,3]<-'JESUS'
	alumnos[1,4]<-'SIMON'
	alumnos[1,5]<-'DANIELA'
	alumnos[1,6]<-'RAFAEL'
	alumnos[1,7]<-'ANDREA'
	alumnos[1,8]<-'GABRIELA'
	alumnos[1,9]<-'AXEL'
	alumnos[1,10]<-'LUIS'
	alumnos[1,11]<-'MAXIM'
	alumnos[1,12]<-'OBED'
	
	//LLENADO DE LOS ALUMNOS TERCERA PARTE, PRIMER APELLIDO
	alumnos[2,0]<-'VALADES'
	alumnos[2,1]<-'SERRANO'
	alumnos[2,2]<-'BALDERAS'
	alumnos[2,3]<-'GARCIA'
	alumnos[2,4]<-'VELA'
	alumnos[2,5]<-'TIRADO'
	alumnos[2,6]<-'CARRILLO'
	alumnos[2,7]<-'DUEÑAS'
	alumnos[2,8]<-'PADILLA'
	alumnos[2,9]<-'DELFIN'
	alumnos[2,10]<-'MENDOZA'
	alumnos[2,11]<-'ROSALES'
	alumnos[2,12]<-'CAMPOS'
	
	//LLENADO DE PARCIALES,DATOS DADOS POR EL MAESTRO EXEPTO LA ULTIMA CASILLA QUE EQUIVALE A LA CALIFICACION FINAL
	Para i<- 0 Hasta 12 Hacer
		Para j<-0 Hasta 3 Hacer
			aceptada<-Falso;//variable logica utilizada para verificar si se acepta o no la calificacion dada por el usuario
			Escribir "dame la calificacion del parcial ",(j+1)," del alumno ",alumnos[1,i]," ",alumnos[2,i] Sin Saltar;
			//el siguiente proceso verifica que la calificacion este dentro del rango permitido y hace la sumatoria
			Repetir
				Leer califiacion;
				si (.99<califiacion)&(califiacion<10.01) Entonces
					suma<-suma+califiacion;
					parciales[j,i]<-califiacion;
					aceptada<-Verdadero;
				SiNo
					Escribir "la calificacion no entra en los parametros permitidos (1 a 10)";
					Escribir "vuelva a introducirla";
				FinSi
			Hasta Que aceptada
		FinPara
		//el siguiente proceso realiza el redondeo segun las normas de la UAA
		promedio<-suma/4;
		si promedio<6 Entonces
			parciales[4,i]<-promedio
		SiNo
			si promedio<6.5 Entonces
				parciales[4,i]<-6
			SiNo
				si promedio<7.5 Entonces
					parciales[4,i]<-7
				SiNo
					si promedio<8.5 Entonces
						parciales[4,i]<-8
					SiNo
						si promedio<9.5 Entonces
							parciales[4,i]<-9
						SiNo
								parciales[4,i]<-10
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	suma<-0//svariable suma con valor cero para evitar problemas de logica
	FinPara
		menu(alumnos,parciales)
FinSubProceso

SubProceso preguntaDeControl(alumnos,parciales)//esta funcion le pregunta al usuario si desea ver mas reportes
	//SE DECLARA LAS VARIABLES A USAR EN EL PROCESO
	Definir respuesta como cadena;
	Definir  aceptable Como Logico
	aceptable<-Falso;
	Repetir//sirve para asegurar de que se de una respuesta valida
		Escribir "desea seguir revisando reportes?(si/no)"Sin Saltar;
		Leer respuesta;
		si (respuesta=='Si')|(respuesta=='SI')|(respuesta=='si')|(respuesta=='sI') Entonces//SE VALIDA QUE EL USUARIO HAYA INTRODUCIDO UNA RESPUESTA VALIDA
			carga('NULL')//se llama a la funcion carga
			menu(alumnos,parciales)//se llama al menu
			aceptable<-Verdadero;
		SiNo
			si (respuesta=='No')|(respuesta=='NO')|(respuesta=='no')|(respuesta=='nO') Entonces//SE VALIDA QUE EL USUARIO HAYA INTRODUCIDO UNA RESPUESTA VALIDA
				Limpiar Pantalla//se limpia la pantalla
				Escribir "VUELVA PRONTO"//se despide del usuario
				aceptable<-Verdadero;
			SiNo
				Escribir "favor de dar una respuesta valida "//se le pide al usuario una respuesta valida
			FinSi
		FinSi
	Hasta Que aceptable
FinSubProceso

SubProceso menu(alumnos,parciales)//DECLARACION DE LA FUNCION MENU EL CUAL ES LA PARTE PRINCIPAL DEL SISTEMA
	//definimos las variables a utilizar en el sub proceso 
	Definir op Como Entero;
	Definir aceptable Como Logico;
	
	//se establece lo que vera el usuario en la pantalla
	repetir//este repetir funciona para asegurar de que el usuario meta una opcion valida
	Limpiar Pantalla;//se limpia la pantalla para mejorar la visualizacion de la informacion
	Escribir "|MENU|";//se declara el titulo de la informacion que esta viendo el usuario
	Escribir ""//sirve para dar un renglon de separacion de el titulo y la informacion
	//a continuacion se muestra las opciones que tiene el usuario para seleccionar
	Escribir "1) Un reporte general con la calificación final de todos los alumnos, mostrando los parciales y la calificación final."
	Escribir "   Cada parcial vale el 25% de la calificación final. La calificación final debe redondearse";
	Escribir "2) El promedio general del grupo, sin redondear.";
	Escribir "3) Mostrar el alumno con la menor calificación";
	Escribir "4) Mostrar el alumno con la mayor calificación";
	Escribir "5) Reporte de calificaciones del grupo ordenados de mayor a menor";
	Escribir "6) Búsqueda por ID de la calificación final de un alumno";
	Escribir "7) Generar los porcentajes de aprobación y reprobación del grupo";
	Escribir ""
	Escribir "dame el numero de opcion a escoger " Sin Saltar;//se le pide una opcion a escoger al usuario
	Leer op;//lee la opcion seleccionada del usuario
	
	Segun op Hacer//realiza procesos segun la opcion del usuario
		1://este proceso corresponde a la opcion 1 del 
			aceptable<-Verdadero;//le dice al sistema que deje de Repetir el menu
			carga('NULL');//llama a la funcion carga
			impresionAlumnos(alumnos,parciales)//se llama a la funcion que realiza la opcion 1
		2:
			aceptable<-Verdadero;//le dice al sistema que deje de Repetir el menu
			carga('NULL');//llama a la funcion carga
			promedioGeneralSinRedondear(alumnos,parciales);//se llama a la funcion que realiza la opcion 2
		3:
			aceptable<-Verdadero;//le dice al sistema que deje de Repetir el menu
			carga('NULL');//llama a la funcion carga
			alumnoMenorCalificacion(alumnos,parciales);//se llama a la funcion que realiza la opcion 3
		4:
			aceptable<-Verdadero;//le dice al sistema que deje de Repetir el menu
			carga('NULL');//llama a la funcion carga
			alumnoMayorCalificacion(alumnos,parciales);//se llama a la funcion que realiza la opcion 4
		5:
			aceptable<-Verdadero;//le dice al sistema que deje de Repetir el menu
			carga('NULL');//llama a la funcion carga
			ordenamientoMenorMayor(alumnos,parciales)//se llama a la funcion que realiza la opcion 5
		6:
			aceptable<-Verdadero;//le dice al sistema que deje de Repetir el menu
			carga('NULL');//llama a la funcion carga
			busquedaAlumnoPorID(alumnos,parciales)//se llama a la funcion que realiza la opcion 6
		7:
			aceptable<-Verdadero;//le dice al sistema que deje de Repetir el menu
			carga('NULL');//llama a la funcion carga
			porcentajesAprobadosReprobados(alumnos,parciales);//se llama a la funcion que realiza la opcion 7
		De Otro Modo:
			Escribir "No se selecciono una opcion valida vuelva a intentarlo "//se le notifica al usuario que su opcion no es valida que vuelva a intentarlo 
			Esperar 3 Segundos//esperamos unos segundos para 	que el usuario pueda leer el mensaje
	Fin Segun
	Hasta Que aceptable
FinSubProceso

SubProceso impresionAlumnos(alumnos,parciales)//funcion que realiza opcion 1 del menu
	Limpiar Pantalla//LIMPIAMOS PANTALLA
	//DEFINIMOS LAS VARIABLES A USAR EN EL SUB Proceso 
	Definir i,j Como Entero
	
	Escribir "|REPORTE GENERAL DE CALIFICACIONES|"//mostramos el titulo del reporte que vera el usuario
	Escribir ""	//damos un salto de linea para separar el titulo de la informacion
	Para i<-0 Hasta 12 Hacer//el siguiente para imprime la informacion deseada por el usuario
		Para j<-0 Hasta 2 Hacer
			Escribir alumnos[j,i],"  "  Sin Saltar;
		FinPara
		Para j<-0 Hasta 4 Hacer
			Escribir parciales[j,i],"  " Sin Saltar;
		FinPara
		Escribir "";
	FinPara
	preguntaDeControl(alumnos,parciales)//llama a la funcion preguntaDeControl la cual se usa para comprobar si el usario quiere o no seguir en el sistema
FinSubProceso

SubProceso promedioGeneralSinRedondear(alumnos,parciales)//esta funcion realiza la opcion 2 del menu
	Limpiar Pantalla//limpiamos pantalla
	//definir las variables a utilizar en el sub Proceso 
	definir j,i Como Entero
	Definir sumaGeneral,suma,promedio como real
	//lo siguiente realiza el promedio general sin redondear
	Para i<-0 Hasta 12 Hacer
		Para j<-0 Hasta 3 Hacer
			suma<-suma+parciales[j,i];
		FinPara
		promedio<-suma/4;
		sumaGeneral<-sumaGeneral+promedio;
		suma<-0
	FinPara
	Escribir "|PROMEDIO GENERAL DEL GRUPO|"//se imprime el titulo del reporte 
	Escribir ""
	Escribir "el promedio general del grupo sin redondear es ",(sumaGeneral/13)//se imprime la informacion del reporte
	preguntaDeControl(alumnos,parciales)
FinSubProceso

SubProceso alumnoMenorCalificacion(alumnos,parciales)//esta funcion realiza la opcion 3 del menu
	Limpiar Pantalla//limpiamos pantalla
	//declaramos las variablesa utilizar en el proceso
	Definir  i,posicion Como Entero
	Definir menorCaificacion Como Real
	menorCalificacion<-10;//se le da el numero mas alto posible para que no tenga problemas de logica
	Para i<-0 hasta 12 Hacer//este para busca al alumno con la calificacion final mas baja
		si parciales[4,i]<menorCalificacion Entonces
			menorCalificacion<-parciales[4,i];
			posicion<-i
		FinSi
	FinPara
	Escribir "|ALUMNO CON MENOR CALIFICACION|"//se imprime el titulo del reporte
	Escribir ""
	Escribir "El alumno con la menor calificacion es: "
	Para i<-0 hasta 2 Hacer//este para imprime la informacion del reporte
		Escribir alumnos[i,posicion], "  " Sin Saltar
	FinPara
	Para i<-0 hasta 4 Hacer
		Escribir parciales[i,posicion], "  " Sin Saltar
	FinPara
	Escribir ""
	preguntaDeControl(alumnos,parciales)
FinSubProceso

SubProceso alumnoMayorCalificacion(alumnos,parciales)//
	Limpiar Pantalla//limpiamos pantalla
	//declaramos las variablesa utilizar en el proceso
	Definir  i,posicion Como Entero
	Definir menorCaificacion Como Real
	Para i<-0 hasta 12 Hacer
		si parciales[4,i]>menorCalificacion Entonces
			menorCalificacion<-parciales[4,i];
			posicion<-i
		FinSi
	FinPara
	Escribir "|ALUMNO CON MAYOR CALIFICACION|"
	Escribir ""
	Escribir "El alumno con la mayor calificacion es: "
	Para i<-0 hasta 2 Hacer
		Escribir alumnos[i,posicion], "  " Sin Saltar
	FinPara
	Para i<-0 hasta 4 Hacer
		Escribir parciales[i,posicion], "  " Sin Saltar
	FinPara
	Escribir ""
	preguntaDeControl(alumnos,parciales)
FinSubProceso

SubProceso ordenamientoMenorMayor(alumnos,parciales)
	Limpiar Pantalla//limpiamos la pantalla
	//definimos las variables a utilizar en el subproceso
	Definir minimo,i,j,k Como entero
	Definir parcialesOrdenado como real
	Definir alumnosOrdenado como cadena
	Dimensionar parcialesOrdenado[13],alumnosOrdenado[3,13]
	para i<-0 Hasta 12 Hacer
		parcialesOrdenado[i]<-parciales[4,i]
		para j<-0 Hasta 2 Hacer
			alumnosOrdenado[j,i]<-alumnos[j,i]
		FinPara
	FinPara
	para i=0 hasta 12-1 Hacer
		mínimo = i;
		para j=i+1 hasta 12
			si parcialesOrdenado[j] < parcialesOrdenado[mínimo] entonces
				mínimo = j
			fin si
		fin para
		intercambiarCalificaciones(parcialesOrdenado, i, mínimo)
		Para k <- 0 Hasta 2 Hacer
			intercambiarAlumnos(alumnosOrdenado, i, mínimo)
		FinPara
	fin para
	Escribir "|REPORTE DE CALIFICACIONES DEL GRUPO ORDENADOS DE MAYOR A MENOR|"
	Escribir ""
	Escribir "El las calificaciones ordenadas de mayor a menor son asi: "
	para i<-12 Hasta 0 Hacer
		para j<-0 Hasta 2 Hacer
			Escribir alumnosOrdenado[j,i],"  " Sin Saltar
		FinPara
		Escribir parcialesOrdenado[i]
	FinPara
	Escribir ""
    preguntaDeControl(alumnos,parciales)
FinSubProceso

SubProceso intercambiarCalificaciones(calificaciones, i, j)
    // Realiza el intercambio de calificaciones en la matriz
    Definir temp Como Real
    temp <- calificaciones[i]
    calificaciones[i] <- calificaciones[j]
    calificaciones[j] <- temp
FinSubProceso

SubProceso intercambiarAlumnos(alumnosOrdenado, i, j)
    // Realiza el intercambio de alumnos en la matriz
	Definir temp Como Cadena
	Para k <- 0 Hasta 2 Hacer
        temp <- alumnosOrdenado[k, i]
        alumnosOrdenado[k, i] <- alumnosOrdenado[k, j]
        alumnosOrdenado[k, j] <- temp
    FinPara
FinSubProceso

SubProceso busquedaAlumnoPorID(alumnos,parciales)
	Definir  i, posicion Como Entero
	Definir id como cadena
	Escribir "|BUSQUEDA POR ID|"
	Escribir ""
	Escribir "Dame el ID a buscar "Sin Saltar
	Leer id
	Para i<-0 Hasta 12 Hacer
		Si alumnos[0,i] == id Entonces
			Escribir "Estudiante encontrado, es:"
			posicion<-i;
		FinSi
	FinPara
	Para i<-0 hasta 2 Hacer
		Escribir alumnos[i,posicion], "  " Sin Saltar
	FinPara
	Para i<-0 hasta 4 Hacer
		Escribir parciales[i,posicion], "  " Sin Saltar
	FinPara
	Escribir ""
	preguntaDeControl(alumnos,parciales)
FinSubProceso

SubProceso porcentajesAprobadosReprobados(alumnos,parciales)
	Limpiar Pantalla;//limpiamos pantalla
	//declaramos las variables a utilizar en el SubProceso 
	Definir i,aprobados Como Entero;
	Definir porcentaje Como Real;
	Para i<-0 Hasta 12 Hacer
		si parciales[4,i]>=7 Entonces
			aprobados=aprobados+1;
		FinSi
	FinPara
	porcentaje=(aprobados*100)/13;
	Escribir "|PORCENTAJE DE ALUMNOS APROBADOS Y REPROBADOS|";
	Escribir "";
	Escribir "el porcentaje de alumnos aprobados es del ",porcentaje,"%";
	Escribir "el porcentaje de alumnos reprobados es del ",(100-porcentaje),"%";
	preguntaDeControl(alumnos,parciales)
FinSubProceso
