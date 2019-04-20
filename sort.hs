import Control.Monad

type NonDet a = [a] 

sort unsorted = do
    largest <- unsorted
    sort' [largest] unsorted

sort' sorted unsorted =
    let (s:xs) = sorted in 
        if length sorted == length unsorted 
        then sorted
        else do
            largest <- unsorted
            guard (s > largest)
            sort' (largest:sorted) unsorted
    

main = print $ sort [5,6,2,1,4,8,9]