-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Jeu 24 Octobre 2024 à 14:33
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `location_voiture`
--

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `ncin` int(11) NOT NULL,
  `num_permis` int(11) NOT NULL,
  `nom_prenom` varchar(30) NOT NULL,
  `adresse` varchar(30) NOT NULL,
  `telephone` varchar(30) NOT NULL,
  `date_de_naissance` date NOT NULL,
  `mail` varchar(30) NOT NULL,
  PRIMARY KEY (`ncin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `clients`
--

INSERT INTO `clients` (`ncin`, `num_permis`, `nom_prenom`, `adresse`, `telephone`, `date_de_naissance`, `mail`) VALUES
(12, 1000, 'Rémy', 'Paris', '06', '2000-12-16', 'Rémy@yahoo.com'),
(13, 2000, 'David', 'Créteil', '07 12 ', '2002-10-09', 'David@yahoo.com');

-- --------------------------------------------------------

--
-- Structure de la table `locations_realiser`
--

CREATE TABLE IF NOT EXISTS `locations_realiser` (
  `id_loaction` int(11) NOT NULL AUTO_INCREMENT,
  `immatriculation` varchar(20) NOT NULL,
  `ncin` int(11) NOT NULL,
  `duree_loc` int(11) NOT NULL,
  `date_de_loc` date NOT NULL,
  `prix_loc` int(11) NOT NULL,
  PRIMARY KEY (`id_loaction`),
  KEY `immatriculation` (`immatriculation`),
  KEY `ncin` (`ncin`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `locations_realiser`
--

INSERT INTO `locations_realiser` (`id_loaction`, `immatriculation`, `ncin`, `duree_loc`, `date_de_loc`, `prix_loc`) VALUES
(1, '77 FR 77 ', 13, 5, '2024-10-01', 300),
(2, '66 FR 66', 12, 4, '2024-10-16', 400);

-- --------------------------------------------------------

--
-- Structure de la table `voitures`
--

CREATE TABLE IF NOT EXISTS `voitures` (
  `immatriculation` varchar(20) NOT NULL,
  `marque` varchar(20) NOT NULL,
  `modele` varchar(20) NOT NULL,
  `carburant` varchar(20) NOT NULL,
  `kilometrage` int(11) NOT NULL,
  `date_de_circulation` date NOT NULL,
  `couleur` varchar(20) NOT NULL,
  PRIMARY KEY (`immatriculation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `voitures`
--

INSERT INTO `voitures` (`immatriculation`, `marque`, `modele`, `carburant`, `kilometrage`, `date_de_circulation`, `couleur`) VALUES
('66 FR 66', 'BMW', 'X7', 'Diesel', 10000, '2024-10-08', 'Bleu'),
('77 FR 77 ', 'Peugeot 3008', '3008', 'Essence', 150000, '2019-10-08', 'Vert');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `locations_realiser`
--
ALTER TABLE `locations_realiser`
  ADD CONSTRAINT `locations_realiser_ibfk_2` FOREIGN KEY (`ncin`) REFERENCES `clients` (`ncin`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `locations_realiser_ibfk_1` FOREIGN KEY (`immatriculation`) REFERENCES `voitures` (`immatriculation`) ON DELETE CASCADE ON UPDATE CASCADE;
