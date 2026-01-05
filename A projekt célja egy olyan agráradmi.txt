# 🌾 Agráradminisztrációs Webalkalmazás

## 📌 Projekt célja

A projekt célja egy olyan **agráradminisztrációs webalkalmazás** fejlesztése, amely egyetlen felületen teszi átláthatóvá és kezelhetővé a gazdaság működéséhez szükséges összes lényeges információt.

Bejelentkezés után a felhasználót egy **összefoglaló kezdőoldal (Dashboard)** fogadja, ahol az alábbi főbb mutatók jelennek meg:

- 🐄 Az állatok aktuális száma  
- 💰 Aktuális pénzügyi egyenleg  
- ⏳ Közelgő feladatok  
- 📊 Alapvető statisztikák  

Az alkalmazás több, egymástól elkülönülő, mégis szorosan együttműködő modulból áll.

---

## 🧩 Funkcionális modulok

### 🐄 Állatok modul

Az Állatok modul az állatállomány részletes nyilvántartását biztosítja.

**Funkciók:**
- Új állatok rögzítése
- Egyedi adatlap minden állathoz
- Kapcsolódó dokumentumok kezelése
- Állatorvosi jegyzetek és egészségügyi adatok rögzítése

**Tárolt adatok:**
- faj  
- egyedi azonosító  
- életkor  
- istálló  
- megjegyzések  

---

### 🌱 Földek modul

A Földek modul a saját és bérelt területek kezelésére szolgál.

**Funkciók:**
- Földterületek rögzítése
- Az adott földeken elvégzett munkafolyamatok nyomon követése

**Tárolt adatok:**
- név  
- helyrajzi szám  
- területméret  

---

### 📁 Dokumentáció modul

A Dokumentáció modul egy **központi tárhelyet** biztosít minden, a gazdaság működéséhez kapcsolódó irat számára.

**Kezelt dokumentumok:**
- bérleti szerződések  
- támogatási formanyomtatványok  
- egyéb hivatalos dokumentumok  

**Funkciók:**
- rendszerezett tárolás  
- dokumentumok letöltése  

---

### 💸 Költségvetés modul

A Költségvetés modul a pénzügyi adatok átlátható kezelését teszi lehetővé.

**Funkciók:**
- bevételek és kiadások rögzítése
- kategorizálás
- automatikus pénzügyi egyenlegszámítás
- grafikonok és kimutatások készítése

**Riportok:**
- havi bontás  
- éves összesítés  

---

### 👥 Ügyfelek modul

Az Ügyfelek modul célja egy egységes kapcsolattartói adatbázis létrehozása.

**Kezelt kapcsolatok:**
- felvásárlók  
- partnerek  
- egyéb kapcsolattartók  

**Extra funkciók:**
- kör-e-mail küldés  

---

### 🛒 Piactér modul

A Piactér modul lehetőséget biztosít saját erőforrások értékesítésére.

**Lehetőségek:**
- állatok meghirdetése  
- földterületek meghirdetése  
- árak, leírások és képek megjelenítése  

---

## 🛠️ Alkalmazott technológiák

### Frontend
- HTML5  
- CSS3  
- JavaScript  
- Bootstrap  

### Backend
- PHP  
- REST-szerű végpontok  

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
- Adatbázis kezelés  
- Állatok és Földek modul logikai megvalósítása  
- E-mail küldési funkciók  

### „B” fejlesztő
- Frontend megjelenés és használhatóság  
- Költségvetés modul felülete  
- Ügyfelek modul felülete  
- Piactér grafikus elemei  

### 🤝 Közös feladatok
- Kezdőoldal kialakítása  
- Tesztelés  
- Hibajavítás  
- Végső dokumentáció elkészítése  

---

## ⏱️ Fejlesztési ütemezés

1. Funkcionális követelmények és adatbázisterv elkészítése  
2. Projekt alapstruktúrájának felépítése  
3. Modulok egymás utáni fejlesztése  
4. Tesztelés és optimalizálás  
5. Prezentáció és szakmai vizsgához szükséges dokumentáció elkészítése  

---

## ✅ Összegzés

A projekt végére egy **modern, könnyen használható agráradminisztrációs webalkalmazás** jön létre, amely hatékonyan támogatja a mezőgazdasági adminisztrációt és a gazdaság mindennapi működését.
