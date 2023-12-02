module Main where
    all_even :: [Integer] -> [Integer]
    all_even [] = []
    -- all_even (h:t) = if even h then h:all_even t else all_even t
    all_even x = [ x | x <- x, x `mod` 2 == 0]

    main :: IO ()
    main = do
        putStrLn "Running main"