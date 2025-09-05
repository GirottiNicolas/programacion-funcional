



apply :: (a -> b) -> (a -> b)
apply f = g
    where g x = f x

-- Por regla de definicion apply f = g, y si g es una funcion 
-- tiene esta forma ... -> ..., por lo tanto apply f :: (... -> ... ) 


apply :: (a -> b) -> (a -> b)        
f     :: (a -> b)                 
---------------------          
apply f :: a -> b         -- apply f :: (... -> ... )       

g :: a -> b         
x :: a                 
---------------------          
g x :: b 

-- Segunda regla de definicion g x = f x, por lo tanto si f x :: b, g x :: b

f :: a -> b
x :: a 
-----------------------
f x  ::  b
