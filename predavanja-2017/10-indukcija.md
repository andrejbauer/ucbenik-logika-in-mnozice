# Od zadnjič

Faktorizacija preslikave f : A → B na kompozitum f = m ∘ b ∘ e, kjer je
m mono, b izo in e epi.

Aksiom izbire in obstoj prereza za kvocientno preslikavo.

# Indukcija na naravnih številih.

## Peanovi aksiomi

Naravna števila tvorijo *strukturo* (N, 0, ⁺, +, ×):

* N je množica
* 0 ∈ N je konstanta
* ⁺ : N → N je eniška operacija (naslednik)
* + : N × N → N in × : N × N → N sta dvojiški operaciji

Veljajo naslednji aksiomi:

* Aksiomi za naslednik:

   ∀ n ∈ N . n⁺ ≠ 0                        (1)
   ∀ n, m ∈ N . n⁺ = m⁺ ⇒ n = m            (2)

* Aksiomi za seštevanje:

   ∀ n ∈ N . n + 0 = n                     (3)
   ∀ n, m ∈ N . n + m⁺ = (n + m)⁺          (4)

* Aksiomi za množenje:

   ∀ n ∈ N . n × 0 = 0                     (5)
   ∀ n, m ∈ N . n × m⁺ = n + n × m         (6)

* Princip indukcije: za vsako izjavo φ(n), kjer je n ∈ N, velja

      φ(0) ∧ (∀ k ∈ N . φ(k) ⇒ φ(k⁺)) ⇒ ∀ n ∈ N . φ(n)       (7)

Princip indukcije lahko povemo tudi z množicami:

    ∀ S ∈ P(N) . 0 ∈ N ∧ (∀ k ∈ N . k ∈ S ⇒ k⁺ ∈ N) ⇒ S = N

Kako vemo, da obstaja taka struktura? Dosedanji aksiomi nam tega ne zagotavljajo.

    Aksiom: obstaja struktura (N, 0, ⁺, +, ×), ki zadošča Peanovim aksiomom.

To je prvi aksiom, ki zagotavlja obstoj nesknočne množice.

S Peanovimi aksiomi lahko dokažemo – in moramo dokazati! – vse lastnosti naravnih števil.
Na primer, komutativnost seštevanja je treba dokazati, prav tako dejstvo, da je 0 + n = n.

Izrek: 0 + n = n za vsak n ∈ N.

Dokaz: dokazujemo z indukcijo za izjavo

   φ(n)  je izjava   0 + n = n.

1. Preverimo 0 + 0 = 0:

   0 + 0 = 0    zaradi (3)

2. Preverimo ∀ k ∈ N . 0 + k = k ⇒ 0 + k⁺ = k⁺.

   Opomba: zaradi higiene smo uporabili vezano spremenljivko v k, ki je različna od
   spremenljivke n v izreku. V srednji šoli se dela nehigienično in se povsod uporablja n,
   potem pa so dijaki zmedeni, ko sredi dokaza vidijo, da smo "predpostavili to, kar
   dokazujemo". Vse študente pedagoške smeri prosim, da naj odslej pazijo na miselno
   higieno.

   Naj bo k ∈ N. Predpostavimo

        0 + k = k.                 (*)

   Računamo:

        0 + k⁺         po (4)
        = (0 + k)⁺     po (*)
        = k⁺.
QED.

Dokažimo še, da je dva in dva enako štiri:

    2 + 2 =              (defincija števila 2)
    (0⁺)⁺ + (0⁺)⁺ =      po (4)
    ((0⁺)⁺ + 0⁺)⁺ =      po (4)
    (((0⁺)⁺ + 0)⁺)⁺ =    po (3)
    (((0⁺)⁺)⁺)⁺ =        (definicija števila 4)
    4

# Indukcija po drugi strukturah

* Indukcija po dvojiških drevesih

* Indukcija po končnih seznamih

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

