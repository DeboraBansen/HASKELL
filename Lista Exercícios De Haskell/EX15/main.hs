filtrar:: (a->Bool)->[a]->[a]
filtrar _ [] = []  
filtrar p (x:xs)  
  | p x       = x : filtrar p xs  
  | otherwise = filtrar p xs 


impares ::[Int]->[Int]
impares []=
  []
impares (x:xs)=
  filtrar odd [1,2,3,4,5,6] 

main::IO()
main=do
  print(impares [1,2,3,4,5,6])