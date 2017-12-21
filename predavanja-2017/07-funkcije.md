### Od prejšnjih predavanj ostane še:

* koprodukt družine množic
* računski pravili za unije in preseke

# Slike in praslike

**Definicija:** Naj bo f : A → B preslikava:

1. **Praslika** podmnožice S ⊆ B je f^*(S) := { x ∈ A | f(x) ∈ S }.
2. **Slika** podmnožice T ⊆ A je f_*(T) := { y ∈ B | ∃ x ∈ A . f(x) = y }.

**Zaloga vrednosti* je slika domene, torej f_*(B).

Praslika f je preslikava f^* : P(B) → P(A).

Slika je preslikava f_* : P(A) → P(B).

Torej sta ^* in _* funkcionala višjega reda.

Naj bo f : A → B preslikava:

* praslike so monotone: če je S ⊆ T ⊆ A, potem je f_*(S) ⊆ f_*(T)
* slike so monotone: če je X ⊆ Y ⊆ B, potej je f^*(X) ⊆ f^*(Y).

**Izrek:** Naj bo f: A → B in S : I → P(B). Tedaj je

  f^* (⋃_{i ∈ I} S_i) = ⋃_{i ∈ I} f^*(S_i).
  f^* (⋂_{i ∈ I} S_i) = ⋂_{i ∈ I} f^*(S_i).

**Izrek:** Naj bo f: A → B in T : I → P(A). Tedaj je

  f_* (⋃_{i ∈ I} T_i = ⋃_{i ∈ I} f_*(T_i).
  f_* (∩_{i ∈ I} T_i) ⊆ ⋂_{i ∈ I} f_*(S_i).

Torej velja tudi

  f^*(S ∪ T) = f^*(S) ∪ f^*(T)
  f^*(S ∩ T) = f^*(S) ∩ f^*(T)

Poleg tega imamo za S ⊆ B

  f^*(Sᶜ) = (f^*(S))ᶜ.

## Osnovne lastnosti preslikav

**Definicija:** Preslikava f : A → B je

* *injektivna*, ko velja ∀ x y ∈ A . f(x) = f(y) ⇒ x = y
* *surjektivna*, ko velja ∀ y ∈ B . ∃ x ∈ A . f(x) = y
* *bijektivna*, ko je surjektivna in injektivna

**Definicija:** Preslikava f : A → B je

* *monomorfizem* (mono), ko jo lahko krajšamo na levi:
  ∀ A B ∈ Set ∀ g, h : C → A . f ∘ g = f ∘ h ⇒ g = h

* *epimorfizem* (epi), ko jo lahko krajšamo na desni:
  ∀ A B ∈ Set ∀ g, h : B → C . g ∘ f = h ∘ f ⇒ g = h

**Izrek:** Naj bosta f : A → B in g : B → C preslikavi.

1. Kompozicija monomorfizmov je monomorfizem.
2. Kompozicija epimorfizmom je epimorfizem.
3. Če je g ∘ f monomorfizem, je f monomorfizem.
4. Če je g ∘ f epimorfizem, je g epimorfizem.

**Izrek:** Za preslikavo f : A → B velja

1. f je monomorfizem ⇔ f je injektivna
2. f je epimorfizem ⇔ f je surjektivna
3. f je izomorfizem ⇔ f je bijektivna

Dokaz:

1. Če je f monomorfizem in f(x) = f(y), tedaj je
   (f ∘ (u ↦ x)) (*) = f(x) = f(y) = (f ∘ (u ↦ y)) (*), torej
   (u ↦ x) = (u ↦ y) torej x = y.

   Če je f injektivna in f ∘ g = f ∘ h, potem je za vsak x
   f(g(x)) = f(h(x)), torej g(x) = h(x) za vsak x, torej g = h.

2. Če je f epimorfizem: obravnavamo

     S = { z ∈ B | ∃ x ∈ A . f(x) = z }      zaloga vrednosti

   ter preslikavi χ_S : B → 2 in (y ↦ ⊤) : B → 2. Ker velja
   χ_S ∘ f = (y ↦ ⊤) ∘ f, sledi χ_S = (y ↦ ⊤), torej S = B,
   kar je surjektivnost.

   Če je f surjektivna in g ∘ f = h ∘ f: naj bo y ∈ B. Obstaja
   x ∈ A, da je f(x) = y. Torej je

     g(y) = g(f(x)) = h(f(x)) = h(y).

   Torej je g = h.

3. Če je f izomorfizem, potem

    * f je epi, ker je id_B = f ∘ f⁻¹ epi
    * f je mono, ker je id_A = f⁻¹ ∘ f mono

   Če je f bijektivna, potem je njen inverz f⁻¹ definiran s predpisom

    f(y) = ι x ∈ A . f(x) = y      "tisti x, ki ga f slika v y"

   Dokazati je treba ∃! x . f(x) = y:

   * ∃ x . f(x) = y je surjektivnost f
   * ∀ x₁ x₂ . f(x₁) = y ∧ f(x₂) = y ⇒ x₁ = x₂ sledi iz injektivnosti f

**Definicija:**
  Če sta f : A → B in g : B → A taki preslikava, da velja f ∘ g = id_B, pravimo:

  * f je **levi** inverz g
  * g je **desni** inverz f
  * g je prerez za f
  * f je retrakcija iz B na A

**Izrek:** Retrakcija je epimorfizem, prerez je monomorfizem.

**Izrek:** Vsak epimorfizem ima prerez.

**Aksiom izbire:** Kartezični produkt družine nepraznih množic je neprazen.
