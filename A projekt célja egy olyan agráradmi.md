# 🌾 Agráradminisztrációs Webalkalmazás

## 📌 Projekt célja

A projekt célja egy olyan **agráradminisztrációs webalkalmazás** fejlesztése, amely egyetlen felületen teszi átláthatóvá és kezelhetővé a gazdaság működéséhez szükséges összes lényeges információt.

Bejelentkezés után a felhasználót egy **összefoglaló kezdőoldal (Dashboard)** fogadja, ahol az alábbi főbb mutatók jelennek meg:

- 🐄 Állatok száma  
- 💰 Aktuális pénzügyi egyenleg  
- ⏳ Közelgő feladatok  
- 📊 Alapvető statisztikák  

Az alkalmazás több, külön funkcionális területet lefedő modulból áll.

---

## 🧩 Funkcionális modulok

### 🐄 Állatok modul

Az Állatok modul lehetőséget biztosít új állatok részletes rögzítésére.

**Funkciók:**
- Új egyedek felvétele  
- Egyedi adatlap minden állathoz  
- Kapcsolódó dokumentumok tárolása  
- Állatorvosi jegyzetek és egészségügyi információk rögzítése  

**Tárolt adatok:**
- faj  
- azonosító  
- életkor  
- istálló  
- megjegyzések  

---

### 🌱 Földek modul

A Földek modul a saját és bérelt területek kezelésére szolgál.

**Funkciók:**
- Földek felvitele névvel, helyrajzi számmal és mérettel  
- Az adott földön elvégzett munkafolyamatok nyomon követése  

---

### 📁 Dokumentáció modul

A Dokumentáció modul egy **központi tárhelyet** biztosít minden fontos irat számára.

**Kezelt dokumentumok:**
- bérleti szerződések  
- támogatási formanyomtatványok  
- egyéb hivatalos iratok  

**Funkciók:**
- rendszerezett tárolás  
- dokumentumok letöltése  

---

### 💸 Költségvetés modul

A Költségvetés modul a pénzügyi adatok kategorizált kezelését teszi lehetővé.

**Funkciók:**
- bevételek és kiadások rögzítése  
- automatikus egyenlegszámítás  
- grafikonok és kimutatások készítése  

**Riportok:**
- havi bontás  
- éves összesítés  

---

### 👥 Ügyfelek modul

Az Ügyfelek modul egy egységes adatbázist biztosít a kapcsolattartók számára.

**Kezelt kapcsolatok:**
- felvásárlók  
- partnerek  
- egyéb kapcsolattartók  

**Extra funkciók:**
- kör-e-mail küldés  

---

### 🛒 Piactér modul

A Piactér modul lehetőséget ad saját állatok vagy földek meghirdetésére.

**Lehetőségek:**
- állatok meghirdetése  
- földek meghirdetése  
- árak, leírások és képek feltöltése  

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
- Állatok és Földek modul működési logikája  
- E-mail küldési funkciók  

### „B” fejlesztő
- Frontend megjelenés és UX  
- Költségvetés, Ügyfelek és Piactér modulok felületei  
- Grafikus elemek kialakítása  

### 🤝 Közös feladatok
- Kezdőoldal kialakítása  
- Tesztelés és hibajavítás  
- Végső dokumentáció összeállítása  

---

## ⏱️ Fejlesztési ütemezés

1. Funkcionális követelmények és adatbázisterv elkészítése  
2. Projekt alapstruktúra felépítése  
3. Modulok egymás utáni fejlesztése  
4. Tesztelés és optimalizálás  
5. Prezentáció és dokumentáció elkészítése  

---

## ✅ Összegzés

A projekt végére egy **modern, könnyen használható webalkalmazás** jön létre, amely hatékonyan támogatja a mezőgazdasági adminisztrációt.
