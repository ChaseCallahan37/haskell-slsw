module Main where

    fibLazy x y = x:(fibLazy y (x + y))

    fib = fibLazy 1 1

    fibNth x = head (drop (x-1) (take (x) fib))

    main :: IO()
    main = do
        putStrLn "hi"