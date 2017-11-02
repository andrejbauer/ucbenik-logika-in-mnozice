# Boolova algebra

## Resničnostna vrednost izjave

Za logično izjavo p moramo ločiti med njeno *resničnostno vrednostjo* in
*pomenom*. Na primer, resničnostna vrednost izjave "obstaja sodo praštevilo" je ⊤,
pomen izjave pa govori o lastnostnih števil.

Če v izjavi nastopajo parametri, se pravi simboli, katerih vrednost ni natančno določena,
potem je resničnostna vrednost izjave odvisna od simbolov:

* resničnostna vrednost izjave x + y < 3 je odvisna od vrednosti x in y
* resničnostna vrednost izjave ∃ x ∈ N . x + y < 3 je odvisna od y
  (in ni odvisna od x, ker je x vezan)
* resničnostna vrednost izjave ¬ p ∨ q je odvisna od resničnostnih vrednosti p in q

Odvisnost lahko ponazorimo s tabelo:

|x | y | x + y < 3|
|--|---|----------|
|0 | 0 |    ⊤     |
|0 | 1 |    ⊤     |
|1 | 0 |    ⊤     |
|1 | 1 |    ⊤     |
|2 | 0 |    ⊤     |
|2 | 1 |    ⊥     |
|0 | 2 |    ⊤     |
|1 | 2 |    ⊥     |
|2 | 2 |    ⊥     |
|  |   |  ...     |

| p | q | ¬ p ∨ q |
|---|---|---------|
| ⊥ | ⊥ |    ⊤    |
| ⊥ | ⊤ |    ⊤    |
| ⊤ | ⊥ |    ⊥    |
| ⊤ | ⊤ |    ⊤    |

Taki tabeli kot je zgornja, pravimo *resničnostna tabela*. Resničnostna tabela prikazuje,
kako so resničnostne vrednosti izjave odvisne od parametrov, ki nastopajo v njej.

Dve različni izjavi, ki imata lahko različna pomena, lahko določata enaki resničnostni
tabeli.

## Boolove preslikave

Definiramo oznako 2 = {⊥, ⊤}, množica resničnostnih vrednosti.

n-člena Boolova preslikava je preslikava iz

  2 × 2 × ⋯ × 2 → 2

kjer imamo na desni n pojavitev 2. Na primer:

  2 × 2 → 2
  (p, q) ↦ ¬ p ∨ q

Tako kot moramo razlikovati med *izrazom*

   x² + 7 x + 1

in *preslikavo*

   R → R
   x ↦ x² + 7 x + 1

moramo razlikovati med izjavo

   ¬ p ∨ q

in preslikavo

  2 × 2 → 2
  (p, q) ↦ ¬ p ∨ q

Resničnostno tabelo lahko razumemo na dva načina:

1. Prikazuje, kako je izjava odvisna od parametrov
2. Podaja predpis za Boolovo preslikavo.

Izjava je **tavtologija**, če je njena vrednost ⊤ ne glede na vrednosti parametrov.

## Zakon o zamenjavi ekvivlentnih izjav

Če sta izjavi p in q ekvivalentni, imata enaki resničnostni vrednosti. Se pravi, da sta
pri danih vrednostih parametrov bodisi obe resnični bodisi obe neresnični. Zato velja
*zakon o zamenjavi ekvivalentnih izjav*:

> Če velja p ⇔ q, potem smemo p nadomestiti s q,
> če gledamo le na resničnostno vrednost izjav.

Prav lahko se zgodi, da sta p in q ekvivalentni, a imata drugačen pomen in ju ne moremo
zamenjati. Na primer, če vas profesor na ustnem izpitu vpraša, kaj pove Cantorjev izrek,
potem ne morete odgovoriti z "2 + 2 = 4" in trditi, da je vse v redu, ker je

   2 + 2 = 4 ⇔ Cantorjev izrek.

Zakon o zamenjavi ekvivalentnih izjav lahko uporabimo, ko dokazujemo, da je izjava
resnična: predpostavke in izjavo, ki jo dokazujemo, lahko nadomestimo z ekvivalentno
izjavo, saj to ne vpliva na resničnostno vrednost izjave.


## Zakoni Boolove algebre

Izjave tvorijo *Boolovo algebro*, to je strukturo, opremljeno z operacijami, ki zadoščajo
nekaterim pravilom.

Poznamo že podobne primere iz algebre: cela števila so strukura, opremljena z
operacijami + × -, ki zadoščajo pravilom aritmetike (npr. (x + y) × z = x × z + y × z).

Operacije v Boolovi algebri so:

* konstanti ⊥ in ⊤
* negacija ¬
* konjunkcija ∧ in disjunkcija ∨

Boolovi zakoni govorijo o resničnostnih vrednostih izjav. Zapisali jih bomo z znakom =
namesto ⇔.

