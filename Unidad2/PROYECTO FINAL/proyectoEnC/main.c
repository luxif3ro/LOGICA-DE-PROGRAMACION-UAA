// SISTEMA DE CONTROL ACADEMICO
// PROYECTO FINAL DE LA MATERIA LOGICA DE PROGRAMACION
// DOCENTE: DR. CARLOS ARGELIO AREVALO MERCADO
// REALIZADO POR:
// ID:391107, SERRANO LEYVA DANTE IVAN
// ID:440243, VALDES DIAZ LEONARDO
// ID:454327, BALDERAS ANDRACA GISSELA LIZET
// ID:466239, GARCIA LOPEZ JESUS SALVADOR

//--------------------------de pseint a c------------------------------------//
//	las asignacion de valor que se hacia con la <-,aqui se hace con =
//	no conoces los caracteres tipo ñ,ó entonces en vez de ñ usa n,y no uses acentos
//	se usa en este programa el '++' y el '+=' que hacen lo siguiente:
//
//		variable++;					->		variable=variable+1;
//		variable+=segundaVariable;	->		variable=variable+segundaVariable;
//
//  -VARIABLES-
//	en pseint los tipos de variables son entero,caracter,real,logico
//	aqui en c/c++ esos tipos existen pero tienen la siguiente nomenclatura:
// 		int -> entero
// 		char-> caracter
// 		float -> real
// 		bool -> logico
//
//	-OPERADORES LOGICOS-
//	Los operadores o,y,no,=,<> aca estan de la siguiente manera:
//		o	->	||
//		y	->	&&
//		no	->	!
//		=	->	==
//		<>	->	!=
//
//	-CICLOS-
//	el para,el repetir y el mientras tambien existen pero con las siguientes
//	nomenclaturas y sintaxis:
//
//		para i<-0 hasta 5 con paso 1	->		for( i=0;  i<=5;   i++ ;){
//		finpara							->		}
//
//		repetir		->		do{
//		hasta que	->		}while(validacion)
//
//		mientras(validacion) hacer		->		while(validacion){
//		finmientras						->		}
//
//		la diferencia en la validacion de los clicos en c/c++ es que esta es de entrada
//		osea que mientras la validacion dea verdadera, el ciclo seguira, esto en pseint
//		es al reves, mientras la validacion se falsa, el ciclo seguira
//
//	-VALIDACIONES-
//	el si,sino y segun tambien se encuentran aqui con la siguientes nomenclaturas y sintaxis:
//
//		si (validacion) entoneces		->		if(validacion){
//		finsi							->		}
//		sino							->		else{}
//
//		segun OPCION hacer				->		switch(OPCION){
//			1:							->			case 1:
//													break;	este no esta en pseint pero va para separar los casos en c/c++
//			de otro modo:				->			default:
//													break;
//		finsegun						->		}
//-------------------------------------------------------------------------------//

//----LIBRERIAS----//
// las primeras 2 son basicas en c
#include <stdio.h>
#include <stdlib.h>	 // se usa para el limpiar pantalla
#include <string.h>	 //se usa para las cadenas
#include <windows.h> // se usa para el Sleep
//------------------//

// DECLARACION DEL STRUCT
// es como si estuvieramos creando nuestro propio tipo de variable
// en el cual va tener 4 atributos los cuales haran de la matriz(arreglo)
struct Estudiante
{
	char ID[7];				 // le digo que ID va a ser una cadena de tamaño 7
	char nombre[50];		 // le digo que nombre va a ser una cadena de tamaño 50
	char apellido[50];		 // le digo que apellido va a ser una cadena de tamaño 50
	float calificaciones[5]; // le digo que calificaciones va a ser un vector numerico de 5 posiciones
};

