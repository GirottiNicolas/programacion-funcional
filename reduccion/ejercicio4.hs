{-

DUDA: 
Consultar ejercicio b 


Ejercicio 4) 
Dada la siguiente definición para la función twice,

twice f = g
    where g x = f (f x)

- Determinar cuántos y cuáles son los redexes en las siguientes expresiones.

a. twice doble
   ------------   1 Redex

b. twice doble 2    
   -----------
                 1 REDEX

Esto no pide, pero quiero hacerlo y consultar si es correcto,
en especial, cuando se generan las copias de doble 2

Orden de reduccion normal  

    (twice doble) 2
    -------------
->                  twice, f <- doble
    g 2
    ----
->                  g, x <- 2
    doble (doble 2)
          -------- 
    ---------------
->                  doble, x <- doble 2
    doble 2 + doble 2
    -------   -------
->                  doble, x<- 2 -- atencion, hay dos copias,
                                             ¿se reducen juntas?
    (2 + 2) + (2 + 2)
    -------   -------
->                  aritmetica
    4 + 4
    -----
->                  aritmetica
    8




c. twice -> No hay redex

-}