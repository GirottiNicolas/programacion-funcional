

apply :: (a'-> a') -> ((a,b) -> ((a,b) -> a))
first :: (a,b) -> a
----------------------------
apply first :: (a,b) -> ((a,b) -> a)


g   :: (a,b) -> ((a,b) -> a)
x   :: (a,b)
-------------------------
g x :: (a,b) -> a


first :: (a,b) -> a




apply first

apply :: a' -> ....
first :: (a,b) -> a
----------------------------
apply first :: a



a' <- (a,b) -> a



g :: (a,b) -> a
x :: (a,b)
------------------------
g x :: a



f  ::  (a,b) -> a    --- f es first 
x  ::  (a,b)
-------------------
f x :: a