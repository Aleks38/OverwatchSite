

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
(1, 'Ana', 'images/tete_héros/tete_ana.png', 'Après des années de solitude, ce pilier d’Overwatch est de retour pour défendre la nouvelle génération.', 'https://playoverwatch.com/fr-fr/heroes/ana/', 1),
(2, 'Ange', 'images/tete_héros/tete_ange.png', 'Ange gardien et soigneuse altruiste sur le champ de bataille.', 'https://playoverwatch.com/fr-fr/heroes/mercy/', 1),
(3, 'Ashe', 'images/tete_héros/tete_ashe.png', 'Le chef du célèbre gang Deadlock menace le Sud-Ouest américain.', 'https://playoverwatch.com/fr-fr/heroes/ashe/', 0),
(4, 'Baptiste', 'images/tete_héros/tete_baptiste.png', 'Secouriste militaire d’élite équipé d’un arsenal d’appareils de soins expérimentaux.', 'https://playoverwatch.com/fr-fr/heroes/baptiste/', 1),
(5, 'Bastion', 'images/tete_héros/tete_bastion.png', 'Robot de combat aux multiples configurations, qui porte un regard curieux sur le monde.', 'https://playoverwatch.com/fr-fr/heroes/bastion/', 0),
(6, 'Bouldozer', 'images/tete_héros/tete_bouldozer.png', 'Ce char d’assaut roulant est piloté par un hamster génétiquement modifié, élevé sur la Lune.', 'https://playoverwatch.com/fr-fr/heroes/wrecking-ball/', 2),
(7, 'Brigitte', 'images/tete_héros/tete_brigitte.png', 'Guerrier en armure, Brigitte a soif d’aventure, mais son objectif est surtout de venir en aide aux autres.', 'https://playoverwatch.com/fr-fr/heroes/brigitte/', 1),
(8, 'Cassidy', 'images/tete_héros/tete_cassidy.png', 'Un pro de la gâchette qui rend la justice à sa façon.', 'https://playoverwatch.com/fr-fr/heroes/cassidy/', 0),
(9, 'Chacal', 'images/tete_héros/tete_chacal.png', 'Un Junker expert en bombes à la recherche de trésors à travers le monde.', 'https://playoverwatch.com/fr-fr/heroes/junkrat/', 0),
(10, 'Chopper', 'images/tete_héros/tete_chopper.png', 'Ce criminel masqué n’a qu’un objectif : toujours plus d’argent !', 'https://playoverwatch.com/fr-fr/heroes/roadhog/', 2),
(11, 'D.Va', 'images/tete_héros/tete_d.va.png', 'Cette joueuse pro devenue pilote de méca est une célébrité mondiale.', 'https://playoverwatch.com/fr-fr/heroes/dva/', 2),
(12, 'Doomfist', 'images/tete_héros/tete_doomfist.png', 'Tacticien qui recourt à son intelligence, à son charisme et à sa puissance physique pour façonner un monde plus fort.', 'https://playoverwatch.com/fr-fr/heroes/doomfist/', 0),
(13, 'Écho', 'images/tete_héros/tete_echo.png', 'Robot évolutionnaire doté d’une intelligence artificielle à adaptation rapide, Écho est ce que la technologie a produit de plus abouti.', 'https://playoverwatch.com/fr-fr/heroes/echo/', 0),
(14, 'Fatale', 'images/tete_héros/tete_fatale.png', 'Un sniper au sang froid, l’assassin parfait.', 'https://playoverwatch.com/fr-fr/heroes/widowmaker/', 0),
(15, 'Faucheur', 'images/tete_héros/tete_faucheur.png', 'Un tueur impitoyable qui laisse un sillage de mort derrière lui.', 'https://playoverwatch.com/fr-fr/heroes/reaper/', 0),
(16, 'Genji', 'images/tete_héros/tete_genji.png', 'Maniant l’arsenal d’un ninja moderne, ce cyborg taciturne cherche vérité et compréhension.', 'https://playoverwatch.com/fr-fr/heroes/genji/', 0),
(17, 'Hanzo', 'images/tete_héros/tete_hanzo.png', 'Tireur à l’arc hors pair en quête de rédemption.', 'https://playoverwatch.com/fr-fr/heroes/hanzo/', 0),
(18, 'Lúcio', 'images/tete_héros/tete_lucio.png', 'Un DJ de renommée mondiale, qui compose la bande originale d’un avenir meilleur.', 'https://playoverwatch.com/fr-fr/heroes/lucio/', 1),
(19, 'Mei', 'images/tete_héros/tete_mei.png', 'Ses inventions font baisser la température et sont les briques qui permettront de bâtir un avenir meilleur.', 'https://playoverwatch.com/fr-fr/heroes/mei/', 0),
(20, 'Moira', 'images/tete_héros/tete_moira.png', 'Brillante généticienne, guidée par sa seule soif de découverte scientifique et qui ne s’encombre pas de considérations éthiques.', 'https://playoverwatch.com/fr-fr/heroes/moira/', 1),
(21, 'Orisa', 'images/tete_héros/tete_orisa.png', 'Une protectrice robotique conçue pour défendre les citoyens de Numbani.', 'https://playoverwatch.com/fr-fr/heroes/orisa/', 2),
(22, 'Pharah', 'images/tete_héros/tete_pharah.png', 'Une garde de sécurité qui patrouille dans les cieux grâce à sa tenue de combat Raptora.', 'https://playoverwatch.com/fr-fr/heroes/pharah/', 0),
(23, 'Reinhardt', 'images/tete_héros/tete_reinhardt.png', 'Champion qui vit selon un code d’honneur chevaleresque.', 'https://playoverwatch.com/fr-fr/heroes/reinhardt/', 2),
(24, 'Sigma', 'images/tete_héros/tete_sigma.png', 'Un astrophysicien excentrique transformé en arme humaine par un accident de laboratoire en orbite.', 'https://playoverwatch.com/fr-fr/heroes/sigma/', 2),
(25, 'Soldat : 76', 'images/tete_héros/tete_soldat76.png', 'Ce justicier énigmatique combat pour découvrir la vérité derrière la chute d’Overwatch.', 'https://playoverwatch.com/fr-fr/heroes/soldier-76/', 0),
(26, 'Sombra', 'images/tete_héros/tete_sombra.png', 'Une hackeuse notoire en quête de secrets, et du pouvoir qu’ils confèrent.', 'https://playoverwatch.com/fr-fr/heroes/sombra/', 0),
(27, 'Symmetra', 'images/tete_héros/tete_symmetra.png', 'Symmetra modifie littéralement la réalité grâce à ses créations photoformées.', 'https://playoverwatch.com/fr-fr/heroes/symmetra/', 0),
(28, 'Torbjörn', 'images/tete_héros/tete_torbjorn.png', 'Maître artisan qui fabrique des armes à partir de métal en fusion.', 'https://playoverwatch.com/fr-fr/heroes/torbjorn/', 0),
(29, 'Tracer', 'images/tete_héros/tete_tracer.png', 'Une aventurière qui fait des sauts dans le temps au service du bien.', 'https://playoverwatch.com/fr-fr/heroes/tracer/', 0),
(30, 'Winston', 'images/tete_héros/tete_winston.png', 'Gorille conçu génétiquement et brillant scientifique.', 'https://playoverwatch.com/fr-fr/heroes/winston/', 2),
(31, 'Zarya', 'images/tete_héros/tete_zarya.png', 'Ancienne championne ayant abandonné la gloire pour défendre son pays.', 'https://playoverwatch.com/fr-fr/heroes/zarya/', 2),
(32, 'Zenyatta', 'images/tete_héros/tete_zenyatta.png', 'Un moine omniaque à la recherche de l’illumination.', 'https://playoverwatch.com/fr-fr/heroes/zenyatta/', 1);

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
(0, 'a', 'a', 'a', 'a', 1, 'a', '$2y$12$yQ.kE4lk6jRfIWSbJTuVi.dUP0gAAd7mlAjneajkJdRlRkurAoSsK');

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
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `heros`
--
ALTER TABLE `heros`
  ADD CONSTRAINT `heros_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `roles` (`id`);
COMMIT;


