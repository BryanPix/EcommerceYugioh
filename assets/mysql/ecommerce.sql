-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mar. 12 déc. 2023 à 13:45
-- Version du serveur : 8.0.30
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ecommerce`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `ART_ID` int NOT NULL,
  `ART_Name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ART_Price` int NOT NULL,
  `ART_REF` varchar(50) NOT NULL,
  `ART_DESC` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ART_PICTURE` varchar(50) NOT NULL,
  `ART_Stock` int NOT NULL,
  `TYP_ID` int NOT NULL,
  `S_ID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`ART_ID`, `ART_Name`, `ART_Price`, `ART_REF`, `ART_DESC`, `ART_PICTURE`, `ART_Stock`, `TYP_ID`, `S_ID`) VALUES
(1, 'Phantom Nightmare', 60, 'REF154152364', 'Desc Phantom', 'phantom.img', 50, 1, 1),
(2, 'Le Labyrinthe du Millénaire', 30, 'REF1542364', 'Desc Labyrinthe', 'lab.img', 50, 1, 1),
(3, 'Les Vaillants Fracasseurs', 25, 'REF12364', 'Desc Fracasseurs', 'vaillants-fracasseurs.img', 50, 1, 1),
(4, 'L’Ère du Seigneur Suprême', 40, 'REF1742364', 'Desc L’Ère du Seigneur Suprême', 'ère-seigneur-suprême.img', 50, 1, 1),
(5, 'Duellistes Légendaires : Volcan Brûleur d’Âmes', 14, 'REF17442364', 'Desc Duellistes Légendaires : Volcan Brûleur d’Âmes', 'duellstes-légendaires.img', 50, 1, 1),
(6, 'Nexus du Duelliste', 8, 'REF173442364', 'Desc Nexus du Duelliste', 'nexus.img', 50, 1, 1),
(7, 'L’Invasion des Ténèbres', 25, 'REF1743442364', 'Desc L’Invasion des Ténèbres', 'invasion-ténèbres.img', 50, 1, 1),
(8, 'Serviteur du Pharaon', 12, 'REF12743442364', 'Desc Serviteur du Pharaon', 'serviteur-du-pharaon.img', 50, 1, 1),
(9, 'Le Maître des Magies', 38, 'REF12743442364', 'Desc Le Maître des Magies', 'maître-des-magies.img', 50, 1, 1),
(10, 'Metal Raiders', 14, 'REF127743442364', 'Desc Metal Raiders', 'metal-raiders.img', 50, 1, 1),
(11, 'La Légende du Dragon Blanc Aux Yeux Bleus', 101, 'REF164', 'Desc La Légende du Dragon Blanc Aux Yeux Bleus', 'dragon-blanc.img', 50, 1, 1),
(12, 'Accès à la Cyber-Tempête', 32, 'REF421164', 'Desc Accès à la Cyber-Tempête', 'accès-cyber-tempête.img', 50, 1, 1),
(13, 'Survivants Sauvages', 21, 'REF42179164', 'Desc Survivants Sauvages', 'survivants-sauvages.img', 50, 1, 1),
(14, 'Batailles de Légende : La Vengeance Monstrueuse', 20, 'REF942179164', 'Desc Batailles de Légende : La Vengeance Monstrueuse', 'vengeance-monstrueuse.img', 50, 1, 1),
(15, 'Deck de Structure : Les Rois du Feu', 145, 'REF344', 'Desc Deck de Structure : Les Rois du Feu', 'deck1.img', 50, 2, 1),
(16, 'Deck de Structure : Le Rois Cramoisi', 325, 'REF344', 'Desc Deck de Structure : Les Rois du Feu', 'deck1.img', 50, 2, 1),
(17, 'Deck de Structure : Attention aux Traptrix', 214, 'REF34424', 'Desc Deck de Structure : Attention aux Traptrix', 'deck2.img', 50, 2, 1),
(18, 'Deck de Structure : Monde Ténébreux', 214, 'REF34424', 'Desc Deck de Structure : Monde Ténébreux', 'deck4.img', 50, 2, 1),
(19, 'Deck de Structure : La Légende des Bêtes Cristallines', 321, 'REF340424', 'Desc Deck de Structure : La Légende des Bêtes Cristallines', 'deck5.img', 50, 2, 1),
(20, 'Deck de Structure : L’Assaut d’Albaz', 321, 'REF340424', 'Desc Deck de Structure : L’Assaut d’Albaz', 'deck6.img', 50, 2, 1),
(21, 'Deck de Structure : Assaut Cyber', 110, 'REF34470424', 'Desc Deck de Structure : Assaut Cyber', 'deck7.img', 50, 2, 1),
(22, 'Deck de Structure : Les Chaînes Glaciales', 139, 'REF344704224', 'Desc Deck de Structure : Les Chaînes Glaciales', 'deck8.img', 50, 2, 1),
(23, 'Yugi & Kaiba Quarter Century Card Case', 15, 'REF741', 'Desc Yugi & Kaiba Quarter Century Card Case', 'accessoire1.img', 50, 3, 1),
(24, 'Yugi & Kaiba Quarter Century Game Mat', 30, 'REF7411', 'Desc Yugi & Kaiba Quarter Century Game Mat', 'accessoire2.img', 50, 3, 1),
(25, 'Gold Pride – Super Fan Card Case', 25, 'REF74311', 'Desc Gold Pride – Super Fan Card Case', 'accessoire3.img', 50, 3, 1),
(26, 'Gold Pride – Carrie’s Crew Card Sleeves', 20, 'REF743101', 'Desc Gold Pride – Carrie’s Crew Card Sleeves', 'accessoire4.img', 50, 3, 1),
(27, 'Gold Pride – Chariot Carrie Game Mat', 15, 'REF7437101', 'Desc Gold Pride – Chariot Carrie Game Mat', 'accessoire5.img', 50, 3, 1),
(28, 'Dark Magician Girl Card Sleeves', 50, 'REF74371601', 'Desc Dark Magician Girl Card Sleeves', 'accessoire6.img', 50, 3, 1),
(29, 'Albaz – Ecclesia – Tri-Brigade Card Case', 20, 'REF74371601', 'Desc Albaz – Ecclesia – Tri-Brigade Card Case', 'accessoire7.img', 50, 3, 1),
(30, 'Albaz – Ecclesia – Tri-Brigade Game Mat', 20, 'REF741371601', 'Desc Albaz – Ecclesia – Tri-Brigade Game Mat', 'accessoire8.img', 50, 3, 1),
(31, 'Dark Magician Girl Card Sleeves', 42, 'REF741601', 'Desc Dark Magician Girl Card Sleeves', 'accessoire9.img', 50, 3, 1),
(32, 'Kuriboh Kollection Card Sleeves', 31, 'REF74164701', 'Desc Kuriboh Kollection Card Sleeves', 'accessoire10.img', 50, 3, 1);

-- --------------------------------------------------------

--
-- Structure de la table `article_type`
--

CREATE TABLE `article_type` (
  `TYP_ID` int NOT NULL,
  `TYP_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `article_type`
