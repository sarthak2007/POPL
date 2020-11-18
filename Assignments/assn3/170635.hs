quicksort :: Ord a => [a] -> [a]
quicksort []     = []
quicksort (x:xs) = (quicksort smallerList) ++ [x] ++ (quicksort biggerList)
    where smallerList = filter (<=x) xs
          biggerList  = filter (>x) xs

uniq :: Eq a => [a] -> [a]
uniq xs = foldl (\acc x -> if x `elem` acc then acc else acc ++ [x]) [] xs  

neighbors :: (Ord a1, Ord a2, Num a1, Num a2) => a1 -> a2 -> [(a1, a2)]
neighbors i j = filter check_range [(i+x, j+y) | x<-[-1,0,1], y<-[-1,0,1], not (x==0 && y==0)]
    where check_range (x,y) = (inside_range x) && (inside_range y) 
          inside_range x = x >= 0 && x <= 9

-- version1 of q4
countWords :: String -> Int
countWords xs = (length . words) xs

-- version2 of q4
countWords' :: String -> Int
countWords' xs = sum $ map (length . words) $ lines xs

-- version3 of q4(using only higher order functions and functions given in the question i.e. words)
countWords'' :: String -> Int
countWords'' xs = foldr (\x acc -> acc + 1) 0 $ words xs

compose_multiple :: [b -> b] -> b -> b
compose_multiple xs y = foldr (\f acc -> f acc) y xs

data BinaryTree a = Nil | Node a (BinaryTree a) (BinaryTree a) deriving Show

maptree :: (a->b) -> BinaryTree a -> BinaryTree b
maptree _ Nil = Nil
maptree f (Node root left right) = Node (f root) (maptree f left) (maptree f right) 

foldTree :: (a->b->b->b) -> b -> BinaryTree a -> b
foldTree _ id Nil = id
foldTree f id (Node root left right) = f root (foldTree f id left) (foldTree f id right)