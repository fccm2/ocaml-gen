(* some-adjective-estonian *)

(* gram-class *)

let gram_class = "grammatical-class"

let adjective = "adjective"

(* langs *)
let lang = "lang"
let et = "et"

(* ids-for-adjectives *)

let _id = "id"

let id_37a = "37a"


let words =
  ("vaikne", [
    (gram_class, adjective);
    (lang, et);
    (_id, id_37a);
  ]) :: []



let load_words _words =
  List.rev_append words _words


