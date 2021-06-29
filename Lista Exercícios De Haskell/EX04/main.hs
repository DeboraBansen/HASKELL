concatenacao ::[a]->[a]->[a]

--caso base
concatenacao [] ys=
  ys

--caso recursivo
concatenacao (x:xs) ys=
  x : concatenacao xs ys


inverso :: [a]->[a]

inverso [] =
  []

inverso (x:xs) =
  concatenacao (inverso xs) [x]

main::IO()
main=do
  print(inverso [1,2,3,4])  
  
