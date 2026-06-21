(* some-adjective *)

(* gram-class *)

let gram_class = "grammatical-class"

let adjective = "adjective"

(* langs *)
let lang = "lang"
let en = "en"
let fr = "fr"
let es = "es"
let it = "it"
let de = "de"
let pt = "pt"
let id = "id"
let zh = "zh"

let variant = "variant"
let hant = "Hant"
let hans = "Hans"

(* ids-for-adjectives *)

let _id = "id"

let id_37a = "37a"


let words =
  ("peaceful", [
    (gram_class, adjective);
    (lang, en);
    (_id, id_37a);
  ]) ::
  ("安靜", [
    (gram_class, adjective);
    (lang, zh);
    (_id, id_37a);
  ]) :: []



let load_words _words =
  List.rev_append words _words


