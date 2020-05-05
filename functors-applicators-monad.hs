inc::[Int]->[Int]
inc [] = []
inc (x:xs) = (x+1):(inc xs)

sqr::[Int]->[Int]
sqr [] = []
sqr (x:xs) = (x^2):(sqr xs)

inc'::[Int]->[Int]
inc' = map (+1)

sqr'::[Int]->[Int]
sqr' = map (^2)

incInt::Int->Int
incInt a = a + 1

data Tree a = Leaf a | Node (Tree a) a (Tree a) deriving Show

instance Functor Tree where
    -- fmap :: (a -> b) -> Tree a -> Tree b
    fmap f (Leaf a) = Leaf (f a)
    fmap f (Node l a r) = Node (fmap f l) (f a) (fmap f r)
