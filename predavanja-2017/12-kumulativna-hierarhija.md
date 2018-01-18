## Cantor-Schröder-Bernsteinov izrek

Izrek: Če obstajata injektivni preslikavi A → B in g : B → A, potem obstaja bijekcija A ≅ B.

Dokaz:

Naj bosta f : A → B in g : B → A injektivni preslikavi.

Za vsak x ∈ A definiramo zaporedje

  ..., f^-1^(g^-1(x)),  ^g^-1(x), x, f(x), g(f(x)), f(g(f(x))), ...

ki mu pravimo *orbita* elementa x. Na levo se lahko orbita konča, če dobimo element, ki ni
v sliki f oz g. Na desno se orbita nikoli ne konča.

Vsak element A in vsak element B je v natanko eni orbiti, ker sta f in g injektivni
preslikavi. Torej tvorijo orbite razbitje A + B. Bijektivno preslikavo h : A → B
definiramo tako, da jo definiramo na vsaki orbiti posebej.

* če se orbita na levi konča z elementom iz A:
  vsak element iz preslikamo z f v element iz B na njeogiv desni.

* če se orbita na levi konča za elementom iz B:
  vsak element iz A preslikamo z g^{-1} v element na njegovi levi.

* če se orbita nadaljuje v neskončnost na levi: vsak element iz A preslikamo v element iz
  B na njegovi desni.


## Kumulativna hierarhija

### Kodiranje matematičnih objektov z množicami

Z množicami smo izrazili številne matematične objekte, na primer:

* preslikavo f : A → B lahko izrazimo kot funkcijsko relacijo med A in B, torej kot
  podmnožico A × B

* kvocientna množica A/R je množica ekvivalenčnih razredov, ekvivalenčni razredi so spet
  množice

Ali je možno vse matematične objekte predstaviti z množicami? Da!

Urejeni pari: par (x, y) lahko predstavimo z množico {{x}, {x,y}}.

Elemente vsote A + B kodiramo takole:

  ι₁(x) = (x, 0) = {{x}, {x,∅}}
  ι₂(x) = (x, 1) = {{x}, {x,{∅}}}

Naravna števila: na množicah definiramo operacijo naslednik: x⁺ := x ∪ {x}. Naravna števila
nato kodiramo tako, da za ničlo vzamemo ∅ in uporabljamo operacijo naslednik:

  0 = ∅
  1 = ∅⁺ = {0} = {∅}
  2 = 1⁺ = {0, 1} = {∅, {∅}}
  3 = 2⁺ = {0, 1, 2} = {∅, {∅}, {∅, {∅}}}
  4 = 3⁺ = {0, 1, 2, 3} = {∅, {∅}, {∅, {∅}}, {∅, {∅}, {∅, {∅}}}}
  ...

Cela števila: Z = (N × N)/∼, kjer je (a,b) ∼ (c,d) ⇔ a + d = c + b.

Racionalna števila: Q = (Z × {n ∈ N | n > 0})/≈, kjer je (a,m) ≈ (b,n) ⇔ a n = b m.

Realna števila: realno število je Dedekindov rez, torej podmnožica Q.

In tako naprej. Ne pravimo, da je kodiranje vseh matematičnih objektov z množicami vedno
dobra ideja, vendar pa je dejstvo, da je to možno, pomembno spoznanje osnov matematike. Iz
njega na primer sledi tole: če je teorija množic neprotislovna, potem je neprotislovna
tudi vsa matematika, ki jo lahko kodiramo z množicami (torej več ali manj vsa običajna
matematika).

### Kumulativna hierahija

Če lahko vse matematične objekte kodiramo z množicami, potem lahko na razred vseh množic
Set gledamo kot na celotni matematični svet. Razred Set ima zanimivo strukturo, ki ji
pravimo *kumulativna hierarhija*. Namreč, s pomočjo aksiomov, ki jih bomo spoznali
kasneje, lahko tvorimo vse množice iz ∅ z oparacijama potenčna množica in unija. Postopek
je *transfiniten*, kar pomeni, da se nikoli ne konča in da po svoje številu presega moč vsake množice.

