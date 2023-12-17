module Main where
    sortedArgs :: (Int -> Int) -> [Int] -> [Int]
    sortedArgs comp list = [comp x | x <- list]


    main :: IO()
    main = do
        putStrLn "h"