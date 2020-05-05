x n = n + 1
y = (+2)

double x = x + x
quadruple x = double ( double x )

a = b + c
    where
        b = 3
        c = 5
d = b + c
    where
        {b = 3;
        c = 5}

factorial::Int->Int
factorial n = product [1..n]

average::[Int]->Int
average xs = sum xs `div` length xs

head'::[a]->a
head' (x:xs) = x

tail'::[a]->[a]
tail' (x:xs) = xs

last'::[a]->a
last' xs = head (drop (length xs - 1) xs)

last''::[a]->a
last'' xs = head (reverse' xs)

init'::[a]->[a]
init' xs = reverse' (tail (reverse' xs))

init''::[a]->[a]
init'' xs = take (length xs - 1) xs

length'::[a]->Int
length' [] = 0
length' (x:xs) = 1 + length xs

sum'::[Int]->Int
sum' [] = 0
sum' (x:xs) = x + sum' xs

product'::[Int]->Int
product' [] = 1
product' (x:xs) = x * product' xs

-- take n [a]  => outputs 1st n elements of [a]
-- drop n [a]  => outputs excluding 1st n elements of [a]
-- last [a] => outputs last element of [a]
-- init [a] => outputs excluding last element of [a]
-- [a] ++ [b]  => appends [b] to [a]

reverse'::[a]->[a]
reverse' [] = []
reverse' (x:xs) = (reverse' xs) ++ [x]
