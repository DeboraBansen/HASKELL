concatenacao ::[a]->[a]->[a]

--caso base
concatenacao [] ys=
  ys

--caso recursivo
concatenacao (x:xs) ys=
  x : concatenacao xs ys

main :: IO()
main=do
  print(concatenacao [1,2,3] [4,5,6])
