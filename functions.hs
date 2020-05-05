-- conditional expressions
abs'::Int->Int
abs' n = if n >= 0 then n else -n

signum'::Int->Int
signum' n = if n > 0 then 1
            else
                if n < 0 then -1
                else 0

-- guarded expressions
abs'' n | n >= 0    = n
        | otherwise = -n

signum'' n  | n > 0     = 1
            | n < 0     = -1
            | otherwise = 0

-- pattern matching
not'::Bool->Bool
not' False   = True
not' True    = False

(&&&)::Bool->Bool->Bool
True &&& True   = True
_ &&& _         = False
(&&&&)::Bool->Bool->Bool
True &&&& b     = b
False &&&& _    = False

head'::[a]->a
head' (x:_) = x
tail'::[a]->[a]
tail' (_:xs) = xs

const'::a->b->a
const' x _ = x

--lambda expressions
add' = \x -> (\y -> (x + y))
add'' x = \y -> x + y

const''::a->(b->a)
const'' x = \_ -> x

const''' = \x -> (\_ -> x)

odds n = map f [0..n-1]
         where f x = x*2 + 1
odds' n = map (\x -> x*2 + 1) [0..n-1]

--sections
add = (+)
successor = (1+)
reciprocate = (1/)
doubling = (*2)
halving = (/2)

--exercise
safetail_c::[a]->[a]
safetail_c xs = if null xs then []
                else tail xs
safetail_g::[a]->[a]
safetail_g xs | null xs     = []
              | otherwise   = tail xs
safetail_p::[a]->[a]
safetail_p []   = []
safetail_p xs   = tail xs