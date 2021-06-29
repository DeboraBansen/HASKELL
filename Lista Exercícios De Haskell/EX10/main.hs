removerPrimeiro::Eq a=>[a]->a->[a]


removerPrimeiro [] n=
  []  
removerPrimeiro (x:xs)  n=
  if x==n then
    xs
  else
    x:removerPrimeiro xs n 


main::IO()
main=do
  print(removerPrimeiro [1,1,2,3,4,5] 1)