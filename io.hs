--sumNum::IO()
--sumNum = do
--    putStrLn "Enter number"::IO ()
--    n <- getInt::IO Int
--    num <- n::Int
--    s <- sum [1..num]
--    print s

--import Char

act:: IO (Char, Char)
act = do
        x<- getChar
        getChar
        y <- getChar
        return (x,y)

putStr'::String->IO()
putStr' [] = return ()
putStr' (x:xs) = do
                    putChar x
                    putStr' xs

putStrLn'::String->IO()
putStrLn' xs = do
                putStr' xs
                putChar '\n'

strlen::IO()
strlen = do
            putStr' "Enter String:"
            xs <- getLine
            putStr' "String has "
            putStr' (show (length xs))
            putStrLn' " chars"

readInt::IO Int
readInt = do
                num <- getLine
                return (read num :: Int)
sumInt::Int->Int
sumInt x = sum [0..x]
sumNum::IO()
sumNum = do
            putStr' ("Enter a Number= ")
            n <- readInt
            putStrLn' (show (n))
            putStrLn' ("SUM= " ++ (show (sumInt n)))



main::IO()
main = do
            x <- getChar
            y <- getChar
            z <- getChar
            putChar '\n'
            putChar (f x y z)
            putChar '\n'

f::Char->Char->Char->Char
f = \_ -> \_ -> \_ -> 'd'


getLine'::IO String
getLine' = do
            x <- getChar
            if x == '\n' then
                return []
            else
                do
                    xs <- getLine'
                    return (x:xs)