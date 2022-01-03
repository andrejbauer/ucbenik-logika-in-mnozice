open import Relation.Binary.PropositionalEquality

module Nat where

  data N : Set where
    Z : N      -- nič
    S : N → N  -- naslednik (S = successor)

  infixl 5 _+_

  _+_ : N → N → N
  m + Z = m
  m + S n = S (m + n)

  lemma-1 : ∀ m → m ≡ Z + m
  lemma-1 Z = refl
  lemma-1 (S m) = cong S (lemma-1 m)

  lemma-2 : ∀ a b → S (a + b) ≡ S a + b
  lemma-2 a Z = refl
  lemma-2 a (S b) = cong S (lemma-2 a b)

  comm-+ : ∀ m n → m + n ≡ n + m
  comm-+ m Z = lemma-1 m
  comm-+ m (S n) = trans (cong S (comm-+ m n)) (lemma-2 n m)
