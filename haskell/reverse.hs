module Main where
    list_reverse :: [Integer] -> [Integer]
    list_reverse [x] = [x]
    list_reverse (h:t) = list_reverse(t)++[h]

    main :: IO ()
    main = do
        putStrLn "Running main"