//-----DECLARACION DE FUNCIONES-----//
// en el lenguaje c/c++ se tiene que declarar las funciones a utilizar
// en la parte superior del codigo, fuera de el 'int main()'
// pero se escriben sus procesos abajo del 'int main()'
// acada una le pasamos la matriz/arreglo,exepto a 'carga()'
void carga();
void preguntaDeControl(struct Estudiante Alumno[13]);
void llenadoDelArreglo(struct Estudiante Alumno[13]);
void menu(struct Estudiante Alumno[13]);
void impresionDeCalificaciones(struct Estudiante Alumno[13]);
void promedioGeneralSinRedondear(struct Estudiante Alumno[13]);
void menorCalificacion(struct Estudiante Alumno[13]);
void mayorCalificacion(struct Estudiante Alumno[13]);
void ordenarMenorMayor(struct Estudiante Alumno[13]);
void intercambio(struct Estudiante AlumnoOrdenado[13], int i, int j);
void buscarID(struct Estudiante Alumno[13]);
void porcentajeAprobadoReprobado(struct Estudiante Alumno[13]);
//-------------------------------//
int main(int argc, char const *argv[])
{
	struct Estudiante Alumno[13];										 // declaro el arreglo
	int ID, password, IDvalido, paswordValido, intentos = 0, valido = 1; // se declaran las variaables
	IDvalido = 1234;													 // se asigna que el usario es 1234
	paswordValido = 1234;												 // se asigna que la contraseña es 1234
	printf("|BIENVENIDO PROFESOR|\n");									 // se le da la vienvenida al usuario
	printf("Para acceder a los datos registra lo siguiente\n");			 // se le comunica que va a tener que iniciar secion
	do																	 // sirve para validar los intentos
	{
		printf("ID >");									 // le pedimos su ID
		scanf("%d", &ID);								 // leemos su ID
		printf("Contrasena >");							 // le pedimos su contraseña
		scanf("%d", &password);							 // leemos su contraseña
		if (ID == IDvalido && password == paswordValido) // verificamos que esten correctos sus valores
		{
			valido = 0;				   // le decimos al sistema que deje de repetir
			system("cls");			   // limpiamos pantalla
			printf("ACCESO CORRECTO"); // le comunicamos que su acceso fue correcto
			carga();				   // llamamos la funcion carga
			llenadoDelArreglo(Alumno); // llamamos la funcion llenadoDelArreglo a la cual le pasamos el arreglo
		}
		else // si no estan correctos los valores
		{
			if (ID != IDvalido) // verificamos que el ID sea el erroneo
			{
				printf("ID ERRONEO\n"); // le comunicamos que su ID es erroneo
			}
			if (password != paswordValido) // verificamos que la contraseña es erronea
			{
				printf("CONTRASEÑA ERROENEA\n"); // le comunicamos que contraseña es erronea
			}
			intentos++;												  // le aumentamos 1 al contador de intentos
			printf("quedan %d intentos restantes\n", (3 - intentos)); // le comunicamos al usuario cuantos intentos le quedan
			printf("Vuelva a intentarlo\n");						  // le avisamos al usuario que vuelva a colocar los datos
			if (intentos == 3)										  // verificamos que aun le queden intentos al usuario
			{
				valido = 0;								  // le decimos al sistema que deje de repetir
				system("cls");							  // limpiamos pantallla
				printf("INTENTOS AGOTADOS VUELVA LUEGO"); // le decimos que agoto sus intentos, que vuelva despues
			}
		}
	} while (valido == 1);
	return 0;
}

void carga() // definimos los procesos de la funcion carga()
{
	int i;		   // declaramos el controlador del ciclo
	Sleep(2000);   // le decimos que espere 2 segundos
	system("cls"); // limpiamos pantalla
	// lo suiguiente simula una carga
	printf("CARGANDO.");
	for (i = 0; i <= 4; i++)
	{
		printf(".");
		Sleep(1000);
	}
	system("cls");
	printf("CARGA COMPLETA");
	Sleep(2);
}

void preguntaDeControl(struct Estudiante Alumno[13]) // definimos los procesos de la funcion preguguntaDeControl()
{
	int respuesta, valido = 0; // declaramos las variables a usar y las inicializamos
	do						   // se asegura que la respuesta sea valida
	{
		printf("Desea seguir revisando reportes?(1=si,0=no) >"); // le pregunta al usuario si desea seguir viendo el sistema
		scanf("%d", &respuesta);								 // lee la respuesta del usuario
		if (respuesta == 1)										 // valida que haya dicho que si
		{
			carga();	  // llama a carga
			menu(Alumno); // llama al menu del sistema
			valido = 1;	  // le dice al sistema que la respuesta fue valida
		}
		else if (respuesta == 0) // valida que la respuesta sea no
		{
			system("cls");			 // limpia pantalla
			printf("VUELVA PRONTO"); // se despide del usuario
			valido = 1;				 // le dice al sistema que la respuesta fue valida
		}
		else
		{
			printf("Favor de darme una respuesta valida \n"); // le comunica al usuario que su respuesta no es valida
		}

	} while (valido == 0);
}

