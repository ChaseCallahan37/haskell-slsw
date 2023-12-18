module Main where

    get3rd :: Int -> [Int]
    get3rd x = [x, x + 3 ..]

    get5th :: Int -> [Int]
    get5th y = [y, y + 5 ..]

    get8th :: Int -> Int -> [Int]
    get8th x y = add_lists (get3rd x) (get5th y)

    add_lists :: [Int] -> [Int] -> [Int]
    add_lists [] [] = []
    add_lists (x:xRest) (y:yRest) = (x + y: add_lists xRest yRest)


    len :: [Int] -> Int
    len [] = 0
    len (head:tail) = 1 + len tail

    main :: IO()
    main = do
        putStrLn "hi"