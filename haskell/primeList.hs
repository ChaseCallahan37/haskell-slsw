module Main where

    primeList :: [Int]
    primeList = [x | x <- [2..], isPrime x]

    isPrime :: Int -> Bool
    isPrime n = prime_calculate n (n - 1)

    prime_calculate :: Int -> Int -> Bool
    prime_calculate _ 0 = True
    prime_calculate _ 1 = True
    prime_calculate n div
        | n `mod` div == 0 = False
        | otherwise = prime_calculate n (div - 1)

    main :: IO()
    main = do
        putStrLn "h"