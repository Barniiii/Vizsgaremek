Projektmunka dokumentálása

**BB Agrár**

![](/img/image1.png)

Premontrei Szakgimnázium és Technikum

Keszthely

2026

Szoftverfejlesztő és tesztelő

5-0613-12-03

Készítette:

Nagy Barnabás, Savanyó Balázs

#  

# Tartalom 

[Bemutatás [3](#bemutatás)](#bemutatás)

[Adatbázis [5](#adatbázis)](#adatbázis)

[ER modell [6](#er-modell)](#er-modell)

[Backend [8](#backend)](#backend)

[Db mappa [8](#db-mappa)](#db-mappa)

[Routes mappa [9](#routes-mappa)](#routes-mappa)

[Src mappa [11](#src-mappa)](#src-mappa)

[Frontend [15](#frontend)](#frontend)

[Frontend architektúra
[15](#frontend-architektúra)](#frontend-architektúra)

[Főképernyő és dashboard
[15](#főképernyő-és-dashboard)](#főképernyő-és-dashboard)

[Navigáció [17](#navigáció)](#navigáció)

[Állatkezelő felület [17](#állatkezelő-felület)](#állatkezelő-felület)

[Földterület kezelő felület
[18](#földterület-kezelő-felület)](#földterület-kezelő-felület)

[Dokumentumkezelő felület
[20](#dokumentumkezelő-felület)](#dokumentumkezelő-felület)

[CRM és ügyfélkezelés
[21](#crm-és-ügyfélkezelés)](#crm-és-ügyfélkezelés)

[Marketplace felület [22](#marketplace-felület)](#marketplace-felület)

[Alkalmazotti modul [23](#alkalmazotti-modul)](#alkalmazotti-modul)

[Naptár modul [23](#naptár-modul)](#naptár-modul)

[Profil és beállítások
[24](#profil-és-beállítások)](#profil-és-beállítások)

[Reszponzivitás [25](#reszponzivitás)](#reszponzivitás)

[Felhasznált programok
[27](#felhasznált-programok)](#felhasznált-programok)

[Összegzés [28](#összegzés)](#összegzés)

[Melléklet [29](#melléklet)](#melléklet)

#  Bemutatás

A projektmunkánkat ketten készítettük el: Nagy Barnabás és Savanyó
Balázs. A projekt neve BB Agrár, amely már a nevében is utal arra, hogy
a mezőgazdaság és az informatika szoros összekapcsolására épül. A téma
kiválasztásakor abból indultunk ki, hogy a mezőgazdaság napjainkban még
sok területen elmaradott digitális szempontból, miközben hatalmas
lehetőségek rejlenek az adatok tudatos gyűjtésében, feldolgozásában és
elemzésében. Úgy gondoltuk, hogy egy jól felépített informatikai
rendszer jelentősen megkönnyítheti a gazdák mindennapi munkáját,
valamint pontosabb döntéshozatalt tehet lehetővé.

Fontos szempont volt számunkra, hogy ne egy már létező megoldást
másoljunk le, hanem egy olyan egyedi alkalmazást hozzunk létre, amely
valódi problémákra kínál megoldást. A kutatómunka során több
mezőgazdasági nyilvántartó és adminisztrációs rendszert is
megvizsgáltunk, azonban nem találtunk olyan alkalmazást, amely egyszerre
tartalmazta volna mindazokat a funkciókat, amelyeket mi szükségesnek
láttunk. Ez tovább erősítette bennünk azt az elképzelést, hogy a BB
Agrár projektnek helye van a piacon, és valódi értéket tud teremteni a
felhasználók számára.

A BB Agrár elsődleges célja, hogy lehetőséget biztosítson a gazdák
számára az állományuk átlátható és rendszerezett kezelésére. Az
alkalmazás segítségével a felhasználó elmentheti az állataira vonatkozó
adatokat, nyomon követheti azok változásait, valamint hosszabb távon is
visszakereshető információkat kap a gazdasága működéséről. Ez nemcsak az
adminisztrációt egyszerűsíti le, hanem hozzájárul a hatékonyabb
gazdálkodáshoz és a pontosabb tervezéshez is. Meggyőződésünk, hogy az
adat vezérelt gondolkodás a mezőgazdaságban is egyre nagyobb szerepet
fog kapni a jövőben.

A projekt során arra törekedtünk, hogy a rendszer logikus felépítésű,
könnyen kezelhető és bővíthető legyen. Fontosnak tartottuk, hogy az
alkalmazás ne csak technikailag működjön jól, hanem a felhasználó
számára is átlátható és érthető legyen. Ennek érdekében több tervet és
koncepciót is kidolgoztunk, majd ezek közül választottuk ki a
legmegfelelőbbet a megvalósításhoz. A fejlesztési folyamat során
folyamatosan figyeltünk arra, hogy a projekt céljai ne vesszenek el a
részletekben.

A közös munka során kiemelkedően jól tudtunk együttműködni. A
feladatokat egyenlő arányban osztottuk fel egymás között, figyelembe
véve mindkettőnk erősségeit és érdeklődési körét. Ez a munkamegosztás
nagyban hozzájárult ahhoz, hogy hatékonyan haladjunk, és minden
részfeladat megfelelő figyelmet kapjon. Mindketten aktívan támogattuk
egymást, legyen szó technikai problémákról, ötletelésről vagy döntések
meghozataláról. A munkánkat segítette a Gantt Diagram[^1] ahol láthattuk
a határidőket így betudtok tartani az idő határokat.

A projekt előrehaladtával nemcsak szakmailag fejlődtünk, hanem emberileg
is. Javult a kommunikációnk, megtanultunk hatékonyabban visszajelzést
adni és elfogadni, valamint nagyobb empátiával fordulni egymás felé.
Ezek a készségek elengedhetetlenek voltak ahhoz, hogy a felmerülő
nehézségeket közösen, konfliktusok nélkül tudjuk megoldani. A
csapatmunka során kialakult erős csapatszellem jelentősen hozzájárult a
projekt sikeréhez.

Összességében a BB Agrár projekt nemcsak egy tanulmányi feladat volt
számunkra, hanem egy olyan tapasztalat, amely megmutatta, hogyan lehet
az informatikát és a mezőgazdaságot hatékonyan összekapcsolni. Reméljük,
hogy a jövőben az alkalmazás továbbfejlesztésével valódi segítséget
tudunk nyújtani minél több gazda számára, és hozzájárulhatunk a
mezőgazdaság digitális fejlődéséhez.

# Adatbázis

Az adatbázis egy olyan rendszerezett adathalmaz, amelyet digitális
formában, strukturáltan tárolunk a könnyebb hozzáférés és kezelés
érdekében. Segítségével nagy mennyiségű információt tudunk hatékonyan
rögzíteni, módosítani és villámgyorsan lekérdezni. Adatbázisunkat
phpMyAdminba csináltuk. Az adatbázisunk nélkülözhetetlen volt a
projektünk létrehozásban. A végleges adatbázisunk csinálása közbe
folyamatos problémákba ütköztünk ezért folyamatos változtatásokra volt
szükségünk. A táblákat és a hozzátartozó mezőket angolul adtuk meg mivel
egyszerűbbnek tartjuk a programozás során így hivatkozni rájuk.

![. ábra: Adatbázis](/img/image2.png)

Adatbázisunk 8 táblát tartalmaz.

1.  animals: Ennek a táblának fontosabb mezői az id és a user_id ennek a
    segítségével kötjük hozzá a felhasználót az általa elmentett
    adatokhoz. Ezzel a táblával tudja a felhasználó felvinni az
    állatait. Tartalmazza még a következő mezőket species, identifier,
    age stable notes.

2.  clients: Arra szolgál hogy a felhasználó eltudja menteni az eddigi
    vagy új ügyfeleit. Az emailre olyan szabályokat alkalmaztam hogy
    kötelező @ használni. Fő táblái: name, email, type, notes

3.  documents: Ez a tábla arra szolgál hogy a felhasználó eltudja
    menteni a dokumentumait különböző kategóriákban. A tábla kéri a
    title, category, filename, filepath. Mivel a felhasználó feltudja
    tölteni a fájlokat. Ezzel átláthatóvá teszi a dokumentumok
    megtekintését és szerkesztését.

4.  expenses: A tábla arra szolgál hogy a felhasználó nyomon tudja
    követni kiadásait és bevételit hogy pontos áttekintést lásson. Ezzel
    segítve a gazdaság pénzügyeinek folyamatos alakulását és fejlődését.
    Mivel a tábla kéri a amount, category, description, date.

5.  incomes: A kiadások ellentételezéseként ez a tábla rögzíti a
    gazdaság összes bevételi forrását. A kiadásokkal együttműködve
    teljes körű pénzügyi mérleget biztosít a felhasználó számára. Ezeket
    az információkat tárolja: amount, category, description, date

6.  lands: A mezőgazdasági művelés alatt álló területek és legelők
    nyilvántartása. Tartalmazza a földek méretét, elhelyezkedését és
    aktuális hasznosítási módját. Mezők: name, plot_number, area.

7.  martketplace: Ez a tábla a rendszeren belüli adásvételt támogatja.
    Itt jelennek meg a felhasználók által meghirdetett termékek, állatok
    vagy eszközök, elősegítve a gazdák közötti kereskedelmet. A
    hirdetésekhez kapcsolódó alapvető információk: title, description,
    type, price, image_url, status

8.  users: A rendszer központi táblája, amely a regisztrált gazdák és
    adminisztrátorok adatait tárolja. Ez a tábla kezeli a
    jogosultságokat és a belépéshez szükséges információkat. A
    hitelesítéshez használt adatok: email, password_hash.

## ER modell

Az ER modell egy adatmodellezési módszer, amely az adatbázisban szereplő
egyedeket, azok tulajdonságait és a köztük lévő kapcsolatokat ábrázolja.
Célja, hogy vizuálisan és logikusan leírja az adatszerkezetet, mielőtt
az adatbázist ténylegesen létrehoznák.

animals → users: Az animals tábla azért van összekötve a users táblával,
mert: Minden állat egy konkrét felhasználóhoz tartozik. A
animals.user_id hivatkozik a users.id mezőre. Így tudjuk, hogy melyik
felhasználó tulajdonában van az adott állat. Példa: egy gazdának több
állata is lehet, de egy állat csak egy felhasználóhoz tartozik.

incomes → users: Az incomes tábla azért kapcsolódik a users táblához,
mert: Minden bevétel egy adott felhasználóhoz tartozik. A
incomes.user_id megmondja, kihez tartozik az adott pénzbevétel. Példa:
különböző gazdák külön-külön vezetik a saját bevételeiket.

expenses → users: Az expenses tábla is a users táblához kapcsolódik,
mert: Minden kiadás egy adott felhasználóhoz tartozik. A
expenses.user_id jelzi, hogy ki rögzítette a kiadást. Így minden
felhasználó csak a saját költségeit látja.

documents → users: A documents tábla azért kapcsolódik a users táblához,
mert: A feltöltött dokumentumok(pl.szerződések, igazolások) egy adott
felhasználóhoz tartoznak. A documents.user_id mutatja, ki töltötte fel a
fájlt. Felhasználónak több dokumentuma is lehet.

lands → users: A lands tábla a users táblához kapcsolódik, mert: Minden
földterület egy adott felhasználó tulajdona. A lands.user_id jelzi a
tulajdonost. Egy felhasználónak több földje lehet, de egy föld csak egy
felhasználóhoz tartozik.

clients → users: A clients tábla azért kapcsolódik a users táblához,
mert: Az ügyfelek egy adott felhasználó (pl. gazda) partnerei. A
clients.user_id mutatja, hogy melyik felhasználóhoz tartozik az adott
ügyfél. Így minden felhasználó a saját ügyfeleit kezeli.

marketplace → users: A marketplace tábla is a users táblához
kapcsolódik, mert: A piactéren meghirdetett termékek egy adott
felhasználóhoz tartoznak. A marketplace.user_id jelzi, ki tette fel a
hirdetést. Egy felhasználó több hirdetést is feladhat.

![. ábra: Kapcsolat
tábla](/img/image3.png)

# Backend

## Db mappa

**1. Kapcsolati menedzsment**

Ez biztosítja, hogy a rendszer rugalmasan és biztonságosan működjön
különböző környezetekben (fejlesztői vagy éles), mivel a kapcsolat
részletei környezeti változókon alapulnak.

**2. Adatbázis-életciklus kezelése**

A init.sql fájl tartalmazza azokat a szkripteket, amelyek automatikusan
felépítik a teljes táblaszerkezetet minden alkalmazás-indításkor. Ez egy
\"friss inicializálást\" végez, törli a régi adatokat, és konzisztens
adatbázis-környezetet hoz létre.

Létrehozza a bbagrar adatbázist, ha még nem létezik.

Biztosítja, hogy az adatbázis minden indításkor tiszta és használható
legyen, anélkül hogy régi adatok zavarnának.

**3. Struktúra és Integritás**

A táblák közötti kapcsolatokat idegen kulcsokkal (foreign keys) és
kényszerekkel (constraints) definiálja, hogy az adatbázis logikai
felépítése mindig megfeleljen a szoftver követelményeinek.

**4. Kezdeti adatok és biztonság**

Az init.sql betölti a rendszer indulásához szükséges alapvető adatokat,
például két alapértelmezett felhasználót (barni és savanyo)

A jelszavak már az inicializáláskor titkosítottak, így biztonságosak.

Egyéb táblák (például notification_settings) alapértelmezett
beállításokkal indulnak.

Ez biztosítja, hogy az alkalmazás azonnal használható legyen induláskor,
anélkül hogy manuális adatbevitelre lenne szükség.

**5. Központi erőforrás**

Egy jól meghatározott ponton keresztül teszi elérhetővé az
adatbázis-lekérdezési lehetőséget a backend többi része számára (például
a routes/ mappában lévő fájlok, mint documents.js).

A pool és query függvények minimalizálják a redundanciát: minden
adatbázis-művelet ezen keresztül fut, így egységes és karbantartható a
kód.

![](/img/image4.png)

##  Routes mappa

**1. Kérések feldolgozása**

A kód fogadja a kliens felől érkező HTTP kéréseket (GET, POST, DELETE)
az Express router segítségével.

A kérések aktiválják a megfelelő controller függvényeket, amelyek
kinyerik és feldolgozzák az adatokat.

**2. Üzleti logika irányítása**

Itt dől el a munkafolyamat sorrendje. Minden controller függvény (pl.
getDocuments, uploadDocument) egy-egy logikai folyamatot irányít:

Feltöltésnél: Először validálja a bemenetet (pl. kötelező mezők: title,
category), majd menti a fájlt a szerverre, végül beszúrja az adatokat az
adatbázisba.

Törlésnél: Először lekérdezi a dokumentumot az adatbázisból, törli a
fájlt a fájlrendszerből, majd eltávolítja az adatbázis rekordot ez
biztosítja a konzisztenciát.

Lekérésnél: Összekapcsolja a dokumentumokat a kapcsolódó entitásokkal
(állatok, földek, kliensek) JOIN lekérdezésekkel, és rendezett formában
adja vissza.

**3. Jogosultságkezelés és biztonság**

Csak a saját dokumentumaihoz férhet hozzá a felhasználó.

Ha nincs jogosultság (401 Unauthorized), azonnal visszautasítja a
kérést.

Biztonságos fájlkezelés: Csak engedélyezett MIME típusokat fogad el
(PDF, Word, Excel, képek), és korlátozza a fájlméretet (10MB). A fájlok
egy dedikált mappában (uploads/) tárolódnak, egyedi nevekkel, hogy
elkerülje az ütközéseket.

**4. Szerverválaszok szabványosítása**

A válaszok mindig megfelelő HTTP státuszkódokat használnak és egységes
JSON formátumúak:

Sikeres műveletek: 200 OK (pl. dokumentum lista vagy feltöltés siker).

Hibák: 400 Bad Request (hiányzó adatok), 401 Unauthorized
(jogosulatlan), 404 Not Found (nem található dokumentum), 500 Internal
Server Error (adatbázis hiba).

**5. Hibakezelés (Try-Catch)**

Minden controller függvény try-catch blokkba van csomagolva, hogy
elkapja a futásidejű hibákat (pl. adatbázis kapcsolat megszakadása, fájl
írási hiba).

Ha hiba történik, naplózza a konzolon (console.error), és értesíti a
felhasználót egy általános hibaüzenettel anélkül, hogy részleteket fedne
fel (biztonság).

Megakadályozza a szerver leállását: a hiba után a következő kérések
továbbra is feldolgozhatók.

Például: Adatbázis hiba esetén res.status(500).json({ error: \'Hiba a
dokumentumok lekérése során\' }).

**6. Interakció a modellekkel**

A kód közvetlenül használja az adatbázis-modellt.

Lekérdezések: SELECT, INSERT, DELETE műveletek a documents táblán,
JOIN-okkal más táblákhoz (animals, lands, clients).

Ez egy központi ponton keresztül teszi elérhetővé az
adatbázis-műveleteket, minimalizálva a redundanciát a kódban. A modellek
(adatbázis táblák) és a controller logika elkülönülnek, így a változások
könnyen kezelhetők.

![](/img/image5.png)

##  Src mappa

**1. Szerver inicializálása és konfiguráció** (index.js alapján)

Az index.js fájl indítja el az Express szervert, amely a backend magja.
Beállítja a környezeti változókat (pl. PORT=4000, CORS_ORIGIN), hogy a
rendszer rugalmasan működjön különböző környezetekben (fejlesztői vagy
éles).

Konfigurálja a CORS-t (Cross-Origin Resource Sharing) a frontend (pl.
localhost:5173) eléréséhez, és beállítja a JSON/URL-encoded adatok
feldolgozását nagy fájlokhoz (10MB limit).

Inicializálja az adatbázis kapcsolatot újrapróbálkozással (retry logic),
hogy biztosítsa a konzisztens indulást, még ha a DB késik.

Beállítja a statikus fájlok kiszolgálását (uploads mappa), és létrehozza
az almappákat (avatars, documents, marketplace) automatikusan, ha nem
léteznek.

Ez biztosítja, hogy a szerver azonnal használható legyen induláskor,
anélkül hogy manuális beállításokra lenne szükség.

**2. Adatbázis kapcsolat kezelése** (db.js alapján)

A db.js fájl központi adatbázis-kapcsolati réteget hoz létre könyvtár
használatával. Ez egy connection pool-t épít fel, amely hatékonyan
osztja ki a kapcsolatokat a kérések között.

Környezeti változók alapján konfigurálja a kapcsolatot (DB_HOST, DB_USER
stb.), így biztonságosan és rugalmasan mozgatható a fejlesztői és éles
környezetek között.

Exportál egy query függvényt, amely egyszerűen futtat SQL-lekérdezéseket
aszinkron módon, minimalizálva a redundanciát a kódban.

Ez egy központi erőforrás, amelyen keresztül minden adatbázis-művelet
(lekérés, beszúrás, frissítés) fut az index.js-ben definiált végpontokon
keresztül.

**3. Hitelesítés és jogosultságkezelés** (auth.js alapján)

Az auth.js fájl JWT (JSON Web Token) alapú hitelesítési middleware-t
biztosít, amely minden beérkező kérést ellenőriz, mielőtt azok elérnék a
fő logikát.

A requireAuth függvény kinyeri és ellenőrzi a tokent a HTTP fejlécekből;
ha hiányzik vagy érvénytelen, 401-es hibát küld, megakadályozva az
illetéktelen hozzáférést.

A requireRole függvény szerepkör-alapú szűrést végez (pl. \'owner\',
\'admin\'), 403-as hibával válaszolva a jogosulatlan próbálkozásokra.

A signToken függvény új tokent generál bejelentkezéskor vagy
regisztrációnál, 7 napos lejárattal.

Ez védelmi vonalat képez: csak hitelesített felhasználók férhetnek hozzá
a privát útvonalakhoz (pl. profiladatok, állatok kezelése), és
automatikusan hibaüzenetet küld a jogosulatlan kísérleteknél.

**4. Integrált működés és üzleti logika**

Ezek a fájlok együtt alkotják a rendszer \"agya\": az index.js kezeli a
kéréseket (pl. /api/auth/login, /api/animals), az auth.js biztosítja a
biztonságos hozzáférést, a db.js pedig az adatbázis-interakciót.

Például egy állat hozzáadására irányuló POST kérés: először az auth.js
ellenőrzi a tokent és szerepkört, majd az index.js validálja az
adatokat, végül a db.js menti az adatbázisba.

Hibakezelés: Minden fájlban try-catch blokkok vannak, amelyek elkapják a
futásidejű hibákat (pl. DB kapcsolat megszakadása), és értesítik a
felhasználót anélkül, hogy leállítanák a szervert.

Szerverválaszok szabványosítása: Egységes HTTP státuszkódok (200, 401,
403, 500) és JSON válaszok minden végponton.

Ez minimalizálja a kódismétlést: a middleware-ek (auth.js) minden
útvonalon alkalmazhatók, a db.js központi lekérdezési pontot biztosít.

![](/img/image6.png)

#  

# Frontend

A frontend feladata, hogy a felhasználó számára jól használható, gyors
és vizuálisan rendezett felületet biztosítson. A BB Agrár frontendje
modern komponensalapú szerkezetben készült, amely támogatja a
skálázhatóságot, a könnyű karbantarthatóságot és a gyors fejlesztési
ciklusokat. A fejlesztés során kiemelt figyelmet fordítottunk arra, hogy
a rendszer ne csupán technikailag működjön megfelelően, hanem a
felhasználói élmény szempontjából is professzionális benyomást keltsen.

A kezelőfelület minden modul esetében egységes designrendszert követ,
így a felhasználó számára a teljes alkalmazás könnyen megtanulható és
logikusan használható marad. A frontend kialakításánál fontos szempont
volt az adminisztrációs folyamatok gyorsíthatósága, ezért a legtöbb
oldalon táblázatos megjelenítés, gyors műveletgombok és jól strukturált
űrlapok kerültek kialakításra.

## Frontend architektúra

A frontend főbb egységei:

- pages
- components
- hooks
- context
- services
- auth
- assets

A komponensek újrahasznosíthatósága segít abban, hogy a felület egységes
maradjon, és a fejlesztés is hatékonyabb legyen. A különálló
mappastruktúra lehetővé teszi a logikai szétválasztást, ezáltal a
projekt könnyebben karbantartható és bővíthető marad.

A `pages` mappa tartalmazza az alkalmazás fő oldalait, amelyek
route-okhoz kapcsolódnak. A `components` mappában találhatók az
újrafelhasználható UI elemek, például gombok, modalok, táblázatok és
form komponensek. A `hooks` mappa a saját React hookokat tartalmazza,
amelyek segítségével a gyakran ismétlődő logikák központilag kezelhetők.
A `context` mappa a globális állapotkezelésért felel, például
autentikáció vagy felhasználói adatok esetében.

## Főképernyő és dashboard

A dashboard a rendszer központi nézete. Innen érhető el a legtöbb modul,
és itt jelennek meg a legfontosabb összesítő adatok.

A dashboard tartalma:

- gyors statisztikák

- rövidítve megjelenített pénzügyi adatok

- állatlétszám

- földterület összesítő

- legfrissebb értesítések

- gyors műveletgombok

A dashboard célja az, hogy a felhasználó egy pillantással átlássa a
gazdaság állapotát. A dashboard kialakításánál arra törekedtünk, hogy a
legfontosabb információk ne igényeljenek további navigációt, hanem
azonnal láthatók legyenek.

![](/img/image7.png)

## ![](/img/image8.png) Navigáció

A navigáció kialakításánál arra törekedtünk, hogy a rendszerben minden
modul gyorsan elérhető legyen. A menüpontok logikus sorrendben követik
egymást, így a felhasználó könnyen megtalálja a keresett funkciót.

Az oldalsó navigációs sáv fix pozícióban jelenik meg, így az alkalmazás
bármely részén elérhető marad.

## Állatkezelő felület

Az állatkezelő modul az egyik legfontosabb frontend rész. Itt a
felhasználó láthatja az állatok listáját, új állatot adhat hozzá,
szerkesztheti az adatokat és megtekintheti a részletes adatlapot.

Megjelenített információk:

- faj

- azonosító

- ivar

- életkor

- státusz

- istálló / tartási hely

- megjegyzések

A modul támogatja a gyors keresést és szűrést is, amely megkönnyíti nagy
adatállomány kezelését.

![](/img/image9.png)

##  Földterület kezelő felület

A földterület modul az egyes parcellák, legelők vagy művelési egységek
nyilvántartását teszi lehetővé.

A felhasználó itt tudja:

- felvenni a földterületet

- megadni az alapterületet

- megjelölni a helyrajzi vagy plot számot

- rögzíteni a hasznosítási típust

- megjegyzést hozzáfűzni

A felület célja, hogy a gazdálkodó teljes áttekintést kapjon a
rendelkezésre álló területekről és azok felhasználásáról.

![](/img/image10.png)Pénzügyi modul

A pénzügyi modul két fő részre tagolódik: kiadások és bevételek. Ez
segíti a gazdaság költségvetésének követését.

A felület alkalmas:

- tranzakciók rögzítésére

- kategóriák kiválasztására

- dátumok kezelésére

- összesített kimutatások megjelenítésére

A pénzügyi adatok táblázatos formában jelennek meg, amely lehetővé teszi
a gyors szűrést és visszakeresést.

![](/img/image11.png)

##  Dokumentumkezelő felület

A dokumentumkezelés lehetővé teszi a fontos fájlok rendezett tárolását.

Példák dokumentumokra:

- szerződések

- igazolások

- nyilvántartási papírok

- fotók

- adminisztratív fájlok

A dokumentumok kategóriák szerint rendszerezhetők, és közvetlenül
letölthetők vagy törölhetők.

![](/img/image12.png)

## CRM és ügyfélkezelés

A CRM modulban a partnerek, ügyfelek és kapcsolattartók adatai jelennek
meg. Ez különösen fontos, ha a gazdaság több szereplővel dolgozik
együtt.

A modul támogatja:

- új ügyfél rögzítését

- meglévő ügyfelek szerkesztését

- kapcsolattartási adatok kezelését

- kategorizálást és megjegyzéseket

![](/img/image13.png)

##  Marketplace felület

A piactér modul a gazdaságon belüli eladási és hirdetési lehetőségeket
támogatja. Itt a felhasználó hirdetést adhat fel állatról, termékről
vagy eszközről.

Fő funkciók:

- hirdetés létrehozása

- kép feltöltés

- ár megadása

- státusz kezelés

- hirdetés szerkesztés

A hirdetések kártya alapú nézetben jelennek meg képpel és rövid
információkkal.

![](/img/image14.png)

##  Alkalmazotti modul

Az alkalmazotti modul segítségével a gazdaság dolgozóinak adatai
rendszerezhetők.

A modul tartalmazza:

- alapadatok kezelését

- pozíció nyilvántartást

- elérhetőségeket

- munkaviszonyhoz kapcsolódó megjegyzéseket

## Naptár modul

A naptár modul a fontos eseményeket, feladatokat és határidőket kezeli.

A felhasználó itt:

- új eseményt rögzíthet

- dátumhoz rendelhet feladatot

- emlékeztetőt állíthat be

- prioritást adhat az eseményhez

![](/img/image15.png)

##  Profil és beállítások

A profil oldalon a felhasználó saját adatait módosíthatja.

Módosítható adatok:

- név

- email

- telefonszám

- profilkép

- jelszó

- személyes beállítások

![](/img/image16.png)

## Reszponzivitás

A frontend fejlesztése során külön figyeltünk arra, hogy a rendszer
mobilon, tableten és asztali gépen is megfelelően jelenjen meg. Ez ma
már alapkövetelmény, hiszen a felhasználók sokféle eszközről
dolgozhatnak.

A responsive kialakítás során:

- mobil breakpointokat definiáltunk

- dinamikusan átrendeződő layoutot használtunk

- kisebb kijelzőn összeomló elemeket optimalizáltunk

- sidebar menüt mobilon összehajthatóvá tettük

Ennek eredményeként a rendszer használható marad terepen,
mobiltelefonról vagy tabletről is.

![](/img/image17.png)

#  

# Felhasznált programok

- [Microsoft Office:] A Word programot arra használtam hogy
  a szöveges dokumentációt meghatározott követelményeknek eleget téve. A
  PowerPointot arra használtam hogy elkészítsem a vizsgaremek
  prezentációját és annak megfelelő megvédését. Mivel ICDL vizsgával
  rendelkezem ezért ezek programok használatát magas szinten űzőm.

- [Figmát] arra használtuk hogy elkészítsük a vizsgaremekünk
  vizuális megjelenését.

- [Inscapet] a projektünk logójának elkészítésére használtuk
  amit Vektorgrafikával oldottunk meg.

- [Canvat] használtunk a Gantt Diagram elkészítéséhez.

- [Google Drive] felhő rendszerébe töltöttük fel a
  projektben használt képeket.

- [VTK/Moodle] Az iskolánk belsőrendszere amit arra
  használtunk hogy a tanárokkal tudjunk kommunikálni és ide töltötték
  fel a feladatokat amiket határidőre le kellett adnunk. Nagyon hasznos
  volt ez számunkra mivel az 5 év elmúlt munkáit egyszerűen visszatudjuk
  nézni.

- [Messenger]en egyszerűen fent tudtuk tartani a mindennapos
  kommunikációt egymás között.

- A [Discordot] hasznosnak találtuk mivel mikor nem jutott
  idő az iskolában dolgozni ezért otthon kellett és a képernyőmegosztás
  funkciót tartottuk a legfontosabbnak mivel így valós idejűleg
  láthattuk hogy éppen mit csinál a másik.

- GitHub volt talán a legfontosabb mivel ide töltöttük fel minden
  fejlesztési fázist. Mivel más termekben is dolgoztunk ezért a felhőből
  egyszerűen letudtuk tölteni a projektünket.

- [Visual Studio Codeban] programoztuk le a Frontendet és a
  Backendet.

- A [Dockert] arra használtuk hogy egyidejűleg tudjuk
  futtatni a Frontendet és a Backendet.

- [Postmant] használtunk a Backendünk teszteléséhez a
  végpontok használatával.

# Összegzés

A BB Agrár projekt egy mezőgazdasági informatikai rendszer, amelyet Nagy
Barnabás és Savanyó Balázs készítettünk a Premontrei Szakgimnázium és
Technikum szoftverfejlesztő és tesztelő képzésének keretében. A projekt
célja egy olyan egyedi alkalmazás létrehozása volt, amely valódi
segítséget nyújt a gazdák számára az állományuk, földterületeik,
pénzügyeik és ügyfeleik átlátható kezelésében.

Adatbázis**:** A phpMyAdminban alakítottuk ki az adatbázisunkat. A
táblák között jól strukturált ER modell segítségével teremtettünk
kapcsolatokat. Az angol elnevezések használatával egyszerűbbé tettük a
programozás során a hivatkozást. A fejlesztés közben folyamatosan
módosítottunk az adatbázis szerkezetén, mivel több problémába is
ütköztünk, de végül sikerült egy stabil, jól működő rendszert
létrehoznunk.

Backend: Az Express keretrendszerre épülő backend központi elemei a db
mappa (adatbázis-kapcsolat), a routes mappa (HTTP kérések feldolgozása,
üzleti logika, jogosultságkezelés) és az src mappa
(szerverinicializálás, JWT alapú hitelesítés). A rendszer biztonságos,
try-catch blokkokkal ellátott hibakezelést alkalmaz.

Frontend: A React-alapú felületet moduláris felépítésűre, egységes
designrendszert követőre alakítottuk ki. Főbb moduljai: dashboard,
állatkezelő, földterület-kezelő, pénzügyi modul, dokumentumkezelő, CRM,
marketplace, alkalmazotti modul, naptár, profil és beállítások. A
reszponzív kialakításnak köszönhetően a rendszer mobilról és tabletről
is használható.

Felhasznált eszközök: A fejlesztés során számos programot alkalmaztunk,
többek között Visual Studio Code-ot (programozás), Dockert (futtatás),
GitHubot (verziókövetés), Figmát (tervezés), Postmant (tesztelés),
valamint kommunikációs és dokumentációs eszközöket (Messenger, Discord,
Google Drive, Canva).

A projekt során kiemelkedő együttműködést mutattunk, a feladatokat
egyenlő arányban osztottuk el, és a Gantt-diagram segítségével tartottuk
a határidőket. A BB Agrár nem csupán tanulmányi feladat volt számunkra,
hanem egy olyan innovatív megoldás, amely hozzájárulhat a mezőgazdaság
digitális fejlődéséhez.

# Melléklet

Gantt Diagram

![3. ábra: Gantt Diagram](/img/image18.png)

[^1]: Gantt Diagram: Saját forrás

