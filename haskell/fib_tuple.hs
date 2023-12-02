module Main where
    fib_tuple :: (Integer, Integer, Integer) -> (Integer, Integer, Integer)
    fib_tuple (x, y, 0) = (x, y, 0)
    fib_tuple(x, y, index) = fib_tuple(y, x + y, index - 1)

    fib_result :: (Integer, Integer, Integer) -> Integer
    fib_result (x, y, z) = x

    fib :: Integer -> Integer
    fib x = fib_result(fib_tuple(0, 1, x))


    main :: IO ()
    main = do
        putStrLn "Running main"