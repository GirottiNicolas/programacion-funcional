swap :: (a,b) -> (b,a)
swap    (x,y)  = (y,x)


uflip   :: ((b,a) -> c) -> ((a,b) -> c)
uflip  f = g
    where g p = f (swap p)


apply :: (a -> b) -> (a -> b)
apply f = g
    where g x = f x


