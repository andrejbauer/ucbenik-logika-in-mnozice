# Učbenik "Logika in množice"

Učbenik za predmet Logika in množice, 1. letnik matematike.

# Datoteke

* `ucbenik-lmn.tex` -- glavna datoteka

# Pregled snovi

## Matematični jezik

To poglavje je kratko in vsebuje splošen pregled, ne pa raznih tehničnih podrobnosti.

### Matematično besedilo

O matematičnih besedilih na splošno, kakšna besedila poznamo, kaj je sestavni del
matematičnega besedila.

* Vrste besedila, opozorimo, da so namenjene različnim bralcev in napisani za različne
  namene, pod različnimi pogoji:
   * članek
   * učbenik
   * zapiski v zvezku
   * predavanje
   * blogi in ostale spletne strani

* Sestavni deli besedila, brez podrobnih razlag, morda primeri, tu samo opozorimo na
  raznovrstnost konceptov.
   * spremno besedilo
   * konstrukcije
   * računi
   * izjave (sinonimi, kako jih številčimo)
   * dokazi (kako so označeni)
   * definicije
   * zgledi
   * naloge in rešitve (namigi)
   * formule in izrazi (kako jih številčimo in kako se nanje sklicujemo)
   * citati in reference

* Matematično besedilo stremi k _idealu_, to je popolno natančnosti in nedvoumnosti, z
  vsemi podrobnostmi popolnoma razloženimi in preverjenimi. Ta ideal v manjši ali večji
  meri dosežemo v praksi.

* Idealno matematično besedilo je _formalno_ in ga v praksi dosežemo le s pomočjo
  računalnikov.

* Tradicija, navade in nepisani družbeni dogovori so pristoni v matematiki, tako kot
  povsod drugje v človeški družbi. Tega se moramo zavedati in upoštevati, da so nekatere
  tradicije preživete, zaradi drugih še vedno uporabljamo neprimerno simbole itd. Kljub
  temu, da je matematični jezik zelo poenoten, je še vedno raznolik in se lahko menja celo
  znotraj ene fakultete (seveda se trudimo, da bi bilo tega vse manj). Ta raznolikost
  odraža raznolikost pogledov na to kaj matematika je in kako deluje, zato jo jemljimo kot
  _bogastvo_ in ne samo nadelžno nedoslednost.

* Ker je namen tega učbenika postaviti dobre osnove matematičnega izražanja, bomo bolj
  natančni kot večina matematikov v praksi. Začetnik namreč potrebuje tako natančnost,
  kasneje, ko razume stvari bolje, pa lahko ubere bližnjice, ki jih bolj izkušeni kolegi
  uporabljajo, ne da bi to sploh opazili. Sproti bomo opozarjali na take bližnjice in kje
  matematična praksa zaostaja v doslednosti in pravilnosti, h kateri bomo strmeli mi.

* Vedno mora biti jasno, ali govorimo o _matematični vsebini_ (na primer, kaj je delna
  urejenost) ali o _družbenem dogovoru_ (na primer, da za delno urejenost običajno
  uporabljamo simbole, kot so ≤, ≼, ⊑ itd). V ta namen bi verjetno lahko uporabili
  vizualne pripomočke.

### Matematični zapis

* Pisave, uporaba črk iz različnih abeced
* Apostrofi, nadčrtaji, subskripti, supskripti
* Izrazi, oklepaji
* Izrazi kot sintaktična drevesa
* Razni simboli, kateri se uporabljajo za kaj (omenimo LaTeX)
* Diagrami in slike
* Ali se lahko zanašamo na slike?
* Infiksni operatorji: oklepaji, precedenca, asociativnost
* Ostali zapisi (ulomki, množice)
* Razlika med natančnim in nenatančnim zapisom
   * ne moremo se zanašati na `...`
   * napačna uporaba vezanih spremenljivk, recimo `f(x) ≡ 0` namesto `f ≡ 0` ali `∀ x . f(x) ≡ 0`

## Preproste množice

V učbeniku želim poudariti *enakovrednost* konstrukcij in dokazov, ter njihovo
prepletanje. Formalna logika deli matematiko na dve stopnji, logiko in množice, vendar je
praksa povsem drugačna. Matematik *konstruira* objekte in jih manipulira vsaj toliko kot
*dokazuje*. Ti dve aktivnosti se povsem prepletata. To pomeni, da je *teorija tipov* bolj
primeren formalizem, kot tradicionalna logika in množice. Ker pa ne želimo izvajati revolucije (vsaj ne takoj zdaj in v 1. letniku študija), tega seveda ne bomo tako povedali.

