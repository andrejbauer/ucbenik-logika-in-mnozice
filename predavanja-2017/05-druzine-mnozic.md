œ# Definicije in enolični opis

Vedno lahko uvedemo nov simbol c, ki je *okrajšava* za dani izraz E, pišemo

   c := E

Seveda potem velja c = E.

Včasih znamo dokazati, da obstaja natanko en objekt z danimi lastnostmi,
a ga ne moremo zapisati z izrazom. Tudi v tem primeru bi radi uvedli simbol,
ki opisuje tak objekt.

Dejstvo, da "obstaja natanko en x ∈ A, za katerega velja p(x)" zapišemo

   ∃! x ∈ A . p(x)

ali

   ∃¹ x ∈ A . p(x)

in to je okrajšava za:œ

   (∃ x ∈ A . p(x)) ∧ (∀ y z ∈ A . p(y) ∧ p(z) ⇒ y = z)

Če dokažemo ∃! x ∈ A . p(x), potem lahko uvedemo nov simbol c in pravilo, da velja p(c).
Pravimo, da smo c *enolično opisali.*

Včasih uporabljamo tudi operator enoličnega opisa

   ι x ∈ A . p(x)

v katerem je x vezana spremenljivka in pomeni "tisti x ∈ A, za katerega velja p".
Izraz je veljaven, če smo pred tem dokazali ∃! x ∈ A . p(x). Velja

   p(ι x ∈ A . p(x))

S pomočjo operatorja enoličnega opisa lahko nov simbol uvedemo kot okrajšavo

  c := ι x ∈ A . p(x).

# Podmnožice

Relacija podmnožica A ⊆ B pomeni ∀ x ∈ A . x ∈ B.

Če je p(x) logični izraz, kjer x ∈ A, lahko definiramo podmnožico

   {x ∈ A | p(x)}

To je nova konstrukcija množic. Velja:

  Elementi {x ∈ A | p(x)} so natanko tisti elementi a ∈ A, ki zadoščajo p(a).

Od tod izhajata računski pravili

  (∃ y ∈ {x ∈ A | p(x)} . q(y)) ⇔ (∃ z ∈ A . p(z) ∧ q(z))

  (∀ y ∈ {x ∈ A | p(x)} . q(y)) ⇔ (∀ z ∈ A . p(z) ⇒ q(z))

# Potenčna množica

Potenčna množica P(A): elementi potenčne množice P(A) so natanko vse podmnožice A.

Potenčna množica je Boolova algebra za opreacije ∅, A, ∩, ∪

# Karakteristične preslikave in podmnožice

Posplošimo pojem Boolove preslikave

  f : 2 × ⋯ × 2 → 2

na vsako preslikavo, ki slika v 2 = {⊥, ⊤):

  f : A → 2

Torej imamo:

* podmnožice A
* Boolove preslikave na A

Dokažimo, da imamo izomorfizem 2^A ≅ P(A):

  S ↦ (x ↦ (x ∈ S))  (in še drugi zapis s "cases")

  f ↦ {x ∈ A | f(x)} (in še drugi zapis {x ∈ A | f(x) = ⊤})


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

