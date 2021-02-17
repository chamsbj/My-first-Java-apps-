-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Client: 127.0.0.1
-- Généré le: Jeu 23 Janvier 2014 à 16:36
-- Version du serveur: 5.5.27-log
-- Version de PHP: 5.4.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `base gestion`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `utilisateur` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  PRIMARY KEY (`utilisateur`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `admin`
--

INSERT INTO `admin` (`utilisateur`, `pass`) VALUES
('chams', 'chams');

-- --------------------------------------------------------

--
-- Structure de la table `machine`
--

CREATE TABLE IF NOT EXISTS `machine` (
  `idmachine` varchar(200) NOT NULL,
  `nom` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `date_maintenance` varchar(200) NOT NULL,
  `employee_maintenance` varchar(200) NOT NULL,
  PRIMARY KEY (`idmachine`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `machine`
--

INSERT INTO `machine` (`idmachine`, `nom`, `description`, `date_maintenance`, `employee_maintenance`) VALUES
('12', '12', '21', '21', '12');

-- --------------------------------------------------------

--
-- Structure de la table `materielle`
--

CREATE TABLE IF NOT EXISTS `materielle` (
  `idm` varchar(20) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `caracteristique` varchar(20) NOT NULL,
  `description` varchar(20) NOT NULL,
  `quantite` int(20) NOT NULL,
  `prix` float NOT NULL,
  `totale` float NOT NULL,
  PRIMARY KEY (`idm`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `mp`
--

CREATE TABLE IF NOT EXISTS `mp` (
  `idmp` varchar(200) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `caracteristique` varchar(20) NOT NULL,
  `description` varchar(20) NOT NULL,
  `quantite` int(20) NOT NULL,
  `prix` float NOT NULL,
  `totale` float NOT NULL,
  PRIMARY KEY (`idmp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `mp`
--

INSERT INTO `mp` (`idmp`, `nom`, `type`, `date`, `caracteristique`, `description`, `quantite`, `prix`, `totale`) VALUES
('3', 'chamsbj', 'chamsbj', '06/05/1903 ', '', '', 2, 3.12, 6.24),
('4', 'aa', 'aa', '05/04/2014', '', '', 3, 3, 9),
('7', 'bs12', 'bs', '04/10/2014', 'akc,la', 'zadazdazdazd', 3, 7.5, 22.5),
('fe12', 'fer', 'fer', '06/05/1993 ', 'fer de 50 cm', 'fer ancien', 10, 10, 100);

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE IF NOT EXISTS `produit` (
  `idp` varchar(20) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `date_creation` varchar(20) NOT NULL,
  `societe` varchar(20) NOT NULL,
  `description` varchar(20) NOT NULL,
  `prix` float NOT NULL,
  `stock` int(20) NOT NULL,
  `idmp` varchar(200) NOT NULL,
  `idmachine` varchar(200) NOT NULL,
  PRIMARY KEY (`idp`),
  KEY `idmp` (`idmp`),
  KEY `idmachine` (`idmachine`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `produit`
--

INSERT INTO `produit` (`idp`, `nom`, `date_creation`, `societe`, `description`, `prix`, `stock`, `idmp`, `idmachine`) VALUES
('1', 'machine', '01/01/2014', 'leoni', 'machcjejejce\nee\n', 1200, 1200, '7', '12'),
('12', 'chams', '01/01/1900 ', '', '', 12, 12, '4', '12'),
('13', 'chams', '01/01/1906 ', '', '', 12, 12, '3', '12'),
('2', 'plastique', '05/04/1939 ', 'leoni', 'aaaa', 12, 12, 'fe12', '12'),
('6', 'med', '01/01/1900 ', 'leoni', 'efefezf', 12, 122, '3', '12'),
('7', 'chams', '01/01/1900 ', '', '', 12, 12, '7', '12'),
('ma12', 'machine', '07/05/1904 ', 'leoni', 'machcjejejce\nee\n', 1200, 1200, '7', '12');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `produit_ibfk_1` FOREIGN KEY (`idmp`) REFERENCES `mp` (`idmp`),
  ADD CONSTRAINT `produit_ibfk_2` FOREIGN KEY (`idmachine`) REFERENCES `machine` (`idmachine`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
