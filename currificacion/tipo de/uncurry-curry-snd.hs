uncurry curry snd



uncurry :: (a'           -> b'     -> c' )          -> (a',b') -> c'
curry   :: ((a,b) -> c ) -> a      -> (b ->  c)
------------------------------------------------------------- a' <- (a,b) -> c ;     b' <- a ; c' <- (b -> c)
uncurry curry :: ((a,b) -> c , a) -> (b -> c)




uncurry curry :: ((a,b) -> c , a)        -> (b -> c)
snd           :: (a,b) -> b
--------------------------------------------------------
uncurry curry :/: ...Porque esta esperando un par y recibe una funcion




uncurry (curry snd)


uncurry     :: (a' -> b' -> c' ) -> (a',b') -> c'
(curry snd) ::  a -> b -> b
------------------------------------------------- a' <- a ; b' <- b ; c' <- b
uncurry (curry snd) :: (a,b) -> b


curry   :: ((a',b') -> c' ) -> a'  -> b' ->  c'
snd     :: (a,b)    -> b
------------------------------------------------- { a' <- a ; b' <- b ; c' <- b }
curry snd ::  a -> b -> b