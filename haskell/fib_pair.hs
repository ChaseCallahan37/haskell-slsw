module Main where
    fib_next_pair :: (Integer, Integer) -> (Integer, Integer)
    fib_next_pair (x, y) = (y, x + y)

    fib_nth_pair :: Integer -> (Integer, Integer)
    fib_nth_pair 1 = (1, 1)
    fib_nth_pair n = fib_next_pair(fib_nth_pair(n - 1))

    fib :: Integer -> Integer
    fib = fst . fib_nth_pair

    main :: IO ()
    main = do
        putStrLn "Running main"

