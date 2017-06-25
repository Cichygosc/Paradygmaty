scalarproduct :: Num a => [a] -> [a] -> a
scalarproduct x y = sum (zipWith (*) x y)