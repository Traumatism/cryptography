let cesar str shift =
  let shift = shift mod 26 in
  let shift_char chr =
    if 'a' <= chr && chr <= 'z' then
      char_of_int
        (int_of_char 'a' + ((int_of_char chr - int_of_char 'a' + shift) mod 26))
    else if 'A' <= chr && chr <= 'Z' then
      char_of_int
        (int_of_char 'A' + ((int_of_char chr - int_of_char 'A' + shift) mod 26))
    else chr (* Not a number *)
  in
  String.map shift_char str

let cesar_inv str shift = cesar str (-shift)

let () =
  let clear_str = "Hello, world" in
  let shift = 3 in

  let encr_str = cesar clear_str shift in
  Printf.printf "Encrypted: %s\n" encr_str;

  let decr_str = cesar_inv encr_str shift in
  Printf.printf "Decrypted: %s\n" decr_str
