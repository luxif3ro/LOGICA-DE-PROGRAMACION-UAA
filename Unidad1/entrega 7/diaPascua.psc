//algoritmo creado por : jesus salvador garcia lopez 

algoritmo diaPascua
    definir a,b,c,d,e,n,i como entero
    para i<-2020 hasta 2023 hacer
        a = i mod 19
        b = i mod 4
        c = i mod 7
        d = (19*a + 24) mod 30
        e = (2*b + 4*c + 6 *d + 5) mod 7
        n = (22 + d + e)
        si n>31 entonces 
            escribir "pascua sera el dia ",(n-31)," de abril del año ",i
        sino
            escribir "pascua sera el dia ",n," de marzo del año ",i
		FinSi
		
    finpara
finalgoritmo