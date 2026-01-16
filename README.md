# 🌾 Agráradminisztrációs Webalkalmazás

## 📌 Projekt célja

Az **Agráradminisztrációs Webalkalmazás** célja egy korszerű, könnyen áttekinthető rendszer létrehozása, amely egyetlen felületen támogatja a mezőgazdasági gazdaságok adminisztratív feladatait, a munkafolyamatok követését és az adatvezérelt döntéshozatalt.

Bejelentkezést követően a felhasználót egy összefoglaló dashboard fogadja, ahol az alábbi kulcsinformációk érhetők el:

- 🐄 Aktuális állatlétszám  
- 💰 Pénzügyi egyenleg  
- ⏳ Közelgő feladatok  
- 📊 Alapvető statisztikák és kimutatások  

---

## 🧩 Funkcionális modulok

Az alkalmazás moduláris rendszerben épül fel: az egyes modulok önállóan működnek, ugyanakkor szorosan együttműködnek egymással.

### 🐑 Állatok modul

Az állatállomány teljes körű nyilvántartását biztosítja.

**Funkciók:**
- Új állatok rögzítése
- Egyedi adatlapok kezelése
- Dokumentumok feltöltése
- Állatorvosi és egészségügyi megjegyzések

**Tárolt adatok:**
- faj  
- azonosító  
- életkor  
- istálló  
- megjegyzések  

---

### 🌾 Földek modul

A saját és bérelt földterületek adminisztrációját segíti.

**Funkciók:**
- Földterületek nyilvántartása
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
- strukturált tárolás  
- gyors letöltési lehetőség 

---

### 💸 Költségvetés modul

A gazdaság pénzügyeinek átlátható nyomon követését szolgálja.

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

Egységes adatbázist biztosít a kapcsolattartók számára.

**Típusok:**
- felvásárlók  
- partnerek  
- egyéb kapcsolatok  

**Extra funkciók:**
- kör-e-mail küldés  

---

### 🛒 Piactér modul

Az értékesítési folyamatokat támogató funkciókat tartalmaz.

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

1. Funkcionális követelmények és adatbázisterv kidolgozása 
2. Projekt alapstruktúra létrehozása 
3. Modulok fokozatos fejlesztése  
4. Tesztelés és optimalizálás  
5. Vizsgához szükséges prezentáció és dokumentáció  

---

## ✅ Összegzés

A projekt eredményeként egy **modern, skálázható és felhasználóbarát agráradminisztrációs webalkalmazás** készül el, amely hatékony támogatást nyújt a mezőgazdasági vállalkozások mindennapi működéséhez.
