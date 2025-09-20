 
armarHeladoCon      sg               = Vasito (sg "Chocolate")


armarHeladoCon  ::  (String -> Gusto) -> Helado                  Vasito           :: Gusto -> Helado
sg              ::  String  -> Gusto                             (sg "Chocolate") :: Gusto
--------------------------------------                            -------------------------------------
armarHeladoCon sg ::Helado                                        Vasito (sg "Chocolate") ::  Helado






sg          :: String     -> Gusto
"Chocolate" :: String
-------------------------------
sg "Chocolate" :: Gusto





chocoHelate :: (Gusto -> a) -> a 
chocoHelate    c             = c Chocolate 



chocoHelate :: (Gusto  -> a)  -> a           c         :: Gusto   -> a
c           :: Gusto   -> a                  Chocolate :: Gusto
------------------------------               ----------------------------------
chocoHelate c :: a                           c Chocolate :: a





armarHeladoCon :: (String -> Gusto) -> Helado
error          :: (String -> a)
------------------------------------------------
armarHeladoCon error :: Helado

