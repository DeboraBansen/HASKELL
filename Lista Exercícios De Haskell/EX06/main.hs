
---------------------------------------------

semUltimo :: [a]->[a]

semUltimo [] =
  []

semUltimo (x:[])=
  []

semUltimo (x:xs) =
  x:semUltimo xs


---------------------------------------------
ultimo ::[a]->a

ultimo  (x:[]) =
  x

ultimo  (x:xs)=
  ultimo xs
----------------------------

----------------------------
ultimos ::Int->[a]->[a]

ultimos 0 _=
  []

ultimos n []=
  []



ultimos n (x:xs)=
  ultimos (n-1) (semUltimo (x:xs))++[x]
  where x=ultimo (x:xs)


  
-----------------------------------------------

main::IO()
main=do
  print(ultimos 3 [1,2,3,4,5,6,7,8,9])