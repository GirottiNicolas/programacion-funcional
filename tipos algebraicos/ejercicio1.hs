data Gusto = Chocolate | DulceDeLeche | Frutilla | Sambayon
    deriving Show


data Helado = Vasito Gusto| Cucurucho Gusto Gusto| Pote Gusto Gusto Gusto
    deriving Show



chocoHelate consH = consH Chocolate



data Medida = Mm Float | Cm Float| Inch Float | Foot Float
    deriving Show


data Shape = Circle Float | Rect Float Float
    deriving Show


string2Gusto "Chocolate" = Chocolate


armarHeladoCon :: (String -> Gusto) -> Helado   
armarHeladoCon      sg               = Vasito (sg "Chocolate")


esVasito (Vasito _)  = True 
esVasito n      = False


cuadrado n = Rect n n 


esCuadrado :: Shape      -> Bool
esCuadrado   (Circle _)   = False
esCuadrado   (Rect n1 n2) = n1 == n2

siempreArmaCuadrado :: (Float -> Shape) -> Bool
siempreArmaCuadrado     f                = esCuadrado (f 2)


data Par a = DosCosas a a


data Maybe' a = Nothing' | Just' a

swap :: (a,b) -> (b,a)
swap    (x,y)  = (y,x)

compose' :: (b -> c) -> ( a -> b) -> a-> c
compose' f g x = f (g x)
