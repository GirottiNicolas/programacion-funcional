curry' :: ((a,b) -> c ) -> a -> b -> c
curry' f = g
    where g x = h
            where h y = f (x,y)


multiplicarPar :: (Int, Int) -> Int
multiplicarPar (a, b) = a * b


curry'' :: ((a,b) -> c ) -> a -> b ->  c
curry''    f                x    y  = f (x,y)

uncurry' :: (a -> b -> c )-> (a,b) -> c
uncurry'    f   (x,y)               = f x y