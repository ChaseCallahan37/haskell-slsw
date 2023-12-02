module Main where
    -- Gpt

    multiplication :: Int -> [(Integer, Integer, Integer)]
    multiplication x = [(a, b, a*b) | a <- take x [1..], b <- take x [1..]]

    -- mine

    -- multiplication :: Int -> ([Int],[Int],[Int])
    -- multiplication x = build_table (take x [1..], take x [1..])

    -- build_table :: ([Int], [Int]) -> ([Int],[Int],[Int])
    -- build_table (x, y) = (x, y, [ (a * b) | a <- x, b <- y])

    main :: IO()
    main = do
        putStrLn "Main"