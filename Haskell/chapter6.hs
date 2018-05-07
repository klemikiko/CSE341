import Data.List
import Data.Char
import qualified Data.Map as Map
import qualified Data.Set as Set
import Geometry.Sphere

numUniques :: (Eq a) => [a] -> Int
numUniques = length . nub

encode :: Int -> String -> String
encode shift = map (chr . (+shift) . ord)

decode :: Int -> String -> String
decode shift = encode (negate shift)

findByKey :: (Eq a) => a -> [(a, b)] -> Maybe b
findKey _ [] = Nothing
findByKey key = foldr (\(k,v) acc -> if key == k then Just v else acc) Nothing

echo = readLn >>= (\x -> readLn >>= (\y -> putStr "the sum is" >> putStrLn (show(x+y))))
