concatenacao ::[a]->[a]->[a]

--caso base
concatenacao [] ys=
  ys

--caso recursivo
concatenacao (x:xs) ys=
  x : concatenacao xs ys


intParaBin:: Int->String
intParaBin i=
  let divisao =i`div`2 in
    if divisao>0 then
      if i`mod`2==0 then
        concatenacao (intParaBin divisao) "0"
      else
        concatenacao (intParaBin divisao) "1"
    else
      if i `mod`2==0 then
        "0"
      else 
        "1"


main::IO()
main=do
  print(intParaBin 5)