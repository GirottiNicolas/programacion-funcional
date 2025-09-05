


        --- A ---    --- B ---
twice :: (a -> a) -> (a -> a)
doble :: Int -> Int
-----------------------       a <- Int
twice doble :: Int -> Int
               ---- B ---



          ---A---      ----B----
twice :: (a'-> a')  -> (a' -> a') 
         ------- A ----------
twice :: (a -> a) -> (a -> a)   
------------------------------  a' <- (a -> a)
twice twice :: (a -> a) -> (a -> a)   -- RESULTADO
                ------- B ------ Pero hago el reemplazo de (a'-> a') 
                    {-
                        Entonces a'->a' ----> (a->a) -> (a->a)
                    -}


