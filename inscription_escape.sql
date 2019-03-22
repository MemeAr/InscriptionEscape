-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Ven 22 Mars 2019 à 16:05
-- Version du serveur :  5.7.25-0ubuntu0.18.04.2
-- Version de PHP :  7.2.15-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `inscription_escape`
--

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `equipe` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `cursus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `team` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `name`, `firstname`, `email`, `email_verified_at`, `cursus`, `team`, `updated_at`, `created_at`) VALUES
(2, 'a', 'a', 'a@a.a', NULL, 'CITISE 1', 1, '2019-03-22 12:21:30', '2019-03-21 13:47:15'),
(3, 'b', 'b', 'b@b.b', NULL, 'DTA', 1, '2019-03-22 12:21:30', '2019-03-21 13:47:32'),
(4, 'c', 'c', 'c@c.c', NULL, 'DU SMW', 2, '2019-03-22 12:21:30', '2019-03-21 13:47:49'),
(5, 'd', 'd', 'd@d.d', NULL, 'FISA DE', 1, '2019-03-22 12:21:30', '2019-03-21 13:48:09'),
(6, 'e', 'e', 'e@e.e', NULL, 'FISA IPSI 1', 1, '2019-03-22 12:21:30', '2019-03-21 13:48:24'),
(8, 'g', 'g', 'g@g.g', NULL, 'L3 Infocom', 2, '2019-03-22 12:21:30', '2019-03-21 13:48:50'),
(9, 'h', 'h', 'h@h.h', NULL, 'M1 DCIMN', 1, '2019-03-22 12:21:30', '2019-03-21 13:49:02'),
(10, 'i', 'i', 'i@i.i', NULL, 'CITISE 1', 2, '2019-03-22 12:21:30', '2019-03-21 13:49:13'),
(11, 'j', 'j', 'j@j.j', NULL, 'DTA', 3, '2019-03-22 12:21:30', '2019-03-21 13:49:23'),
(12, 'k', 'k', 'k@k.k', NULL, 'DU SMW', 3, '2019-03-22 12:21:30', '2019-03-21 13:49:37'),
(13, 'l', 'l', 'l@l.l', NULL, 'FISA DE', 3, '2019-03-22 12:21:30', '2019-03-21 13:49:50'),
(14, 'm', 'm', 'm@m.m', NULL, 'FISA IPSI 1', 3, '2019-03-22 12:21:30', '2019-03-21 13:50:05'),
(15, 'n', 'n', 'n@n.n', NULL, 'FISA IPSI 1', 4, '2019-03-22 12:21:30', '2019-03-21 13:50:17'),
(16, 'o', 'o', 'o@o.o', NULL, 'L3 Infocom', 3, '2019-03-22 12:21:30', '2019-03-21 13:50:30'),
(17, 'p', 'p', 'p@p.p', NULL, 'M1 DCIMN', 2, '2019-03-22 12:21:30', '2019-03-21 13:50:43'),
(18, 'q', 'q', 'q@q.q', NULL, 'FISA DE', 4, '2019-03-22 12:21:30', '2019-03-21 13:50:55'),
(19, 'r', 'r', 'r@r.r', NULL, 'FISA IPSI 1', 6, '2019-03-22 12:21:30', '2019-03-21 13:51:06'),
(21, 't', 't', 't@t.t', NULL, 'DU SMW', 5, '2019-03-22 12:21:30', '2019-03-21 13:51:29'),
(22, 'u', 'u', 'u@u.u', NULL, 'FISA DE', 6, '2019-03-22 12:21:30', '2019-03-21 13:51:42'),
(23, 'v', 'v', 'v@v.v', NULL, 'DTA', 4, '2019-03-22 12:21:30', '2019-03-21 13:51:52'),
(24, 'w', 'w', 'w@w.w', NULL, 'L3 Infocom', 5, '2019-03-22 12:21:30', '2019-03-21 13:52:06'),
(25, 'x', 'x', 'x@x.x', NULL, 'M1 DCIMN', 4, '2019-03-22 12:21:30', '2019-03-21 13:52:18'),
(26, 'y', 'y', 'y@y.y', NULL, 'DU SMW', 6, '2019-03-22 12:21:30', '2019-03-21 13:52:29'),
(27, 'z', 'z', 'z@z.z', NULL, 'DTA', 5, '2019-03-22 12:21:30', '2019-03-21 13:52:41'),
(28, 'Amelie', 'Ar', 'meme@sonmail.fr', NULL, 'CITISE 1', 4, '2019-03-22 12:21:30', '2019-03-22 09:25:47'),
(29, 'Veyrard', 'Martin', 'zoirhg@zhg.ezf', NULL, 'DTA', 6, '2019-03-22 12:21:30', '2019-03-22 10:03:12'),
(30, 'Elineda', 'Kevin', 'zeroju@zoeriergh.ezf', NULL, 'M1 DCIMN', 5, '2019-03-22 12:21:30', '2019-03-22 10:03:29'),
(31, 'An', 'Elise', 'Relise@eroihk.uh', NULL, 'CITISE 1', 5, '2019-03-22 12:21:30', '2019-03-22 10:54:55'),
(32, 'Hansali', 'Maelis', 'maelis.hansali@hotmail.com', NULL, 'DTA', 7, '2019-03-22 12:21:30', '2019-03-22 11:46:37'),
(33, 'Arnaud', 'Amelie', 'ameliedesfamilles@sonmail.fr', NULL, 'FISE 1', 2, '2019-03-22 12:21:30', '2019-03-22 11:50:05'),
(34, 'suqyrfg', 'udgysdughy', 'uidghsduhg@dsiufhsudih.df', NULL, 'CITISE 1', 6, '2019-03-22 12:21:30', '2019-03-22 11:57:45'),
(35, 'Parrat', 'Joel', 'joel@parrat.fr', NULL, 'DTA', 7, '2019-03-22 12:21:30', '2019-03-22 12:21:06');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `tea` (`team`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
