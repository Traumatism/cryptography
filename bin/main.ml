open Cesar

let () =
  let clear_str = "Hello, world" in
  let shift = 3 in

  let encr_str = cesar clear_str shift in
  Printf.printf "Encrypted: %s\n" encr_str;

  let decr_str = cesar_rev encr_str shift in
  Printf.printf "Decrypted: %s\n" decr_str
