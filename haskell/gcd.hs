module Main where

    greatestCommonDen :: Int -> Int -> Int
    greatestCommonDen x y
        | x > y = calculateGcd x y y
        | otherwise = calculateGcd x y x


    calculateGcd :: Int -> Int -> Int -> Int
    calculateGcd _ _ 0 = 0
    calculateGcd _ _ 1 = 1
    calculateGcd x y d 
        | y `mod` d == 0 && x `mod` d == 0 = d
        | otherwise = calculateGcd x y (d-1) 

    main :: IO()
    main = do 
        putStrLn "hello"