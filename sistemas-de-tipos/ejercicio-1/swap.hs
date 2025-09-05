
swap (x, y) = (y, x)


swap  :: (a,b) -> (b,a)
(x,y) :: (a,b) 
-------------------
swap :: (b,a)        -- Tiene el mismo tipo que (y,x)


x :: a
y :: b
------------
(y,x) :: (b,a)


----- El tipo de swap quedaria

swap :: (a,b) -> (b,a)
swap    (x,y)  = (y,x)


