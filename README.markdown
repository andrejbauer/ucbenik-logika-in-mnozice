# Učbenik "Logika in množice"

Učbenik za predmet Logika in množice, 1. letnik matematike.

# Datoteke

* `ucbenik-lmn.tex` -- glavna datoteka

# Pregled snovi

## Matematično izražanje

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

### Stukturirane množice

* množice so zbirke elementov z enako strukturo (vendar bomo kasneje videli, da ni nujno
  tako, je pa to običajno)
* množica je podana s svojimi elementi, to se pravi, s pravili, kako se njene elemente konstruira, oz. kaj ti elementi so
* poleg tega povemo, kako lahko elemente *uporabimo* oz. *analiziramo* oz. *dekonstruiramo*.
* poznamo tudi *enačbe*, ki povejo, kako so konstrukcije in dekonstrukcije med seboj povezane

#### Osnovne množice

* prazna množica
* enojec
* nekatere druge množice, ki jih že poznamo (npr. naravna števila) in jih bomo bolj podrobno spoznali kasneje

#### Kartezični produkt A × B

Tu spoznamo urejene pare kot osnovno konstrukcijo, projekcije kot dekonstrukciji in potem
enačbe med njimi.

#### Vsota množic A + B

Unije sploh ne omenjamo, gremo direktno na vsoto množic.

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

### Družine množic

### Produkti in vsote družin

## Funkcije

* Funkcije in funkcijske relacije
* Injektivne in surjektivne funkcije
* Bijektivne funkcije
* Delne funkcije
* Inverzne in direktni slike

## Strukture

* Pojem stukture in morfizma

### Izrek o reprezentaciji Boolovih algeber

* Boolove algebre kot struktura
* Izrek o reprezentaciji: vsaka Boolova algebra je podalgebra potenčne množice
* Pomen izreka, podobni izreki obstajajo za druge strukture (recimo grupe)

### Naravna števila

* Naravna števila kot struktura
* Peanovi aksiomi za naravna števila

### Delno urejene množice

* Definicija delne urejenosti
* Primeri delnih urejenosti

### Mreže

* mreža
* polna mreža

## Kardinalnost

* definicija končnih in neskončnih množic
* števne množice
* kardinalnost množice
* Cantor-Schröder-Bernsteinov izrek

## Ordinalna števila

Za to poglavje nisem prepričan, da je na pravem mestu. In kaj natančno bi bila njegova
vsebina?

* pojem ordinalnega števila
* transfinitna indukcija

## Kumulativna hierarhija

* "vse je množica"
* kodiranje objektov z množicami:
   * urejeni pari
   * naravna števila
   * ordinalna števila
* kumulativni pogled na množice
* Russellov paradoks
* razredi in množice
* aksiomi teorije množic (verjetno bi bil NBG boljši od ZFC)

## Aksiom izbire in Zornova lema

* aksiom izbire
* Zornova lema in njena uporaba v matematiki
* Zornova lema in ekvivalenca z aksiomom izbire
