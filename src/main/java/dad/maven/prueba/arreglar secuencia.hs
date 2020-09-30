almostIncreasingSequence sequence = isIncreaseSequence $ fixIncreaseSequence sequence

fixIncreaseSequence :: (Ord a) => [a] -> [a]
fixIncreaseSequence [] = []
fixIncreaseSequence [x] = [x]
fixIncreaseSequence (x:y:[]) = if x < y then x:y:[] else x:[]
fixIncreaseSequence (x:y:xs) = 
    if not (x < y)
        then if x < head xs
            then x:xs
            else y:xs
    else x : fixIncreaseSequence (y:xs)

isIncreaseSequence :: (Ord a) => [a] -> Bool
isIncreaseSequence [] = True
isIncreaseSequence [x] = True
isIncreaseSequence (x:xs) = if x < head xs then isIncreaseSequence xs else False
