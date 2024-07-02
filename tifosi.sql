-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 02 juil. 2024 à 17:19
-- Version du serveur : 8.0.37
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tifosi`
--

-- --------------------------------------------------------

--
-- Structure de la table `achats`
--

CREATE TABLE `achats` (
  `id` int NOT NULL,
  `client_id` int DEFAULT NULL,
  `focaccia_id` int DEFAULT NULL,
  `date_achat` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `appartient`
--

CREATE TABLE `appartient` (
  `id` int NOT NULL,
  `boisson_id` int DEFAULT NULL,
  `marque_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `boisson`
--

CREATE TABLE `boisson` (
  `id_boisson` int NOT NULL,
  `nom_boisson` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id_client` int NOT NULL,
  `nom_client` varchar(45) NOT NULL,
  `age` int NOT NULL,
  `cp_client` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `comprend`
--

CREATE TABLE `comprend` (
  `id` int NOT NULL,
  `focaccia_id` int DEFAULT NULL,
  `ingredient_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `contient`
--

CREATE TABLE `contient` (
  `id` int NOT NULL,
  `menu_id` int DEFAULT NULL,
  `boisson_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `est_constitué`
--

CREATE TABLE `est_constitué` (
  `id` int NOT NULL,
  `menu_id` int DEFAULT NULL,
  `focaccia_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `focaccia`
--

CREATE TABLE `focaccia` (
  `id_focaccia` int NOT NULL,
  `nom_focaccia` varchar(45) NOT NULL,
  `prix` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ingredients`
--

CREATE TABLE `ingredients` (
  `id_ingredient` int NOT NULL,
  `nom_ingredient` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `marque`
--

CREATE TABLE `marque` (
  `id_marque` int NOT NULL,
  `nom_marque` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int NOT NULL,
  `nom_menu` varchar(45) NOT NULL,
  `prix_menu` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `paye`
--

CREATE TABLE `paye` (
  `id_client` int DEFAULT NULL,
  `id_menu` int DEFAULT NULL,
  `Jour` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `achats`
--
ALTER TABLE `achats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `focaccia_id` (`focaccia_id`);

--
-- Index pour la table `appartient`
--
ALTER TABLE `appartient`
  ADD PRIMARY KEY (`id`),
  ADD KEY `boisson_id` (`boisson_id`),
  ADD KEY `marque_id` (`marque_id`);

--
-- Index pour la table `boisson`
--
ALTER TABLE `boisson`
  ADD PRIMARY KEY (`id_boisson`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`);

--
-- Index pour la table `comprend`
--
ALTER TABLE `comprend`
  ADD PRIMARY KEY (`id`),
  ADD KEY `focaccia_id` (`focaccia_id`),
  ADD KEY `ingredient_id` (`ingredient_id`);

--
-- Index pour la table `contient`
--
ALTER TABLE `contient`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`),
  ADD KEY `boisson_id` (`boisson_id`);

--
-- Index pour la table `est_constitué`
--
ALTER TABLE `est_constitué`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`),
  ADD KEY `focaccia_id` (`focaccia_id`);

--
-- Index pour la table `focaccia`
--
ALTER TABLE `focaccia`
  ADD PRIMARY KEY (`id_focaccia`);

--
-- Index pour la table `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`id_ingredient`);

--
-- Index pour la table `marque`
--
ALTER TABLE `marque`
  ADD PRIMARY KEY (`id_marque`);

--
-- Index pour la table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Index pour la table `paye`
--
ALTER TABLE `paye`
  ADD KEY `client_id` (`id_client`),
  ADD KEY `menu_id` (`id_menu`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `achats`
--
ALTER TABLE `achats`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `appartient`
--
ALTER TABLE `appartient`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id_client` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `comprend`
--
ALTER TABLE `comprend`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `contient`
--
ALTER TABLE `contient`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `est_constitué`
--
ALTER TABLE `est_constitué`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `focaccia`
--
ALTER TABLE `focaccia`
  MODIFY `id_focaccia` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pour la table `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `id_ingredient` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT pour la table `marque`
--
ALTER TABLE `marque`
  MODIFY `id_marque` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `achats`
--
ALTER TABLE `achats`
  ADD CONSTRAINT `achats_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client` (`id_client`),
  ADD CONSTRAINT `achats_ibfk_2` FOREIGN KEY (`focaccia_id`) REFERENCES `focaccia` (`id_focaccia`);

--
-- Contraintes pour la table `appartient`
--
ALTER TABLE `appartient`
  ADD CONSTRAINT `appartient_ibfk_1` FOREIGN KEY (`boisson_id`) REFERENCES `boisson` (`id_boisson`),
  ADD CONSTRAINT `appartient_ibfk_2` FOREIGN KEY (`marque_id`) REFERENCES `marque` (`id_marque`);

--
-- Contraintes pour la table `comprend`
--
ALTER TABLE `comprend`
  ADD CONSTRAINT `comprend_ibfk_1` FOREIGN KEY (`focaccia_id`) REFERENCES `focaccia` (`id_focaccia`),
  ADD CONSTRAINT `comprend_ibfk_2` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredients` (`id_ingredient`);

--
-- Contraintes pour la table `contient`
--
ALTER TABLE `contient`
  ADD CONSTRAINT `contient_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id_menu`),
  ADD CONSTRAINT `contient_ibfk_2` FOREIGN KEY (`boisson_id`) REFERENCES `boisson` (`id_boisson`);

--
-- Contraintes pour la table `est_constitué`
--
ALTER TABLE `est_constitué`
  ADD CONSTRAINT `est_constitué_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id_menu`),
  ADD CONSTRAINT `est_constitué_ibfk_2` FOREIGN KEY (`focaccia_id`) REFERENCES `focaccia` (`id_focaccia`);

--
-- Contraintes pour la table `paye`
--
ALTER TABLE `paye`
  ADD CONSTRAINT `paye_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`),
  ADD CONSTRAINT `paye_ibfk_2` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