Matematik v praksi *nikoli* ne tvori množic z arbitrarnimi elementi. Množice vedno imajo
koherentno strukturo in elementi množice vedno kaj skupnega. To vodi v *strukturirano
teorijo množic*, ki je dosti bolj primerna in naravna za poučevanje, kot pa pojem
kumulativne hierarhije, ki ga poznamo iz formalne teorije množic. Zato predlagam, da
sledimo temu pogledu, kasneje pa predstavimo *tudi* kumulativno hierarhijo (vendar ne Zermel-Fraenkelove aksiome, ker obravnavajo razrede kot sintaktični meta-konstrukt).

Poleg tega ne bi začel z logiko, ampak s *preprostimi konstrukcijami*. Torej, najprej bomo
vadili, kako se konstruira objekte. Preprosta zaključena celota je bi-kartezično zaprta
struktura, torej 0, 1, +, ×, →. To nam da dovolj za "Tarski high-school arithmetic" na
nivoju množic. Da bomo imeli kaj dela, privzamemo še kake osnovne številske množice.

### Naivne množice

* množica kot poljubna zbirka objektov
* zapis množice s komprehenzijo `{x | φ(x)}` (na tem mestu se ne ubadamo preveč s tem, kaj je `φ`)
* primeri: končne množice z naštevanjem, neskončne množice, prazna množica
* množica vseh množic in Russellov paradoks
* delitev na *male* in *velike* množice, velikim pravimo *(pravi) razredi*, vsem skupaj pa
  *razredi*
* `V` kot razred vseh malih množic

### Stukturirane množice

* množice so zbirke elementov z enako strukturo (vendar bomo kasneje videli, da ni nujno
  tako, je pa to običajno)
* množica je podana s svojimi elementi, to se pravi, s pravili, kako se njene elemente
  konstruira, oz. kaj ti elementi so
* poleg tega povemo, kako lahko elemente *uporabimo* oz. *analiziramo* oz. *dekonstruiramo*.
* poznamo tudi *enačbe*, ki povejo, kako so konstrukcije in dekonstrukcije med seboj povezane

#### Osnovne množice

* prazna množica
* enojec
* nekatere druge množice, ki jih že poznamo (npr. naravna števila) in jih bomo bolj podrobno spoznali kasneje

#### Kartezični produkt A × B

Tu spoznamo urejene pare kot osnovno konstrukcijo, projekcije kot dekonstrukciji in potem
enačbe med njimi.

* notacija za projekcije `π₁` in `π₂`?
* omenimo ostale notacije: `fst` in `snd` v funkcijskem programiranju

#### Vsota množic A + B

Unije sploh ne omenjamo, gremo direktno na vsoto množic.

* notacija za injekcije `ι₁` in `ι₂`?
* omenimo ostale notacije?

#### Eksponentne množice Bᴬ ali A → B

Ta razdelek je pomemben, ker bomo v njem pojasnili pojem vezane sprememljivke in
substitucije.

* funkcija kot predpis
* domena in kodomena
* eksponentna množica
* funkcijski zapis ($\lambda$-abstrakcija)
* vezane spremenljivke in substitucija

### Računanje z množicami

Vezane spremenljivke in eksponentne množice bomo vadili tako, da bomo uvedli pojem
izomorfizma množic, nato pa lahko obdelamo izomorfizme, ki jih porodijo zakoni za
bi-kartezično zaprto kategorijo, recimo (A + B) × C ≡ A × C + B × C. Z nekaj sreče bomo
lahko prikazali dejstvo, da gre za enaka pravila kot v aritmetiki (in kasneje to
uporabili, ko bomo govorili o kardinalnosti).

Vadimo lahko tudi zapis funkcij danega tipa, recimo, (A → B → C) → (A → B) → A → C.

## Logika

V tem poglavju uvedemo veznike in kvantifikatroje in pojasnimo kako se z njim dela.
Izogibamo se preveč formalnemu pristopu. Na primer, pojem formalnega dokaza, če ga bomo
omenili, naj bo v posebnem razdelku, ločen od preostanka.

