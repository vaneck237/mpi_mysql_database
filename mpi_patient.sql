-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 04 déc. 2022 à 01:53
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mpidb`
--

-- --------------------------------------------------------

--
-- Structure de la table `mpi_patient`
--

CREATE TABLE `mpi_patient` (
  `id` int(11) NOT NULL,
  `nom` varchar(200) NOT NULL,
  `date_naiss` varchar(200) NOT NULL,
  `sexe` varchar(100) NOT NULL,
  `telephone` varchar(50) NOT NULL,
  `contact_urgence` varchar(200) NOT NULL,
  `adresse` varchar(200) DEFAULT NULL,
  `village` varchar(100) DEFAULT NULL,
  `commune_naissance` varchar(200) DEFAULT NULL,
  `region_origine` varchar(200) DEFAULT NULL,
  `fonction` varchar(100) DEFAULT NULL,
  `statut_marital` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `mpi_patient`
--

INSERT INTO `mpi_patient` (`id`, `nom`, `date_naiss`, `sexe`, `telephone`, `contact_urgence`, `adresse`, `village`, `commune_naissance`, `region_origine`, `fonction`, `statut_marital`) VALUES
(2, 'Macintyre Jane			', '7/24/1967', 'M', '696660677', '696660677', 'MESSAMENA', 'Eschou', 'Messamena', 'Est', 'Private sector employee', 'Married monogamous'),
(3, 'Macintyre Adele', '2/16/1999', 'F', '660539829', '678071470', '(DIBATO) BOUTIQUE D\'IBRAHIM', 'Mpoundou', 'Mboanz (Angossas)', 'Est', 'Unemployed', 'Single'),
(4, 'Macintyre Abu', '3/11/1993', 'F', '698088823', '695869730', '(DIBATO) QUARTIER ADMINISTRATIF', 'Abong Mbang II', 'Abong Mbang', 'Est', 'Unemployed', 'Single'),
(5, 'Macintyre Jet', '3/13/1993', 'M', '650437496 / 61201009', '650437496', '(NDONNANG), A COTE DE LA QUINCAILLERIE YASSEN (DEM', 'ANGOSSAS', 'Mboanz (Angossas)', 'Est', 'Labourer', 'Co-habiting'),
(6, 'Manth Roger', '1/1/1982', 'F', '656982208', '', 'NANMEDJAP AYOS (NDONNANG -ATO)', 'NANMEDJAP', 'Ayos', 'Centre', 'Private sector employee', 'Co-habiting'),
(7, 'Manth Rennie', '1/1/1996', 'M', '691110448', '691110448', '(DIBATO) ANKOMB', 'Ankom', 'Mboanz (Angossas)', 'Est', 'Private sector employee', 'Single'),
(8, 'Manth Aby', '4/2/1993', 'F', '677935820', '661934155', '(NDONNANG) MBAM EWONDO', 'Abong Mbang II', 'Abong Mbang', 'Est', 'Vendor', 'Single'),
(9, 'Manth Gayle', '3/24/1997', 'M', '665112873', '663498364', 'ESSENG', 'ESSENG 2', '', 'Est', 'Driver', 'Single'),
(10, 'Manth Gabbie', '4/24/1981', 'F', '693151550', '', 'QUATIER NYONG', 'QUARTIER NYONG', 'Abong-MBang', 'Est', 'Private sector employee', 'Co-habiting'),
(11, 'Manth Ramy', '1/28/1981', 'F', '693224443/650811531', '671049166', '(DIBATO) ABONG-MBANG PLATEAU APRES LA BOULANGERIE', 'ABONG-MBANG PLATEAU', 'ABONG-MBANG', 'Est', 'Unemployed', 'Co-habiting'),
(12, 'Yellow James', '1/28/1981', 'F', '693224443/650811531', '671049166', '(DIBATO) ABONG-MBANG PLATEAU APRES LA BOULANGERIE', 'ABONG-MBANG PLATEAU', 'ABONG-MBANG', 'Est', 'Unemployed', 'Co-habiting'),
(13, 'Ramula	Agenio', '10/4/1973', 'M', '671049164', '693224443', '(BERGER) AQUARTIER PLATEAU', 'Abong Mbang II', 'Abong Mbang', 'Est', 'Driver', 'Co-habiting'),
(14, 'Badman Bolo', '10/4/1973', 'M', '671049164', '693224443', '(BERGER) AQUARTIER PLATEAU', 'Abong Mbang II', 'Abong Mbang', 'Est', 'Driver', 'Co-habiting'),
(15, 'Yellow	Uij', '1/1/2001', 'F', '693318154', '', 'BERGER', 'Mboule II', 'Abong Mbang', 'Est', 'Unemployed', 'Co-habiting'),
(16, 'Yellow	Jomi', '1/1/2001', 'F', '693318154', '', 'BERGER', 'Mboule II', 'Abong Mbang', 'Est', 'Unemployed', 'Co-habiting'),
(17, 'Ramula	Rosario', '5/19/1975', 'M', '', '', 'MBAMA (DIBATO)', 'MBAMA', '', 'Est', 'Housewife', 'Married monogamous'),
(18, 'Bonjorna Jono', '5/19/1975', 'M', '', '', 'MBAMA (DIBATO)', 'MBAMA', '', 'Est', 'Housewife', 'Married monogamous'),
(19, 'Labunda Agy', '1/1/1978', 'M', '', '', '(DIBATO) MBAMA', 'MBAMA', 'Messamena', 'Est', '', 'Single'),
(20, 'Bonjorna Rab', '1/1/1978', 'M', '', '', '(DIBATO) MBAMA', 'MBAMA', 'Messamena', 'Est', '', 'Single'),
(21, 'Labunda Obinoal', '12/25/1958', 'F', '', '', '(CSC)', 'Abong-Doum', 'Abong Mbang', 'Est', 'Labourer', 'Widow(er)'),
(22, 'Bonjorna Ojhi', '7/6/1992', 'F', '697148128', '657619388', '(DIBATO) QUARTIER TCHOLOU', 'NGUEIEMENDOUKA', 'NGUELEMENDOUKA', 'Est', 'Civil Servant', 'Single'),
(23, 'Lathuro	Jono', '1/1/1970', 'F', '690250563', '690250563', 'NGOILA', 'QUARTIER NYONG', 'LOMIE', 'Est', 'Vendor', 'Co-habiting'),
(24, 'Shan Xiao', '3/23/1980', 'F', '690969026', '698944423', '(NDONNANG) QUATIER MAKA', 'ABONG MBANG', '', 'Est', 'Unemployed', 'Single'),
(25, 'Barumida Filsen', '5/5/1992', 'M', '696129627', '', '( Auto Transf OUT) CHEFFERIE ETCHEK apres FORAGE 1', 'CHEFFERIE ETCHEK', '', 'Est', '', 'Co-habiting'),
(26, 'Lathuro	Jack', '5/1/1991', 'M', '655237041', '655237041', '(NDONNANG)', 'ABONG MBANG PLATEAU', 'Abong Mbang', 'Est', 'Unemployed', 'Single'),
(27, 'Lathuro	Lebin', '11/22/1994', 'F', '655076707', '', '(DIBATO) QUARTIER NYONG', 'Abong Mbang II', 'Abong Mbang', 'Est', 'Student', 'Single'),
(28, 'Leboven Age', '5/1/1991', 'M', '655237041', '655237041', '(NDONNANG)', 'ABONG MBANG PLATEAU', 'Abong Mbang', 'Est', 'Unemployed', 'Single'),
(29, 'Lathuro	Jeo', '1/1/1994', 'F', '650524785', '', 'DIBATO DJOW', 'Djow', 'Abong Mbang', 'Est', 'Civil Servant', 'Single'),
(30, 'Shan Xum', '1/1/1994', 'F', '650524785', '', 'DIBATO DJOW', 'Djow', 'Abong Mbang', 'Est', 'Civil Servant', 'Single'),
(31, 'Shan Xiao Lun', '9/25/2000', 'F', '673512728', '', 'NYONG (BERGER)', 'Nyong', 'Abong Mbang', 'Est', 'Vendor', 'Single'),
(32, 'Lewis Tetra', '8/19/1981', 'M', '661314869', '', '(BERGER) QUARTIER BAMI', 'QUARTIER BAMI ABONG MBANG', 'Abong Mbang', 'Est', 'Vendor', 'Married monogamous'),
(33, 'Jobolocy Acloby', '8/19/1981', 'M', '661314869', '', '(BERGER) QUARTIER BAMI', 'QUARTIER BAMI ABONG MBANG', 'Abong Mbang', 'Est', 'Vendor', 'Married monogamous'),
(34, 'Listy Agen', '1/1/1978', 'F', '657661411', '695257666', '(DIBATO) DJOW', 'Djow', 'Abong Mbang', 'Est', 'Vendor', 'Married polygamous'),
(35, 'Oberjine Zula', '6/17/1978', 'M', '659090472', '659090472', 'LOMIE,EKOM,HOTEL RAFIA,MAISON EN BLANCHE AU CARREF', 'EKOM,APRES HOTEL RAFIA MAISON BLANCHE AU CARREFOUR', 'Abong Mbang', 'Est', 'Private sector employee', 'Co-habiting'),
(36, 'Tetra Alon', '6/17/1978', 'M', '659090472', '659090472', 'LOMIE,EKOM,HOTEL RAFIA,MAISON EN BLANCHE AU CARREF', 'EKOM,APRES HOTEL RAFIA MAISON BLANCHE AU CARREFOUR', 'Abong Mbang', 'Est', 'Private sector employee', 'Co-habiting'),
(37, 'Tetra Zeal', '5/12/1956', 'F', '695778824', '', 'BERGER', 'NKOLVOLAN,KOLOYOP CHEZ MAMA GEORGETTE', 'ABON', 'Est', '', ''),
(38, 'Listy Baigan', '6/25/1975', 'F', '663322998', '', '(DIBATO) NKOUAK', 'Nkouak', 'Dja (Mindourou)', 'Est', 'Housewife', 'Single'),
(39, 'Listy Joseph', '5/12/1956', 'F', '695778824', '', 'BERGER', 'NKOLVOLAN,KOLOYOP CHEZ MAMA GEORGETTE', 'ABON', 'Est', '', ''),
(40, 'Listy Lidsey', '2/13/1976', 'F', '650553324 / 697577680', '', '(DIBATO) NKOUM APRES L\'ECOLE A GAUCHE', 'Abong Mbang II', 'Abong Mbang', 'Est', 'Housewife', 'Co-habiting'),
(41, 'Chakalio Alo', '9/22/1985', 'F', '696837286', '', 'BERGER', 'Ankoung', 'Abong Mbang', 'Est', 'Private sector employee', 'Co-habiting'),
(42, 'Chakalio Debonoir', '1/1/1999', 'M', '', '', 'BERGER', 'Abong-Doum', 'Abong Mbang', 'Est', 'Unemployed', ''),
(43, 'Chakalio Aden', '1/1/1994', 'M', '661691997', '', 'MEKOAGUE (DIBATO)', 'Mikouague', 'Bebend (Atok)', 'Est', 'Unemployed', 'Co-habiting'),
(44, 'Nonino	Ageni', '1/1/1973', 'F', '696474613', '696474613', '(BERGER) DJEGLASSI', 'DJEGLASSI', 'Abong Mbang', 'Est', 'Unemployed', 'Married monogamous'),
(45, 'Ilina Ethu', '1/1/1972', 'M', '696474613', '696474613', '(BERGER) DJEGLASSI', 'DJEGLASSI', 'Abong Mbang', 'Est', 'Unemployed', 'Married monogamous'),
(46, 'Chakalio Zuia', '1/1/1972', 'M', '696474613', '696474613', '(BERGER) DJEGLASSI', 'DJEGLASSI', 'Abong Mbang', 'Est', 'Unemployed', 'Married monogamous'),
(47, 'Ilina Doni', '10/30/2003', 'F', '', '', 'MBOULE', 'Mboule I', 'Abong Mbang', 'Est', 'Student', 'Co-habiting'),
(48, 'Jeremiah Joseph', '9/27/1991', 'F', '679359600', '698285695', '(DIBATO) SOURIS', 'Abong Mbang II', 'Abong Mbang', 'Est', 'Unemployed', 'Single'),
(49, 'Jorrison Manny', '4/18/1996', 'F', '696607094', '696607094', '(DIBATO) MPEMZOK', 'Mpemzok I', 'Abong Mbang', 'Est', 'Unemployed', 'Co-habiting'),
(50, 'Jeremiah Olina', '9/27/1991', 'F', '679359600', '698285695', '(DIBATO) SOURIS', 'Abong Mbang II', 'Abong Mbang', 'Est', 'Unemployed', 'Single'),
(51, 'Jeremiah Jane', '1/1/1992', 'F', '', '', '(NDONNANG) DJOW', 'DJOW', 'Abong Mbang', 'Est', '', 'Single'),
(52, 'Jeremiah Obui', '1/1/1992', 'F', '', '', 'DJOW', 'DJOW', 'Abong Mbang', 'Est', 'Unemployed', 'Single'),
(53, 'Jorrison Veny', '1/1/1992', 'F', '', '', '(NDONNANG) DJOW', 'DJOW', 'Abong Mbang', 'Est', '', 'Single'),
(54, 'Nathan	Kobi', '5/5/1976', 'M', '696607094', '696607094', 'DIBATO', 'Mpemzok I', 'Abong Mbang', 'Est', 'Civil Servant', 'Co-habiting'),
(55, 'Nathan	Rany', '6/26/1987', 'M', '663397345', '', '(NDONNANG -TO) KOLOMIN', 'Bertoua II', 'Bertoua II', 'Est', 'Vendor', 'Married monogamous'),
(56, 'Nathan	Jany', '6/26/1987', 'M', '663397345', '', '(NDONNANG -TO) KOLOMIN', 'Bertoua II', 'Bertoua II', 'Est', 'Vendor', 'Married monogamous'),
(57, 'Nathan	Jody', '1/1/1998', 'F', '663322998', '', 'DIBATO MISSOUME', 'MISSOUME', 'ABONG MBANG', 'Est', 'Unemployed', 'Single'),
(58, 'Duby Zuby', '1/1/1994', 'F', '', '', '(NDONNANG -REFUS) MISSOUME', 'Abong Mbang II', 'Abong Mbang', 'Est', 'Unemployed', 'Married monogamous'),
(59, 'Duby Jane', '1/1/1994', 'F', '', '', '(NDONNANG -REFUS) MISSOUME', 'Abong Mbang II', 'Abong Mbang', 'Est', 'Unemployed', 'Married monogamous'),
(60, 'Duby Olia', '1/1/2005', 'F', '', '', '(NDONNANG -REFUS)  MISSOUME', 'MISSOUME', 'Abong Mbang', 'Est', 'Unemployed', 'Married monogamous'),
(61, 'Macintyre Joseph', '1/1/2005', 'F', '', '', '(NDONNANG -REFUS)  MISSOUME', 'MISSOUME', 'Abong Mbang', 'Est', 'Unemployed', 'Married monogamous'),
(62, 'Macintyre Jane', '1/1/1994', 'F', '698368917', '', '(BERGER)  A COTE DE LA CHEFFERIE DU 3E DEGRE DE NT', 'Ntankuimb', 'Abong Mbang', 'Est', 'Unemployed', 'Married monogamous'),
(63, 'Macintyre Joseph', '1/1/1994', 'F', '698368917', '', '(BERGER)  A COTE DE LA CHEFFERIE DU 3E DEGRE DE NT', 'Ntankuimb', 'Abong Mbang', 'Est', 'Unemployed', 'Married monogamous'),
(64, 'Macintyre Joseph', '1/1/1953', 'F', '', '677335236', '(DIBATO) AU NIVEAU DU SANCTUAIRE MISSION CATHOLIQU', 'Atok', 'Bebend (Atok)', 'Est', 'Unemployed', 'Single'),
(65, 'Macintyre Joseph', '1/1/1953', 'F', '', '677335236', '(DIBATO) AU NIVEAU DU SANCTUAIRE MISSION CATHOLIQU', 'Atok', 'Bebend (Atok)', 'Est', 'Unemployed', 'Single'),
(66, 'Manth Aby', '2/20/1999', 'F', '', '', '(NDONNANG) CHEZ LE CHEF DE FAMILLE NANG ETIENNE', 'Kak I', 'Mboma', 'Est', 'Unemployed', 'Co-habiting'),
(67, 'Manth Rennie', '2/20/1999', 'F', '', '', '(NDONNANG) CHEZ LE CHEF DE FAMILLE NANG ETIENNE', 'Kak I', 'Mboma', 'Est', 'Unemployed', 'Co-habiting'),
(68, 'Manth Roger', '11/26/1996', 'F', '661480742', '', 'ESSENG II', 'Esseng II', 'Mboanz (Angossas)', 'Est', 'Unemployed', 'Co-habiting'),
(69, 'Manth Gayle', '11/26/1996', 'F', '661480742', '', 'ESSENG II', 'Esseng II', 'Mboanz (Angossas)', 'Est', 'Unemployed', 'Co-habiting'),
(70, 'Manth Ramy', '7/30/1999', 'M', '660339877', '690800377', '(ESSENG) FANG-BILOUN', 'Fang-Biloun', 'Nyakokombo (Kobdombo)', 'Centre', 'Businessman', 'Single'),
(71, 'Manth Gabbie', '7/30/1999', 'M', '660339877', '690800377', '(ESSENG) FANG-BILOUN', 'Fang-Biloun', 'Nyakokombo (Kobdombo)', 'Centre', 'Businessman', 'Single'),
(72, 'Macintyre Joseph', '3/8/1999', 'F', '695816248', '', 'ABONDOUM', 'ABONDOUM', 'Abong Mbang', 'Est', 'Private sector employee', 'Co-habiting'),
(73, 'Macintyre Jet', '3/8/1999', 'F', '695816248', '', 'ABONDOUM', 'ABONDOUM', 'Abong Mbang', 'Est', 'Private sector employee', 'Co-habiting'),
(74, 'Macintyre Abu', '12/1/1993', 'F', '678996462', '', 'ABONG-MBANG ,EN FACE DE LA BICEC', 'ABONG-MBANG EN FACE DE LA BICEC', 'Abong Mbang', 'Est', 'Unemployed', 'Single'),
(75, 'Macintyre Jane', '12/1/1993', 'F', '678996462', '', 'ABONG-MBANG ,EN FACE DE LA BICEC', 'ABONG-MBANG EN FACE DE LA BICEC', 'Abong Mbang', 'Est', 'Unemployed', 'Single'),
(76, 'Macintyre Adele', '3/1/1992', 'F', '681256469', '', 'DIBATO ABONG MBANG,OBOW', 'ABONG MBANG ,OBOW', 'Abong Mbang', 'Est', 'Vendor', 'Widow(er)'),
(77, 'Yellow James', '3/1/1992', 'F', '681256469', '', 'DIBATO ABONG MBANG,OBOW', 'ABONG MBANG ,OBOW', 'Abong Mbang', 'Est', 'Vendor', 'Widow(er)'),
(78, 'Yellow Uij', '1/20/1980', 'M', '660355728 / 664009697', '663247568', '(ESSENG)', 'Esseng I', 'Mboanz (Angossas)', 'Est', 'Unemployed', 'Co-habiting'),
(79, 'Yellow Jomi', '1/20/1980', 'M', '660355728 / 664009697', '663247568', '(ESSENG)', 'Esseng I', 'Mboanz (Angossas)', 'Est', 'Unemployed', 'Co-habiting'),
(80, 'Ramula Agenio', '1/1/2006', 'M', '', '', 'ESSENG', 'Esseng I', 'Mboanz (Angossas)', 'Est', 'Student', 'Single'),
(81, 'Ramula	Rosario	', '1/1/2006', 'M', '', '', 'ESSENG', 'Esseng I', 'Mboanz (Angossas)', 'Est', 'Student', 'Single'),
(82, 'Bonjorna Jono', '8/8/1999', 'F', '664009742', '', '(PTME-ESSENG)', 'Bagbetout', 'Mboanz (Angossas)', 'Est', 'Housewife', 'Single'),
(83, 'Bonjorna Rab Ramula Agenio', '8/8/1999', 'F', '664009742', '', '(PTME-ESSENG)', 'Bagbetout', 'Mboanz (Angossas)', 'Est', 'Housewife', 'Single'),
(84, 'Bonjorna Ojhi Ramula Rosario', '2/14/1996', 'M', '690398787', '', 'DIBATO', 'Abong Mbang II', 'Abong Mbang', 'Est', 'Student', 'Single'),
(85, 'Labunda Agy Bonjorna Jono', '2/14/1996', 'M', '690398787', '', 'DIBATO', 'Abong Mbang II', 'Abong Mbang', 'Est', 'Student', 'Single'),
(86, 'Labunda Obinoal ', '6/14/1981', 'F', '695180664', '695298925', 'DIBATO ABONG MBANG, MBOULE I', 'ABONG MBANG, MBOULE I', 'Abong Mbang', 'Est', 'Vendor', 'Co-habiting'),
(87, 'Lathuro	Jono Bonjorna Ojhi', '6/14/1981', 'F', '695180664', '695298925', 'DIBATO ABONG MBANG, MBOULE I', 'ABONG MBANG, MBOULE I', 'Abong Mbang', 'Est', 'Vendor', 'Co-habiting'),
(88, 'Lathuro	Jack Labunda Agy', '2/11/1983', 'F', '694687023', '666049615', 'DIBATO', 'ABONG MBANG ,MBOMA', 'Abong Mbang', 'Est', 'Housewife', 'Widow(er)'),
(89, 'Lathuro	Lebin', '2/11/1983', 'F', '694687023', '666049615', 'DIBATO', 'ABONG MBANG ,MBOMA', 'Abong Mbang', 'Est', 'Housewife', 'Widow(er)'),
(90, 'Leboven Age', '2/14/1992', 'F', '694533015/655366444', '659049957', 'DJOW (DIBATO)', 'Djow', 'Abong Mbang', 'Est', 'Unemployed', 'Single'),
(91, 'Lathuro  Jeo', '2/14/1992', 'F', '694533015/655366444', '659049957', 'DJOW (DIBATO)', 'Djow', 'Abong Mbang', 'Est', 'Unemployed', 'Single'),
(92, 'Shan Xiao', '1/1/2003', 'F', '677611440', '677611440', 'DIBATO ABONG MBANG, SOURIS', 'SOURIS', 'Abong Mbang', 'Est', 'Student', 'Single'),
(93, 'Shan Xum', '1/1/2003', 'F', '677611440', '677611440', 'DIBATO ABONG MBANG, SOURIS', 'SOURIS', 'Abong Mbang', 'Est', 'Student', 'Single'),
(94, 'Shan Xiao Lun', '4/24/1988', 'F', '651181461', '', '(NDONNANG) NGOULMAKON', 'NGOULMAKON', 'Abong Mbang', 'Est', 'Housewife', 'Married monogamous'),
(95, 'Barumida Filsen', '4/24/1988', 'F', '651181461', '', '(NDONNANG) NGOULMAKON', 'NGOULMAKON', 'Abong Mbang', 'Est', 'Housewife', 'Married monogamous'),
(96, 'Tetra Alon', '5/20/1973', 'M', '', '', '(NDONNANG) ANDJOU', 'Abong Mbang II', 'Abong Mbang', 'Est', 'Unemployed', 'Co-habiting'),
(97, 'Lewis Tetra', '5/20/1973', 'M', '', '', '(NDONNANG) ANDJOU', 'Abong Mbang II', 'Abong Mbang', 'Est', 'Unemployed', 'Co-habiting'),
(98, 'Tetra Zeal', '1/1/1952', 'F', 'S/C 683850624', '693850624', '(NDONNANG) NGOMDOUMA', 'Abong Mbang II', 'Abong Mbang', 'Est', 'Unemployed', 'Widow(er)'),
(99, 'Jorrison Manny', '1/1/1952', 'F', 'S/C 683850624', '693850624', '(NDONNANG) NGOMDOUMA', 'Abong Mbang II', 'Abong Mbang', 'Est', 'Unemployed', 'Widow(er)'),
(100, 'Jeremiah Joseph', '11/7/1961', 'F', '696693924/656689654', '676006737', 'BRIANT', 'EBOUMETOUM', 'Messamena', 'Est', 'Unemployed', 'Widow(er)'),
(101, 'Jeremiah Olina', '5/1/1988', 'M', '663381620', '660835552', '(DIBATO) A 100m Apres lecole dagriculture (DIBATO)', 'Djow', 'Abong Mbang', 'Est', 'Labourer', ''),
(102, 'Jeremiah Jane', '12/4/1966', 'F', '', '', '(CSC) KODJANS', 'Kodjans', 'Bebend (Atok)', 'Est', 'Housewife', 'Co-habiting'),
(103, 'Jeremiah Obui', '12/4/1976', 'F', '657876935', '666043135', 'EMERENCE', 'DJAPOSTEN', 'Dja (Mindourou)', 'Est', 'Vendor', 'Single'),
(104, 'Ilina Ethu', '4/8/1980', 'F', '673553873 / 664911360', '', '(MOLLO) MINKOAGUE', 'Mikouague', 'Bebend (Atok)', 'Est', 'Vendor', 'Single'),
(105, 'Ilina Doni', '1/1/1986', 'F', '', '', '(NDONNANG) NONGBALLA', 'Abong Mbang II', 'Abong Mbang', 'Est', 'Unemployed', 'Single'),
(106, 'Nonino	 Ageni', '9/2/1973', 'M', '697035827', '693357440', '(MOLLO) TONKLA', 'NGOILA', '', 'Est', 'Civil Servant', 'Married monogamous'),
(107, 'Chakalio Alo', '9/10/1979', 'M', '696122361', '661000917', '(FORTUNE) KODJANS', 'Kodjans', 'Messamena', 'Est', 'Unemployed', 'Co-habiting'),
(108, 'Chakalio Debonoir', '1/1/1962', 'F', '698683836', '698683836', '(NELIE) MBOUMO', 'Mboumo', 'Messamena', 'Est', 'Unemployed', 'Widow(er)'),
(109, 'Chakalio Aden', '8/23/1974', 'F', '693318154', '', '(NELIE) MBOULE', 'Mboule I', 'Abong Mbang', 'Est', 'Housewife', 'Single'),
(110, 'Chakalio Zuia', '3/8/1987', 'F', '', '698012524', '(Nelie) MADOUMA', 'Madouma', 'Abong Mbang', 'Est', 'Unemployed', ''),
(111, 'Listy Agen', '1/10/1999', 'M', '', '678408137', 'OBC-PRISON (quartier plateau)', 'Abong Mbang II', 'Abong Mbang', 'Est', 'Unemployed', 'Single'),
(112, 'Listy Baigan', '5/20/1988', 'M', '656697291', '691114892', '(MOLLO) MINDOUROU, MAYANG, FACE FOYER', 'Abong Mbang II', 'Abong Mbang', 'Est', 'Unemployed', 'Co-habiting'),
(113, 'Listy Joseph', '1/1/1966', 'F', '657335601', '657335601', 'CSC', 'Abong Mbang II', 'Abong Mbang', 'Est', 'Unemployed', 'Co-habiting'),
(114, 'Listy Lidsey', '1/1/1982', 'F', '661123152', '661123157', 'ABONG MBANG, MAYOS', 'ABONG MBANG, MAYOS', 'ABONG MBANG', 'Est', 'Unemployed', 'Co-habiting'),
(115, 'Jobolocy Acloby', '6/10/1988', 'F', '696718706', '690182542', '(MOLLO) ABONG MBANG, MBOULE', 'ABONG MBANG, MBOULE', 'ABONG MBANG', 'Est', 'Private sector employee', 'Single'),
(116, 'Badman Bolo', '1/1/1990', 'F', 's/c 670608011', 'KENFACK VERONIQUE', 'MBOULE II (BERGER)', 'Abong Mbang II', 'Abong Mbang', 'Est', 'Unemployed', 'Single'),
(117, 'Oberjine Zula', '5/23/1982', 'F', '673289958', '', 'BERGER', 'ABONG MBANG, KAKA', 'ABONG MBANG', 'Est', 'Vendor', 'Widow(er)'),
(118, 'Nathan	Kobi', '5/23/1982', 'F', '673289958', '', 'BERGER', 'ABONG MBANG, KAKA', 'ABONG MBANG', 'Est', 'Vendor', 'Widow(er)'),
(119, 'Nathan	Rany', '1/1/2002', 'F', '661410143', '', '(ESSENG) KOUMBOU', 'Esseng I', 'Mboanz (Angossas)', 'Est', 'Housewife', 'Single'),
(120, 'Nathan	Jany', '1/1/1985', 'M', '661410143 /661842490', '', '(ESSENG) KOUMBOU', 'Esseng I', 'Mboanz (Angossas)', 'Est', '', 'Single'),
(121, 'Nathan	Jody', '1/1/1961', 'F', '', '', '(ESSENG), NGONDO', 'Abong Mbang II', 'Abong Mbang', 'Est', 'Housewife', 'Widow(er)'),
(122, 'Duby Zuby', '1/1/2014', 'M', '667246425', '', 'PEDIATRIE (NGUEMETAK Chefferie)', 'NGUEMETAK 1', 'Bebend (Atok)', 'Est', '', ''),
(123, 'Duby Jane', '5/20/1980', 'F', '694797338', '694805379', '(MOLLO) DERRIERE LE DEUXIEME CARREFOUR DU BAR LAMA', 'Mboule I', 'Abong Mbang', 'Est', 'Unemployed', 'Single'),
(124, 'Duby Olia', '2/14/1984', 'M', '697140317', '699033343', '(MOLLO) MAMPANG', 'Mampang', 'Doume', 'Est', 'Private sector employee', 'Married monogamous'),
(125, 'Jorrison Veny', '2/14/1984', 'M', '697140317', '699033343', '(MOLLO) MAMPANG', 'Mampang', 'Doume', 'Est', 'Private sector employee', 'Married monogamous'),
(126, 'Insuree Test', '5/9/1981', 'F', '655237041', '698039305', '(PTME) ABONG MBANG PLATEAU', 'Abong Mbang II', 'Abong Mbang', 'Est', 'Unemployed', 'Widow(er)'),
(127, 'Man Test', '4/26/1987', 'F', '693318154/671820152', '677393154', 'PTME', 'Ayene', 'Abong Mbang', 'Est', 'Civil Servant', 'Single'),
(128, 'Woman Test', '1/1/1999', 'F', '676908019 / 682279132 / 698028685', '676908019', 'PTME', 'Nkouole', 'Abong Mbang', 'Est', 'Housewife', 'Co-habiting'),
(129, 'Insuree	 Test', '1/17/1992', 'F', '655293329', '674369362', '(NELIE) NYONG', 'Abong Mbang I', 'Abong Mbang', 'Est', 'Vendor', 'Single'),
(130, 'Woman Test', '1/1/1958', 'F', '694227217', '', 'OBC', 'Zoguela', 'Bebend (Atok)', 'Est', '', 'Widow(er)'),
(131, 'Man Test', '1/1/1958', 'F', '694227217', '', 'OBC', 'Zoguela', 'Bebend (Atok)', 'Est', '', 'Widow(er)'),
(132, 'arafat ahmed', '1/1/1976', 'F', '650430517', '', 'BRIANT', 'Abong Mbang II', 'Abong Mbang', 'Est', 'Labourer', 'Single'),
(133, 'arafa hoda', '1/1/1976', 'F', '650430517', '', 'BRIANT', 'Abong Mbang II', 'Abong Mbang', 'Est', 'Labourer', 'Single'),
(134, 'arafat mona', '1/1/1989', 'F', '694733474', '', '(OBC)', 'Abong Mbang II', 'Abong Mbang', 'Est', 'Student', 'Single'),
(135, 'arafa ahmed', '4/30/1996', 'F', '691129037', '', 'BERGER', 'Abong Mbang II', 'Abong Mbang', 'Est', '', ''),
(136, 'Family Test', '4/7/1987', 'F', '693311160', '', 'ELISABETH', 'Bapile', 'Lomie', 'Est', 'Housewife', ''),
(137, 'Family Son', '1/1/1977', 'F', '699788075', '696388965', '(MARIE) MPEMZOK', 'Mpemzok I', 'Abong Mbang', 'Est', 'Unemployed', 'Married monogamous'),
(138, 'Family Father', '3/25/1966', 'M', '677654675', '', '(NELIE) NTINDA', 'NTINDA', 'Abong Mbang', 'Est', '', 'Co-habiting'),
(139, 'arafat mona', '3/25/1966', 'M', '677654675', '', '(NELIE) NTINDA', 'NTINDA', 'Abong Mbang', 'Est', '', 'Co-habiting'),
(140, 'arafa hoda', '6/24/1991', 'M', '', '668427405', 'NDONNANG', 'Kaka', 'Abong Mbang', 'Est', 'Unemployed', 'Co-habiting'),
(141, 'arafat ahmed', '10/27/2015', 'F', '693318154', '', '(PEDIATRIE -PDV plusieurs mois) NTOLOCK', 'OBINAM', 'Abong Mbang', 'Est', 'Unemployed', 'Single'),
(142, 'Family Son', '1/11/1968', 'F', '66572403', '66572403', 'ELISABETH', 'Ntimbe II', 'Abong Mbang', 'Est', 'Unemployed', 'Co-habiting'),
(143, 'Family	Father			', '5/4/1989', 'M', '693419264', '662128848', 'DIBATO', 'Mboule I', 'Abong Mbang', 'Est', 'Student', 'Single'),
(144, 'Family 	Test			', '7/22/1972', 'F', '', '', '(DIBATO)', 'Kaka', 'Abong Mbang', 'Est', 'Vendor', 'Widow(er)');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `mpi_patient`
--
ALTER TABLE `mpi_patient`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `mpi_patient`
--
ALTER TABLE `mpi_patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
