module Main where
    myRange start step = start : (myRange(start + step) step)

    main :: IO()
    main = do
        putStrLn "df"