V₀ = ∅
V₁ = P(V₀) = {∅}
V₂ = P(V₁} = {∅, {∅}}
V₃ = P(V₂) = {∅, {∅}, {{∅}}, {∅, {∅}}}
...
V_ω = ⋃ {Vᵢ | i < ω}
V_(ω+1) = P(V_ω)
V_(ω+2) = P(V_(ω+1))
...
V_(ω + ω) = ⋃ {Vᵢ | i < ω + ω)}
...

Stopnje konstrukcija indeksiramo s t.i. ordinalnimi števili.

## Aksiomi teorije množic

Zermelo-Fraenkelovi aksiomi teorije množic:

1. Ekstenzionalnost: množici A in B, ki imata iste elemente, sta enaki

2. Neurejeni par: za vsak x in y je {x, y} množica, ki vsebuje natanko x in y:

   ∀ x y z . z ∈ {x, y} ⇔ z = x ∨ z = y

   Okrajšava: {x} = {x, x}.

3. Unija: za vsako množico A je ⋃ A množica, ki vsebuje natanko vse elemente množic iz A

   ∀ A x . x ∈ ⋃ A ⇔ ∃ B ∈ A . x ∈ B

4. Prazna množica: množica ∅ nima elementa

   ∀ x . x ∉ ∅

5. Neskončna množica: obstaja množica, ki vsebuje ∅ in je zaprta za operacijo naslednik
   (x⁺ = x ∪ {x}).

   ∃ A . ∅ ∈ A ∧ ∀ x ∈ A . x⁺ ∈ A

6. Podmnožica: za vsako množico A in formulo φ je {x ∈ A | φ(x)} množica, ki vsebuje
   natanko vse element iz A, ki zadoščajo φ.

7. Potenčna množica: za vsako množico A je P(A) množica, ki vsebuje natanko vse njene podmnožice

8. Zamenjava: če je A množica in f : A → Set preslikava, je razred

   { y ∈ V | ∃ x ∈ A . y = f(x) }

   množica.

9. Dobra osnovanost: relacija ∈ je dobro osnovana.

10. Aksiom izbire: vsaka družina nepraznih množic ima funkcijo izbire

## Aksiom izbire

**Definicija:** *Veriga* v delni urejenosti (P, ≤) je taka podmnožica V ⊆ P, ki je z ≤
linearno urejena, kar pomeni ∀ x y ∈ V . x ≤ y ∨ y ≤ x.

Primeri:

* Če je (P, ≤) linearno urejena, je vsaka podmnožica veriga

* V (P(Q), ⊆) imamo neštevno verigo

    V = {S ∈ P(Q) | S je spodnja množica}

  Množica S ⊆ Q je spodnja, če velja ∀ x y ∈ Q . x ≤ y ∧ y ∈ Q ⇒ x ∈ Q.

**Zornova lemma:** Če ima v delni urejenosti (P, ≤) vsaka veriga zgornjo mejo, potem ima P
maksimalni element.

Dokaz: dokaz se naslanja na aksiom izbire in Bourbaki-Wittov izrek o negibnih točkah (glej
spodaj). Naj bo C množica vseh verig v P. Uredimo jo z ⊆. Na njej definiramo preslikavo
f : C → C, ki razširi verigo, če ni maksimalna, sicer je ne spremeni (tu uporabimo
izbiro):

* Če je V ∈ C maksimalna veriga v P (glede na ⊆), definiramo f(V) := V.
* Če V ∈ C ni maksimalna veriga v P, potem obstaja tak x ∈ P \ V, da je C ∪ {x} spet veriga.
  V tem primeru *izberemo* tak x in definiramo f(V) := V ∪ {x}.

