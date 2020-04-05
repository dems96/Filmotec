-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : Dim 05 avr. 2020 à 14:29
-- Version du serveur :  5.7.24
-- Version de PHP : 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `filmotec`
--

-- --------------------------------------------------------

--
-- Structure de la table `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `critique` varchar(500) DEFAULT NULL,
  `note` varchar(11) NOT NULL,
  `user` varchar(11) DEFAULT NULL,
  `id_film` int(11) DEFAULT NULL,
  `img` varchar(999) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `info`
--

INSERT INTO `info` (`id`, `critique`, `note`, `user`, `id_film`, `img`) VALUES
(1, 'c\'est un film totalement incroyable !', '9', 'Alain', 157336, '/1pnigkWWy8W032o9TKDneBa3eVK.jpg'),
(2, 'plutot bof', '3', 'naruto', 39107, '/uJT3CmfSy9R1T2vCVpDWhNJXhPX.jpg'),
(4, 'le film de ma vie...', '7', 'Goku', 299537, '3v6dxV5l6Zs2OcrAnIcuE9POeGY.jpg'),
(8, 'super film', '8', 'Dems', 39107, '/jwAF2PBrQdugBb5Ncd7krQlEubW.jpg');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