* Konjunkcija tvori idempotentni komutativni monoid z enoto ⊤:
   * komutativnost: p ∧ q = q ∧ p
   * asociativnost: p ∧ (q ∧ r) = (p ∧ q) ∧ r
   * enota: p ∧ ⊤ = p
   * idempotentnost: p ∧ p = p

* Disjunkcija tvori idempotentni komutativni monoid z enoto ⊥:
   * komutativnost: p ∨ q = q ∨ p
   * asociativnost: p ∨ (q ∨ r) = (p ∨ q) ∨ r
   * enota: p ∨ ⊥ = p
   * idempotentnost: p ∨ p = p

* Absorbcija:
   * p ∧ (p ∨ q) = p
   * p ∨ (p ∧ q) = p

* Distributivnost:
   * (p ∧ q) ∨ r = (p ∨ r) ∧ (p ∨ q)
   * (p ∨ q) ∧ r = (p ∧ r) ∨ (p ∧ r)

* Negacija:
   * p ∧ ¬p = ⊥
   * p ∨ ¬p = ⊤

Vse te zakone bi lahko dokazali s pravili za dokazovanje. Obstaja še drug način, namreč da
jih preverimo z resničnostno tabelo. To sloni na naslednjem izreku:

**Izrek:** Naj bo p izjava s parametri q₁, ..., qⱼ ∈ 2.

1. Če ima izjava p dokaz, potem je tavtologija.
2. Če je izjava p tavtologija, potem ima dokaz.

Izreka ne bomo dokazali, a utemeljuje uporabo resničnostnih tabel, pri preverjanju, ali
je dana izjava tavtologija.

Z resničnostnimi tabelami lahko preverimo tudi ekvivalenco, saj velja p ⇔ q natanko tedaj,
ko imata p in q enaki resničnostni tabeli. Na primer, z resničnostno tabelo lahko
preverimo, da velja:

  (p ⇒ q) = (¬ p ∨ q)

## Računska pravila

Poenostavljanje aritmetičnih izrazov poznamo že iz osnovne šole, npr.

  x² + y² - (x - y)² =
  x² + y² - (x² - 2 x y + y²) =
  x² + y² - x² + 2 x y - y² =
  2 x y.

Tudi z logičnimi izjavami lahko računamo in jih poenostavljamo, kar nam zelo olajša delo,
saj "tuhtanje" nadomestimo z rutinskim računanjem. Povejmo, koristna računska pravila za
poenostavljanje izjav:

* poenostavljanje izrazov z ⊤
   * ¬⊤ = ⊥
   * ⊤ ∨ p = ⊤
   * ⊤ ∧ p = p

* poenostavljanje izrazov z ⊥
   * ¬⊥ = ⊤
   * ⊥ ∨ p = p
   * ⊥ ∧ p = ⊥

* pravila, za negacijo:
  * ¬¬p = p
  * De Morganova zakona:
     * ¬ (p ∧ q) = ¬p ∨ ¬q
     * ¬ (p ∨ q) = ¬p ∧ ¬q

* ostala koristna pravila
   * kontra-pozitivna oblika implikacije:
        (p ⇒ q) = (¬q ⇒ ¬p)
    * disjunkcijo prevedemo na implikacijo
        (p ∨ q) = (¬p ⇒ q)
    * implikacijo prevedmo na disjunkcijo
        (p ⇒ q) = (¬p ∨ q)

Iz običajne algebre s števili smo navajeni na idejo, da "zmnožimo vsote", npr.

  (x + y) (2 x - y) = 2 x² + x y - y²

Na ta način vedno dobimo vosto zmnožkov

Tu smo uporabili zakon distributivnost množenja na seštevanju. Tudi logične izjave imajo
distributivni zakon, celo dva, zato jih lahko predelamo na dve obliki:

* konjuktivna oblika: izjavo zapišemo kot konjunkcijo disjunkcij
* disjunktivna oblika: izjavo zapišemo kot disjunkcijo konkjunkcij


## Računska pravila za kvantifikatorje

Računamo lahko tudi s kvantifikatorji. Povejmo nekaj osnovnih zakonov za kvantifikatorje:

* (¬ ∃ x ∈ A . p(x)) ⇔ ∀ x ∈ A . ¬p(x)
* (¬ ∀ x ∈ A . p(x)) ⇔ ∃ x ∈ A . ¬p(x)
* ((∃ x ∈ A . p(x)) ⇒ q) ⇔ (∀ x ∈ A . p(x) ⇒ q)
* (p ⇒ ∀ x ∈ A . q(x)) ⇔ (∀ x ∈ A . p ⇒ q(x))
* Frobeniusovi zakoni

Ti zakoni so podobni zakonom aritmetike, ali jih prepoznate?

## Polni nabori

Vprašanje: ali lahko z danim naborom veznikov (npr. ⊥, ¬ in ∧) izrazimo vsako resničnostno
tabelo? Če da, pravimo, da imamo *poln nabor*.

