## Uvod

* predavatelj in asistenta, govorilne ure
* spletna učilnica
* video posnetki
* izpitni režim, kolokviji
* učbenik v nastajanju

## Osnovno o množicah

* Množica kot skupek elementov, relacija ∈
* Ekstenzionalnost množic
* Končne množice {a, b, ..., z}
* Vrstni red in ponavljanje elementov nista pomembna
* Zapisi, ki vsebujejo "..."
* Prazna množica ∅ = {}
* Standardni enojec 1 = {()}
* Nekatere druge množice že poznamo: N, R

## Preslikava

* Vsaka preslikava ima domeno, kodomeno in prirejanje elementov
* Prirejanje mora biti *celovito* in *enolično*
* Pozor, celovitost *ni* surjektivnost in enoličnost *ni* injektivnost
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
* Podamo jo s funkcijskim pravilom (a,b) ↦ …

## Vsota

* Vsota množic A + B, vsebuje elemente oblike ι₁(a) za a ∈ A ter ι₂(b) za b ∈ B
* Primer {0,1} + {0,1,2}
* Injekciji ι₁ in ι₂ kot preslikavi
* Kako podamo funkcijski predpis A + B → C

   1. Podamo primere z zavitim oklepajem

             / e₁(a), če z = ι₁(a)
        z ↦ |
             \ e₂(b), če z = ι₂(b)

   2. Podamo več posameznih predpisov:

        ι₁(a) ↦ ⋯
        ι₂(b) ↦ ⋯

Možno je pisati:

            / ι₁(a) ↦ ⋯
       x ↦ |
            \ ι₂(b) ↦ ⋯


## Eksponentna množica

Množica vseh funkcij iz A v B je eksponentna množica B^A.

Primer preslikave na eksponentni množici:

   ev : B^A × A → B

## Aritmetika množic

* Definicija izomorfizma
* Identiteta je izomorfizem
* Konkretni primer: N ≅ Z

### Aritmetična pravila

1.  A + ∅ ≅ A
2.  A + B ≅ B + A
3.  (A + B) + C ≅ A + (B + C)

4.  A × 1 ≅ A
5.  A × B ≅ B × A
6.  (A × B) × C ≅ A × (B × C)

7.  A × (B + C) ≅ A × B + A × C
8.  A × ∅ ≅ ∅

9.  A¹ ≅ A
10. 1ᴬ ≅ 1
11. A^∅ ≅ 1
12. ∅ᴬ ≅ ∅ če A ≠ ∅
13. A^(B × C) ≅ (A^B)^C
14. A^(B + C) ≅ A^B × A^C
15. (A × B)^C ≅ A^C × B^C

Naredimo: 5, 12, 13
