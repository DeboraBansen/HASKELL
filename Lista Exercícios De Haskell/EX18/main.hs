dobrar_dir::(a->b->b)->b->[a]->b
dobrar_dir f x []=
  x
dobrar_dir f x (y:ys)=
  foldr f x (y:ys)


todos::[Bool]->Bool
todos []=
  True
todos (x:xs)=
  if (dobrar_dir (==) True [x]) then
    todos xs 
  else
    False    

main::IO()
main=do
  print(todos [True,False,True])