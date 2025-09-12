(apply id) ((id apply) apply)


(apply id)          ::  a'              -> a'
((id apply) apply)  :: (a->b) -> a -> b
--------------------------------------------------- a' <- (a->b) -> a -> b
(apply id) ((id apply) apply) :: (a->b) -> a -> b




(id apply) :: (a'->b')      -> (a'->b')
apply      :: (a->b) -> (a->b)
-------------------------------------- {a' <- (a->b) ; b' <- (a->b) }
(id apply) apply ::  (a->b) -> a -> b




id    ::  a'                      -> a'
apply :: (a->b) -> (a->b)
------------------------------------ { a' <- (a->b) -> (a->b)  }
id apply :: (a->b) -> (a->b)



apply :: (a'->b')       -> (a'->b')
id    :: a -> a
-------------------------------------------- { a' <- a; b' <- a}
apply id :: a -> a
