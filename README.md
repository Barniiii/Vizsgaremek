# BBAgrar / Vizsgaremek

Professzionális, moduláris agrár- és vállalkozásmenedzsment webalkalmazás mezőgazdasági vállalkozások, állattartók és gazdaságüzemeltetők számára.

## Áttekintés

A BBAgrar egy teljes stack webalkalmazás, amely modern adminisztrációs és menedzsment eszközöket biztosít mezőgazdasági vállalkozások számára. A rendszer központi célja, hogy egyetlen platformon kezelhető legyen a gazdaság működésének legtöbb operatív területe.

A projekt vizsgaremek / komplex portfólió projektként készült, skálázható architektúrával és valós üzleti használatra alkalmas modulrendszerrel.

---

## Fő Funkciók

### Dashboard

* Áttekintő kezdőoldal statisztikákkal
* Gyors hozzáférés a fő modulokhoz
* Fontos értesítések és aktivitások megjelenítése

### Állatnyilvántartás

* Állatok rögzítése és kezelése
* Szülők hozzárendelése / genetikai kapcsolatok
* Tömeges állatfelvitel támogatása
* Nem / ivar / herélt státusz kezelése
* Állatok szerkesztése és adatlapkezelése

### Földterület Kezelés

* Földterületek nyilvántartása
* Parcellák / földegységek kezelése
* Területhez kapcsolódó adatok tárolása

### Költségvetés / Pénzügy

* Kiadások és bevételek követése
* Budget modul gazdasági áttekintéshez
* Pénzügyi riportok alapjai

### Naptár / Eseménykezelés

* Gazdasági események kezelése
* Határidők, feladatok, emlékeztetők
* Naptárnézetes megjelenítés

### Dokumentumkezelés

* Dokumentum feltöltés és tárolás
* Fájlkezelés szerveren
* Dokumentumkategorizálás

### Ügyfélkezelés (CRM)

* Ügyféladatbázis kezelése
* Kapcsolattartási információk tárolása
* Kör-email támogatás előkészítve

### Alkalmazotti Modul

* Dolgozók kezelése
* Munkaidő / timesheet nyilvántartás
* Munkavállalói adatok tárolása

### Marketplace

* Piactér / hirdetéskezelő rendszer
* Több képes termékfeltöltés támogatás
* Hirdetéslista és részletes megtekintés

### Profil és Beállítások

* Profilkép kezelés
* Személyes adatok módosítása
* Felhasználói beállítások
* Theme / megjelenés támogatás

### Értesítési Rendszer

* In-app értesítések
* Toast / Notification Center
* Email rendszer integráció előkészítve

---

## Technológiai Stack

### Frontend

* React 18
* TypeScript
* Vite
* Tailwind CSS
* React Router DOM
* Lucide React Icons

### Backend

* Node.js
* Express.js
* JWT Authentication
* Multer File Upload
* Bcrypt Password Hashing

### Adatbázis

* MySQL / MariaDB
* SQL migrációs rendszer

### DevOps / Környezet

* Docker Compose
* Docker konténerizáció backend / DB számára

---

## Projekt Struktúra

```bash
repa/
├── src/                    # Frontend forráskód
│   ├── pages/             # Oldalak / modulok
│   ├── components/        # Újrafelhasználható komponensek
│   ├── auth/              # Auth logika
│   ├── context/           # React Context-ek
│   └── api/               # HTTP kliens
│
├── server/                # Backend API
│   ├── src/               # Express szerver
│   ├── db/                # SQL init / migrációk
│   ├── routes/            # API route-ok
│   └── uploads/           # Feltöltött fájlok
│
└── tests/                 # API / UI tesztek
```

---

## Telepítés

### Előfeltételek

* Node.js 18+
* Docker Desktop / Docker Engine
* npm

### Indítás

```bash
npm install
cd server
npm install
cd ..
docker compose up -d
npm run dev
```

---

## Környezeti Változók

### Frontend (.env)

```env
VITE_API_URL=http://localhost:3000
```

### Backend (server/.env)

```env
PORT=3000
JWT_SECRET=your_secret
DB_HOST=localhost
DB_USER=root
DB_PASSWORD=password
DB_NAME=bbagrar
```

---

## API Főbb Funkcionalitások

* Auth / Login / Register
* JWT alapú jogosultságkezelés
* Fájl feltöltés / dokumentumkezelés
* Marketplace képfeltöltés
* Profilkép kezelés
* CRUD végpontok minden fő modulhoz

---

## Tesztelés

A projekt tartalmaz:

* REST API teszteket
* Selenium UI teszteket

Futtatás a `tests/` mappából konfiguráció szerint.

---

## Biztonság

* Jelszavak bcrypt hash-el tárolva
* JWT token alapú autentikáció
* Védett route-ok frontend és backend oldalon
* Fájlfeltöltés külön mappastruktúrával

---

## Fejlesztési Állapot

A projekt aktív fejlesztés alatt áll. További tervezett fejlesztések:

* Excel export a költségvetéshez
* Teljes email kampány rendszer
* Fejlettebb értesítési workflow
* Marketplace galéria fejlesztések
* Admin panel UX finomítás
* Reszponzivitás további javítása

---

## Célközönség

* Egyéni gazdálkodók
* Állattartók
* Agrárvállalkozások
* Családi gazdaságok
* Mezőgazdasági adminisztrációt digitalizáló cégek

---

## Licenc

Belső / oktatási / vizsgaprojekt felhasználásra készült. Kereskedelmi felhasználás előtt licencelés javasolt.

---

## Készítő

Készítette: Balázs Savanyó
Vizsgaremek projekt / portfólió rendszer
