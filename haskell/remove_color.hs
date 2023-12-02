module Main where
    remove_color :: (String, [String]) -> [String]
    remove_color(_, []) = []
    remove_color(color, (h:t))
        | color == h = t
        | otherwise = h : remove_color(color, t)


    main :: IO()
    main = do
        putStrLn "Main"