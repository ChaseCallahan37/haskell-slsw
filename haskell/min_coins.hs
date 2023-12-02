module Main where

    min_coins :: Integer -> [Integer]

    min_coins x
        | x == 0    = []
        | x >= 25   = 25 : min_coins (x - 25)
        | x >= 10   = 10 : min_coins (x - 10)
        | x >= 5    = 5 : min_coins (x - 5)
        | otherwise = 1 : min_coins (x - 1)


    -- min_coins x
    --     | x == 0 = []
    --     | (x / 25) > 0 = (x/25):min_coins(x mod 25)
    --     | (x / 10) > 0 = (x/10):min_coins(x mod 10)
    --     | (x / 5) > 0 = (x/5):min_coins(x mod 5)
    --     | (x / 1) > 0 = [x/1]

    main :: IO ()
    main = do
        putStrLn "Running main"