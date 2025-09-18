{-

Ejercicio 7) Dada la siguiente definición, 
indicar cómo podría reescribirse usando compose y id:

many :: Int -> (a -> a) -> a -> a
many 0 f x = x
many n f x = f (many (n-1) f x)

-}



doble x = x + x


compose' :: (b -> c) -> ( a -> b) -> a-> c
compose' f g x = f (g x)




many'' :: Int -> (a -> a) -> a -> a
many'' 0 _ x =  x
many'' n f x = (many (n-1) (compose' f id) x)

many' :: Int -> (a -> a) -> a -> a
many' 0 f x = x
many' n f x = f (many' (n-1) f x)