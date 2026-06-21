(* generic-words *)

(* genders *)
let gender = "gender"
let masculine = "masculine"
let feminine = "feminine"
let neutral = "neutral"
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
let da = "da"
let pl = "pl"
let ru = "ru"

let variant = "variant"
let hant = "Hant"
let hans = "Hans"

(* ids *)

let _id = "id"

(* ids-for-noun *)

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

(* ids-for-adjectives *)

let id_20a = "20a"
let id_21a = "21a"
let id_22a = "22a"
let id_23a = "23a"
let id_24a = "24a"
let id_25a = "25a"
let id_26a = "26a"

(* ids-for-verbs *)

let id_v20 = "v20"
let id_v21 = "v21"
let id_v22 = "v22"
let id_v23 = "v23"
let id_v24 = "v24"
let id_v25 = "v25"
let id_v26 = "v26"
let id_v27 = "v27"
let id_v28 = "v28"
let id_v29 = "v29"
let id_v30 = "v30"
let id_v31 = "v31"
let id_v32 = "v32"
let id_v33 = "v33"
let id_v34 = "v34"
let id_v35 = "v35"
let id_v36 = "v36"

let id_v52 = "v52"
let id_v53 = "v53"
let id_v54 = "v54"
let id_v55 = "v55"
let id_v56 = "v56"
let id_v58 = "v58"
let id_v59 = "v59"

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

let preposition = "preposition"

let pronunciation = "pronunciation"

(*
let conjonctions
let interjections
*)

let tense = "tense"
let person = "person"
let present_indicative = "present-indicative"

let third_pers_sing = "third-person-singular"

(* words *)

let words = [
  ("soleil", [
    (gender, masculine);
    (gram_class, noun);
    (lang, fr);
    (_id, id_1);
  ]);

  ("sol", [
    (gender, masculine);
    (gram_class, noun);
    (lang, es);
    (_id, id_1);
  ]);

  ("sun", [
    (gram_class, noun);
    (lang, en);
    (_id, id_1);
  ]);

  ("太陽", [
    (_id, id_1);
    (lang, zh);
    (variant, hant);
    (gram_class, noun);
  ]);

  ("太阳", [
    (_id, id_1);
    (lang, zh);
    (variant, hans);
    (gram_class, noun);
    (pronunciation, "tài yáng");
  ]);

  ("Sonne", [
    (gender, feminine);
    (gram_class, noun);
    (lang, de);
    (_id, id_1);
  ]);

  ("matahari", [
    (gender, none);
    (gram_class, noun);
    (lang, id);
    (_id, id_1);
  ]);
]


let words =
  ("le", [
    (gram_class, definite_article);
    (gender, masculine);
    (number, singular);
    (lang, fr);
  ]) ::
  ("un", [
    (gram_class, indefinite_article);
    (gender, masculine);
    (number, singular);
    (lang, fr);
  ]) :: words


let words =
  ("ce", [
    (gram_class, demonstrative_determiner);
    (gender, masculine);
    (number, singular);
    (lang, fr);
  ]) ::
  ("ces", [
    (gram_class, demonstrative_determiner);
    (gender, masculine);
    (number, plural);
    (lang, fr);
  ]) ::
  ("cette", [
    (gram_class, demonstrative_determiner);
    (gender, feminine);
    (number, singular);
    (lang, fr);
  ]) :: words


let words =
  ("this", [
    (gram_class, demonstrative_pronoun);  (* This is important *)
    (gender, masculine);
    (number, singular);
    (lang, en);
  ]) ::
  ("this", [
    (gram_class, demonstrative_determiner);  (* This book is interesting *)
    (gender, masculine);
    (number, singular);
    (lang, en);
  ]) :: words


let words =
  ("brille", [
    (gram_class, verb);
    (tense, present_indicative);
    (person, third_pers_sing);
    (lang, fr);
  ])
  :: words

let words =
  ("照耀", [
    (gram_class, verb);
    (lang, zh);
    (pronunciation, "zhào yào");
  ])
  :: words

let words =
  ("shine", [
    (gram_class, verb);
    (lang, en);
  ])
  :: words


let words =
  ("sing", [
    (gram_class, verb);
    (lang, en);
  ]) :: words


