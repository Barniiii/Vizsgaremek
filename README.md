# 🌾 Agráradminisztrációs Webalkalmazás

## 📌 Projekt célja

Az **Agráradminisztrációs Webalkalmazás** célja egy olyan modern, jól átlátható rendszer létrehozása, amely egyetlen felületen segíti a mezőgazdasági gazdaságok adminisztrációját, a munkafolyamatok nyomon követését és a megalapozott döntéshozatalt.

Bejelentkezés után a felhasználót egy **áttekintő dashboard** fogadja, ahol az alábbi kulcsadatok jelennek meg:

- 🐄 Állatok aktuális száma  
- 💰 Pénzügyi egyenleg  
- ⏳ Közelgő feladatok  
- 📊 Alapvető statisztikák és kimutatások  

---

## 🧩 Funkcionális modulok

Az alkalmazás moduláris felépítésű, az egyes részek különállóak, mégis szorosan együttműködnek.

### 🐑 Állatok modul

Az állatok teljes körű nyilvántartására szolgál.

**Funkciók:**
- Új állatok rögzítése
- Egyedi adatlap minden állathoz
- Dokumentumfeltöltés
- Állatorvosi és egészségügyi jegyzetek

**Tárolt adatok:**
- faj  
- azonosító  
- életkor  
- istálló  
- megjegyzések  

---

### 🌾 Földek modul

A saját és bérelt földterületek kezelését teszi lehetővé.

**Funkciók:**
- Földterületek rögzítése
- Elvégzett munkák és tevékenységek naplózása

**Tárolt adatok:**
- név  
- helyrajzi szám  
- területnagyság  

---

### 📁 Dokumentáció modul

Központi dokumentumtár a gazdasághoz kapcsolódó iratok számára.

**Kezelt dokumentumok:**
- bérleti szerződések  
- támogatási kérelmek  
- hivatalos és egyéb iratok  

**Funkciók:**
- rendszerezett tárolás  
- gyors letöltés  

---

### 💸 Költségvetés modul

A gazdaság pénzügyeinek átlátható kezelése.

**Funkciók:**
- bevételek és kiadások rögzítése
- kategorizálás
- automatikus egyenlegszámítás
- grafikonok és kimutatások

**Riportok:**
- havi bontás  
- éves összesítés  

---

### 👥 Ügyfelek modul

Egységes kapcsolattartói adatbázis.

**Típusok:**
- felvásárlók  
- partnerek  
- egyéb kapcsolatok  

**Extra funkciók:**
- kör-e-mail küldés  

---

### 🛒 Piactér modul

Értékesítést támogató funkciók.

**Lehetőségek:**
- állatok meghirdetése  
- földterületek értékesítése  
- képek, leírások és árak megjelenítése  

---

## 🛠️ Alkalmazott technológiák

### Frontend
- HTML5  
- CSS3  
- JavaScript  
- Bootstrap  

### Backend
- PHP  
- REST-szerű API végpontok  

### Adatbázis
- MySQL / MariaDB  

### Fejlesztői eszközök
- Visual Studio Code  
- Git  
- GitHub  

---

## 🗄️ Adatbázis struktúra (főbb táblák)

- `users`  
- `animals`  
- `animal_docs`  
- `lands`  
- `land_logs`  
- `clients`  
- `expenses`  
- `incomes`  
- `marketplace`  

---

## 👨‍💻 Munkamegosztás

### „A” fejlesztő
- Backend fejlesztés  
- Adatbázis tervezés  
- Állatok és Földek modul logika  
- E-mail funkciók  

### „B” fejlesztő
- Frontend megjelenés és UX  
- Költségvetés modul felülete  
- Ügyfelek modul felülete  
- Piactér grafikus elemei  

### 🤝 Közös feladatok
- Kezdőoldal kialakítása  
- Tesztelés  
- Hibajavítás  
- Végső dokumentáció  

---

## ⏱️ Fejlesztési ütemezés

1. Funkcionális követelmények és adatbázisterv  
2. Projekt alapstruktúra kialakítása  
3. Modulok fokozatos fejlesztése  
4. Tesztelés és optimalizálás  
5. Vizsgához szükséges prezentáció és dokumentáció  

---

## ✅ Összegzés

A projekt eredményeként egy **modern, skálázható és felhasználóbarát agráradminisztrációs rendszer** jön létre, amely valódi segítséget nyújt a mezőgazdasági vállalkozások mindennapi működésében.
