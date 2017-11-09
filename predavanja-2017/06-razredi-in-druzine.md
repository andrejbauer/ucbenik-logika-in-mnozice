# Razredi

Ali obstaja množica vseh množic V? Ne, kot je pokazal Rusellovo protislovje

  R = {A ∈ V | A ∉ A}.

Sedaj lahko dokažemo, da veja R ∈ R in R ∉ R, torej dokažemo ⊥:

1. Dokažemo R ∉ R: če velja R ∈ R, potem po definiciji R velja R ∉ R, kar je protislovje.

2. Dokažemo R ∈ R: dokazujemo s protislovjem. Denimo, da bi veljalo R ∉ R. Tedaj bi po
   definiciji R veljalo tudi R ∈ R, kar je protislovje.

Ena možnih rešitev: nekatere "skupke" proglasimo za razrede, to so tisti skupki, ki so
"preveliki", da bi bili množice.

**Razred** je nova vrsta konstrukcije. Če imamo izjavo p(x), kjer je x množica, lahko
definiramo razred

  { x | p(x) }

Razredi imajo elemente, tako kot množice. Osnovno pravilo za razrede je:

  a ∈ {x | p(x)} ⇔ p(a)

Nekateri razredi so enaki množicam. Pravimo, da je {A | p(A)} je enak množici S, če velja

  ∀ x . p(x) ⇔ x ∈ S.

Razred, ki ni enak nobeni množici, je *pravi razred*. Primeri pravih razredov:

* V = {x | ⊤} je pravi razred, označimo ga tudi s Set
* R = {x | x ∉ x} je pravi razred
* pravi razred vseh enojcev: { A | ∃! y ∈ A . ⊤ }
* pravi razred vseh vektorskih prostorov

Do sedaj smo dopuščali možnost, da so lahko elementi množice poljubni matematični objekti.
To sedaj omejimo in opredelimo bolj natančno:

  Množice in razredi smejo vsebovati osnovne matematične objekte (denimo števila) in
  množice, ne smejo pa vsebovati razredov.

Torej je prepovedano tvoriti enojec {V}.

# Družine množic

Pogosto imamo opravka z zbirko množic. Če je zbirka končna, lahko množice preprosto
naštejemo in vsako od njih poimenujemo

   A = ...
   B = ...
   C = ...

Če je množic neskončno, jih morda lahko oštevilčimo:

   A_1 = ...
   A_2 = ...
   A_3 = ...
   A_4 = ...
   ...

A tu se zadeve še ne končajo, saj lahko v splošnem obravnavamo poljubno zbirko množic.
Takim zbirkam pravimo *družine množic*. Družina množic je *indeksirana* z elementi
neke množice I, ki ji pravimo *indeksna množica*. Za vsak i ∈ I imamo množico

   A_i = ...

To lahko izrazimo tudi takole:

> **Definicija:** *Družina množic* je preslikava I → Set. Množici I pravimo *indeksna*
> množica.

Primeri družin:

1. Končno zbirko množic lahko indeksiramo s končno množico. Denimo, da imamo
   množice A, B, C, D, E. Iz njih lahko tvorimo družino S

   I = {1, 2, 3, 4, 5}
   S_1 = A, S_2 = B, S_3 = C, S_4 = D, S_5 = E.

2. Množice v družini se lahko ponavljajo. V prejšnjem primeru bi lahko na primer
   imeli A = C in bi tako veljalo S_1 = S_3. Skrajni primer je *konstantna* družina,
   v kateri so vse množice med seboj enake.

3. *Prazna* družina je družina množic, ki je indeksirana ∅.

4. Prazno družino moramo ločiti od družine praznih množic

     I → Set
     i ↦ ∅

5. Neprazna družina je družina indeksirana z neprazno množico.
   Družina nepraznih množic je družina, v kateri so vse množice neprazne:

      * Prazna družina je družina nepraznih množic.
      * Družina praznih množic je lahko prazna družina (ko je indeksna množica ∅)
      * Družina praznih množic je lahko neprazna družina (ko je indeksna množica nerazna).

## Konstrukcije in operacije z družinami množic

Operacije ×, +, ∩ in ∪ lahko posplošimo tako, da namesto z dvema množicama delujejo na
poljubnem številu množic. V ta namen uporabimo družine množic.

### Kartezični produkt

Denimo, da imam družino množic A : I → Set.

*Funkcija izbire f* za A je prirejanje, ki vsakemu indeksu i ∈ I priredi neki element
f(i) ∈ A_i iz A_i.

Primer: funkcija izbire za družino

   A : N → Set
   A_n = { x ∈ R | 0 < x < 2^(-n) }

je na primer f(n) = 2^(-n - 1) ali pa f(n) = 2^(-n) / 3.

Kartezični produkt družine A : I → Set je množica

  ∏_(i ∈ I) A_i

katere elementi so funkcije izbire za A. To je nova konstrukcija množice.

Za vsak j ∈ I imamo *j-to projekcijo*

  π_j :  ∏_(i ∈ I) A_i → A_j
  π_j :  f ↦ f(j)

Običajni kartezični produkt dveh množic je poseben primer produkta množic, namreč družine
množic, ki je indeksirana z I = {1, 2}. Natančneje, velja

  A × B ≅ ∏_(i ∈ {1, 2}) C_i

  kjer je C_1 = A in C_2 = B.

Tudi eksponentna množica je poseben primer produkta množic, saj velja

  B^A ≅ ∏_(a ∈ A) B

Na desni imamo produkt konstantne družine množic

  A → Set
  a ↦ B

### Koprodukt ali vsota množic

Vsoto množic posplošimo na koprodukt družine. Za dano družino A : I → Set tvorimo množico

  ∐_(i ∈ I) A_i

Elementi koprodukta so oblike

  ι_k(a)

kjer je k ∈ I in a ∈ A_k. Preslikavi

  ι_k : A_k → ∐_(i ∈ I) A_i

pravimo *k-ta injekcija*.

Poseben primer koprodukta je vsota A + B, saj velja

  A + B ≅ ∐_(k ∈ {1, 2}) C_k

kjer je

  C : {1, 2} → Set
  C_1 = A
  C_2 = B.

Kartezični produkt A × B je tudi poseben primer koprodukta, saj velja

  A × B ≅ ∐_{a ∈ A} B

Na desni imamo tokrat koprodukt konstantne družine množic

  A → Set
  a ↦ B

### Presek in unija družine

Presek in unija družine A : I → Set je definirana takole:

  ⋃_(i ∈ I) A_i = { x | ∃ i ∈ I . x ∈ A_i }

  ⋂_(i ∈ I) A_i = { x | ∀ i ∈ I . x ∈ A_i }

Pozor! Na desni strani imamo razred! Res se lahko zgodi, da dobimo pravi razred, denimo
kot presek prazne družine:

  ⋂_(i ∈ ∅) A_i = { x | ∀ i ∈ ∅ . x ∈ A_i } = { x | ⊤ } = V

Kdaj pa dobimo množico? Presek neprazne družine je vedno množica. Res, če imamo
k ∈ I, potem velja

  ⋂_(i ∈ ∅) A_i = { x ∈ A_k | ∀ i ∈ ∅ . x ∈ A_i }

Sedaj na desni ne stoji več razred, ampak podmnožica množice A_k.

Kaj pa unija družine množic? Ali je množica, ali bi lahko dobili pravi razred, denimo V,
kot unijo družine množic? Izkaže se, da za to potrebujemo aksiom:

  Aksiom: Unija družine množic je množica.

