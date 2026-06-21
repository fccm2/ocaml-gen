(* action *)

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
let da = "da"
let pl = "pl"
let ru = "ru"

let variant = "variant"
let hant = "Hant"
let hans = "Hans"

(* gram-class *)

let gram_class = "grammatical-class"
let verb = "verb"


(* ids-for-action *)

let _id = "id"

let id_v17 = "v17"


let words =
  ("heal", [
    (gram_class, verb);
    (lang, en);
  ])
  :: []



let load_words _words =
  List.rev_append words _words


