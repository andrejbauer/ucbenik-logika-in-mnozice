## Uvod

* predavatelj in asistenta, govorilne ure
* spletna učilnica
* video posnetki
* izpitni režim, kolokviji
* učbenik v nastajanju

## Osnovno o množicah

* Množica kot skupek elementov, relacija ∈
* Ekstenzionalnost množic
* Končne množice {a, b, .., z}
* Vrstni red in ponavljanje elementov nista pomembna
* Prazna množica ∅ = {}
* Standardni enojec 1 = {()}
* Nekatere druge množice že poznamo: N, R

## Preslikava

* Vsaka preslikava ima domeno, kodomeno in prirejanje elementov
* Pišemo X → Y, lahko poimenujemo f : X → Y
* Prirejanje lahko podamo s funkcijskim predpisom

    x ↦ ⋯
    f(x) := ⋯

* Simbol x je vezana spremenljivka, če jo preimenujemo, se predpis ne spremeni
* Aplikacija in substitucija
* Identiteta
* Kompozitum preslikav
* Preslikava ∅ → X
* Preslikava X → ∅

## Zmnožek ali kartezični produkt

* urejeni pari (x,y)
* Zmnožek A × B, elementi so urejeni pari
* Projekciji π₁ in π₂
* Računska pravila: π₁(x,y) = x, π₂(x,y) = y
* Ekstenzionalnost: za p, q ∈ A × B, če π₁(p) = π₁(q) in π₂(p) = π₂(q), potem p = q.

* Preslikava iz zmnožka f : A × B → C, pravimo da sprejme *dva* argumenta, ali en urejeni par.
* Podamo jo s funkcijskim pravilom f(a,b) = ⋯

## Vsota

* Vsota množic A + B, vsebuje elemente oblike ι₁(a) za a ∈ A ter ι₂(b) za b ∈ B
* Primer {0,1} + {0,1,2}
* Injekciji ι₁ in ι₂ kot preslikavi
* Kako definiramo preslikavo f : A → B

   f(z) = ⋯a⋯ , če z = ι₁(a)

Aritmetična pravila:

 1. A + ∅ ≅ A
 2. A + B ≅ B + A
 3. (A + B) + C ≅ A + (B + C)

 4. A × 1 ≅ A
 5. A × B ≅ B × A
 6. (A × B) × C ≅ A × (B × C)

 7. A × (B + C) ≅ A × B + A × C
 8. A × ∅ ≅ ∅

 9. A^∅ ≅ 1
10. A¹ ≅ A
11. ∅ᴬ ≅ ∅ če A ≠ ∅
12. A^(B × C) ≅ (A^B)^C
13. A^(B + C) ≅ A^B × A^C

Na predavanjih naredimo: 5, 3, 9, 10, 12

Pri 12: funkcijske predpise lahko gnezdimo!
