Proceso actividad1SubProcesos
	definir n Como Entero;
	Escribir "Dame un numero para generar su tabla,su cuadrado y verificar que sea primo";
	Leer n;
	tabla(n);
	Escribir "";
	Escribir "|CUADRADO DEL NUMERO|";
	Escribir "el cuadrado es ",cuadrado(n);
	Escribir "";
	Escribir "|VERIFICACION DE PRIMO|";
	si primo(n) Entonces
		Escribir n," si es primo";
	SiNo
		Escribir n," no es primo";
	FinSi
FinProceso

SubProceso tabla(num)
	definir i Como Entero;
	Escribir "|TABLA DEL NUMERO|";
	Para i<-1 hasta 10 Hacer;
		Escribir num," x ",i," = ",(i*num);
	FinPara
FinSubProceso

SubProceso res <-cuadrado(num)
	res<-num^2;
FinSubProceso

SubProceso res<-primo(num)
	definir divisores Como Entero;
	para i<-1 hasta num hacer 
        si (num%i)=0 entonces
            divisores<-divisores+1;
        finsi
    finpara
	
    si divisores=2 entonces 
        res <- Verdadero;
    sino 
        res <- Falso;
	FinSi
FinSubProceso
	