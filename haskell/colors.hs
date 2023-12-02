module Main where
    colors :: [String] -> [(String, String)]
    colors [a, b] = [(a, b)]
    colors (h:t) = [(h,x) | x <- t] ++ colors t

    main :: IO()
    main = do
        putStrLn "main"