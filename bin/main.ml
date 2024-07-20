let rec pgcd a b = match b with 0 -> a | _ -> pgcd b (a mod b);;

let d = pgcd 21 15 in
print_int d
