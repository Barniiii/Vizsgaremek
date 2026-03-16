-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2026. Már 16. 19:29
-- Kiszolgáló verziója: 10.4.27-MariaDB
-- PHP verzió: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `bbagrar`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `animals`
--

CREATE TABLE `animals` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `species` varchar(100) NOT NULL,
  `breed` varchar(100) DEFAULT NULL,
  `identifier` varchar(100) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `stable` varchar(100) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `farm_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- A tábla adatainak kiíratása `animals`
--

INSERT INTO `animals` (`id`, `user_id`, `name`, `species`, `breed`, `identifier`, `birth_date`, `stable`, `notes`, `created_at`, `farm_id`) VALUES
(2, 4, 'Néró', 'Ló', 'Noniusz', '1', '0222-02-22', '1', 'Semmi', '2026-02-10 09:54:22', 1),
(6, 4, 'Bambi', 'Ló', 'Keverék', 'Hu123', '2026-03-12', 'Istálló', NULL, '2026-03-14 08:01:58', 1),
(7, 13, 'Néró', 'Ló', 'Nóniusz', 'HU123', '2026-03-16', 'Istálló', NULL, '2026-03-16 18:19:00', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `calendar_events`
--

CREATE TABLE `calendar_events` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `event_date` date NOT NULL,
  `event_time` time DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `event_type` enum('task','appointment','feeding','vet','harvest','other') NOT NULL,
  `priority` enum('low','medium','high','urgent') DEFAULT 'medium',
  `status` enum('pending','completed','cancelled') DEFAULT 'pending',
  `location` varchar(255) DEFAULT NULL,
  `animal_id` int(11) DEFAULT NULL,
  `recurring_type` enum('none','daily','weekly','monthly','yearly') DEFAULT 'none',
  `recurring_interval` int(11) DEFAULT 1,
  `recurring_end_date` date DEFAULT NULL,
  `reminder_before` int(11) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `calendar_events`
--

INSERT INTO `calendar_events` (`id`, `user_id`, `title`, `description`, `event_date`, `event_time`, `end_date`, `end_time`, `event_type`, `priority`, `status`, `location`, `animal_id`, `recurring_type`, `recurring_interval`, `recurring_end_date`, `reminder_before`, `color`, `created_at`, `updated_at`) VALUES
(2, 13, 'Állatorvos', NULL, '2026-03-20', '10:00:00', '2026-03-20', '11:00:00', 'vet', 'high', 'pending', NULL, 7, 'none', 1, NULL, 60, NULL, '2026-03-16 18:24:00', '2026-03-16 18:24:00'),
(3, 13, 'Saci', NULL, '2026-03-17', '11:00:00', NULL, '11:30:00', 'task', 'medium', 'pending', NULL, 7, 'none', 1, NULL, 60, NULL, '2026-03-16 18:24:48', '2026-03-16 18:24:48');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `tax_number` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `postal_code` varchar(20) DEFAULT NULL,
  `country` varchar(100) DEFAULT 'Magyarország',
  `contact_person` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `payment_terms` varchar(100) DEFAULT NULL,
  `status` enum('active','inactive','lead') DEFAULT 'active',
  `last_contact` date DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `farm_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- A tábla adatainak kiíratása `clients`
--