void llenadoDelArreglo(struct Estudiante Alumno[13]) // definimos los procesos de la funcion llenadoDelArreglo()
{
	system("cls"); // limpiamos pantalla
	// definimos las variables a usar e inicializamos las necesarias
	int j, i, valido;
	float promedio, suma = 0, calificacion;

	//----- LLENADO DE LAS CADENAS------//
	// SE UTILIZA strcpy(variable,"cadena");
	// EL CUAL VIENE DE LA LIBRERIA STRING.H
	// LA CUAL APOYA EN EL USO DE CADENAS DE
	// TEXTO EN C

	//-----------ID ALUMNO-------------//
	strcpy(Alumno[0].ID, "440243");
	strcpy(Alumno[1].ID, "391107");
	strcpy(Alumno[2].ID, "454327");
	strcpy(Alumno[3].ID, "466239");
	strcpy(Alumno[4].ID, "494411");
	strcpy(Alumno[5].ID, "307171");
	strcpy(Alumno[6].ID, "371088");
	strcpy(Alumno[7].ID, "388486");
	strcpy(Alumno[8].ID, "332574");
	strcpy(Alumno[9].ID, "300383");
	strcpy(Alumno[10].ID, "300181");
	strcpy(Alumno[11].ID, "346328");
	strcpy(Alumno[12].ID, "351025");

	//---------NOMBRE ALUMNO----------//
	strcpy(Alumno[0].nombre, "LEONARDO");
	strcpy(Alumno[1].nombre, "DANTE");
	strcpy(Alumno[2].nombre, "GISSELA");
	strcpy(Alumno[3].nombre, "JESUS");
	strcpy(Alumno[4].nombre, "SIMON");
	strcpy(Alumno[5].nombre, "DANIELA");
	strcpy(Alumno[6].nombre, "RAFAEL");
	strcpy(Alumno[7].nombre, "ANDREA");
	strcpy(Alumno[8].nombre, "GABRIELA");
	strcpy(Alumno[9].nombre, "AXEL");
	strcpy(Alumno[10].nombre, "LUIS");
	strcpy(Alumno[11].nombre, "MAXIM");
	strcpy(Alumno[12].nombre, "OBED");

	//--------APELLIDO ALUMNO--------//
	strcpy(Alumno[0].apellido, "VALADES");
	strcpy(Alumno[1].apellido, "SERRANO");
	strcpy(Alumno[2].apellido, "BALDERAS");
	strcpy(Alumno[3].apellido, "GARCIA");
	strcpy(Alumno[4].apellido, "VELA");
	strcpy(Alumno[5].apellido, "TIRADO");
	strcpy(Alumno[6].apellido, "CARRILLO");
	strcpy(Alumno[7].apellido, "DUENAS");
	strcpy(Alumno[8].apellido, "PADILLA");
	strcpy(Alumno[9].apellido, "DELFIN");
	strcpy(Alumno[10].apellido, "MENDOZA");
	strcpy(Alumno[11].apellido, "ROSALES");
	strcpy(Alumno[12].apellido, "CAMPOS");

	//----LLENADO DE LAS CALIFICACIONES----//

	// LOS SIGUIENTES DOS CICLOS SIRVEN PARA RECORRER EL ARREGLO
	for (i = 0; i <= 12; i++)
	{
		for (j = 0; j <= 3; j++)
		{
			valido = 0; // decimos que la respuesta aun no es valida
			printf("dame la calificacion del parcial %d del alumno %s %s >", (j + 1), Alumno[i].nombre, Alumno[i].apellido);
			// en el anterior printf, le pedimos al usuario la calificacion segun el recorrido de el arreglo
			do // valida que la calificacion sea valida
			{
				scanf("%f", &calificacion);						 // lee la calificacion
				if (calificacion > 0.99 && calificacion < 10.01) // valida que la calificacion este dentro del rango permitido
				{
					suma += calificacion;						// suma la calificacion al valor de la variable suma
					Alumno[i].calificaciones[j] = calificacion; // guardamos la calificacion en el arreglo
					valido = 1;									// le decimos al sistema que la calificacion es valida
				}
				else
				{
					// los siguientes printf, le dicen al usuario que la calificacion dada esta mal que vuelva a colocarla
					printf("La calificacion otorgada no se encuentra en los parametros permitidos(1 a 10)\n");
					printf("Vuelva a introducirla >");
				}
			} while (valido == 1);
		}
		promedio = suma / 4; // saca la calificacion final del alumno
		// de la liniea 281 a 316 verifican la calificacion final
		// y la redondean segun las normas de la UAA
		if (promedio < 6)
		{
			Alumno[i].calificaciones[4] = promedio;
		}
		else
		{
			if (promedio < 6.5)
			{
				Alumno[i].calificaciones[4] = 6;
			}
			else
			{
				if (promedio < 7.5)
				{
					Alumno[i].calificaciones[4] = 7;
				}
				else
				{
					if (promedio < 8.5)
					{
						Alumno[i].calificaciones[4] = 8;
					}
					else
					{
						if (promedio < 9.5)
						{
							Alumno[i].calificaciones[4] = 9;
						}
						else
						{
							Alumno[i].calificaciones[4] = 10;
						}
					}
				}
			}
		}
		suma = 0; // limpia la variable suma
	}
	menu(Alumno); // llama al menu del sistema
}

