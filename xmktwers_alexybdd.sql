-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : dim. 05 juin 2022 à 19:26
-- Version du serveur : 10.3.31-MariaDB
-- Version de PHP : 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `xmktwers_alexybdd`
--

-- --------------------------------------------------------

--
-- Structure de la table `heros`
--

CREATE TABLE `heros` (
  `id` int(11) NOT NULL,
  `nomHero` varchar(50) DEFAULT NULL,
  `chemin` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `lien` varchar(100) DEFAULT NULL,
  `id_role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `heros`
--

INSERT INTO `heros` (`id`, `nomHero`, `chemin`, `description`, `lien`, `id_role`) VALUES
(1, 'Ana', 'images/tete_heros/tete_ana.png', 'Après des années de solitude, ce pilier d’Overwatch est de retour pour défendre la nouvelle génération.', 'https://playoverwatch.com/fr-fr/heroes/ana/', 1),
(2, 'Ange', 'images/tete_heros/tete_ange.png', 'Ange gardien et soigneuse altruiste sur le champ de bataille.', 'https://playoverwatch.com/fr-fr/heroes/mercy/', 1),
(3, 'Ashe', 'images/tete_heros/tete_ashe.png', 'Le chef du célèbre gang Deadlock menace le Sud-Ouest américain.', 'https://playoverwatch.com/fr-fr/heroes/ashe/', 0),
(4, 'Baptiste', 'images/tete_heros/tete_baptiste.png', 'Secouriste militaire d’élite équipé d’un arsenal d’appareils de soins expérimentaux.', 'https://playoverwatch.com/fr-fr/heroes/baptiste/', 1),
(5, 'Bastion', 'images/tete_heros/tete_bastion.png', 'Robot de combat aux multiples configurations, qui porte un regard curieux sur le monde.', 'https://playoverwatch.com/fr-fr/heroes/bastion/', 0),
(6, 'Bouldozer', 'images/tete_heros/tete_bouldozer.png', 'Ce char d’assaut roulant est piloté par un hamster génétiquement modifié, élevé sur la Lune.', 'https://playoverwatch.com/fr-fr/heroes/wrecking-ball/', 2),
(7, 'Brigitte', 'images/tete_heros/tete_brigitte.png', 'Guerrier en armure, Brigitte a soif d’aventure, mais son objectif est surtout de venir en aide aux autres.', 'https://playoverwatch.com/fr-fr/heroes/brigitte/', 1),
(8, 'Cassidy', 'images/tete_heros/tete_cassidy.png', 'Un pro de la gâchette qui rend la justice à sa façon.', 'https://playoverwatch.com/fr-fr/heroes/cassidy/', 0),
(9, 'Chacal', 'images/tete_heros/tete_chacal.png', 'Un Junker expert en bombes à la recherche de trésors à travers le monde.', 'https://playoverwatch.com/fr-fr/heroes/junkrat/', 0),
(10, 'Chopper', 'images/tete_heros/tete_chopper.png', 'Ce criminel masqué n’a qu’un objectif : toujours plus d’argent !', 'https://playoverwatch.com/fr-fr/heroes/roadhog/', 2),
(11, 'D.Va', 'images/tete_heros/tete_d.va.png', 'Cette joueuse pro devenue pilote de méca est une célébrité mondiale.', 'https://playoverwatch.com/fr-fr/heroes/dva/', 2),
(12, 'Doomfist', 'images/tete_heros/tete_doomfist.png', 'Tacticien qui recourt à son intelligence, à son charisme et à sa puissance physique pour façonner un monde plus fort.', 'https://playoverwatch.com/fr-fr/heroes/doomfist/', 0),
(13, 'Écho', 'images/tete_heros/tete_echo.png', 'Robot évolutionnaire doté d’une intelligence artificielle à adaptation rapide, Écho est ce que la technologie a produit de plus abouti.', 'https://playoverwatch.com/fr-fr/heroes/echo/', 0),
(14, 'Fatale', 'images/tete_heros/tete_fatale.png', 'Un sniper au sang froid, l’assassin parfait.', 'https://playoverwatch.com/fr-fr/heroes/widowmaker/', 0),
(15, 'Faucheur', 'images/tete_heros/tete_faucheur.png', 'Un tueur impitoyable qui laisse un sillage de mort derrière lui.', 'https://playoverwatch.com/fr-fr/heroes/reaper/', 0),
(16, 'Genji', 'images/tete_heros/tete_genji.png', 'Maniant l’arsenal d’un ninja moderne, ce cyborg taciturne cherche vérité et compréhension.', 'https://playoverwatch.com/fr-fr/heroes/genji/', 0),
(17, 'Hanzo', 'images/tete_heros/tete_hanzo.png', 'Tireur à l’arc hors pair en quête de rédemption.', 'https://playoverwatch.com/fr-fr/heroes/hanzo/', 0),
(18, 'Lúcio', 'images/tete_heros/tete_lucio.png', 'Un DJ de renommée mondiale, qui compose la bande originale d’un avenir meilleur.', 'https://playoverwatch.com/fr-fr/heroes/lucio/', 1),
(19, 'Mei', 'images/tete_heros/tete_mei.png', 'Ses inventions font baisser la température et sont les briques qui permettront de bâtir un avenir meilleur.', 'https://playoverwatch.com/fr-fr/heroes/mei/', 0),
(20, 'Moira', 'images/tete_heros/tete_moira.png', 'Brillante généticienne, guidée par sa seule soif de découverte scientifique et qui ne s’encombre pas de considérations éthiques.', 'https://playoverwatch.com/fr-fr/heroes/moira/', 1),
(21, 'Orisa', 'images/tete_heros/tete_orisa.png', 'Une protectrice robotique conçue pour défendre les citoyens de Numbani.', 'https://playoverwatch.com/fr-fr/heroes/orisa/', 2),
(22, 'Pharah', 'images/tete_heros/tete_pharah.png', 'Une garde de sécurité qui patrouille dans les cieux grâce à sa tenue de combat Raptora.', 'https://playoverwatch.com/fr-fr/heroes/pharah/', 0),
(23, 'Reinhardt', 'images/tete_heros/tete_reinhardt.png', 'Champion qui vit selon un code d’honneur chevaleresque.', 'https://playoverwatch.com/fr-fr/heroes/reinhardt/', 2),
(24, 'Sigma', 'images/tete_heros/tete_sigma.png', 'Un astrophysicien excentrique transformé en arme humaine par un accident de laboratoire en orbite.', 'https://playoverwatch.com/fr-fr/heroes/sigma/', 2),
(25, 'Soldat : 76', 'images/tete_heros/tete_soldat76.png', 'Ce justicier énigmatique combat pour découvrir la vérité derrière la chute d’Overwatch.', 'https://playoverwatch.com/fr-fr/heroes/soldier-76/', 0),
(26, 'Sombra', 'images/tete_heros/tete_sombra.png', 'Une hackeuse notoire en quête de secrets, et du pouvoir qu’ils confèrent.', 'https://playoverwatch.com/fr-fr/heroes/sombra/', 0),
(27, 'Symmetra', 'images/tete_heros/tete_symmetra.png', 'Symmetra modifie littéralement la réalité grâce à ses créations photoformées.', 'https://playoverwatch.com/fr-fr/heroes/symmetra/', 0),
(28, 'Torbjörn', 'images/tete_heros/tete_torbjorn.png', 'Maître artisan qui fabrique des armes à partir de métal en fusion.', 'https://playoverwatch.com/fr-fr/heroes/torbjorn/', 0),
(29, 'Tracer', 'images/tete_heros/tete_tracer.png', 'Une aventurière qui fait des sauts dans le temps au service du bien.', 'https://playoverwatch.com/fr-fr/heroes/tracer/', 0),
(30, 'Winston', 'images/tete_heros/tete_winston.png', 'Gorille conçu génétiquement et brillant scientifique.', 'https://playoverwatch.com/fr-fr/heroes/winston/', 2),
(31, 'Zarya', 'images/tete_heros/tete_zarya.png', 'Ancienne championne ayant abandonné la gloire pour défendre son pays.', 'https://playoverwatch.com/fr-fr/heroes/zarya/', 2),
(32, 'Zenyatta', 'images/tete_heros/tete_zenyatta.png', 'Un moine omniaque à la recherche de l’illumination.', 'https://playoverwatch.com/fr-fr/heroes/zenyatta/', 1);

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `nomRole` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `nomRole`) VALUES
(0, 'degats'),
(1, 'soutien'),
(2, 'tank');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` int(11) NOT NULL,
  `nomUtilisateur` varchar(50) DEFAULT NULL,
  `prenomUtilisateur` varchar(50) DEFAULT NULL,
  `nomDUtilisateur` varchar(50) DEFAULT NULL,
  `ville` varchar(50) DEFAULT NULL,
  `code_postal` int(11) DEFAULT NULL,
  `adresseMail` varchar(50) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `nomUtilisateur`, `prenomUtilisateur`, `nomDUtilisateur`, `ville`, `code_postal`, `adresseMail`, `pass`) VALUES
(1, 'a', 'a', 'a', 'a', 1, 'a', '$2y$12$yQ.kE4lk6jRfIWSbJTuVi.dUP0gAAd7mlAjneajkJdRlRkurAoSsK'),
(2, 'Da Silva', 'Alexy', 'aleks38', 'Moirans', 38430, 'test', '$2y$12$0LU.K1rWa.e/VljmARUK2.9SGYAjJFgLdNv79Q5s1thV1kPwGu2lO');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `heros`
--
ALTER TABLE `heros`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_role` (`id_role`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `heros`
--
ALTER TABLE `heros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `heros`
--
ALTER TABLE `heros`
  ADD CONSTRAINT `heros_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
