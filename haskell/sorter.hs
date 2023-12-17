module Main where

    sortList :: ((Int, Int) -> Bool) -> [Int] -> [Int]

    sortList comp [] = []
    sortList comp list = (top: sortList comp (remove top list))
        where top = apply comp list

    apply :: ((Int, Int) -> Bool) -> [Int] -> Int
    apply comp [x] = x
    apply comp (curr:(next:tail)) 
        | comp (curr, next) = apply comp (next:(tail))
        | otherwise = apply comp (curr:tail)

    remove :: Int -> [Int] -> [Int]
    remove toRemove [] = []
    remove toRemove (head:tail)
        | toRemove == head = tail
        | otherwise = (head:remove toRemove tail) 

    



    main :: IO()
    main = do
        putStrLn "hi"


-- module Main where

--     sortList :: [Int] -> [Int]

--     sortList [] = []
--     sortList list = (min: sortList (remove min list))
--         where min = lowest list

--     lowest :: [Int] -> Int
--     lowest [x] = x
--     lowest (curr:(next:tail)) 
--         | curr > next = lowest (next:(tail))
--         | otherwise = lowest(curr:tail)

--     remove :: Int -> [Int] -> [Int]
--     remove toRemove [] = []
--     remove toRemove (head:tail)
--         | toRemove == head = tail
--         | otherwise = (head:remove toRemove tail) 

    



--     main :: IO()
--     main = do
--         putStrLn "hi"