--

INSERT INTO `article_type` (`TYP_ID`, `TYP_Name`) VALUES
(1, 'Boosters'),
(2, 'Decks de structure'),
(3, 'Accessoires');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `USER_ID` int NOT NULL,
  `USER_MAIL` varchar(50) NOT NULL,
  `USER_PASSWORD` varchar(50) NOT NULL,
  `USER_NICKNAME` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`USER_ID`, `USER_MAIL`, `USER_PASSWORD`, `USER_NICKNAME`) VALUES
(1, 'alice@email.com', 'alice123', 'Alice_92'),
(2, 'bob@email.com', 'bob456', 'Bob_78'),
(3, 'charlotte@email.com', 'charlotte789', 'Charlotte_55'),
(4, 'david@email.com', 'david!pass', 'David_33'),
(5, 'emma@email.com', 'emma-pass', 'Emma_21'),
(6, 'frank@email.com', 'frankPass123', 'Frank_89'),
(7, 'grace@email.com', 'gracepwd', 'Grace_44'),
(8, 'henry@email.com', 'henryPass', 'Henry_67'),
(9, 'isabella@email.com', 'isabella1234', 'Isabella_27'),
(10, 'jack@email.com', 'jackpass', 'Jack_73');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `ORD_ID` int NOT NULL,
  `ORD_Date` date NOT NULL,
  `USER_ID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`ORD_ID`, `ORD_Date`, `USER_ID`) VALUES
(1, '2023-01-15', 1),
(2, '2023-02-20', 2),
(3, '2023-03-10', 3),
(4, '2023-04-05', 4),
(5, '2023-05-12', 5);

-- --------------------------------------------------------

--
-- Structure de la table `notice`
--

CREATE TABLE `notice` (
  `ID_AVIS` int NOT NULL,
  `ART_AVIS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ART_NOTE` int NOT NULL,
  `USER_ID` int NOT NULL,
  `ART_ID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `notice`
--

