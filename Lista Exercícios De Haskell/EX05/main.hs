primeiros ::  Int->[a]->[a]

primeiros 0 (x:xs)=
  []

primeiros n []=
  []

primeiros n (x:xs)=
  x:primeiros (n-1) xs


main ::IO()
main=do
  print(primeiros 3 [1,2,3,4,5,6])