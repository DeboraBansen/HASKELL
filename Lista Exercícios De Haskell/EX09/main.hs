menorValor::Ord a=>[a]->a
menorValor [x]=
  x
menorValor (x:xs)= 
  if x<(menorValor xs) then
     x
  else
    menorValor xs


main::IO()
main=do
  print(menorValor [7,3,4,2,5,6])