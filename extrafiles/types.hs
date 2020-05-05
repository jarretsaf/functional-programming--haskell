zeroto :: Int -> [Int]
zeroto n = [0..n]

add::(Int, Int)->Int
add (x, y) = x + y

add'::Int->(Int->Int)
add' x y = x + y

mult::Int->(Int->(Int->Int))
mult x y z = x * y * z

fst'::(a,b)->a
fst' (a, _) = a

snd'::(a,b)->b
snd' (_, b) = b

zip'::[a]->[b]->[(a,b)]
zip' [] _ = []
zip' _ [] = []
zip' (x:xs) (y:ys) = (x,y) : zip' xs ys

id'::a->a
id' a = a

take'::Int->[a]->[a]
take' _ [] = []

sum''::Num a=>[a]->a
sum'' [] = 0
sum'' (x:xs) = x + sum'' xs

second::[a]->a
second xs = head(tail xs)

swap::(a,b)->(b,a)
swap (x,y) = (y,x)

pair::a->b->(a,b)
pair x y = (x,y)

double::Num a=>a->a
double x = x * 2

palindrome::Eq a=>[a]->Bool
palindrome xs = (xs == reverse xs)

twice::(a->a)->a->a
twice f x = f (f x)