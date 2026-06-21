(* genders *)
let gender = "gender"
let masculine = "masculine"
let feminine = "feminine"
let neuter = "neuter"
let none = "none"

(* numbers *)
let number = "number"
let singular = "singular"
let plural = "plural"

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

(* ids *)
let _id = "id"
let id_1 = "1"
let id_2 = "2"
let id_3 = "3"
let id_4 = "4"
let id_5 = "5"
let id_6 = "6"
let id_7 = "7"
let id_8 = "8"
let id_9 = "9"
let id_10 = "10"
let id_11 = "11"
let id_12 = "12"
let id_13 = "13"
let id_14 = "14"
let id_15 = "15"
let id_16 = "16"
let id_17 = "17"
let id_18 = "18"
let id_19 = "19"
let id_20 = "20"

let id_n = "n"

let id_101 = "101"
let id_102 = "102"
let id_103 = "103"
let id_104 = "104"
let id_105 = "105"
let id_106 = "106"
let id_107 = "107"
let id_108 = "108"
let id_109 = "109"
let id_110 = "110"
let id_111 = "111"
let id_112 = "112"
let id_113 = "113"
let id_114 = "114"
let id_115 = "115"
let id_116 = "116"
let id_117 = "117"
let id_118 = "118"
let id_119 = "119"
let id_120 = "120"
let id_121 = "121"
let id_122 = "122"
let id_123 = "123"
let id_124 = "124"
let id_125 = "125"
let id_126 = "126"
let id_127 = "127"
let id_128 = "128"

(* gram-class *)

let gram_class = "grammatical-class"

let noun = "noun"
let verb = "verb"
let adjective = "adjective"
let adverb = "adverb"
let article = "article"
let pronoun = "pronoun"

let proper_noun = "proper-noun"
let definite_article = "definite-article"
let indefinite_article = "indefinite-article"

let demonstrative_determiner = "demonstrative-determiner"
let demonstrative_pronoun = "demonstrative-pronoun"

let pronunciation = "pronunciation"

(*
let prépositions
let conjonctions
let interjections
*)

let tense = "tense"
let person = "person"
let present_indicative = "present-indicative"

let third_pers_sing = "third-person-singular"



let words =
  ("pássaro", [
    (gram_class, noun);
    (gender, masculine);
    (number, singular);
    (lang, pt);
    (_id, id_101);
  ]) ::
  ("esquilo", [
    (gram_class, noun);
    (gender, masculine);
    (number, singular);
    (lang, pt);
    (_id, id_102);
  ]) ::
  ("joaninha", [
    (gram_class, noun);
    (gender, feminine);
    (number, singular);
    (lang, pt);
    (_id, id_103);
  ]) ::
  ("tartaruga", [
    (gram_class, noun);
    (gender, feminine);
    (number, singular);
    (lang, pt);
    (_id, id_104);
  ]) ::
  ("ouriço", [
    (gram_class, noun);
    (gender, masculine);
    (number, singular);
    (lang, pt);
    (_id, id_105);
  ]) ::
  ("coelho", [
    (gram_class, noun);
    (gender, masculine);
    (number, singular);
    (lang, pt);
    (_id, id_106);
  ]) ::
  ("rato", [
    (gram_class, noun);
    (gender, masculine);
    (number, singular);
    (lang, pt);
    (_id, id_107);
  ]) ::
  ("urso", [
    (gram_class, noun);
    (gender, masculine);
    (number, singular);
    (lang, pt);
    (_id, id_108);
  ]) ::
  ("raposa", [
    (gram_class, noun);
    (gender, feminine);
    (number, singular);
    (lang, pt);
    (_id, id_109);
  ]) ::
  ("pato", [
    (gram_class, noun);
    (gender, masculine);
    (number, singular);
    (lang, pt);
    (_id, id_110);
  ]) ::
  ("coruja", [
    (gram_class, noun);
    (gender, feminine);
    (number, singular);
    (lang, pt);
    (_id, id_111);
  ]) ::
  ("coruja", [
    (gram_class, noun);
    (gender, feminine);
    (number, singular);
    (lang, pt);
    (_id, id_112);
  ]) ::
  ("castor", [
    (gram_class, noun);
    (gender, masculine);
    (number, singular);
    (lang, pt);
    (_id, id_113);
  ]) ::
  ("golfinho", [
    (gram_class, noun);
    (gender, masculine);
    (number, singular);
    (lang, pt);
    (_id, id_114);
  ]) ::
  ("filhote de cachorro", [
    (gram_class, noun);
    (gender, masculine);
    (number, singular);
    (lang, pt);
    (_id, id_115);
  ]) ::
  ("canguru", [
    (gram_class, noun);
    (gender, masculine);
    (number, singular);
    (lang, pt);
    (_id, id_116);
  ]) ::
  ("macaco", [
    (gram_class, noun);
    (gender, masculine);
    (number, singular);
    (lang, pt);
    (_id, id_117);
  ]) ::
  ("zebra", [
    (gram_class, noun);
    (gender, feminine);
    (number, singular);
    (lang, pt);
    (_id, id_118);
  ]) ::
  ("girafa", [
    (gram_class, noun);
    (gender, feminine);
    (number, singular);
    (lang, pt);
    (_id, id_119);
  ]) ::
  ("leão", [
    (gram_class, noun);
    (gender, masculine);
    (number, singular);
    (lang, pt);
    (_id, id_120);
  ]) ::
  ("tigre", [
    (gram_class, noun);
    (gender, masculine);
    (number, singular);
    (lang, pt);
    (_id, id_121);
  ]) ::
  ("panda", [
    (gram_class, noun);
    (gender, masculine);
    (number, singular);
    (lang, pt);
    (_id, id_122);
  ]) ::
  ("rã", [
    (gram_class, noun);
    (gender, masculine);
    (number, singular);
    (lang, pt);
    (_id, id_123);
  ]) ::
  ("elefante", [
    (gram_class, noun);
    (gender, masculine);
    (number, singular);
    (lang, pt);
    (_id, id_124);
  ]) ::
  ("lontra", [
    (gram_class, noun);
    (gender, feminine);
    (number, singular);
    (lang, pt);
    (_id, id_125);
  ]) ::
  ("papagaio", [
    (gram_class, noun);
    (gender, masculine);
    (number, singular);
    (lang, pt);
    (_id, id_126);
  ]) ::
  ("cavalo", [
    (gram_class, noun);
    (gender, masculine);
    (number, singular);
    (lang, pt);
    (_id, id_127);
  ]) ::
  ("baleia", [
    (gram_class, noun);
    (gender, feminine);
    (number, singular);
    (lang, pt);
    (_id, id_128);
  ]) :: []



let load_words _words =
  List.rev_append words _words