INSERT INTO `clients` (`id`, `user_id`, `name`, `company_name`, `tax_number`, `email`, `phone`, `address`, `city`, `postal_code`, `country`, `contact_person`, `website`, `payment_terms`, `status`, `last_contact`, `type`, `notes`, `created_at`, `updated_at`, `farm_id`) VALUES
(5, 4, 'Kovács József', 'Premo Zrt.', '123', 'kovacsjozsef@gmail.com', '112', 'Ménes utca 2', 'Cserszegtomaj', '8372', 'Magyarország', NULL, NULL, 'alku', 'active', '2026-03-14', 'felvásárló', NULL, '2026-03-14 08:05:02', NULL, 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `documents`
--

CREATE TABLE `documents` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `category` varchar(100) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `filepath` text NOT NULL,
  `upload_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `farm_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `expenses`
--

CREATE TABLE `expenses` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `category` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `farm_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- A tábla adatainak kiíratása `expenses`
--

INSERT INTO `expenses` (`id`, `user_id`, `amount`, `category`, `description`, `date`, `created_at`, `farm_id`) VALUES
(1, 4, '350000.00', 'Üssző', NULL, '2026-03-10', '2026-03-10 10:48:52', 1),
(2, 4, '20000.00', 'Zab', NULL, '2026-03-14', '2026-03-14 08:04:04', 1),
(3, 13, '100000.00', 'Zab', '10q', '2026-03-16', '2026-03-16 18:26:14', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `incomes`
--

CREATE TABLE `incomes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `category` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `farm_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- A tábla adatainak kiíratása `incomes`
--

INSERT INTO `incomes` (`id`, `user_id`, `amount`, `category`, `description`, `date`, `created_at`, `farm_id`) VALUES
(1, 4, '450000.00', 'Bika eladás', NULL, '2026-03-10', '2026-03-10 10:49:15', 1),
(2, 4, '3500.00', 'Lovagoltatás', NULL, '2026-03-14', '2026-03-14 08:04:16', 1),
(3, 13, '180000.00', 'Bértartás', NULL, '2026-03-16', '2026-03-16 18:26:35', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `lands`
--

CREATE TABLE `lands` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `plot_number` varchar(100) DEFAULT NULL,
  `area` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `farm_id` int(11) NOT NULL DEFAULT 1,
  `city` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- A tábla adatainak kiíratása `lands`
--

INSERT INTO `lands` (`id`, `user_id`, `name`, `plot_number`, `area`, `created_at`, `farm_id`, `city`) VALUES
(1, 4, 'Holdföld', '27/03', '60.00', '2026-03-14 08:02:24', 1, ''),
(2, 4, 'Nénik földj', '1', '2.00', '2026-03-14 08:02:42', 1, ''),
(4, 13, 'Nénik földje', '12/03', '2.00', '2026-03-16 18:20:02', 1, '');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `marketplace`
--

CREATE TABLE `marketplace` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `type` varchar(100) NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `image_url` text DEFAULT NULL,
  `status` varchar(20) DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `location` varchar(255) DEFAULT NULL,
  `contact_name` varchar(255) DEFAULT NULL,
  `contact_phone` varchar(20) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `views` int(11) DEFAULT 0,
  `is_featured` tinyint(1) DEFAULT 0,
  `farm_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- A tábla adatainak kiíratása `marketplace`
--

INSERT INTO `marketplace` (`id`, `user_id`, `title`, `description`, `type`, `price`, `image_url`, `status`, `created_at`, `updated_at`, `location`, `contact_name`, `contact_phone`, `contact_email`, `views`, `is_featured`, `farm_id`) VALUES
(5, 4, 'Mtz-82', '120 óra', 'gép', '800000.00', 'https://www.szalagro.hu/wp-content/uploads/2020/04/820.png', 'active', '2026-03-10 11:58:51', '2026-03-10 11:58:51', 'Keszthely', 'Savanyó Balázs', '112', 'nagy@gmail.com', 0, 0, 1),
(6, 4, 'Angus üssző', 'Anyéd faszát kovajo', 'állat', '350000.00', '', 'active', '2026-03-13 06:53:24', '2026-03-13 06:53:24', NULL, NULL, NULL, NULL, 0, 0, 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `role` varchar(20) DEFAULT NULL,
  `farm_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password_hash`, `created_at`, `role`, `farm_id`) VALUES
(2, 'barni', 'nagybarni@gmail.com', '$2a$10$Z7BAcLARoDSfaAQfDQgXPOgrXsTPhjAEU77Djoi/o82F2AnXq0FvO', '2026-02-03 09:57:58', 'admin', 1),
(4, 'savanyo', 'savanyo.balazs0@gmail.com', '$2a$10$AOYGcgDcMoGt3rCwwW.F9O8a7oPHAYfOZ2v92Lb4drB4cvqy1zWRi', '2026-02-10 09:09:41', 'admin', 1),
(13, 'Kovajo', 'kovajo@gmail.com', '$2a$10$ty2CEwAR6UPe71rcgxY/uOnsiKGx5NwK6i6lwlSdWuCfbtKeQYQ8C', '2026-03-16 18:13:36', 'owner', 1);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `animals`
--
ALTER TABLE `animals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_animals_user` (`user_id`);

--
-- A tábla indexei `calendar_events`
--
ALTER TABLE `calendar_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user` (`user_id`),
  ADD KEY `idx_date` (`event_date`),
  ADD KEY `idx_animal` (`animal_id`);

--
-- A tábla indexei `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_clients_user` (`user_id`);

--
-- A tábla indexei `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_documents_user` (`user_id`);

--
-- A tábla indexei `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_expenses_user` (`user_id`);

--
-- A tábla indexei `incomes`
--
ALTER TABLE `incomes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_incomes_user` (`user_id`);

--
-- A tábla indexei `lands`
--
ALTER TABLE `lands`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_lands_user` (`user_id`);

--
-- A tábla indexei `marketplace`
--
ALTER TABLE `marketplace`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_marketplace_user` (`user_id`),
  ADD KEY `idx_marketplace_type` (`type`),
  ADD KEY `idx_marketplace_status` (`status`),
  ADD KEY `idx_marketplace_created_at` (`created_at`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `animals`
--
ALTER TABLE `animals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT a táblához `calendar_events`
--
ALTER TABLE `calendar_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT a táblához `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT a táblához `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT a táblához `incomes`
--
ALTER TABLE `incomes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT a táblához `lands`
--
ALTER TABLE `lands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT a táblához `marketplace`
--
ALTER TABLE `marketplace`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `animals`
--
ALTER TABLE `animals`
  ADD CONSTRAINT `fk_animals_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Megkötések a táblához `calendar_events`
--
ALTER TABLE `calendar_events`
  ADD CONSTRAINT `calendar_events_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `calendar_events_ibfk_2` FOREIGN KEY (`animal_id`) REFERENCES `animals` (`id`) ON DELETE SET NULL;

--
-- Megkötések a táblához `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `fk_clients_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Megkötések a táblához `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `fk_documents_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Megkötések a táblához `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `fk_expenses_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Megkötések a táblához `incomes`
--
ALTER TABLE `incomes`
  ADD CONSTRAINT `fk_incomes_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Megkötések a táblához `lands`
--
ALTER TABLE `lands`
  ADD CONSTRAINT `fk_lands_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Megkötések a táblához `marketplace`
--
ALTER TABLE `marketplace`
  ADD CONSTRAINT `fk_marketplace_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
