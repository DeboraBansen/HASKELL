binParaInt :: String->Int

binParaInt "0"=
  0
binParaInt "1"=
  1
binParaInt ('0':xs)=
  binParaInt xs
binParaInt ('1':xs)=
  2^length xs+binParaInt xs
binParaInt xs=
  error "Valor não representa um numero binario"


main::IO()
main=do
  print(binParaInt "00101")