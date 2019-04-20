import Control.Monad

type NonDet a = [a] 

find list = do
    found <- list
    guard (found == 2)
    return found

main = print $ find [5,6,2,1,2,4,5,6]