let words =
  ("whisper", [
    (gram_class, verb);
    (lang, en);
    (_id, id_v52);
  ]) ::
  ("chuchoter", [
    (gram_class, verb);
    (lang, fr);
    (_id, id_v52);
  ]) ::
  ("sussurrar", [
    (gram_class, verb);
    (lang, pt);
    (_id, id_v52);
  ]) ::
  ("flüstern", [
    (gram_class, verb);
    (lang, de);
    (_id, id_v52);
  ]) ::
  ("低聲說", [
    (gram_class, verb);
    (pronunciation, "dīshēng shuō");
    (lang, zh);
    (variant, hant);
    (_id, id_v52);
  ]) ::
  ("低声说", [
    (gram_class, verb);
    (pronunciation, "dīshēng shuō");
    (lang, zh);
    (variant, hans);
    (_id, id_v52);
  ]) :: words


let words =
  ("the", [
    (gram_class, definite_article);
    (gender, neutral);
    (lang, en);
  ]) ::
  ("a", [
    (gram_class, indefinite_article);
    (gender, neutral);
    (lang, en);
  ]) :: words

let words =
  ("el", [
    (gram_class, definite_article);
    (gender, masculine);
    (lang, es);
  ]) :: words

let words =
  ("o", [
    (gram_class, definite_article);
    (gender, masculine);
    (lang, pt);
  ]) :: words

let words =
  ("il", [
    (gram_class, definite_article);
    (gender, masculine);
    (lang, it);
  ]) :: words

let words =
  ("sol", [
    (gender, masculine);
    (gram_class, noun);
    (lang, pt);
  ]) :: words

let words =
  ("brilha", [
    (gram_class, verb);
    (lang, pt);
  ]) :: words

let words =
  ("brilla", [
    (gram_class, verb);
    (lang, es);
  ]) :: words

let words =
  ("sole", [
    (gram_class, noun);
    (gender, masculine);
    (lang, it);
  ]) :: words

let words =
  ("brilla", [
    (gram_class, verb);
    (lang, it);
  ]) :: words


let words =
  ("bersinar", [
    (gram_class, verb);
    (lang, id);
  ])
  :: words


let words =
  ("die", [
    (gram_class, definite_article);
    (gender, feminine);
    (lang, de);
  ]) ::
  ("scheint", [
    (gram_class, verb);
    (lang, de);
  ]) :: words


let words =
  ("ein", [
    (gram_class, indefinite_article);
    (gender, masculine);
    (lang, de);
  ]) ::
  ("eine", [
    (gram_class, indefinite_article);
    (gender, feminine);
    (lang, de);
  ]) ::
  ("ein", [
    (gram_class, indefinite_article);
    (gender, neuter);
    (lang, de);
  ]) :: words



let words =
  ("um", [
    (gram_class, indefinite_article);
    (gender, masculine);
    (lang, pt);
  ]) ::
  ("uma", [
    (gram_class, indefinite_article);
    (gender, feminine);
    (lang, pt);
  ]) :: words


let words =
  ("livro", [
    (gram_class, noun);
    (gender, masculine);
    (lang, pt);
    (_id, id_2);
  ]) ::
  ("casa", [
    (gram_class, noun);
    (gender, feminine);
    (lang, pt);
    (_id, id_3);
  ]) :: words


let words =
  ("livre", [
    (gram_class, noun);
    (gender, masculine);
    (number, singular);
    (_id, id_2);
    (lang, fr);
  ]) ::
  ("maison", [
    (gram_class, noun);
    (gender, feminine);
    (number, singular);
    (_id, id_3);
    (lang, fr);
  ]) :: words


let words =
  ("chaleureux", [
    (gram_class, adjective);
    (gender, masculine);
    (number, singular);
    (_id, id_21a);
    (lang, fr);
  ]) ::
  ("chaleureuse", [
    (gram_class, adjective);
    (gender, feminine);
    (number, singular);
    (_id, id_21a);
    (lang, fr);
  ]) :: words


let words =
  ("warm", [
    (gram_class, adjective);
    (gender, none);
    (_id, id_21a);
    (lang, en);
  ]) ::
  ("welcoming", [
    (gram_class, adjective);
    (gender, none);
    (_id, id_20a);
    (lang, en);
  ]) :: words



let words =
  ("acceuillant", [
    (gram_class, adjective);
    (gender, masculine);
    (number, singular);
    (_id, id_20a);
    (lang, fr);
  ]) ::
  ("acceuillante", [
    (gram_class, adjective);
    (gender, feminine);
    (number, singular);
    (_id, id_20a);
    (lang, fr);
  ]) :: words



