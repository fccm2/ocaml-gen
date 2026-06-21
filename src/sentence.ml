open Gen

let words = Gen.words

let words = Animals_en.load_words words
let words = Animals_es.load_words words
let words = Animals_fr.load_words words
let words = Animals_pt.load_words words
 


(* prepositions-fr *)

let words =
  ("à", [
    (gram_class, preposition);
    (lang, fr);
  ]) ::
  ("de", [
    (gram_class, preposition);
    (lang, fr);
  ]) ::
  ("avec", [
    (gram_class, preposition);
    (lang, fr);
  ]) ::
  ("sur", [
    (gram_class, preposition);
    (lang, fr);
  ]) :: words
;;



(* types for words *)

type key = string
type value = string

type property = key * value
type properties = property list

type word = string


(* other types *)

type lang = string
type langs = lang list


(* lang list *)

let langs = [
  en;
  fr;
  es;
  it;
  de;
  pt;
  id;
  zh;
]

(*
let article = "article"
let pronoun = "pronoun"
let proper_noun = "proper-noun"
*)

type gram_class =
  | DEFA  (* definite-article *)
  | INDA  (* indefinite-article *)
  | NOUN  (* noun *)
  | VERB  (* verb *)
  | ADJ  (* adjective *)
  | ADV  (* adverb *)
  | DEMPRO  (* demonstrative-pronoun *)
  | DEMDET  (* demonstrative-determiner *)


(*
  | ART  (* article *)
  | PRONN  (* pronoun *)
  | PROPNN  (* proper-noun *)
  | PREP  (* preposition *)
*)


let class_map = [
  (INDA, indefinite_article);
  (DEFA, definite_article);
  (NOUN, noun);
  (VERB, verb);
  (ADJ, adjective);
  (ADV, adverb);
  (DEMPRO, demonstrative_pronoun);
  (DEMDET, demonstrative_determiner);
]


let swap (a, b) = (b, a)
let push elm lst =
  lst := elm :: !lst

let class_map_rev =
  List.map swap class_map

(* europ-1 *)
let eu_1 = [en; fr; es; it; de; pt]
let asia_1 = [id; zh]

(* vectors *)
let vectors = [
  eu_1, [| INDA; NOUN; VERB |];  (* a bird sings *)
  eu_1, [| DEFA; NOUN; VERB |];  (* The sun shines *)
  eu_1, [| DEMPRO; VERB; ADJ |];  (* This is important *)
  eu_1, [| DEMDET; NOUN; VERB; ADJ |];  (* This book is interesting *)

  asia_1, [| NOUN; VERB |];

  [id], [| NOUN; DEMDET; VERB; ADJ |];  (* Buku ini menarik *)
]

let pad n s =
  let n1 = String.length s in
  s ^ (String.make (n - n1) ' ')

let random_init b =
  if b then Random.self_init ()

let rand_take vec =
  let n = Array.length vec in
  vec.(Random.int n)

let rand_take_l lst =
  let n = List.length lst in
  List.nth lst (Random.int n)


(* select-sentences *)

let select_sentences selected_lang =
  Printf.printf "%s: %s\n" (String.uppercase_ascii "lang") selected_lang;

  (* select vectors, for desired language *)
  let vectors =
    List.filter (fun (langs, _(*vector*)) ->
      if List.mem selected_lang langs then true
      else false
    ) vectors
  in
  let vectors =
    List.map (fun (_, vector) -> vector) vectors
  in

  (* build a sentence *)

  List.iter (fun vector ->
    let w_classes = Array.map (fun w_id -> List.assoc w_id class_map) vector in

    (* iter tokken vectors, transformed into strings *)

    Array.iter (fun cw ->
      let ws = ref [] in
      List.iter (fun (w, props) ->
        if List.mem (gram_class, cw) props
        && List.mem (lang, selected_lang) props
        then
          ws := w :: !ws;
      ) words;

      if !ws <> [] then
        begin
          let fw = String.concat ", " !ws in  (* found-words *)
          let gram_class = String.uppercase_ascii cw in
          Printf.printf "- %s: %s\n" (pad 20 gram_class) fw;
        end
    ) w_classes;
    print_newline ()
  ) vectors
;;


(* build-sentence *)

let build_sentence selected_lang =

  (* select vectors, for desired language *)
  let vectors =
    List.filter (fun (langs, _(*vector*)) ->
      if List.mem selected_lang langs then true
      else false
    ) vectors
  in
  let vectors =
    List.map (fun (_, vector) -> vector) vectors
  in

  (* build a sentence *)

  let sentences = ref [] in

  List.iter (fun vector ->
    let sentence = ref [] in

    let w_classes = Array.map (fun w_id -> List.assoc w_id class_map) vector in

    (* iter tokken vectors, transformed into strings *)

    Array.iter (fun cw ->
      let ws = ref [] in
      List.iter (fun (w, props) ->
        if List.mem (gram_class, cw) props
        && List.mem (lang, selected_lang) props
        then
          ws := w :: !ws;
      ) words;

      if !ws <> [] then
        begin
          let fw = String.concat " | " !ws in  (* found-words *)
          push ("(" ^ fw ^ ")") sentence
        end
    ) w_classes;
    push (List.rev !sentence) sentences
  ) vectors;

  let _sentences = List.rev !sentences in

  List.iter (fun sentence ->
    List.iter (fun word ->
      Printf.printf " %s" word
    ) sentence;
    print_newline ()
  ) _sentences;
;;


(* sentence-one *)

let sentence_one selected_lang =

  (* select vectors, for desired language *)
  let vectors =
    List.filter (fun (langs, _(*vector*)) ->
      if List.mem selected_lang langs then true
      else false
    ) vectors
  in
  let vectors =
    List.map (fun (_, vector) -> vector) vectors
  in

  let vector_string vector =
    let w_classes = Array.map (fun w_id -> List.assoc w_id class_map) vector in
    Printf.sprintf "(( %s ))" (String.concat " + " (Array.to_list w_classes));
  in

  (* build a sentence *)

  let sentences = ref [] in

  List.iter (fun vector ->
    let sentence = ref [] in

    let w_classes = Array.map (fun w_id -> List.assoc w_id class_map) vector in

    (* iter tokken vectors, transformed into strings *)

    Array.iter (fun cw ->
      let ws = ref [] in
      List.iter (fun (w, props) ->
        if List.mem (gram_class, cw) props
        && List.mem (lang, selected_lang) props
        then
          ws := w :: !ws;
      ) words;

      if !ws = [] then
        push ("_") sentence;

      if !ws <> [] then
        begin
          let one_word = rand_take_l !ws in
          push (one_word) sentence
        end
    ) w_classes;
    push (List.rev !sentence, vector_string vector) sentences
  ) vectors;

  let _sentence, s_vector = rand_take_l !sentences in
  print_endline s_vector;

  Printf.printf "lang(%s):" selected_lang;
  List.iter (fun word ->
    Printf.printf " %s" word
  ) _sentence;
  print_newline ()
;;


(* main *)

let main () = ()

let main2 () =
  random_init true;
  List.iter select_sentences langs;
  print_endline "---------------";
  build_sentence "pt";
  print_endline "---------------";
  sentence_one "pt";
;;

let () =
  let _ = try Sys.argv.(1) with _ -> "pt" in
  for i = 0 to pred 6 do
    let lang = rand_take_l langs in
    random_init true;
    sentence_one lang;
    print_newline ();
  done;
;;

