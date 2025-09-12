(compose compose) doble doble



compose :: (b' -> c')                       -> ( a' -> b') -> a'-> c'
compose :: (b -> c) -> (( a -> b) -> (a-> c))
------------------------------------------{ b'<- (b -> c) ; c' <-  ( a -> b) -> (a-> c)}
compose compose :: (a' -> b -> c)     -> a' -> ( a -> b) -> (a-> c)



(compose compose) :: (a' -> b -> c)       -> a' -> ( a -> b) -> (a-> c)
doble             :: Int -> Int
------------------------------------------------------------------ {a' <- Int ; ...}
(compose compose) doble :/: 
{- ¿Es correcto decir:

Error de tipos, compose compose espera una funcion de tipo Int -> b -> c, y recibe Int -> Int


-}
