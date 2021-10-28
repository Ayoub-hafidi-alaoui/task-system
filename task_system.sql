-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 28 oct. 2021 à 15:12
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP : 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `task_system`
--

-- --------------------------------------------------------

--
-- Structure de la table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `type` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `created_at`, `type`) VALUES
(1, 'admin1', 'admin1@gmail.com', '$2y$10$0uJSQeH0EDS.lv7QNzeRL.V/Vo8DPal2bG7IP8oyEs3qIVFGcXGIG', '2021-10-25 18:29:06', 0),
(2, 'fisyhofos@mailinator.com', 'gigylizik@mailinator.com', 'Pa$$w0rd!', '2021-10-25 19:20:33', 1),
(3, 'Scott Silva', 'semizar@mailinator.com', '$2y$10$PDP9BRUgOleL4K.TygnB5eDrVlFFTtj3i/ieXyWL84gUH8BpF.gne', '2021-10-25 19:33:44', 0),
(4, '', 'zazahej@mailinator.com', '$2y$10$iEIYxG1dBEyUE5gWKxu6huOQQCYJw6zY3UK.cIIZGReVujFdL54dW', '2021-10-25 19:33:58', 0),
(5, 'admin4', 'admin4@gmail.com', '$2y$10$2V6L.cy1L2UQpvLl/fVMcO0d.iWwq1Sx3A8gWwBLMwY37cnWzQaNa', '2021-10-28 11:05:23', 1),
(6, 'Ayoub', 'ayoub@gmail.com', '$2y$10$iLTmSmKPa.rnl/BiRsfVGeROrhMo1eRPUhjhJlVWrUhSglwcIRRIO', '2021-10-28 11:06:31', 0),
(7, 'admin2', 'admin2@gmail.com', '$2y$10$uKLVFambKtzG5nvO3N8kLOiowY/iaxQUjWb5hG2llr.Yka5GSineS', '2021-10-28 12:22:51', 1),
(8, 'ayoub1', 'ayoub1@gmail.com', '$2y$10$Wvwa3YOO/mE4hqKtHTrQm.JQflEPZj2t0rA8pIHqCMp.2mpdXdlLC', '2021-10-28 12:28:21', 1),
(9, 'superAdmin', 'superAdmin@gmail.com', '$2y$10$0MXEKbjl8QEEe1nW5Zz2DuxM5a94.HjejmdyeSdl6NjDF288lI9za', '2021-10-28 12:42:53', 1),
(10, '', '', '$2y$10$4naMnKxC4VLGh7ON/q5zoOXgKJ4eQN.fBhtVWIp5.kJbFgX5.OAZ2', '2021-10-28 12:46:33', 0),
(11, '', '', '$2y$10$2jr4tea/5xIQ6hgHtK6pEuFqa/Pvxfjv7UIaUqPQXRnKqI7rYpgG.', '2021-10-28 12:55:04', 0),
(12, '', '', '$2y$10$54Zb8676Jn7CJjrEp3SBeOu6yODBJLrjKBR5tjxsw8G5y4r6z71k6', '2021-10-28 13:08:47', 0);

-- --------------------------------------------------------

--
-- Structure de la table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `body`, `status`, `user_id`, `created_at`) VALUES
(8, 'task1', 'this is task1', 0, 12, '2021-10-23 12:58:58'),
(9, 'task2', 'this is task2', 0, 13, '2021-10-23 12:59:18');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `status`, `created_at`) VALUES
(12, 'rudos', 'saresogaq@mailinator.com', '$2y$10$ixtjOFCKZ6ArWNjrviMreuuMPGdPioqj8Ebq4cBeQx2m1UiHAA93O', 1, '2021-10-23 12:42:22'),
(13, 'pyfyge', 'qupirisy@mailinator.com', '$2y$10$3l3RTzwQ4u.ILEv/4ci6BuGyG5WayAXrukQihQ24dtzv2Hv26MRIq', 0, '2021-10-23 12:59:05'),
(14, 'jarafinyf', 'vubo@mailinator.com', '$2y$10$UcXPxWzz3tZWILfZ5jB9VugNuLbLhBPWW/XxwpuQl6lD5WNkAqPW2', 0, '2021-10-25 18:58:03'),
(15, 'admin1', 'admin1@gmail.com', '$2y$10$hb8D.zaAwxShgQs9FN4aV.D1zKqGU9taoTtFRTsKGAuwhEm5Pheuy', 0, '2021-10-28 12:20:25'),
(16, 'admin2', 'admin2@gmail.com', '$2y$10$dYZ5a.DagNvvohaX1j2BcOCH8Wt0wckzlnQW9glKNoWWvTm3DxrFm', 0, '2021-10-28 12:21:05');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
