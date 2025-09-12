


compose   :: (b -> c) -> ( a -> b) -> a-> c
(fst snd) :: (a,b)
-------------------------------------------
compose (fst snd) :: ...



fst :: (a'',b'')        -> a''
snd :: (a,b) -> b                    
----------------------------------- 
fst snd ::  (a,b)

{-
    ¿ Se puede asignar el tipo de snd a las variables del par de fst ?

    ¿ Por que uso las flechas como separadores ?

-}



(compose fst) snd 



compose ::  (b'   -> c')       -> ( a' -> b') -> a'-> c'
fst     ::  (a,b) -> a
------------------------------------------------------ { b' <-  (a,b) ;    c'  <- a    }
compose fst :: ( a' ->  (a,b) ) -> a' -> a


(compose fst) :: ( a'   ->  (a'',b') )    -> a' -> a''
snd           :: (a,b)  ->   b
---------------------------------------------------------- { a' <- (a,b);   (a'',b') <- b ;
(compose fst) snd :: (a, (a'',b')) -> a''