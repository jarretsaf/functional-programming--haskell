--chapter 2
n = a `div` length xs
     where
         a = 10
         xs = [1,2,3,4,5]

--chapter 4
halve::[a]->([a],[a])
halve xs =  if length xs `mod` 2 == 0 && length xs > 0
            then
                (take (length xs `div` 2) xs, drop (length xs `div` 2) xs)
            else
                ([],[])

third::[a]->a
third xs =  head (tail (tail xs))
third' xs = xs!!2
third'' (_:(_:(x:_))) = x
                