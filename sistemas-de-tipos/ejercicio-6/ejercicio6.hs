{-
Ejercicio 6) Para cada una de las siguientes expresiones, decir a cuál función del
ejercicio 3 es equivalente. 

Ofrecer argumentos de por qué son equivalentes.

appFork :: (a -> b , a -> c )  ->  (a   -> (b , c))


a. \p -> let (f, g) = p
            in \x -> (f x, g x)

Funcion que toma un par de funciones (f,g) y 
devuelve una funcion que devuelve un par 

:: (... -> ... , ... -> ... ) -> (... -> (... , ...))



(x -> (f x, g x))


b. \f -> (\g -> (\x -> f x (g x))

c. \f -> (\x -> (\y -> (f y) x)

d. \f -> (\px -> let (x, y) = px
                    in (f x, f y))

e. \x -> (\y -> x)
                    
f. \pf -> let (f, g) = pf
            in \px -> let (x, y) = px
                        in (f x, g y)

g. \f -> (\x -> f (x, x))

-}

