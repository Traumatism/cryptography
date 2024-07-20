let cesar str shift =
  let shift = shift mod 26 in
  let shift_char c =
    if 'a' <= c && c <= 'z' then
      char_of_int
        (int_of_char 'a' + ((int_of_char c - int_of_char 'a' + shift) mod 26))
    else if 'A' <= c && c <= 'Z' then
      char_of_int
        (int_of_char 'A' + ((int_of_char c - int_of_char 'A' + shift) mod 26))
    else c (* Not a number *)
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