Po izreku Bourbaki-Witt ima f negibno točko V ∈ C. Taka točka je maksimalna veriga V, saj
bi sicer veljalo, da je V = f(V) = V ∪ {x} za neki x ∉ V, kar ni možno. Naj bo x zgornja
meja za verigo V. Trdimo, da je x maksimalni element v P: denimo, da je x ≤ y za y ∈ P. Če
bi veljalo x ≠ y, bi lahko V razširili na večjo verigo V ∪ {y}. Res, V ∪ {y} je spet
veriga, ker za vsak z ∈ V velja z ≤ x leq y. To pa ni možno, saj je V maksimalna veriga.
Torej je x = y in x je res maksimalni element. □

**Definicija:** Naj bo (P, ≤) delna ureditev. Preslikava f : P → P je **progresivna**, ko
velja x ≤ f(x) za vsak x ∈ P.

*Opomba:* progresivna preslikav ni nujno monotona (poiščite protiprimer!).

Izrek (Bourbaki-Witt): Naj bo (P, ≤) neprazna delna ureditev, v kateri ima vsaka veriga
zgornjo mejo in f : P → P progresivna preslikava. Tedaj ima f negibno točko: to je tak x ∈
P, da velja f(x) = x.

Dokaz: opuščen.

Izrek: V teoriji množic *brez* aksioma izbire so naslednje izjave ekvivalentne:

1. Aksiom izbire
2. Zornova lema
3. Princip dobre urejenosti: vsaka množica ima dobro ureditev

Dokaz:

(1) ⇒ (2) Glej Zornovo lemo.

(2) ⇒ (3) Skica dokaza: naj bo A poljubna množica. Naj bo

   P = { (B, R) | B ⊆ A in R ⊆ B × B in R je dobra ureditev B }.

Elementi P so torej dobre ureditve podmnožic množice A. Množico P uredimo z relacijo

  (B,R) ≼ (C,Q) ⇔ B ⊆ C ∧ R ⊆ Q.

Tako dobimo delno ureditev. Trdimo, da imajo verige v P zgornje meje: če je V ⊆ P veriga dobro urejenih podmnožic A, je njena zgornja meja kar unija po komponentah

  (⋃ {B | (B, R) ∈ V}, ⋃ {R | (B, R) ∈ V})

Seveda je treba preveriti, da je to spet dobra ureditev. Po Zornovi lemi obstaja maksimalni element v P, torej neka B ⊆ A in dobra ureditev R ⊆ B. Trdimo, da je B = A. Če bi imeli x ∈ B \ A, bi lahko razširili (B,R) na večjo dobro ureditev tako, da bi dodali x na konec B:

  (B ∪ {x}, R')

  y R' z ⇔ z = x ∧ (y,z) ∈ R

To ni možno, jer je (B,R) maksimalna ureditev. Torej je res A = B in našli so dobro ureditev A.

(3) ⇒ (1) Naj bo A : I → Set družina nepraznih množic. Naj bo ≺ dobra ureditev na uniji ⋃
{Aᵢ | i ∈ I}. Ker so vse množice Aᵢ neprazne, ima vsaka od njih prvi element glede na ≺. Torej lahko definiramo funkcijo izbire f s predpisom f(i) = prvi element Aᵢ. □

**Izrek:** Vsak vektorski prostor ima vektorsko bazo.

Dokaz: Naj bo L vektorski prostor. Definiramo množico

   P = { B ⊆ L | B je linearno neodvisna }.

Množico P delno uredimo z relacijo ⊆. Trdimo, da imajo verige v P zgornje meje: zgornja
meja verige V ⊆ P, je kar njena unija ⋃_(B ∈ V) B. Seveda je treba preveriti, da je unija
verige linearno neodvisnih množic spet linearno neodvisna (vaja). Po Zornovi lemi obstaja
maksimalni element v P, torej maksimalna linearno neodvisna množica B v L. To pa je seveda
vektorksa baza za L. □
