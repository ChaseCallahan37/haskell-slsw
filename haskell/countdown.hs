module Main where
    countdown :: Integer -> Integer
    countdown -10 = -10
    countdown x = countdown(x - 1)