{-
Ejercicio 1) Determinar si las siguientes funciones son parciales o totales. 
Justificar.
-}

-- a)

-- Funcion parcial. Puede dar bottom si "y" es 0
udiv (x,y) = div x y

-- b)

-- Funcion parcial, si recibe 0, es bottom. 
-- Que contemple el caso, no quiere decir que deja de ser parcial.
udivE (x,0) = error "No puedo dividir por 0"
udivE (x,y) = div x y


-- c)
-- Funcion parcial, div currificada o sin currificar, sigue siendo parcial.
udivH = uncurry div



-- d)
-- Funcion total. Duda.. ¿se tiene que contemplar en el caso de que se pase bottom como x?
succ x = x + 1

-- e)
-- Funcion total. 
succH = suma 1

-- f)

{-

flip' f = \x->(\y->(f y) x )

    (flip div) 2
->              flip, f<- div

    \x->(\y->(div y) x ) 2
->                       >Beta reduccion, \x->(\y->(f y) x ), x <- 2
    (\y->(div y) 2 )

-}

-- Funcion total, ya que el argumento que hace parcial a la funcion es el segundo
-- y en este caso, es 2. Por lo tanto, no fallara.
porLaMitad = flip div 2

-- g)
-- Funcion parcial, ya que si recibe otro caracter que no sea 'u', dara bottom.
conDieresis 'u' = 'ü'


-- h)
-- Funcion que da bottom, ya que en caso de darle otro caracter, continuara ejecutandose sin fin.
conDieresisB 'u' = 'ü'
conDieresisB c = conDieresisB c


-- i)
-- Funcion parcial, si recibe otra letra dara bottom.
conTildePM 'a' = 'á'
conTildePM 'e' = 'é'
conTildePM 'i' = 'í'
conTildePM 'o' = 'ó'
conTildePM 'u' = 'ú'

-- j)

-- Funcion parcial, si la letra dada no es vocal, dara bottom.
-- Por lo tanto es parcial.
conTildeE c = 
    if esVocal c
        then conTildePM c
        else error "El valor recibido no es vocal"

-- k)
-- Funcion total, si es vocal y minuscula, entra en conTilde, y dara un caracter con tilde
-- Si no devolvera el mismo caracter
conTilde c = if esVocal c && esMinuscula c
                then conTildePM c -- Hasta aca todo bien
                else c