Resničnostne tabele se obravnavajo posebej in vsekakor kasneje, ko smo že povedali, kaj so
vezniki in kvantifikatorji. Namreč, resničnostne tabele *ne pojasnijo* pomena veznikov in
so nekoliko zavajujoče. Dejstvo, da lahko preverimo ekvivalenco A ⇒ B in ¬B ⇒ ¬A s pomočjo
resničnostnih tabel se zanaša na *izrek* (da je Boolova algebra {⊥,⊤} popolna za izjavni
račun) in ni del pojasnila oz. razumevanja izjavnega računa.

* Matematiki poznajo natančen zapis za matematične objekte, npr. števil ne zapisujejo z
  besedami, aritmetične operacije označujejo s simboli, itd. To ima mnoge prednosti, saj
  nam natančen zapis omogoča, da povemo natančna matematična pravila (na primer za to,
  kako se računa s števili).

* Zaradi podobnih razlogov, potrebujemo natančen matematični zapis za *celotno*
  matematično besedilo, se pravi tudi za izjave in dokaze. V tem poglavju bomo spoznali,
  kako torej običajno besedilo pretvorimo v tak zapis in kako z njim manipuliramo.

* Vendar pa matematiki natančen zapis uporabljajo samo delno in ga kombinirajo z
  običajnim, človeškim jezikom.

### Logika prvega reda

#### Izjave

* osnovni izjavi ⊥ in ⊤
* atomarne izjave
* predikati
* proste spremenljivke
* kontekst: spremenljivke je treba *uvesti* in opredeliti njihovo domeno

#### Dokazi

* dokaz je *konstrukcija*, ki utemelji izjavo
* dokazi v praksi imajo tudi vlogo *pojasnjevanja*
* dokaz ima drevesno strukturo (torej delamo naravno dedukcijo in ne maramo Hilbertovega pristopa)
* neformalni dokazi so napisani tako, da se drevesna struktura pogosto ne vidi
* formalni dokazi: lahko bi jih pisali, a to običajno prepustimo računalnikom
* poleg spremenljivk, lahko kontekst vsebuje tudi *predpostavke*, ki so *pomešane* s
  spremenljivkami, saj je lahko domena spremenljivke odvisna od predpostavke
* še o tem, kako ljudje pišejo dokaze: kako izpuščajo "očitne" dele dokaza, kaj pomeni, da
  je nekaj "očitno" itd.

Poudarjamo, da bomo povedali *pravila* za pisanje dokazov, ki so kot računska pravila v
aritmetiki. *Kako* pa najdemo dokaz? To je stvar izkušenj in vaje, in seveda tudi težkega
dela in tuhtanja. Mi se predvsem učimo pravila dokazovanja.

#### Vezniki

* kako tvorimo veznike
* pravila sklepanja za veznike (naravna dedukcija)
* opozorimo na pogoste napake pri razumevanju (recimo, disjunkcija ni ekskluzivna)
* pravilo o izključeni tretji možnosti
* povemo, kaj pomeni da je nekaj "potreben" in "zadosten" pogoj
* podamo nekatere primere iz običajnega življenja, a s tem ne pretiravamo

#### Kvantifikatorja

* kvantifikatorji so omejeni, lahko pišemo neomejene, a mora biti jasno, na kaj se nanašajo
* kako tvorimo kvantifikatorja
* pravila sklepanja za kvantifikatorja (naravna dedukcija)
* opozorimo na pogoste napake pri razumevanju (recimo razliko med ∀∃ in ∃∀)
* podamo nekatere primere iz običajnega življenja, a s tem ne pretiravamo

#### Ekvivalentne izjave

* pojem logične ekvivalence
* izjavo lahko zamenjamo z njej ekvivalentno
* nekatere pomembne ekvivalence, ki nam omogočijo, da izjave manipuliramo *algebraično*

#### Definicije

* kaj je definicija
* vrste definicij (okrajšave, uvedba novega pojma)
* zakaj imamo definicije?
* operator deskripcije ι x. φ

### Boolova algebra

* pravila Boolove algebre
* logika kot algebra (računanje z izjavami)
* resničnostne tabele
* polni nabori veznikov

### Curry-Howardov izomorfizem*

* motivacija: imamo formalni jezik za zapis množic, elementov in izjav, kaj pa dokazov?
* dokaze lahko predstavimo kot drevesa
* formalni jezik za dokaze: je enak kot za množice (no, recimo)
* navezava na dokazovalne pomočnike

## Nadaljnje konstrukcije množic

