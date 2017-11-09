
# Razredi

Ali obstaja množica vseh množic V? Ne, kot je pokazal Rusellovo protislovje

  R = {A ∈ V | A ∉ A}.

Sedaj lahko dokažemo, da veja R ∈ R in R ∉ R, torej dokažemo ⊥!

Ena možnih rešitev: nekatere "skupke" proglasimo za razrede, to so tisti skupki, ki so
"preveliki". da bi bili množice.

Razred je nova vrsta konstrukcije. Če imamo izjavo p(x), kjer je x množica, lahko
definiramo razred

  { x | p(x) }

vseh množic, ki zadoščajo pogoju p.

Razred {A | p(A)} je enak množici S, če velja

  ∀ x . p(x) ⇔ x ∈ S.

Razred, ki ni enak nobeni množici, je *pravi razred*. Primeri:

* V = {x | ⊤}
* R = {x | x ∉ x}
* razred vseh enojcev: { A | ∃! y ∈ A . ⊤ }
* razred vseh vektorskih prostorov

Predpišemo:

  1. Množice ne smejo vsebovati pravih razredov za elemente.
  2. Razredi smejo vsebovati množice.

# Družina množic

* družina množic je preslikava iz *indeksne množice* I v razred V

* prazna družina, družina praznih množic

* presek in unija družine (presek prazne družine je V)

* družina, kjer je presek prazen, vsaka končna poddružina ima neprazen presek

* presek n množic je poseben primer (družina {1, ..., n} → V)