let words =
  ("celui-ci", [
    (gram_class, demonstrative_pronoun);
    (gender, masculine);
    (number, singular);
    (lang, fr);
  ]) ::
  ("celui-là", [
    (gram_class, demonstrative_pronoun);
    (gender, masculine);
    (number, singular);
    (lang, fr);
  ]) ::
  ("celle-ci", [
    (gram_class, demonstrative_pronoun);
    (gender, feminine);
    (number, singular);
    (lang, fr);
  ]) ::
  ("celle-là", [
    (gram_class, demonstrative_pronoun);
    (gender, feminine);
    (number, singular);
    (lang, fr);
  ]) :: words



(* indefinite-articles in italian *)

let words =
  ("un", [
    (gram_class, indefinite_article);
    (gender, masculine);
    (number, singular);
    (lang, it);
  ]) ::
  ("uno", [
    (gram_class, indefinite_article);
    (gender, masculine);
    (number, singular);
    (lang, it);
    ("before_noun_starting_with",
     "z,st,sd,sb,sf,sg,sk,sl,sm,sn,sp,sq,sr,sv");
  ]) ::
  ("una", [
    (gram_class, indefinite_article);
    (gender, feminine);
    (number, singular);
    (lang, it);
    ("before_noun_starting_with",
     "b,c,d,f,g,h,l,m,n,p,q,r,s,t,v,z");
  ]) ::
  ("un'", [
    (gram_class, indefinite_article);
    (gender, feminine);
    (number, singular);
    (lang, it);
    ("before_noun_starting_with",
     "a,i,o,u,e");
  ]) :: words



let words =
  ("un", [
    (gram_class, indefinite_article);
    (gender, masculine);
    (number, singular);
    (lang, es);
  ]) ::
  ("una", [
    (gram_class, indefinite_article);
    (gender, feminine);
    (number, singular);
    (lang, es);
  ]) ::
  ("unos", [
    (gram_class, indefinite_article);
    (gender, feminine);
    (number, plural);
    (lang, es);
  ]) ::
  ("unas", [
    (gram_class, indefinite_article);
    (gender, feminine);
    (number, plural);
    (lang, es);
  ]) :: words



(* portuguese demonstrative-determiners: *)

let words =
  ("este", [
    (gram_class, demonstrative_determiner);
    (gender, masculine);
    (number, singular);
    (lang, pt);
  ]) ::
  ("esta", [
    (gram_class, demonstrative_determiner);
    (gender, feminine);
    (number, singular);
    (lang, pt);
  ]) ::
  ("estes", [
    (gram_class, demonstrative_determiner);
    (gender, masculine);
    (number, plural);
    (lang, pt);
  ]) ::
  ("estas", [
    (gram_class, demonstrative_determiner);
    (gender, feminine);
    (number, plural);
    (lang, pt);
  ]) :: words



let words =
  ("este", [
    (gram_class, demonstrative_pronoun);
    (gender, masculine);
    (number, singular);
    (lang, pt);
  ]) ::
  ("esta", [
    (gram_class, demonstrative_pronoun);
    (gender, feminine);
    (number, singular);
    (lang, pt);
  ]) ::
  ("isto", [
    (gram_class, demonstrative_pronoun);
    (gender, neuter);
    (number, singular);
    (lang, pt);
  ]) :: words



(* adjectives *)

   
let words =
  ("nice", [
    (gram_class, adjective);
    (lang, en);
  ]) ::
  ("aimable", [
    (gram_class, adjective);
    (lang, fr);
  ]) ::
  ("venlig", [
    (gram_class, adjective);
    (lang, da);
  ]) :: words



let words =
  ("kind", [
    (gram_class, adjective);
    (lang, en);
  ]) ::
  ("courtois", [
    (gram_class, adjective);
    (lang, fr);
  ]) ::
  ("høflig", [
    (gram_class, adjective);
    (lang, da);
  ]) :: words




let words =
  ("polite", [
    (gram_class, adjective);
    (lang, en);
  ]) ::
  ("poli", [
    (gram_class, adjective);
    (lang, fr);
  ]) ::
  ("höflich", [
    (gram_class, adjective);
    (lang, de);
  ]) ::
  ("uprzejmy", [
    (gram_class, adjective);
    (lang, pl);
  ]) :: words




let words =
  ("sage", [
    (gram_class, adjective);
    (lang, fr);
  ]) ::
  ("artig", [
    (gram_class, adjective);
    (lang, de);
  ]) :: words



