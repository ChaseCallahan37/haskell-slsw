module Main where
    -- ([[state, color]], [[alabama, georgia]], [blue, red]) -> [[alabama, red]]
    states :: ([[String, String]], [[String]], [String]) -> [[String, String]]
    states (pairs, [], _) = pairs
    states (pairs, (neigh_states:other_neigh_states), colors) = states(match_colors(pairs, neigh_states, colors), other_neigh_states, color)

    -- ([[state, color]], [alabama, georgie], [blue, red]) -> [[alabama, red]]
    match_colors :: ([[String, String]], [String], [String]) -> [[String, String]]
    match_colors = ([[]], [[]], _) = []
    match_colors = ([[]], (state:states), (color:colors)) = ([state, color]:match_colors(states, colors))
    match_colors = (((pState, pColor):pairs), [states, colors]) 
        | within(currPair, states) == True = match_colors(pairs, remove_state(pState, curr_pair), remove_color(pColor, colors))
        | otherwise = match_colors(pairs, states, colors)


    -- find_dup_states :: ([String, String], [[String], [String]]) -> [[String], [String]]
    -- find_dup_states (pair, [], _) = []
    -- find_dup_states ([pState, pColor], [(state:states), colors]) = 
    --     | state == pState = find_dup_states
    --     | otherwise = []

    remove_color :: (String, [String]) -> [String]
    remove_color(_, []) = []
    remove_color(color, (h:t))
        | color == h = t
        | otherwise = h : remove_color(color, t)

    within :: (String, [String]) -> Boolean
    within (_, []) = False
    within (pState, (currState:states))
        | pState == currState = True
        | otherwise = within(pState, states)


    main :: IO()
    main = do
        putStrLn "Main"







-- module Main where
--     states :: ([[String, String]], [[String]], [String]) -> [[String, String]]
--     states (((neigh_states):other_states), colors) = match_colors([[]], neigh_states, colors)

--     match_colors :: ([[String, String]], [String], [String]) -> [[String, String]]
--     match_colors = ([[]], [[]], _) = []
--     match_colors = ([[]], (state:states), (color:colors)) = [[state, color]] ++ match_colors(states, colors)
--     match_colors = 
--     match_colors = (([pState, pColor]:pairs), (state:states), (color:colors))
--         | pState == state = match_colors(([pState, pColor]:pairs), states, remove_color(pColor, (color:colors)))
--         | otherwise = match_colors(pairs, (state:states), (color:colors))


--     find_dup_states :: ([[String]], )


--     remove_color :: (String, [String]) -> [String]
--     remove_color(_, []) = []
--     remove_color(color, (h:t))
--         | color == h = t
--         | otherwise = h : remove_color(color, t)


--     main :: IO()
--     main = do
--         putStrLn "Main"