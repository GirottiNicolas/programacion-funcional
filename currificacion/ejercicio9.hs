{-

Ejercicio 9)

Dar expresiones equivalentes a las funciones definidas a continuación
utilizando funciones como compose, flip, etc. (dadas en los ejercicios anteriores) y
sin utilizar lambdas.

a. cuadruple x = doble (doble x)

b. timesTwoPlusThree x = suma (doble x) 3

c. fourTimes f x = f (f (f (f x)))


-}


cuadruple x = doble (doble x)

cuadruple x = twice doble x