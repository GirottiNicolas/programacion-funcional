const x = g
        where g y = x


const   ::  a ->  (b -> a)
x       ::  a
------------------------------
const x ::  b -> a




g   :: b -> a
y   :: b
------------------------
g y :: a


x :: a


-- const se asocia con la definicion VII. 
-- a -> (b -> a) 


const   :: a -> (b -> a)
const x = g
        where g y = x


const   :: a -> (b -> a)
x       :: a
-------------------------
const x :: b -> a       g   :: b -> a
                        y   :: b
                        --------------------------
                        g y :: a              x :: a
