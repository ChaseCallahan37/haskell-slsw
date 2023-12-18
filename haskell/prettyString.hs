module Main where

    prettyString :: Int -> String -> String
    prettyString _ [] = []
    prettyString 0 (c:tail)
        | c == ' ' = ('\n': prettyString 20 tail)
        | otherwise = (c: prettyString 0 tail)
    prettyString x (c:tail) = (c: prettyString (x-1) tail)

    main :: IO()
    main = do
        putStrLn ""