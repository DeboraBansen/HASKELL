filtrar:: (a->Bool)->[a]->[a]
filtrar _ [] = []  
filtrar p (x:xs)  
  | p x       = x : filtrar p xs  
  | otherwise = filtrar p xs 




main::IO()
main=do
  print(filtrar (>3) [1,2,3,4,5,6])