-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 18 fév. 2024 à 04:24
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `readerave`
--

-- --------------------------------------------------------

--
-- Structure de la table `critiques`
--

CREATE TABLE `critiques` (
  `id` int(11) NOT NULL,
  `id_utilisateur` int(11) DEFAULT NULL,
  `id_livre` int(11) DEFAULT NULL,
  `note` int(11) DEFAULT NULL,
  `commentaire` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `critiques`
--

INSERT INTO `critiques` (`id`, `id_utilisateur`, `id_livre`, `note`, `commentaire`) VALUES
(3, 3, 1, 1, 'Pas vraiment mon genre de lecture, mais bien écrit.'),
(4, 4, 2, 5, 'Ce livre est un trésor pour petits et grands.'),
(5, 5, 2, 4, 'Une histoire charmante et pleine de sagesse.'),
(6, 6, 2, 2, 'Je ne comprends pas tout le battage autour de ce livre.'),
(7, 7, 3, 4, 'Une aventure épique sur les mers.'),
(8, 8, 3, 3, 'Un peu trop long à mon goût, mais intéressant.'),
(9, 9, 3, 5, 'J\'ai adoré chaque page de ce livre.'),
(10, 10, 4, 4, 'Une lecture passionnante, j\'ai été accroché dès la première page.'),
(11, 11, 4, 5, 'CHERUB ne déçoit jamais, et celui-ci est particulièrement palpitant.'),
(12, 12, 4, 3, 'Pas le meilleur de la série, mais toujours divertissant.'),
(13, 13, 5, 5, 'Une intrigue captivante et des personnages attachants.'),
(14, 14, 5, 4, 'J\'ai dévoré ce livre en un rien de temps, impossible de le lâcher.'),
(15, 15, 5, 2, 'Je m\'attendais à mieux, l\'histoire manque d\'originalité.'),
(16, 16, 6, 4, 'Une mission pleine d\'action et de suspense, à la hauteur de la série.'),
(17, 17, 6, 3, 'Les aventures de CHERUB sont toujours divertissantes, même si celle-ci était un peu prévisible.'),
(18, 18, 6, 5, 'J\'ai adoré chaque instant de cette mission, un vrai page-turner.'),
(19, 19, 7, 5, 'Une plongée dans l\'univers sombre du crime, avec des rebondissements inattendus.'),
(20, 20, 7, 4, 'Une mission palpitante qui montre une fois de plus le talent des agents de CHERUB.'),
(21, 21, 7, 3, 'L\'histoire était intéressante, mais j\'ai trouvé certains aspects un peu exagérés.'),
(22, 22, 8, 2, 'Une lecture divertissante, mais j\'ai trouvé que l\'intrigue manquait de profondeur.'),
(23, 23, 8, 5, 'Un des meilleurs de la série, avec des twists et des moments émouvants.'),
(24, 24, 8, 4, 'J\'ai été agréablement surpris par ce livre, je le recommande vivement.'),
(25, 25, 9, 4, 'Une mission palpitante avec beaucoup de rebondissements.'),
(26, 26, 9, 5, 'Encore une réussite pour la série CHERUB, je recommande vivement.'),
(27, 27, 9, 1, 'Pas le meilleur de la série, mais toujours divertissant.'),
(28, 28, 10, 5, 'J\'ai adoré ce livre, impossible de le poser une fois commencé.'),
(29, 29, 10, 4, 'Une histoire captivante qui aborde des thèmes intéressants.'),
(30, 30, 10, 2, 'Je m\'attendais à mieux, l\'intrigue manquait de profondeur.'),
(31, 31, 11, 4, 'Une lecture palpitante avec des personnages attachants.'),
(32, 32, 11, 3, 'Un bon livre, mais j\'ai trouvé certaines parties un peu lentes.'),
(33, 33, 11, 5, 'Un de mes préférés de la série, avec beaucoup d\'action et de suspense.'),
(34, 34, 12, 3, 'Un bon ajout à la série, mais l\'intrigue était un peu prévisible.'),
(35, 35, 12, 5, 'J\'ai été complètement absorbé par ce livre, je l\'ai lu d\'une traite.'),
(36, 36, 12, 4, 'Encore un excellent livre de CHERUB, je suis toujours fan.'),
(37, 37, 13, 5, 'Une mission pleine d\'adrénaline et de suspense, je l\'ai adorée.'),
(38, 38, 13, 4, 'Un autre succès pour la série, avec des twists inattendus.'),
(39, 39, 13, 1, 'Pas le meilleur de la série, mais une lecture divertissante.'),
(40, 40, 14, 4, 'Une mission intéressante avec des enjeux élevés.'),
(41, 1, 14, 5, 'J\'ai été captivé du début à la fin, impossible de le lâcher.'),
(42, 2, 14, 3, 'Un bon livre, mais j\'ai trouvé certains passages un peu prévisibles.'),
(43, 3, 15, 4, 'Une mission captivante avec beaucoup de rebondissements.'),
(44, 4, 15, 5, 'J\'ai adoré ce livre, impossible de le lâcher une fois commencé.'),
(45, 5, 15, 2, 'Une bonne lecture, mais je m\'attendais à un peu plus d\'action.'),
(46, 6, 16, 5, 'Un des meilleurs livres de la série, avec une intrigue palpitante.'),
(47, 7, 16, 4, 'Une lecture addictive avec des personnages bien développés.'),
(48, 8, 16, 2, 'Un bon livre, mais j\'ai trouvé certaines parties un peu prévisibles.'),
(49, 9, 17, 5, 'Une mission intense avec des enjeux élevés, j\'ai adoré.'),
(50, 10, 17, 4, 'Un autre succès pour la série CHERUB, je le recommande.'),
(51, 11, 17, 3, 'Pas le meilleur de la série, mais une lecture divertissante.'),
(52, 12, 18, 4, 'Une histoire palpitante avec des personnages attachants.'),
(53, 2, 18, 5, 'J\'ai été complètement absorbé par ce livre, je le recommande vivement.'),
(54, 4, 18, 3, 'Une bonne lecture, mais je m\'attendais à un peu plus de suspense.'),
(55, 5, 19, 5, 'Un des meilleurs livres de la série, avec beaucoup d\'action.'),
(56, 6, 19, 4, 'Une mission palpitante avec des rebondissements inattendus.'),
(57, 7, 19, 3, 'Un bon livre, mais l\'intrigue était un peu prévisible.'),
(58, 8, 20, 4, 'Une lecture addictive avec des personnages bien développés.'),
(59, 9, 20, 5, 'J\'ai été captivé du début à la fin, impossible de le poser.'),
(60, 10, 20, 1, 'Pas le meilleur de la série, mais une bonne lecture.'),
(61, 11, 21, 5, 'Une mission intense avec des enjeux élevés, j\'ai adoré.'),
(62, 12, 21, 4, 'Encore un succès pour la série CHERUB, je le recommande.'),
(63, 13, 21, 3, 'Pas le meilleur de la série, mais une lecture divertissante.'),
(64, 14, 22, 5, 'Un thriller haletant avec une intrigue bien ficelée.'),
(65, 15, 22, 4, 'J\'ai été captivé par ce livre, les rebondissements sont surprenants.'),
(66, 16, 22, 3, 'Une lecture intéressante, mais je m\'attendais à un peu plus de suspense.'),
(67, 17, 23, 5, 'Un thriller glaçant qui m\'a tenu en haleine jusqu\'à la dernière page.'),
(68, 18, 23, 4, 'Un récit sombre et captivant, impossible de le lâcher.'),
(69, 19, 23, 3, 'Une lecture prenante, mais certains passages étaient un peu prévisibles.'),
(70, 20, 24, 4, 'Un thriller psychologique intense, j\'ai adoré.'),
(71, 21, 24, 5, 'Ce livre m\'a vraiment marqué, une histoire puissante et émouvante.'),
(72, 22, 24, 3, 'Une bonne lecture, mais je m\'attendais à un peu plus de profondeur.'),
(73, 23, 25, 5, 'Un roman captivant qui aborde des thèmes profonds avec subtilité.'),
(74, 24, 25, 4, 'J\'ai été impressionné par la qualité de l\'écriture et l\'intensité de l\'intrigue.'),
(75, 25, 25, 3, 'Une lecture intéressante, mais certains aspects étaient un peu trop prévisibles.'),
(76, 26, 26, 4, 'Un thriller psychologique sombre et dérangeant, à lire absolument.'),
(77, 27, 26, 5, 'Ce livre m\'a vraiment marqué, une histoire captivante et perturbante.'),
(78, 28, 26, 3, 'Une lecture prenante, mais j\'ai trouvé certains passages un peu confus.'),
(79, 29, 27, 5, 'Un thriller psychologique brillamment écrit, avec des personnages complexes.'),
(80, 30, 27, 4, 'J\'ai été happé par cette histoire, les rebondissements sont inattendus.'),
(81, 31, 27, 3, 'Une lecture captivante, mais j\'aurais aimé un peu plus de développement des personnages.'),
(82, 35, 28, 4, 'Un thriller psychologique puissant avec une tension palpable.'),
(83, 36, 28, 5, 'Ce livre m\'a chamboulé, une histoire sombre et troublante.'),
(84, 37, 28, 2, 'Une lecture intéressante, mais j\'aurais aimé un peu plus de développement des personnages.'),
(85, 8, 29, 5, 'Un thriller haletant avec des twists inattendus, j\'ai adoré.'),
(86, 29, 29, 4, 'Ce livre m\'a tenu en haleine jusqu\'à la dernière page, une lecture addictive.'),
(87, 40, 29, 3, 'Une histoire captivante, mais certains passages étaient un peu trop explicites.'),
(88, 21, 30, 4, 'Un thriller psychologique captivant avec des personnages complexes.'),
(89, 32, 30, 5, 'Ce livre m\'a profondément marqué, une histoire bouleversante et poignante.'),
(90, 13, 30, 1, 'Une lecture intéressante, mais j\'aurais souhaité un peu plus de développement des relations entre les personnages.'),
(91, 17, 31, 5, 'Un thriller psychologique brillamment écrit, avec une atmosphère oppressante.'),
(92, 24, 31, 4, 'J\'ai été captivé par cette histoire, les twists étaient totalement imprévisibles.'),
(93, 33, 31, 3, 'Une lecture prenante, mais certains aspects de l\'intrigue étaient un peu confus.'),
(94, 25, 32, 5, 'Un thriller psychologique fascinant avec des personnages complexes.'),
(95, 17, 32, 4, 'Ce livre m\'a tenu en haleine du début à la fin, une lecture inoubliable.'),
(96, 19, 32, 2, 'Une histoire captivante, mais j\'aurais aimé un peu plus de profondeur dans certains personnages.'),
(97, 20, 33, 4, 'Un thriller psychologique sombre et dérangeant qui m\'a captivé.'),
(98, 4, 33, 5, 'Ce livre m\'a complètement absorbé, une histoire intense et poignante.'),
(99, 37, 33, 1, 'Une lecture prenante, mais j\'ai trouvé la fin un peu précipitée.'),
(100, 1, 34, 5, 'Un roman historique passionnant, l\'histoire de Daisy Jones & The Six est captivante.'),
(101, 2, 34, 4, 'J\'ai adoré ce livre, l\'écriture est immersive et les personnages sont très bien développés.'),
(102, 5, 34, 3, 'Une lecture divertissante, mais j\'ai trouvé certains passages un peu trop longs.'),
(103, 6, 35, 4, 'Une histoire fascinante et émouvante, j\'ai été transporté par la vie d\'Evelyn Hugo.'),
(104, 7, 35, 5, 'Ce livre m\'a complètement captivé, une histoire riche en émotions et en rebondissements.'),
(105, 8, 35, 3, 'Une lecture intéressante, mais j\'aurais aimé un peu plus de profondeur dans certains aspects de l\'intrigue.'),
(106, 9, 36, 5, 'Un roman historique poignant avec des personnages attachants, j\'ai adoré chaque page.'),
(107, 10, 36, 4, 'Ce livre m\'a transporté à Malibu, une lecture immersive et émouvante.'),
(108, 11, 36, 3, 'Une histoire intéressante, mais certains passages étaient un peu prévisibles.'),
(109, 12, 37, 4, 'Un roman romantique intense avec une intrigue captivante, je n\'ai pas pu le lâcher.'),
(110, 13, 37, 5, 'Ce livre m\'a totalement bouleversé, une histoire puissante et émouvante.'),
(111, 14, 37, 2, 'Une lecture prenante, mais j\'ai trouvé la fin un peu décevante.'),
(112, 15, 38, 5, 'Un roman romantique magnifiquement écrit, les personnages sont si réels et émouvants.'),
(113, 16, 38, 4, 'J\'ai adoré chaque instant de cette lecture, une histoire d\'amour inoubliable.'),
(114, 17, 38, 3, 'Une histoire touchante, mais j\'aurais aimé un peu plus de développement des personnages secondaires.'),
(115, 18, 39, 4, 'Un roman romantique charmant avec une touche d\'humour, une lecture très agréable.'),
(116, 19, 39, 5, 'Ce livre m\'a fait sourire du début à la fin, une histoire légère et rafraîchissante.'),
(117, 20, 39, 2, 'Une lecture divertissante, mais j\'aurais souhaité un peu plus de profondeur dans l\'intrigue.'),
(118, 21, 40, 5, 'Un roman poignant et émouvant, une lecture indispensable.'),
(119, 22, 40, 4, 'Ce livre m\'a bouleversé, une histoire puissante et courageuse.'),
(120, 23, 40, 1, 'Une lecture intéressante, mais j\'ai trouvé certains retournements de situation un peu exagérés.'),
(121, 24, 41, 5, 'Un classique intemporel, ce livre m\'a profondément touché.'),
(122, 25, 41, 4, 'J\'ai été captivé par l\'histoire et les personnages de ce livre, une lecture inoubliable.'),
(123, 26, 41, 3, 'Une lecture importante, mais j\'ai trouvé certains passages un peu lents.'),
(124, 27, 42, 4, 'Un thriller haletant avec une intrigue captivante, je recommande vivement.'),
(125, 28, 42, 5, 'Ce livre m\'a tenu en haleine jusqu\'à la dernière page, une histoire palpitante.'),
(126, 29, 42, 3, 'Une lecture prenante, mais j\'aurais aimé un peu plus de développement des personnages.'),
(127, 30, 43, 5, 'Un classique poignant et intemporel, une lecture qui laisse une marque indélébile.'),
(128, 31, 43, 4, 'Ce livre m\'a profondément ému, une histoire puissante et nécessaire.'),
(129, 32, 43, 3, 'Une lecture importante, mais j\'ai trouvé certaines descriptions un peu longues.'),
(130, 33, 44, 4, 'Un roman mystérieux et captivant, j\'ai adoré chaque rebondissement.'),
(131, 34, 44, 5, 'Ce livre m\'a totalement absorbé, une histoire pleine de mystère et de suspense.'),
(132, 35, 44, 1, 'Une lecture intéressante, mais j\'aurais aimé un peu plus de développement des personnages.'),
(133, 36, 45, 5, 'Une suite aussi captivante que le premier tome, une lecture addictive.'),
(134, 5, 45, 4, 'J\'ai adoré retrouver l\'univers de ce livre, une histoire palpitante et pleine de surprises.'),
(135, 38, 45, 2, 'Une lecture divertissante, mais j\'ai trouvé la fin un peu trop précipitée.'),
(136, 39, 46, 4, 'Un thriller intelligent et subtil, une histoire intrigante.'),
(137, 2, 46, 5, 'Ce livre m\'a complètement captivé, une exploration fascinante de la société.'),
(138, 13, 46, 3, 'Une lecture intéressante, mais certains passages étaient un peu lents.'),
(139, 14, 47, 5, 'Un roman de fantasy captivant avec des rebondissements inattendus.'),
(140, 40, 47, 4, 'J\'ai été transporté.'),
(141, 23, 47, 1, 'Vu et revu, ce qui rend le livre lassant.'),
(142, 1, 48, 5, 'Un thriller psychologique captivant avec une fin surprenante, j\'ai adoré chaque page.'),
(143, 22, 48, 4, 'Ce livre m\'a tenu en haleine du début à la fin, une intrigue fascinante et bien construite.'),
(144, 27, 48, 3, 'Une lecture prenante, mais j\'ai trouvé certains passages un peu confus.'),
(145, 14, 49, 5, 'Un chef-d\'œuvre de la littérature française, ce livre mérite d\'être lu et relu.'),
(146, 5, 49, 4, 'J\'ai été transporté dans l\'univers de la cour royale, une lecture fascinante et émouvante.'),
(147, 35, 49, 2, 'Une lecture intéressante, mais j\'aurais aimé un peu plus d\'action dans l\'intrigue.'),
(148, 28, 50, 5, 'Une lecture poignante qui explore avec sensibilité les défis et les injustices auxquels sont confrontés les jeunes noirs en Amérique. Recommandé !'),
(149, 12, 50, 4, 'Ce livre offre une perspective importante sur les tensions raciales et sociales aux États-Unis. L\'histoire est captivante et les personnages sont bien développés.'),
(150, 3, 50, 5, 'J\'ai été profondément touché par la manière dont ce livre aborde les thèmes de l\'identité, de la race et de la classe sociale. Une lecture essentielle pour tous.');

-- --------------------------------------------------------

--
-- Structure de la table `demande_ajout_livre`
--

CREATE TABLE `demande_ajout_livre` (
  `titre` varchar(255) NOT NULL,
  `auteur` varchar(255) NOT NULL,
  `date_demande` timestamp NOT NULL DEFAULT current_timestamp(),
  `id_utilisateur` int(11) DEFAULT NULL,
  `id_demande_ajout_livre` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `demande_ajout_livre`
--

INSERT INTO `demande_ajout_livre` (`titre`, `auteur`, `date_demande`, `id_utilisateur`, `id_demande_ajout_livre`) VALUES
('Sharko', 'Frank Thilliez', '2024-02-16 11:18:42', NULL, NULL),
('Dans Chacun de mes mots', 'Tamara Island Stone', '2024-02-16 13:50:39', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `livres`
--

CREATE TABLE `livres` (
  `id` int(11) NOT NULL,
  `titre` varchar(100) NOT NULL,
  `auteur` varchar(100) NOT NULL,
  `annee_publication` year(4) DEFAULT NULL,
  `genre` varchar(50) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `livres`
--

INSERT INTO `livres` (`id`, `titre`, `auteur`, `annee_publication`, `genre`, `images`) VALUES
(1, 'Orgueil et Préjugés', 'Jane Austen', '1932', 'Roman', 'images/img1.webp'),
(2, 'Le Petit Prince', 'Antoine de Saint-Exupéry', '1943', 'Conte', 'images/img2.jpg'),
(3, 'Moby Dick', 'Herman Melville', '1931', 'Aventure', 'images/img3.jpg'),
(4, 'CHERUB: 100 jours en Enfer', 'Robert Muchamore', '2004', 'Jeunesse', 'images/img4.jpg'),
(5, 'CHERUB: Trafic', 'Robert Muchamore', '2005', 'Jeunesse', 'images/img5.jpg'),
(6, 'CHERUB: Arizona Max', 'Robert Muchamore', '2006', 'Jeunesse', 'images/img6.jpg'),
(7, 'CHERUB: Chute libre', 'Robert Muchamore', '2006', 'Jeunesse', 'images/img7.jpg'),
(8, 'CHERUB: Les Survivants', 'Robert Muchamore', '2006', 'Jeunesse', 'images/img8.jpg'),
(9, 'CHERUB: Sang pour sang', 'Robert Muchamore', '2006', 'Jeunesse', 'images/img9.jpg'),
(10, 'CHERUB: A la dérive', 'Robert Muchamore', '2007', 'Jeunesse', 'images/img10.jpg'),
(11, 'CHERUB: Mad Dogs', 'Robert Muchamore', '2007', 'Jeunesse', 'images/img11.jpg'),
(12, 'CHERUB: Soleil noir', 'Robert Muchamore', '2008', 'Jeunesse', 'images/img12.jpg'),
(13, 'CHERUB: Crash', 'Robert Muchamore', '2008', 'Jeunesse', 'images/img13.jpg'),
(14, 'CHERUB: Vanadales', 'Robert Muchamore', '2009', 'Jeunesse', 'images/img14.jpg'),
(15, 'CHERUB: Le Grand Jeu', 'Robert Muchamore', '2008', 'Jeunesse', 'images/img15.jpg'),
(16, 'CHERUB: La Vague fantôme', 'Robert Muchamore', '2010', 'Jeunesse', 'images/img16.jpg'),
(17, 'CHERUB: Le Clan Aramov', 'Robert Muchamore', '2011', 'Jeunesse', 'images/img17.jpg'),
(18, 'CHERUB: L\'Ange gardien', 'Robert Muchamore', '2013', 'Jeunesse', 'images/img18.jpg'),
(19, 'CHERUB: Black Friday', 'Robert Muchamore', '2013', 'Jeunesse', 'images/img19.jpg'),
(20, 'CHERUB: Hors-la-loi', 'Robert Muchamore', '2015', 'Jeunesse', 'images/img20.jpg'),
(21, 'CHERUB: Commando Adams', 'Robert Muchamore', '2016', 'Jeunesse', 'images/img21.jpg'),
(22, 'Juste une ombre', 'Karine Giebel', '2012', 'Thriller', 'images/img22.jpg'),
(23, 'Purgatoire des innocents', 'Karine Giebel', '2007', 'Thriller', 'images/img23.jpg'),
(24, 'De Force', 'Karine Giebel', '2011', 'Thriller', 'images/img24.jpg'),
(25, 'Terminus Elicius', 'Karine Giebel', '2018', 'Thriller', 'images/img25.jpg'),
(26, 'Satan était un ange', 'Karine Giebel', '2002', 'Thriller', 'images/img26.jpg'),
(27, 'Les Morsures de l\'ombre', 'Karine Giebel', '2009', 'Thriller psychologique', 'images/img27.jpg'),
(28, 'Chiens de sang', 'Karine Giebel', '2018', 'Thriller psychologique', 'images/img28.jpg'),
(29, 'Meurtres pour rédemption', 'Karine Giebel', '2013', 'Thriller', 'images/img29.jpg'),
(30, 'Jusqu\'à ce que la mort nous unisse', 'Karine Giebel', '2016', 'Thriller', 'images/img30.jpg'),
(31, 'Glen Affric', 'Karine Giebel', '2021', 'Thriller psychologique', 'images/img31.jpg'),
(32, 'Toutes blessent la dernière tue', 'Karine Giebel', '2018', 'Thriller psychologique', 'images/img32.jpg'),
(33, 'Chambres noires', 'Karine Giebel', '2020', 'Thriller psychologique', 'images/img33.jpg'),
(34, 'Daisy Jones & The Six', 'Taylor Jenkins Reid', '2019', 'Fiction historique', 'images/img34.jpg'),
(35, 'The Seven Husbands of Evelyn Hugo', 'Taylor Jenkins Reid', '2017', 'Fiction historique', 'images/img35.jpg'),
(36, 'Malibu Raising', 'Taylor Jenkins Reid', '2021', 'Fiction historique', 'images/img36.jpg'),
(37, 'Verity', 'Colleen Hoover', '2023', 'Romance', 'images/img37.jpg'),
(38, 'Reminders of him', 'Colleen Hoover', '2024', 'Romance', 'images/img38.jpg'),
(39, 'It Stars with Us', 'Colleen Hoover', '2022', 'Romance', 'images/img39.jpg'),
(40, 'It Ends with Us', 'Colleen Hoover', '2016', 'Romance', 'images/img40.jpg'),
(41, 'Ne tirez pas sur l’oiseau moqueur', 'Harper Lee', '1960', 'Roman', 'images/img41.jpg'),
(42, 'Meurtres en ligne', 'Holly Jackson', '2021', 'Thriller', 'images/img42.jpg'),
(43, 'Le Dernier Jour d’un Condamné', 'Victor Hugo', '1901', 'Roman', 'images/img43.jpg'),
(44, 'Inheritance Games', 'Jennifer Lynn Barnes', '2020', 'Mystère', 'images/img44.jpg'),
(45, 'Inheritance Games 2', 'Jennifer Lynn Barnes', '2022', 'Mystère', 'images/img45.jpg'),
(46, 'Trop Noir, Trop Blanc', 'Trevor Noah', '2021', 'Autobiographie', 'images/img46.jpg'),
(47, 'Red Queen', 'Victoria Aveyard', '2015', 'Fantasy', 'images/img47.jpg'),
(48, 'Nous les menteurs', 'E. Lockhart', '2015', 'Thriller psycologique', 'images/img48.jpg'),
(49, 'La Princesse de Clèves', 'Madame de La Fayette', '1901', 'Roman classique', 'images/img49.jpg'),
(50, 'The Black Kids', 'Christina Hammonds Reed', '2020', 'Fiction Historique', 'images/img50.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mot_de_passe` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `nom`, `email`, `mot_de_passe`) VALUES
(1, 'Knox', 'est.nunc@protonmail.net', 'Rrdldyg8'),
(2, 'Mack', 'aliquet.odio@protonmail.net', 'Vpefqwh4'),
(3, 'Compton', 'sit.amet@hotmail.couk', 'Agyfohe4'),
(4, 'Beach', 'orci@outlook.edu', 'Cbikcvp6'),
(5, 'Meadows', 'sed.dictum@outlook.com', 'Fmtntmc1'),
(6, 'Barber', 'scelerisque.lorem.ipsum@protonmail.com', 'Rcquxxl1'),
(7, 'Shepherd', 'sem.eget.massa@hotmail.edu', 'Shbijfd3'),
(8, 'Mccullough', 'id.mollis.nec@protonmail.couk', 'Aeahulu5'),
(9, 'Maynard', 'hendrerit.neque.in@google.com', 'Mrhavei6'),
(10, 'Burt', 'rutrum@protonmail.com', 'Wjnirpx2'),
(11, 'Morrison', 'aliquet.molestie@aol.org', 'Kejovux1'),
(12, 'Browning', 'sem.consequat.nec@protonmail.ca', 'Wrdaict4'),
(13, 'Barnes', 'vel@outlook.ca', 'Mokitlg5'),
(14, 'Atkins', 'nec.tellus@hotmail.couk', 'Bdghgfh4'),
(15, 'Vaughan', 'dictum@google.edu', 'Ewxslrw7'),
(16, 'Gonzales', 'sem.molestie@protonmail.org', 'Fayeuuy9'),
(17, 'Wall', 'erat.vitae.risus@hotmail.edu', 'Cxyqrun4'),
(18, 'Bass', 'vulputate.eu@aol.ca', 'Fdhccxa1'),
(19, 'Daniel', 'proin.dolor@aol.edu', 'Wxeejpu4'),
(20, 'Mcmillan', 'vitae.mauris.sit@hotmail.net', 'Mbdfqwp3'),
(21, 'Knox', 'est.nunc@protonmail.net', 'Rrdldyg8'),
(22, 'Mack', 'aliquet.odio@protonmail.net', 'Vpefqwh4'),
(23, 'Compton', 'sit.amet@hotmail.couk', 'Agyfohe4'),
(24, 'Beach', 'orci@outlook.edu', 'Cbikcvp6'),
(25, 'Meadows', 'sed.dictum@outlook.com', 'Fmtntmc1'),
(26, 'Barber', 'scelerisque.lorem.ipsum@protonmail.com', 'Rcquxxl1'),
(27, 'Shepherd', 'sem.eget.massa@hotmail.edu', 'Shbijfd3'),
(28, 'Mccullough', 'id.mollis.nec@protonmail.couk', 'Aeahulu5'),
(29, 'Maynard', 'hendrerit.neque.in@google.com', 'Mrhavei6'),
(30, 'Burt', 'rutrum@protonmail.com', 'Wjnirpx2'),
(31, 'Morrison', 'aliquet.molestie@aol.org', 'Kejovux1'),
(32, 'Browning', 'sem.consequat.nec@protonmail.ca', 'Wrdaict4'),
(33, 'Barnes', 'vel@outlook.ca', 'Mokitlg5'),
(34, 'Atkins', 'nec.tellus@hotmail.couk', 'Bdghgfh4'),
(35, 'Vaughan', 'dictum@google.edu', 'Ewxslrw7'),
(36, 'Gonzales', 'sem.molestie@protonmail.org', 'Fayeuuy9'),
(37, 'Wall', 'erat.vitae.risus@hotmail.edu', 'Cxyqrun4'),
(38, 'Bass', 'vulputate.eu@aol.ca', 'Fdhccxa1'),
(39, 'Daniel', 'proin.dolor@aol.edu', 'Wxeejpu4'),
(40, 'Mcmillan', 'vitae.mauris.sit@hotmail.net', 'Mbdfqwp3');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `critiques`
--
ALTER TABLE `critiques`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_utilisateur` (`id_utilisateur`),
  ADD KEY `id_livre` (`id_livre`);

--
-- Index pour la table `demande_ajout_livre`
--
ALTER TABLE `demande_ajout_livre`
  ADD KEY `fk_id_utilisateur` (`id_utilisateur`);

--
-- Index pour la table `livres`
--
ALTER TABLE `livres`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `critiques`
--
ALTER TABLE `critiques`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=480;

--
-- AUTO_INCREMENT pour la table `livres`
--
ALTER TABLE `livres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `critiques`
--
ALTER TABLE `critiques`
  ADD CONSTRAINT `critiques_ibfk_1` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateurs` (`id`),
  ADD CONSTRAINT `critiques_ibfk_2` FOREIGN KEY (`id_livre`) REFERENCES `livres` (`id`);

--
-- Contraintes pour la table `demande_ajout_livre`
--
ALTER TABLE `demande_ajout_livre`
  ADD CONSTRAINT `fk_id_utilisateur` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateurs` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
