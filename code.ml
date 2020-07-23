let sequencia1 = read_line();;
let sequencia2 = read_line();;
let resultado a b =
  let x = String.length a and y = String.length b in 
  let matriz = Array.make_matrix (x+1) (y+1) 0 in
  for i = 0 to x do
    matriz.(i).(0) <- i
  done;
  for j = 0 to y do
    matriz.(0).(j) <- j
  done;
  for jj = 1 to y do
    for ii = 1 to x do
      if a.[ii-1] = b.[jj-1] then matriz.(ii).(jj) <- matriz.(ii-1).(jj-1)
      else matriz.(ii).(jj) <- ( min (matriz.(ii-1).(jj) + 1) ( min (matriz.(ii).(jj-1) + 1) (matriz.(ii-1).(jj-1) + 1)))
    done;
  done;
  matriz.(x).(y);;
Printf.printf "%d\n" (resultado sequencia1 sequencia2)