### Podmnožice

* kako definiramo podmnožico
* predikati in relacije kot podmnožice
* Boolova algebra podmnožic (unija, presek, komplement)
* unija in presek množice podmnožic

### Potenčna množica

* potenčna množica P(X)
* odnos med podmnožico in njeno karakteristično funkcijo
* izomorfizem med P(X) in X → 2

### Relacije

* pojem relacije kot podmnožice kartezičnega produkta
* osnovne konstrukcije in lastnosti relacij
* ekvivalenčne relacije
* funkcije kot funkcijske relacije (tu bo prav prišel operator deskripcije)

### Kvocientne množice

* ekvivalenčni razredi
* kvocientna množica
* kako definiramo funkcijo iz kvocientne množice

## Funkcije

* Funkcije in funkcijske relacije
* Slike in praslike
* Injektivne in surjektivne funkcije
    * vsaka surjekcija ima prerez (uporaba AC)
* Bijektivne funkcije
* Delne funkcije

## Družine množic

* družina kot funkcija `I → Set` (torej ima lahko funkcija za kodomeno tudi razred)
* končna družina množic: nabor množic `A₀, A₁, ..., Aᵢ` kot družina
* vsota družine
* produkt družine
* unija in presek družine
    * najprej vidimo, da lahko definiramo unijo kot razred
    * aksiom: unija družine množic je množica
    * presek družine: dokažemo, da je `Set` ali množica

## Moč množic

* definicija končnih in neskončnih množic
* števne množice
* primerjava moči množic
    * z injektivnimi preslikavami
    * z surjektivnimi preslikavami
    * ekvivalenca obeh vrst primerjav (uporaba AC)
* Cantor-Schröder-Bernsteinov izrek

## Strukture

* Pojem stukture (in morfizma)
* Primeri struktur iz ostalih predmetov, ki jih že poznamo

### Univerzalne lastnosti

* Kaj pomeni, da strukturo opredelimo z lastnostjo *do izomorofizma*
* Primeri: univerzalne lastnosti množic (prazna, enojec)

### Številske množice

Podamo univerzalne lastnosti številskih množic in njihove konkretne konstrukcije.

Nekatere *množice* lahko opremimo z več *strukturami*, ki imajo vsaka svojo univerzalno
lastnost.

* Naravna števila
   * konstrukcija množice naravnih števil
   * indukcija in primitivna rekurzija
   * naravna števila kot struktura (N, 0, S) in Peanovi aksiomi
   * izpeljava artimetike z rekurzijo
* Cela števila
* Racionalna števila
* Realna števila
* Kompleksna števila

### Delno urejene množice

* Definicija delne urejenosti
* Primeri delnih urejenosti

### Mreže

* mreža
* polna mreža

### Boolove mreže

* Boolove algebre kot struktura
* Izrek o reprezentaciji: vsaka Boolova algebra je podalgebra potenčne množice
* Pomen izreka, podobni izreki obstajajo za druge strukture (recimo grupe)

## Indukcija

* dobro osnovane in dobro urejene množice
* indukcija na dobro osnovano urejenih množicah
* strukturna indukcija

## Napredna teorija množic

### Kumulativna hierarhija

* "vse je množica"
* kodiranje objektov z množicami:
   * urejeni pari
   * vsota množic
   * naravna števila
   * ordinalna števila
* kumulativni pogled na množice
* Russellov paradoks
* razredi in množice
* aksiomi teorije množic (verjetno bi bil NBG boljši od ZFC)
    * navežemo aksiom o neskončni množici z obstojem naravnih števil

### Aksiom izbire

* aksiom izbire
* Zornova lema in njena uporaba v matematiki
* ekvivalentne izjave:
    * Zornova lema
    * vsako množico lahko dobro uredimo
    * vsaka surjekcija ima desni inverz (eno smer naredimo že prej)
* presenetljive posledice:
    * posledica dobre urejenosti realnih števil: obstaja podmnožica ravnine, ki vsako
      premico seka natanko dvakrat
    * izrek Banach-Tarskega o dekompozicijo krogle

### Ordinalna in kardinalna števila

Za to poglavje nisem prepričan, da je na pravem mestu. In kaj natančno bi bila njegova
vsebina?

* dobra urejenost
* trihotomija za dobro urejenost
* transfinitna indukcija
* ordinalna števila
* kardinalna števila
    * nekaj malega o Cantorjevi hipotezi