void menu(struct Estudiante Alumno[13])
{
	int op, valido = 1; // definimos e inicializamos las variables a usar
	do
	{
		system("cls");		  // limpia la pantalla
		printf("|MENU|\n\n"); // se declara el titulo de la informacion que esta viendo el usuario
		// a continuacion se muestra las opciones que tiene el usuario para seleccionar
		printf("1)Un reporte general con la calificación final de todos los alumnos, mostrando los parciales y la calificacion final.\n");
		printf("   Cada parcial vale el 25 porciento de la calificacion final. La calificacion final debe redondearse.\n");
		printf("2) El promedio general del grupo, sin redondear.\n");
		printf("3) Mostrar el alumno con la menor calificacion.\n");
		printf("4) Mostrar el alumno con la mayor calificacion.\n");
		printf("5) Reporte de calificaciones del grupo ordenados de mayor a menor.\n");
		printf("6) Búsqueda por ID de la calificacion final de un alumno.\n");
		printf("7) Generar los porcentajes de aprobacion y reprobacion del grupo.\n\n");
		printf("Dame la opcion a escoger >"); // se le pide una opcion a escoger al usuario
		scanf("%d", &op);					  // lee la opcion
		switch (op)							  // realizamos procesos segun la opcion del usuario
		{
		case 1:								   // este proceso correspnde a la opcion 1 del menu
			valido = 0;						   // le decimos al usuario que la opcion es valida
			carga();						   // llamamos a la funcion carga()
			impresionDeCalificaciones(Alumno); // llamamos a la funcion que realiza la opcion 1 del menu
			break;
		case 2:
			valido = 0;							 // le decimos al usuario que la opcion es valida
			carga();							 // llamamos a la funcion carga()
			promedioGeneralSinRedondear(Alumno); // llamamos a la funcion que realiza la opcion 2 del menu
			break;
		case 3:
			valido = 0;				   // le decimos al usuario que la opcion es valida
			carga();				   // llamamos a la funcion carga()
			menorCalificacion(Alumno); // llamamos a la funcion que realiza la opcion 3 del menu
			break;
		case 4:
			valido = 0;				   // le decimos al usuario que la opcion es valida
			carga();				   // llamamos a la funcion carga()
			mayorCalificacion(Alumno); // llamamos a la funcion que realiza la opcion 4 del menu
			break;
		case 5:
			valido = 0;				   // le decimos al usuario que la opcion es valida
			carga();				   // llamamos a la funcion carga()
			ordenarMenorMayor(Alumno); // llamamos a la funcion que realiza la opcion 5 del menu
			break;
		case 6:
			valido = 0;		  // le decimos al usuario que la opcion es valida
			carga();		  // llamamos a la funcion carga()
			buscarID(Alumno); // llamamos a la funcion que realiza la opcion 6 del menu
			break;
		case 7:
			valido = 0;							 // le decimos al usuario que la opcion es valida
			carga();							 // llamamos a la funcion carga()
			porcentajeAprobadoReprobado(Alumno); // llamamos a la funcion que realiza la opcion 7 del menu
			break;

		default:
			printf("No diste una opcion valida vuelve a intentarlo");
			Sleep(2000);
			break;
		}
	} while (valido == 1);
}

void impresionDeCalificaciones(struct Estudiante Alumno[13]) // declaramos los procesos de la funcion impresionDeCalificaciones()
{
	system("cls");									   // limpiamos pantalla
	int i, j;										   // declaramoslas variables a usar
	printf("|REPORTE GENERAL DE CALIFICACIONES|\n\n"); // se muestra el titulo de el reporte
	for (i = 0; i <= 12; i++)
	{
		printf("%s %s %s ", Alumno[i].ID, Alumno[i].nombre, Alumno[i].apellido); // imprimimos los alumnos segun el ciclo for
		for (j = 0; j <= 4; j++)
		{
			printf("%.2f ", Alumno[i].calificaciones[j]); // imprimimos cada una de las calificaciones
		}
		printf("\n");
	}
	preguntaDeControl(Alumno); // llamamos a la funcion pregunta de control
}

