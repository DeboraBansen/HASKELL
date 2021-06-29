mapear::(a->b)->[a]->[b]
mapear _ [] =[]
mapear f (x:xs) = f x : mapear f xs



main::IO()
main=do
  print(mapear (+2) [1,2,3,4,5,6])