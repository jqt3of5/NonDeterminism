data NonDet a = Det [a]

g = [[1,2], [2,3], [], [4], [], []]

guard (Det list) 
    | list == [] = do return []
    | otherwise = do return list

getNextVertex vertex graph = do
    adjacent <- graph!!vertex
    return adjacent

doesPathExist start end graph = do
    vertex <- getNextVertex start graph

    if vertex == end
    then return True
    else doesPathExist vertex end graph


main = print $ doesPathExist 0 5 g