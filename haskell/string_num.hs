module Main where
    
    string_num :: String -> Float
    string_num [] = 0
    string_num ('$':tail) = string_num(tail)
    string_num ('.':tail) = (string_num tail) / (fromIntegral(raised 10 (len tail))) 
    string_num (head:tail) = (fromIntegral(int [head]) * (fromIntegral (raised 10 (len tail)))) + string_num tail


    len :: [Char] -> Int
    len [] = 0
    len ('.':_) = 0
    len (head:tail) = 1 + len(tail)

    int :: String -> Int
    int "" = 0
    int str = read str

    raised :: Int -> Int -> Int
    raised base 0 = 1
    raised base 1 = base
    raised base ex = (base * (raised base (ex - 1)))


    main :: IO()
    main = do
        putStrLn "hello"
        let num = string_num "200"
        let show_num = show num
        putStrLn show_num