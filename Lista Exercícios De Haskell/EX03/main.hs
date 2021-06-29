

pertence :: Eq a=>a->[a]->Bool

pertence a [] =
  False

pertence a (x:xs)=
  if a==x then
    True
  else
    pertence a xs  



intersecao :: Eq a=>[a]->[a]->[a]
intersecao (x:xs) []  =
  []

intersecao [] (x:xs) =
  []

intersecao (x:xs) ys =
  if pertence x ys then
     x:intersecao xs ys
  else
    intersecao xs  ys


main::IO()
main=do
  print(intersecao [1,2,3] [2,3,4])