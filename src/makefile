OBJ=adjective.ml animals_en.cmo animals_es.cmo animals_fr.cmo animals_pt.cmo
sentence.byte: gen.cmo $(OBJ) sentence.cmo
	ocamlc -o sentence.byte gen.cmo $(OBJ) sentence.cmo
gen.cmo: gen.ml
	ocamlc -c $<
sentence.cmo: sentence.ml
	ocamlc -c $<
animals_en.cmo: animals_en.ml
animals_es.cmo: animals_es.ml
animals_fr.cmo: animals_fr.ml
animals_pt.cmo: animals_pt.ml
adjective.cmo: adjective.ml
%.cmo: %.ml
	ocamlc -c $<
sentence.cmo: gen.cmo \
  adjective.cmo \
    animals_pt.cmo \
    animals_fr.cmo \
    animals_es.cmo \
    animals_en.cmo \
    #Eol
clean:
	$(RM) gen.cmi
	$(RM) gen.cmo
	$(RM) sentence.byte
	$(RM) sentence.cmi
	$(RM) sentence.cmo
	$(RM) adjective.cmi
	$(RM) adjective.cmo
	$(RM) animals_en.cmo
	$(RM) animals_es.cmo
	$(RM) animals_fr.cmo
	$(RM) animals_pt.cmo
	$(RM) animals_en.cmi
	$(RM) animals_es.cmi
	$(RM) animals_fr.cmi
	$(RM) animals_pt.cmi
