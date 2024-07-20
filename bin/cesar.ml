let ascii_start_index = int_of_char 'a'
let ascii_capital_start_index = int_of_char 'A'

let cesar str shift =
  let shift =
    shift mod 26 (* Reset shift to match it with the alphabet letters *)
  in
  let shift_char chr =
    match ('a' <= chr && chr <= 'z', 'A' <= chr && chr <= 'Z') with
    | true, false ->
        (* Shift letter *)
        char_of_int
          (ascii_start_index
          + ((int_of_char chr - ascii_start_index + shift) mod 26))
    | false, true ->
        (* Shift capital letter *)
        char_of_int
          (ascii_capital_start_index
          + ((int_of_char chr - ascii_capital_start_index + shift) mod 26))
    | _ -> chr (* Not a letter, skip *)
  in
  String.map shift_char str

let cesar_rev str shift = cesar str (-shift)