3. sovisna: ∀ x, y ∈ A . x ≠ y ⇒ x R y ∨ y R x

Za stroge urejenosti uporabljamo simbole <, ⊂, ≺, ⊏.

**Definicija:** Relacija R ⊆ A × A je *dobro osnovana*, če velja:

   ∀ S ∈ P(A) . (∀ y ∈ A . (∀ x ∈ A . x R y ⇒ x ∈ S) ⇒ y ∈ S) ⇒ S = N.           (+)

Relacija je *dobra ureditev*, če je dobro osnovana in stroga linearna ureditev.

Kaj smo pravzaprav naredili: opazili smo, da ima relacija < na N pomembno lastnost (**).
Zanima nas, ali imajo tudi druge relacije to lastnost, saj nam bodo take relacije
omogočile neke vrste posplošen princip indukcije. Z definicijo smo dali relacijam, ki nas zanimajo, ime. Nimamo pa še nobenega primer, razen < na N.

**Izrek:** Naj bo ⊏ stroga linearna urejenost na A. Tedaj so ekvivalentne naslednje izjave:

1. ⊏ je dobro osnovana
2. vsaka *neprazna* množica S v A ima ⊏-prvi element: to je tak x ∈ S, da velja
   ∀ y ∈ S . x ≠ y ⇒ x ⊏ y.
3. A nima ⊏-padajoče verige.

*Dokaz.*

(1) ⇒ (2) Dokažimo ekvivalentno izjavo ¬(2) ⇒ ¬(1). Denimo, da bi imeli neprazno S ⊆ A brez prvega elementa. Za vsak y ∈ S torej obstaja tak x ∈ S, da bi veljalo x ≠ y in ¬ (y ⊏ x). Ker je ⊏ sovisna, od tod sledi, da za vsak y ∈ S obstaja x ∈ S, da velja x ⊏ y. Trdimo, da ∅ zadošča pogoju iz dobre osnovanosti:

  ∀ y ∈ A . (∀ x ∈ A . x ⊏ y ⇒ x ∈ ∅) ⇒ y ∈ ∅
  ∀ y ∈ A . (∀ x ∈ A . x ⊏ y ⇒ ⊥) ⇒ ⊥
  ∀ y ∈ A . ¬ (∀ x ∈ A . ¬ (x ⊏ y))
  ∀ y ∈ A . ∃ x ∈ A . ¬ ¬ (x ⊏ y)
  ∀ y ∈ A . ∃ x ∈ A . x ⊏ y

To pa smo dokazali. Če bi bila ⊏ dobro osnovana, bi moralo veljati A = ∅, kar po
predpostavi ni res.

(2) ⇒ (3) Najprej povejmo, kaj je padajoča veriga. To je tako zaporedje a : N → A, da velja
a(n+1) < a(n) za vse n ∈ N, t.j.:

   ... < a(3) < a(2) < a(1) < a(0)

Spet dokažimo ekvivalentno izjavo ¬(3) ⇒ ¬(2). Denimo, da je a : N → A padajoča veriga.
Tedaj je slika S = a_*(N) neprazna množica, ki nima ⊏-prvega elementa.

(3) ⇒ (2) Denimo, da ⊏ nima padajoče verige. Dokažimo (2) s protislovjem. Če bi imeli neprazno S ⊆ A brez prvega elementa, bi upoštevajoč linearnost sledilo: ∀ x ∈ S ∃ y ∈ S . y < x. Od tod pa bi lahko z uporabo aksioma izbire dobili padajočo verigo.

(2) ⇒ (1) Denimo, da ima vsak neprazna množica prvi element. Denimo, da S ⊆ N zadošča pogoju

   ∀ y ∈ A . (∀ x ∈ A . x < y ⇒ x ∈ S) ⇒ y ∈ S            (*)

S protislovjem dokažimo S = A. Denimo, da bi imeli x ∈ N \ S. Potem bi obstajal prvi element
množice N \ S, a ta bi bil zaradi lastnosti element S.

