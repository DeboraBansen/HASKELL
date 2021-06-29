dobrar_dir::(a->b->b)->b->[a]->b
dobrar_dir f x []=
  x
dobrar_dir f x (y:ys)=
  foldr f x (y:ys)

main::IO()
main=do 
  print (dobrar_dir (/) 1 [10,20,30,40])