INSERT INTO `notice` (`ID_AVIS`, `ART_AVIS`, `ART_NOTE`, `USER_ID`, `ART_ID`) VALUES
(21, 'Très bon produit, je suis satisfait de mon achat.', 8, 1, 1),
(22, 'Livraison rapide et produit de qualité.', 9, 1, 2),
(23, 'Le produit ne correspond pas exactement à mes attentes.', 6, 2, 3),
(24, 'Service client réactif, problème résolu rapidement.', 7, 2, 4),
(25, 'Excellent service, je recommande vivement !', 10, 3, 5),
(26, 'Emballage un peu endommagé mais le produit est parfait.', 8, 3, 6),
(27, 'Produit conforme à la description, je suis satisfait.', 9, 4, 7),
(28, 'Livraison retardée mais le produit est top.', 8, 4, 8),
(29, 'Service impeccable, je suis très content de mon achat.', 9, 5, 9),
(30, 'Petit souci de couleur mais le service client a été super.', 7, 5, 10),
(31, 'Rien à redire, tout est parfait !', 10, 6, 11),
(32, 'Produit arrivé en bon état, je suis content.', 8, 6, 12),
(33, 'Livraison un peu longue mais produit conforme.', 7, 7, 13),
(34, 'Le produit est bien mais pourrait être amélioré.', 6, 7, 14),
(35, 'Très bonne qualité, je recommande fortement !', 9, 8, 15),
(36, 'Satisfait malgré un léger défaut.', 8, 8, 16),
(37, 'Produit conforme, je suis satisfait de mon achat.', 9, 9, 17),
(38, 'Service client efficace, problème résolu rapidement.', 8, 9, 18),
(39, 'Expérience d\'achat agréable, je recommande.', 8, 10, 19),
(40, 'Livraison un peu lente mais produit de qualité.', 7, 10, 20);

-- --------------------------------------------------------

--
-- Structure de la table `order_has_a_product`
--

CREATE TABLE `order_has_a_product` (
  `ART_ID` int NOT NULL,
  `ORD_ID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `order_has_a_product`
--

INSERT INTO `order_has_a_product` (`ART_ID`, `ORD_ID`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- --------------------------------------------------------

--
-- Structure de la table `supplier`
--

CREATE TABLE `supplier` (
  `S_ID` int NOT NULL,
  `S_NAME` varchar(50) NOT NULL,
  `S_MAIL` varchar(50) NOT NULL,
  `S_TEL` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `supplier`
--

INSERT INTO `supplier` (`S_ID`, `S_NAME`, `S_MAIL`, `S_TEL`) VALUES
(1, 'KONAMI', 'KONAMI@gmail.com', '0647215489');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`ART_ID`),
  ADD KEY `TYP_ID` (`TYP_ID`),
  ADD KEY `S_ID` (`S_ID`);

--
-- Index pour la table `article_type`
--
ALTER TABLE `article_type`
  ADD PRIMARY KEY (`TYP_ID`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`USER_ID`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`ORD_ID`),
  ADD KEY `USER_ID` (`USER_ID`);

--
-- Index pour la table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`ID_AVIS`),
  ADD KEY `USER_ID` (`USER_ID`),
  ADD KEY `ART_ID` (`ART_ID`);

--
-- Index pour la table `order_has_a_product`
--
ALTER TABLE `order_has_a_product`
  ADD PRIMARY KEY (`ART_ID`,`ORD_ID`),
  ADD KEY `ORD_ID` (`ORD_ID`);

--
-- Index pour la table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`S_ID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `ART_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT pour la table `article_type`
--
ALTER TABLE `article_type`
  MODIFY `TYP_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `USER_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `ORD_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `notice`
--
ALTER TABLE `notice`
  MODIFY `ID_AVIS` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pour la table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `S_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_ibfk_1` FOREIGN KEY (`TYP_ID`) REFERENCES `article_type` (`TYP_ID`),
  ADD CONSTRAINT `article_ibfk_2` FOREIGN KEY (`S_ID`) REFERENCES `supplier` (`S_ID`);

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `commande_ibfk_1` FOREIGN KEY (`USER_ID`) REFERENCES `client` (`USER_ID`);

--
-- Contraintes pour la table `notice`
--
ALTER TABLE `notice`
  ADD CONSTRAINT `notice_ibfk_1` FOREIGN KEY (`USER_ID`) REFERENCES `client` (`USER_ID`),
  ADD CONSTRAINT `notice_ibfk_2` FOREIGN KEY (`ART_ID`) REFERENCES `article` (`ART_ID`);

--
-- Contraintes pour la table `order_has_a_product`
--
ALTER TABLE `order_has_a_product`
  ADD CONSTRAINT `order_has_a_product_ibfk_1` FOREIGN KEY (`ART_ID`) REFERENCES `article` (`ART_ID`),
  ADD CONSTRAINT `order_has_a_product_ibfk_2` FOREIGN KEY (`ORD_ID`) REFERENCES `commande` (`ORD_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