let words =
  ("quiet", [
    (gram_class, adjective);
    (lang, en);
  ]) ::
  ("tranquille", [
    (gram_class, adjective);
    (lang, fr);
  ]) :: words




let words =
  ("civil", [
    (gram_class, adjective);
    (lang, en);
  ]) ::
  ("вежливый", [
    (gram_class, adjective);
    (lang, ru);
  ]) :: words




(* animals *)

let words =
  ("oiseau", [
    (gram_class, noun);
    (gender, masculine);
    (number, singular);
    (lang, fr);
    (_id, id_6);
  ]) ::
  ("oiseaux", [
    (gram_class, noun);
    (gender, masculine);
    (number, plural);
    (lang, fr);
    (_id, id_6);
  ]) :: words


let words =
  ("pájaro", [
    (gram_class, noun);
    (gender, masculine);
    (number, singular);
    (lang, es);
    (_id, id_6);
  ]) ::
  ("pájaros", [
    (gram_class, noun);
    (gender, masculine);
    (number, plural);
    (lang, es);
    (_id, id_6);
  ]) :: words


let words =
  ("pássaro", [
    (gram_class, noun);
    (gender, masculine);
    (number, singular);
    (lang, pt);
    (_id, id_6);
  ]) ::
  ("pássaros", [
    (gram_class, noun);
    (gender, masculine);
    (number, plural);
    (lang, pt);
    (_id, id_6);
  ]) :: words


let words =
  ("uccello", [
    (gram_class, noun);
    (gender, masculine);
    (number, singular);
    (lang, it);
    (_id, id_6);
  ]) ::
  ("uccelli", [
    (gram_class, noun);
    (gender, masculine);
    (number, plural);
    (lang, it);
    (_id, id_6);
  ]) :: words


let words =
  ("burung", [
    (gram_class, noun);
    (gender, masculine);
    (number, singular);
    (lang, id);
    (_id, id_6);
  ]) ::
  ("burung", [
    (gram_class, noun);
    (gender, masculine);
    (number, plural);
    (lang, id);
    (_id, id_6);
  ]) :: words


let words =
  ("鸟", [
    (gram_class, noun);
    (number, singular);
    (gender, none);
    (pronunciation, "niǎo");
    (lang, zh);
    (variant, hans);
    (_id, id_6);
  ]) ::
  ("鸟些", [
    (gram_class, noun);
    (number, plural);
    (gender, none);
    (pronunciation, "niǎo xiē");
    (lang, zh);
    (variant, hans);
    (_id, id_6);
  ]) :: words




(* spanish-demonstrative-determiners *)

let words =
  ("este", [
    (gram_class, demonstrative_determiner);
    (gender, masculine);
    (number, singular);
    (lang, pt);
  ]) ::
  ("esta", [
    (gram_class, demonstrative_determiner);
    (gender, masculine);
    (number, singular);
    (lang, pt);
  ]) ::
  ("estos", [
    (gram_class, demonstrative_determiner);
    (gender, masculine);
    (number, plural);
    (lang, pt);
  ]) ::
  ("estas", [
    (gram_class, demonstrative_determiner);
    (gender, masculine);
    (number, plural);
    (lang, pt);
  ]) :: words



let words =
  ("ese", [
    (gram_class, demonstrative_determiner);
    (gender, masculine);
    (number, singular);
    (lang, pt);
  ]) ::
  ("esa", [
    (gram_class, demonstrative_determiner);
    (gender, masculine);
    (number, singular);
    (lang, pt);
  ]) ::
  ("esos", [
    (gram_class, demonstrative_determiner);
    (gender, masculine);
    (number, plural);
    (lang, pt);
  ]) ::
  ("esas", [
    (gram_class, demonstrative_determiner);
    (gender, masculine);
    (number, plural);
    (lang, pt);
  ]) :: words



let words =
  ("aquel", [
    (gram_class, demonstrative_determiner);
    (gender, masculine);
    (number, singular);
    (lang, pt);
  ]) ::
  ("aquella", [
    (gram_class, demonstrative_determiner);
    (gender, masculine);
    (number, singular);
    (lang, pt);
  ]) ::
  ("aquellos", [
    (gram_class, demonstrative_determiner);
    (gender, masculine);
    (number, plural);
    (lang, pt);
  ]) ::
  ("aquellas", [
    (gram_class, demonstrative_determiner);
    (gender, masculine);
    (number, plural);
    (lang, pt);
  ]) :: words


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



(* end-if-words *)
