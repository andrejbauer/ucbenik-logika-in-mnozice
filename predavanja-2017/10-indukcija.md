# Dobre ureditve

Indukcija na naravnih števil ima več oblik. Osnovna je ta, ki smo jo podali z aksiomov. A
z njo lahko dokažemo tudi naslednjo različico:

  ∀ S ∈ P(N) . (∀ m ∈ N . (∀ k ∈ N . k < m ⇒ k ∈ S) ⇒ m ∈ S) ⇒ S = N               (**)

Z besedami to povemo takole.

  "Če ima S ⊆ N lastnost

     Za vsak m ∈ N, če so vsi predhodniki m v S, potem je tudi m v S

   potem je S = N."

Denimo, da S res ima dano lastnost. Ali je 0 ∈ S? Da, ker za vse predhodnike 0 velja, da
so S (saj jih ni). Ali je 1 ∈ S? Da, saj za vse predhodnike 1 velja, da so v S. Ali je 2 ∈
S? Da, saj za vse predhodnike 2 velja, da so v S.

Zgornja različica indukcija na N ne omenja naslednika, temveč le relacijo <.
Relacija < je stroga linearna urejenost:

**Definicija:** Relacija R ⊆ A × A je *stroga urejenost*, če je

1. irefleksivna: ∀ x ∈ A . ¬ (x R x)
2. tranzitivna: ∀ x, y, z ∈ A . x R y ∧ y R z ⇒ x R z

Stroga urejenost je *linearna*, če je tudi

3. sovisna: ∀ x, y ∈ A . x ≠ y ⇒ (x R y) ∨ (y R x).

Za stroge urejenosti uporabljamo simbole <, ⊂, ≺, ⊏.

**Definicija:** Relacija R ⊆ A × A je *dobro osnovana*, če velja:

   ∀ S ∈ P(A) . (∀ y ∈ A . (∀ x ∈ A . x R y ⇒ x ∈ S) ⇒ y ∈ S) ⇒ S = A.           (+)

Relacija je *dobra ureditev*, če je dobro osnovana in stroga linearna ureditev.

Množici S ⊆ A, ki zadošča pogoju

   ∀ y ∈ A . (∀ x ∈ A . x R y ⇒ x ∈ S) ⇒ y ∈ S

pravimo *R-progresivna* množica.

Kaj smo pravzaprav naredili: opazili smo, da ima relacija < na N pomembno lastnost (**).
Zanima nas, ali imajo tudi druge relacije to lastnost, saj nam bodo take relacije
omogočile neke vrste posplošen princip indukcije. Z definicijo smo dali relacijam, ki nas
zanimajo, ime. Nimamo pa še nobenega primer, razen < na N.

Za dano strogo urejenost < definiramo pripadajočo delno urejenost ≤ s predpisom

  x ≤ y  ⇔  x = y ∨ x ≤ y.

V obratno smer, delna urejenost ⊑ določa strogo urejenost ⊏, definirano s predpisom

  a ⊏ b  ⇔  a ≠ b ∧ a ⊑ b.

Na vajah boste preverili, da res velja

* če je < stroga urejenost, potem je ≤ stroga urejenost
* če je ⊑ delna urejenost, potem je ⊏ stroga urejenost.

**Lema:** Denimo, da je < stroga urejenost na neprazni množici B. Če B nima ≤-minimalnega
elementa, potem ima padajočo verigo: to je zaporedje b : N → B, da velja b(i+1) < b(i) za
vse i ∈ N.

Dokaz.

Denimo, da B nima minimalnega elementa, torej

   ¬ ∃ x ∈ B . ∀ y ∈ B . y ≤ x ⇒ y = x.

To je ekvivalentno

   ∀ x ∈ B . ∃ y ∈ B . y ≤ x ∧ y ≠ x

kar je ekvivalentno

   ∀ x ∈ B . ∃ y ∈ B . y < x.               (†)

Padajočo verigo b : N → B definiramo z zaporedjem izbir: ker je B neprazna, lahko izberemo
neki element b(0) ∈ B. Denimo, da smo za neki i ∈ N že izbrali elemente b(0), ..., b(i)
tako, da velja

  b(i) < b(i-1) < ... < b(1) < b(0).

Ker B nima minimalnega elementa, b(i) ni minimalni, torej po (†) obstaja tak y ∈ B, da je
y < b(i). Torej lahko izberemo b(i+1) ∈ B, da velja b(i+1) < b(i). □


**Izrek:** Naj bo ⊏ stroga urejenost na A. Tedaj so ekvivalentne naslednje izjave:

1. ⊏ je dobro osnovana
2. vsaka *neprazna* S ⊆ A ima ⊑-minimalni element
3. A nima ⊏-padajoče verige.

*Dokaz.*

(1) ⇒ (2)  Denimo da je ⊏ dobro osnovana in S ⊆ A neprazna množica. Naj bo

  M := { m ∈ S | m je ⊑-minimalni element S }.

Dokazujemo, da je M neprazna množica. V ta namen definiramo

  T := { x ∈ A | (∃ y ∈ S . y ⊏ x) ⇒ ∃ m ∈ M . m ⊏ x }.

Trdimo, da je T progresivna. Denimo, da je v ∈ A in da za vsak u ∈ A velja u ⊏ v ⇒ u ∈ T.
Dokazati želimo v ∈ T. Denimo torej, da obstaja y ∈ S, za katerega je y ⊏ v.
Tedaj je y ∈ T. Obravnavamo dva primera:

* če ∃ z ∈ S . z ⊏ y: tedaj obstaja m ∈ M, da je m ⊏ y ⊏ v, torej m ⊏ v.
* če ¬ ∃ z ∈ S . z ⊏ y: tedaj je y ∈ M, torej vzamemo m := y in imamo m ⊏ v.

Ker je ⊏ dobro osnovana, je T = A. Ker je S neprazna, obstaja t ∈ S. Obravnavamo dva
primera:

* če ∃ z ∈ S. z ⊏ t: ker je t ∈ T, obstaja m ∈ M, da je m ⊏ t. Torej je M neprazna.
* če ¬ ∃ z ∈ S. z ⊏ t: tedaj je t ∈ M. Torej je M neprazna.

(2) ⇒ (3) Denimo, da je a : N → A padajoča veriga. Tedaj slika {a(n) | n ∈ N} ne bi imela
minimalnega elementa, v nasprotju z (2).

(3) ⇒ (1) Denimo, da je S ⊆ A progresivna.

Trdimo, da množica C := A \ S nima minimalnega elementa. Če bi bil c ∈ C minimalni v C,
bi to pomenilo

  ∀ x ∈ A . x ⊏ c ⇒ x ∉ C,

kar je ekvivalentno

  ∀ x ∈ A . x ⊏ c ⇒ x ∈ S.

Ker je S progresivna, od tod sledi c ∈ S, kar ni mogoče.

Dokazati moramo, da je C prazna. Če ne bi bila, bi lahko uporabili lemo in dobili padajočo
verigo v A, kar je v nasprotju s (3).


**Izrek:** Naj bo ⊏ stroga urejenost na A. Tedaj so ekvivalentne naslednje izjave:

1. ⊏ je dobro urejena
2. vsaka *neprazna* množica S v A ima ⊏-prvi element: to je tak x ∈ S, da velja
   ∀ y ∈ S . x ≠ y ⇒ x ⊏ y.
3. A nima ⊏-padajoče verige in ⊏ je linearna.

Dokaz je podoben dokazu prejšnjega izreka. Poskusite ga dokazati sami tako, da predelate
dokaz prejšnjega izreka.
