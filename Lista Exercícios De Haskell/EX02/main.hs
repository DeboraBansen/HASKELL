pertence :: Eq a=>a->[a]->Bool

pertence a [] =
  False

pertence a (x:xs)=
  if a==x then
    True
  else
    pertence a xs  



main :: IO()
main=do
  print(pertence 1 [4,5,6])
