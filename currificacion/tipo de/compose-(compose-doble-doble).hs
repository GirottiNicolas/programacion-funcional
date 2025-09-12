compose (compose doble doble) :: (a -> Int) -> a -> Int



compose :: (b -> c) -> ( a -> b) -> a-> c

doble :: Int -> Int -> Int




compose                 :: (b -> c)     -> ( a -> b) -> a-> c
(compose doble doble)   :: Int -> Int
--------------------------------------------------------------- {b<- Int; c<- Int }
compose (compose doble doble) :: (a -> Int) -> a -> Int


compose doble :: (a -> Int) -> a -> Int
doble         :: Int -> Int
-------------------------------------------------- {a <- Int}
compose doble doble :: Int -> Int


compose :: ( b -> c)        -> ( a -> b) -> a-> c
doble   :: Int -> Int 
------------------------------- { b <- Int ; c <- Int}
compose doble :: (a -> Int) -> a -> Int
