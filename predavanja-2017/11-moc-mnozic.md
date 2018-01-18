# Aksiom izbire

## Odvisna izbira

V dokazu o karakterizaciji dobro osnovanih relacij smo uporabili

**Aksiom odvisne izbire:**
Naj bo A neprazna množica in R ⊆ A celovita relacija, t.j.,

  ∀ x ∈ A . ∃ y ∈ A . y R x.

Tedaj obstaja zaporedje a : N → A, da za vse n ∈ N velja a(n) R a(n+1).

## Aksiom izbire

Aksiom odvisne izbire sledi iz aksioma izbire (tega ne bomo dokazali):

**Aksiom izbire:** Vsaka družina nepraznih množic ima funkcijo izbire.

Povedano z drugimi besedami:

* formulacija AC: družina nepraznih množic ima funkcijo izbire
* vsaka surjekcija ima prerez ⇔ AC
* propaganda: https://www.youtube.com/watch?v=s86-Z-CbaHA

# Moč množic

## Končne množice

**Definicija:** *Standardna* končna množica z n elementi je

  [n] = {k ∈ N | k < n}

Torej:

  [0] = {}
  [1] = {0}
  [2] = {0, 1}
  [3] = {0, 1, 2}

**Definicija:** Množica je **končna**, če je izomorfna kaki standardni končni množici.

Velja naslednje (ne bomo dokazali): če je A ≅ [m] in A ≅ [n], je m = n. Torej za končno
množico A obstaja natanko en n ∈ N, da velja A ≅ [n]. Temu n pravimo **moč** množice A,
saj nam pove, koliko elementov ima A. Moč množice A označimo z |A|.

Zakoni za moč množic:

  |[n]| = n

  |A × B| = |A| × |B|

  |A + B| = |A| + |B|

  |B^A| = |B|^|A|

Pravilo vključitve/izključitve:

  |A ∪ B| = |A| + |B| - |A ∩ B|

  |A ∪ B ∪ C| = |A| + |B| + |C| - |A ∩ B| - |B ∩ C| - |C ∩ A| + |A ∩ B ∩ C|

In podobno za unijo štirih ali več množic.

## Neskončne množice in njihova moč

**Definicija:** Množica je **neskončna**, če ni končna.

**Izrek:** Množica A je neskončna natanko tedaj, ko obstaja injektivna preslikava N → A.

Dokaz:

(⇒) Denimo da A ni končna. Injektivno preslikavo e : N → A definiramo s pomočjo akisoma
odvisne izbire. Ker A ni izomorfna [0], ni prazna, torej obstaja e(0) ∈ A. Denimo, da smo
že definirali e kot injektivno preslikavo [n] → A. Tedaj jo lahko razširimo na injektivno
preslikavo e : [n+1] → A takole: ker e ni surjektivna (če bi bila, bi veljalo A ≅ [n]),
obstaja x ∈ A, ki ni v sliki e. Torej *izberemo* e(n) ∈ A, ki ni v sliki. Tako dobimo e :
N → A, ki je injektivna.

(⇐) Denimo, da obstaja injektivna preslikava e : N → A. Če bi veljalo A ≅ [n], bi imeli
izomorfizem f : A → [n]. Tedaj bi bil f ∘ e : N → [n] injektivna preslikava, ta pa ne
obstaja (dokaz opustimo). □

Tudi neskončnim množicam želimo prirediti *moč*. Potrebujem taka "števila", da lahko vsaki
množici A priredimo "število" |A|, ki pove, koliko elementov ima. Za končne množice so to
kar naravna števila. Za splošne množice so to **kardinalna števila**. Zaenkrat še ne bomo
povedali natančno, kaj kardinalna števila so. Lahko pa jih primerjamo med sabo, ne da bi zares vedeli, kaj so!

**Definicija:** Naj bosta A in B poljubni množici. Pravimo:

1. A ima enako moč kot B, pišemo |A| = |B|, ko obstaja bijektivna preslikava A → B.
2. A ima moč manjšo ali enako B, pišemo |A| ≤ |B|, ko obstaja injektivna preslikava A → B.
3. A ima moč manjšo kot B, pišemo |A| < |B|, če velja |A| ≤ |B| in |A| ≠ |B|.

**Izrek:** |A| ≤ |B| ⇔ A = ∅ ali obstaja surjekcija B → A.

Dokaz:

(⇒) Denimo, da je f : A → B injektivna in A ≠ ∅. Torej obstaja neki x₀ ∈ A. Tedaj definiramo 
surjektivno preslikavo g : B → A takole:

  g(y) = x  ⇔  f(x) = y ali x = x₀.

(⇐) Denimo, da je A prazna ali obstaja surjekcija f : B → A. Če je A prazna, je edina
preslikava ∅ → B injektivna. Če je f : B → A surjektivna, ima prerez, ki je injektivna
preslikava. □

**Izrek (Cantor):** |A| < |P(A)|.

Dokaz:

Najprej dokažimo |A| ≤ |P(A)|. Iščemo injektivno preslikava f : A → P(A). Vzemimo f(x) = {x}.

Sedaj dokazujemo, da ne obstaja bijekcija A → P(A). Dokazali bomo, da ne obstaja
surjekcija A → P(A), kar zadostuje. Denimo, da je g : A → P(A) poljbuna preslikava.
Trdimo, da g ni surjekcija. Res, podmnožica

   S = {x ∈ A | x ∉ g(x) }

ni v sliki g. Če bi bila, bi za neki y ∈ A veljalo g(y) = S, a to bi vodilo v protislovje:

1. velja y ∉ S: če y ∈ S potem y ∉ g(y) = S po definiciji S.
2. velja ¬ (y ∉ S): če y ∉ S potem y ∉ g(y) = S. □

### Števne in neštevne množice

Moč množice N označimo z ℵ₀. (Zaenkrat še vedno ne vemo, kaj točno so kardinalna števila,
ℵ₀ je torej kardinalno število.)

**Definicija:** Množica A je *števna*, če velja velja |A| ≤ ℵ₀.

**Definicija:** Množica A je *neštevna*, če ni števna.

**Izrek:** Za vsako množico A so ekvivalentne naslednje izjave:

1. A je števna
2. obstaja injektivna preslikava A → A
3. A je prazna ali obstaja surjektivna preslikava N → A
4. obstaja surjektivna preslikava N → 1 + A
5. A je končna ali izmoforna N

**Izrek:** N × N ≅ N.

**Izrek:** Unija števne družine števnih množic je števna.

Dokaz:

Najprej obravnavajmo unijo družine A : N → Set, kjer je A_n števna za vse n ∈ N.
Tu uporabimo aksiom izbire, da dokažemo števnost unije. Za vsak n ∈ N obstaja
surjektivna preslikava N → A_n + 1. Po aksiomu izbire obstaja preslikava

   e : ∏_{n ∈ N} { f : N → A_n + 1 | f surjekcija }.

Definiramo e' : N × N → 1 + ⋃_n A_n:

   e'(n, k) = e(n)(k).

Trdimo, da je e' surjekcija na 1 + ⋃_n A_n.

Nato obravnavamo še unijo družine A : I → Set, kjer je I števna in A_i števna za vsak i ∈ I.
□

**Izrek** (Cantor-Schröder-Bernstein): Če obstajata injektivni preslikava A → B in B → A,
potem obstaja bijektivna preslikava A → B.

Dokaz:

(zapisati)

**Posledica:** Če |A| ≤ |B| in |B| ≤ |A|, potem |A| = |B|.

**Posledica** (zakon trihotomije): |A| < |B| ali |A| = |B| ali |B| < |A|.

