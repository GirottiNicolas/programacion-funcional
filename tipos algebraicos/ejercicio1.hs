data Gusto = Chocolate | DulceDeLeche | Frutilla | Sambayon
    deriving Show


data Helado = Vasito Gusto| Cucurucho Gusto Gusto| Pote Gusto Gusto Gusto
    deriving Show



chocoHelate consH = consH Chocolate



data Medida = Mm Float | Cm Float| Inch Float | Foot Float
    deriving Show