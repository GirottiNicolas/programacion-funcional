compose1 :: (b -> c) -> ( a -> b) -> a-> c
compose1 f g x = f (g x)

fst' :: (a,b) -> a
fst' (x,y) = x

snd' :: (a,b) -> b
snd' (x,y) = y

apply :: (a->b) -> (a->b)
apply f = g
    where g x = f x


id' :: a -> a
id' x = x


doble' :: Int -> Int
doble' x = x + x

{-

a. compose (fst snd)

b. (uncurry curry snd)

c. (apply id) ((id apply) apply)

d. compose (compose doble doble)

e. (compose compose) doble doble
-}