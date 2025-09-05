
-- Definicion

uflip f = g
    where g p = f (swap p)




uflip   :: ((b,a) -> c) -> ((a,b) -> c)
f       :: (b,a) -> c
------------------
uflip f :: (a,b) -> c


g   :: (a,b) -> c
p   :: (a,b)
----------------
g p :: c


f         :: (b,a) -> c
(swap p)  :: (b,a)
---------------------------------
f (swap p):: c



swap  :: (a,b) -> (b,a)
p     :: (a,b)
-------------------------------
swap p :: (b,a)


-- Por lo tanto el tipo de uflip 
uflip   :: ((b,a) -> c) -> ((a,b) -> c)





