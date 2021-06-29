removerPrimeiro::Eq a=>[a]->a->[a]
removerPrimeiro [] n=
  []  
removerPrimeiro (x:xs)  n=
  if x==n then
    xs
  else
    x:removerPrimeiro xs n 
------------------------------------
menorValor::Ord a=>[a]->a
menorValor [x]=
  x
menorValor (x:xs)= 
  if x<(menorValor xs) then
     x
  else
    menorValor xs
--------------------------------------
ordenar::Ord a=> [a]->[a]
ordenar []=
  []

ordenar xs=
  [x] ++ ordenar(removerPrimeiro xs x)
  where x=menorValor xs


--------------------------------------
main::IO()
main=do
  print(ordenar [2,4,6,3,7,1])