void promedioGeneralSinRedondear(struct Estudiante Alumno[13]) // declaramoslos procesos de la funcion promedioGeneralSinRedondear()
{
	system("cls");					   // limpiamos la pantalla
	int j, i;						   // declaramos las variables que van a controlar a los ciclos for
	float promedio, suma, sumaGeneral; // declaramos las variables para el proceso

	for (i = 0; i <= 12; i++)
	{
		suma = 0; // limpiamos la variable suma
		// de la linea 413 a 418 saca el promedio final sin redondear
		for (j = 0; j <= 3; j++)
		{
			suma += Alumno[i].calificaciones[j];
		}
		promedio = suma / 4;
		sumaGeneral += promedio; // sumamos cada calificacion a la variable sumaGeneral
	}
	printf("|PROMEDIO GENERAL DEL GRUPO|\n\n");								// mostramos el titulo de el reporte
	printf("El promedio general del grupo es %.2f \n", (sumaGeneral / 13)); // le mostramos el promedio general de el grupo
	preguntaDeControl(Alumno);												// llamamos a la funcion preguntaDeControl
}
void menorCalificacion(struct Estudiante Alumno[13]) // declaramos los procesos de la funcion menorCalificacion()
{
	system("cls");			  // limpiamos la pantalla
	int i, posicion;		  // declaramos las variables a usar
	float minima = 10;		  // declaramos la variable minima y la inicializamos en el maximo valor que hay de las calificaciones
	for (i = 0; i <= 12; i++) // recorremos todo el arreglo
	{
		if (Alumno[i].calificaciones[4] < minima) // validamos la calificacion final
		{
			minima = Alumno[i].calificaciones[4]; // guardamos la nueva menor calificacion
			posicion = i;						  // guardamos la posicion en donde la encontramos
		}
	}
	printf("|ALUMNO CON MENOR CALIFICACION|\n\n");												  // imprimimos el titulo de el reporte
	printf("El alumno con la menor calificacion es;\n");										  // le comunicamos al usuario que si hay alumno con menor calificacion
	printf("%s %s %s ", Alumno[posicion].ID, Alumno[posicion].nombre, Alumno[posicion].apellido); // imprimimos el alumno
	for (i = 0; i <= 4; i++)
	{
		printf("%.2f ", Alumno[posicion].calificaciones[i]); // imprimimos las calificaciones del alumno con menor calificacion
	}
	printf("\n");
	preguntaDeControl(Alumno); // llamamos a la funcion pregunta de control
}
void mayorCalificacion(struct Estudiante Alumno[13]) // declaramos los procesos de la funcion mayorCalificacion
{
	system("cls");			  // limpiamos la pantalla
	int i, posicion;		  // declaramoslass variables que apoyaran el recorrido de el arreglo
	float mayor = 0;		  // definimos la variable mayor y la inicializamos con la menor calificacion
	for (i = 0; i <= 12; i++) // recorremos todo el arreglo
	{
		if (Alumno[i].calificaciones[4] > mayor) // validamos la calificacion final
		{
			mayor = Alumno[i].calificaciones[4]; // guardamos la nueva mayor calificacion
			posicion = i;						 // guardamos la posicion donde la encontramos
		}
	}
	printf("|ALUMNO CON MAYOR CALIFICACION|\n\n");												  // mostramos el titulo del reporte
	printf("El alumno con la mayor calificacion es;\n");										  // le comunicamos al usuario que si hay alumno con mayor calificacion
	printf("%s %s %s ", Alumno[posicion].ID, Alumno[posicion].nombre, Alumno[posicion].apellido); // imprimimos el alumno
	for (i = 0; i <= 4; i++)
	{
		printf("%.2f ", Alumno[posicion].calificaciones[i]); // imprimimos las calificaciones del alumno
	}
	printf("\n");
	preguntaDeControl(Alumno); // llamamos la funcion preguntasDeControl
}
void ordenarMenorMayor(struct Estudiante Alumno[13]) // declaramos los procesos de la funcion ordenarMenorMayor()
{
	system("cls");						  // limpiamos la pantalla
	struct Estudiante AlumnoOrdenado[13]; // definimos una copia de nuestro arreglo
	int minimo, i, j;					  // definimos las variables que nos ayudaran al recorrido

	for (i = 0; i <= 12; i++)
	{
		AlumnoOrdenado[i] = Alumno[i]; // llenamos la copia del arreglo con los datos de nuestro arreglo
	}
	// de la linea 476 a 487 realiza un ordenamiento por seleccion
	for (i = 0; i <= 11; i++)
	{
		minimo = i;
		for (j = i + 1; j <= 12; j++)
		{
			if (AlumnoOrdenado[j].calificaciones[4] < AlumnoOrdenado[minimo].calificaciones[4])
			{
				minimo = j;
			}
			intercambio(AlumnoOrdenado, i, minimo); // llamamos a la funcion intercambi()
		}
	}
	// de la linea 489 a 498 imprimimos la copia del arreglo
	printf("|REPORTE DE CALIFICACIONES DEL GRUPO ORDENADOS DE MAYOR A MENOR|\n\n"); // mostramos el titulo del reporte
	for (i = 0; i <= 12; i++)
	{
		printf("%s %s %s ", AlumnoOrdenado[i].ID, AlumnoOrdenado[i].nombre, AlumnoOrdenado[i].apellido);
		for (j = 0; j <= 4; j++)
		{
			printf("%.2f ", AlumnoOrdenado[i].calificaciones[j]);
		}
		printf("\n");
	}
	preguntaDeControl(Alumno); // llamamos a la funcion preguntaDeControl()
}
void intercambio(struct Estudiante AlumnoOrdenado[13], int i, int j)
{
	// esta funcion hace el camnbio de valores del metodo de seleccion
	struct Estudiante temporal;

	temporal = AlumnoOrdenado[i];
	AlumnoOrdenado[i] = AlumnoOrdenado[j];
	AlumnoOrdenado[j] = temporal;
}
void buscarID(struct Estudiante Alumno[13]) // declaramos los procesos de la funcion buscarID()
{
	system("cls");					 // limpiamos pantalla
	int i, posicion, aceptable = 1;	 // declaramoslas variables que apoyan a los ciclos
	char IDbuscar[7];				 // declaramos la variable con la que compararemos el ID del arreglo
	printf("|BUSQUEDA POR ID|\n\n"); // mostramos el titulo del reporte
	printf("Dame el id a buscar >"); // le pedimos al usuario el ID a buscar
	do								 // sirve para asegurar un respuesta valida
	{
		scanf("%s", IDbuscar);	  // leemos el ID a buscar
		for (i = 0; i <= 12; i++) // recorremos el arreglo
		{
			if (strcmp(Alumno[i].ID, IDbuscar) == 0) // verificamos que se encuentre el id
			{
				printf("Alumno encontrado, es:\n"); // le comunicamos al usuario que se encontro al alumno
				posicion = i;						// guardamos la posicion donde encontramos el ID
				aceptable = 1;						// le decimos al sitema que la respuesta es valida
			}
		}
	} while (aceptable = 0);

	// de la linea 531 a 538 imprimimos el alumno encontrado
	printf("%s %s %s ", Alumno[posicion].ID, Alumno[posicion].nombre, Alumno[posicion].apellido);
	for (i = 0; i <= 4; i++)
	{
		printf("%.2f ", Alumno[posicion].calificaciones[i]);
	}
	printf("\n");
	preguntaDeControl(Alumno); // llamamos a la funcion preguntaDeControl()
}
void porcentajeAprobadoReprobado(struct Estudiante Alumno[13]) // declaramos los procesos de la funcion porcentajeAprobadosReprobados()
{
	system("cls"); // limpiamos la pantalla
	// definimos las variables a urilizar
	int i, aprobados = 0;
	float porcentaje;

	for (i = 0; i <= 12; i++) // recorremos el arreglo
	{
		if (Alumno[i].calificaciones[4] >= 7) // verificamos que el alumno haya pasado la materia segun las normas de la UAA
		{
			aprobados++; // le sumamos 1 al contador de alumnos aprobados
		}
	}
	porcentaje = (aprobados * 100) / 13; // sacamos el porcentaje de alumnos aprobados
	// de la linea 561 a 562 imprimimos los porcentajes de aprobado y reprobado
	printf("El porcentaje de alumnos aprobados es de el %.2f porciento\n", porcentaje);
	printf("El porcentaje de alumnos reprobados es de el %.2f porciento\n\n", (100 - porcentaje));
	preguntaDeControl(Alumno); // llamamos a la funcion preguntaDeControl()
}
