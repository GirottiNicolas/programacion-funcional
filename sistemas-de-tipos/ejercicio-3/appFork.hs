{-

appFork en una funcion que va de un par de funciones a una 
funcion que va de 'a en par de b,c'

-}


appFork :: (a -> b , a -> c )  ->  (a   -> (b , c))
appFork (f, g) = h
        where h x = (f x, g x)







appFork :: (a -> b , a -> c )  ->  (a   -> (b , c))
(f, g)  :: (a -> b , a -> c )
----------------------------
appFork :: a   -> (b , c)       h :: a   -> (b , c) 
                                x :: a
                                ---------------------
                                h x :: (b , c)          (f x, g x) :: (b ,c)

                                                        f :: a -> b
                                                        x :: a
                                                        ---------------------
                                                        f x :: b


                                                        g :: a -> c
                                                        x :: a
                                                        ---------------------
                                                        g x :: c



-- Aclaracion del valor de b en f. 

{-
Al no tener mas informacion, debo continuar con el rellenado.
Pero donde empiezo? Me veo tentado a empezar por la ultima, es decir g x
Pero como en las funciones se asocia a la izquierda, voy a empezar con f x,
ya que (f x, g x) esta a la izquierda, y por lo tanto se "procesaria" primero

-}