-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 04 déc. 2022 à 13:02
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
  `unique_id` varchar(9) DEFAULT NULL,
  `nom` varchar(28) DEFAULT NULL,
  `date_naiss` varchar(10) DEFAULT NULL,
  `sexe` varchar(1) DEFAULT NULL,
  `telephone` varchar(33) DEFAULT NULL,
  `contact_urgence` varchar(17) DEFAULT NULL,
  `adresse` varchar(50) DEFAULT NULL,
  `commune_naissance` varchar(21) DEFAULT NULL,
  `region_origine` varchar(6) DEFAULT NULL,
  `fonction` varchar(23) DEFAULT NULL,
  `statut_marital` varchar(18) DEFAULT NULL,
  `email` varchar(10) DEFAULT NULL,
  `cni` varchar(10) DEFAULT NULL,
  `passeport` varchar(10) DEFAULT NULL,
  `etranger` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `mpi_patient`
--

INSERT INTO `mpi_patient` (`unique_id`, `nom`, `date_naiss`, `sexe`, `telephone`, `contact_urgence`, `adresse`, `commune_naissance`, `region_origine`, `fonction`, `statut_marital`, `email`, `cni`, `passeport`, `etranger`) VALUES
('HDA204296', 'Macintyre Jane			', '7/24/1967', 'M', '696660677', '696660677', 'MESSAMENA', 'Messamena', 'Est', 'Private sector employee', 'Married monogamous', '', '', '', ''),
('HDA204297', 'Macintyre Adele', '2/16/1999', 'F', '660539829', '678071470', '(DIBATO) BOUTIQUE D\'IBRAHIM', 'Mboanz (Angossas)', 'Est', 'Unemployed', 'Single', '', '', '', ''),
('HDA204298', 'Macintyre Abu', '3/11/1993', 'F', '698088823', '695869730', '(DIBATO) QUARTIER ADMINISTRATIF', 'Abong Mbang', 'Est', 'Unemployed', 'Single', '', '', '', ''),
('HDA204299', 'Macintyre Jet', '3/13/1993', 'M', '650437496 / 61201009', '650437496', '(NDONNANG), A COTE DE LA QUINCAILLERIE YASSEN (DEM', 'Mboanz (Angossas)', 'Est', 'Labourer', 'Co-habiting', '', '', '', ''),
('HDA204300', 'Manth Roger', '1/1/1982', 'F', '656982208', '', 'NANMEDJAP AYOS (NDONNANG -ATO)', 'Ayos', 'Centre', 'Private sector employee', 'Co-habiting', '', '', '', ''),
('HDA204301', 'Manth Rennie', '1/1/1996', 'M', '691110448', '691110448', '(DIBATO) ANKOMB', 'Mboanz (Angossas)', 'Est', 'Private sector employee', 'Single', '', '', '', ''),
('HDA204303', 'Manth Aby', '4/2/1993', 'F', '677935820', '661934155', '(NDONNANG) MBAM EWONDO', 'Abong Mbang', 'Est', 'Vendor', 'Single', '', '', '', ''),
('HDA204304', 'Manth Gayle', '3/24/1997', 'M', '665112873', '663498364', 'ESSENG', '', 'Est', 'Driver', 'Single', '', '', '', ''),
('HDA204307', 'Manth Gabbie', '4/24/1981', 'F', '693151550', '', 'QUATIER NYONG', 'Abong-MBang', 'Est', 'Private sector employee', 'Co-habiting', '', '', '', ''),
('HDA204308', 'Manth Ramy', '1/28/1981', 'F', '693224443/650811531', '671049166', '(DIBATO) ABONG-MBANG PLATEAU APRES LA BOULANGERIE', 'ABONG-MBANG', 'Est', 'Unemployed', 'Co-habiting', '', '', '', ''),
('HDA204308', 'Yellow James', '1/28/1981', 'F', '693224443/650811531', '671049166', '(DIBATO) ABONG-MBANG PLATEAU APRES LA BOULANGERIE', 'ABONG-MBANG', 'Est', 'Unemployed', 'Co-habiting', '', '', '', ''),
('HDA204309', 'Ramula	Agenio', '10/4/1973', 'M', '671049164', '693224443', '(BERGER) AQUARTIER PLATEAU', 'Abong Mbang', 'Est', 'Driver', 'Co-habiting', '', '', '', ''),
('HDA204309', 'Badman Bolo', '10/4/1973', 'M', '671049164', '693224443', '(BERGER) AQUARTIER PLATEAU', 'Abong Mbang', 'Est', 'Driver', 'Co-habiting', '', '', '', ''),
('HDA204311', 'Yellow	Uij', '1/1/2001', 'F', '693318154', '', 'BERGER', 'Abong Mbang', 'Est', 'Unemployed', 'Co-habiting', '', '', '', ''),
('HDA204311', 'Yellow	Jomi', '1/1/2001', 'F', '693318154', '', 'BERGER', 'Abong Mbang', 'Est', 'Unemployed', 'Co-habiting', '', '', '', ''),
('HDA204312', 'Ramula	Rosario', '5/19/1975', 'M', '', '', 'MBAMA (DIBATO)', '', 'Est', 'Housewife', 'Married monogamous', '', '', '', ''),
('HDA204312', 'Bonjorna Jono', '5/19/1975', 'M', '', '', 'MBAMA (DIBATO)', '', 'Est', 'Housewife', 'Married monogamous', '', '', '', ''),
('HDA204313', 'Labunda Agy', '1/1/1978', 'M', '', '', '(DIBATO) MBAMA', 'Messamena', 'Est', '', 'Single', '', '', '', ''),
('HDA204313', 'Bonjorna Rab', '1/1/1978', 'M', '', '', '(DIBATO) MBAMA', 'Messamena', 'Est', '', 'Single', '', '', '', ''),
('HDA204314', 'Labunda Obinoal', '12/25/1958', 'F', '', '', '(CSC)', 'Abong Mbang', 'Est', 'Labourer', 'Widow(er)', '', '', '', ''),
('HDA204315', 'Bonjorna Ojhi', '7/6/1992', 'F', '697148128', '657619388', '(DIBATO) QUARTIER TCHOLOU', 'NGUELEMENDOUKA', 'Est', 'Civil Servant', 'Single', '', '', '', ''),
('HDA204316', 'Lathuro	Jono', '1/1/1970', 'F', '690250563', '690250563', 'NGOILA', 'LOMIE', 'Est', 'Vendor', 'Co-habiting', '', '', '', ''),
('HDA204317', 'Shan Xiao', '3/23/1980', 'F', '690969026', '698944423', '(NDONNANG) QUATIER MAKA', '', 'Est', 'Unemployed', 'Single', '', '', '', ''),
('HDA204318', 'Barumida Filsen', '5/5/1992', 'M', '696129627', '', '( Auto Transf OUT) CHEFFERIE ETCHEK apres FORAGE 1', '', 'Est', '', 'Co-habiting', '', '', '', ''),
('HDA204320', 'Lathuro	Jack', '5/1/1991', 'M', '655237041', '655237041', '(NDONNANG)', 'Abong Mbang', 'Est', 'Unemployed', 'Single', '', '', '', ''),
('HDA204319', 'Lathuro	Lebin', '11/22/1994', 'F', '655076707', '', '(DIBATO) QUARTIER NYONG', 'Abong Mbang', 'Est', 'Student', 'Single', '', '', '', ''),
('HDA204320', 'Leboven Age', '5/1/1991', 'M', '655237041', '655237041', '(NDONNANG)', 'Abong Mbang', 'Est', 'Unemployed', 'Single', '', '', '', ''),
('HDA204321', 'Lathuro	Jeo', '1/1/1994', 'F', '650524785', '', 'DIBATO DJOW', 'Abong Mbang', 'Est', 'Civil Servant', 'Single', '', '', '', ''),
('HDA204321', 'Shan Xum', '1/1/1994', 'F', '650524785', '', 'DIBATO DJOW', 'Abong Mbang', 'Est', 'Civil Servant', 'Single', '', '', '', ''),
('HDA204322', 'Shan Xiao Lun', '9/25/2000', 'F', '673512728', '', 'NYONG (BERGER)', 'Abong Mbang', 'Est', 'Vendor', 'Single', '', '', '', ''),
('HDA204323', 'Lewis Tetra', '8/19/1981', 'M', '661314869', '', '(BERGER) QUARTIER BAMI', 'Abong Mbang', 'Est', 'Vendor', 'Married monogamous', '', '', '', ''),
('HDA204323', 'Jobolocy Acloby', '8/19/1981', 'M', '661314869', '', '(BERGER) QUARTIER BAMI', 'Abong Mbang', 'Est', 'Vendor', 'Married monogamous', '', '', '', ''),
('HDA204324', 'Listy Agen', '1/1/1978', 'F', '657661411', '695257666', '(DIBATO) DJOW', 'Abong Mbang', 'Est', 'Vendor', 'Married polygamous', '', '', '', ''),
('HDA204325', 'Oberjine Zula', '6/17/1978', 'M', '659090472', '659090472', 'LOMIE,EKOM,HOTEL RAFIA,MAISON EN BLANCHE AU CARREF', 'Abong Mbang', 'Est', 'Private sector employee', 'Co-habiting', '', '', '', ''),
('HDA204325', 'Tetra Alon', '6/17/1978', 'M', '659090472', '659090472', 'LOMIE,EKOM,HOTEL RAFIA,MAISON EN BLANCHE AU CARREF', 'Abong Mbang', 'Est', 'Private sector employee', 'Co-habiting', '', '', '', ''),
('HDA204327', 'Tetra Zeal', '5/12/1956', 'F', '695778824', '', 'BERGER', 'ABON', 'Est', '', '', '', '', '', ''),
('HDA204326', 'Listy Baigan', '6/25/1975', 'F', '663322998', '', '(DIBATO) NKOUAK', 'Dja (Mindourou)', 'Est', 'Housewife', 'Single', '', '', '', ''),
('HDA204327', 'Listy Joseph', '5/12/1956', 'F', '695778824', '', 'BERGER', 'ABON', 'Est', '', '', '', '', '', ''),
('HDA204328', 'Listy Lidsey', '2/13/1976', 'F', '650553324 / 697577680', '', '(DIBATO) NKOUM APRES L\'ECOLE A GAUCHE', 'Abong Mbang', 'Est', 'Housewife', 'Co-habiting', '', '', '', ''),
('HDA204329', 'Chakalio Alo', '9/22/1985', 'F', '696837286', '', 'BERGER', 'Abong Mbang', 'Est', 'Private sector employee', 'Co-habiting', '', '', '', ''),
('HDA204330', 'Chakalio Debonoir', '1/1/1999', 'M', '', '', 'BERGER', 'Abong Mbang', 'Est', 'Unemployed', '', '', '', '', ''),
('HDA204331', 'Chakalio Aden', '1/1/1994', 'M', '661691997', '', 'MEKOAGUE (DIBATO)', 'Bebend (Atok)', 'Est', 'Unemployed', 'Co-habiting', '', '', '', ''),
('HDA204332', 'Nonino	Ageni', '1/1/1973', 'F', '696474613', '696474613', '(BERGER) DJEGLASSI', 'Abong Mbang', 'Est', 'Unemployed', 'Married monogamous', '', '', '', ''),
('HDA204333', 'Ilina Ethu', '1/1/1972', 'M', '696474613', '696474613', '(BERGER) DJEGLASSI', 'Abong Mbang', 'Est', 'Unemployed', 'Married monogamous', '', '', '', ''),
('HDA204333', 'Chakalio Zuia', '1/1/1972', 'M', '696474613', '696474613', '(BERGER) DJEGLASSI', 'Abong Mbang', 'Est', 'Unemployed', 'Married monogamous', '', '', '', ''),
('HDA204334', 'Ilina Doni', '10/30/2003', 'F', '', '', 'MBOULE', 'Abong Mbang', 'Est', 'Student', 'Co-habiting', '', '', '', ''),
('HDA204336', 'Jeremiah Joseph', '9/27/1991', 'F', '679359600', '698285695', '(DIBATO) SOURIS', 'Abong Mbang', 'Est', 'Unemployed', 'Single', '', '', '', ''),
('HDA204335', 'Jorrison Manny', '4/18/1996', 'F', '696607094', '696607094', '(DIBATO) MPEMZOK', 'Abong Mbang', 'Est', 'Unemployed', 'Co-habiting', '', '', '', ''),
('HDA204336', 'Jeremiah Olina', '9/27/1991', 'F', '679359600', '698285695', '(DIBATO) SOURIS', 'Abong Mbang', 'Est', 'Unemployed', 'Single', '', '', '', ''),
('HDA204337', 'Jeremiah Jane', '1/1/1992', 'F', '', '', '(NDONNANG) DJOW', 'Abong Mbang', 'Est', '', 'Single', '', '', '', ''),
('HDA204340', 'Jeremiah Obui', '1/1/1992', 'F', '', '', 'DJOW', 'Abong Mbang', 'Est', 'Unemployed', 'Single', '', '', '', ''),
('HDA204337', 'Jorrison Veny', '1/1/1992', 'F', '', '', '(NDONNANG) DJOW', 'Abong Mbang', 'Est', '', 'Single', '', '', '', ''),
('HDA204341', 'Nathan	Kobi', '5/5/1976', 'M', '696607094', '696607094', 'DIBATO', 'Abong Mbang', 'Est', 'Civil Servant', 'Co-habiting', '', '', '', ''),
('HDA204342', 'Nathan	Rany', '6/26/1987', 'M', '663397345', '', '(NDONNANG -TO) KOLOMIN', 'Bertoua II', 'Est', 'Vendor', 'Married monogamous', '', '', '', ''),
('HDA204342', 'Nathan	Jany', '6/26/1987', 'M', '663397345', '', '(NDONNANG -TO) KOLOMIN', 'Bertoua II', 'Est', 'Vendor', 'Married monogamous', '', '', '', ''),
('HDA204343', 'Nathan	Jody', '1/1/1998', 'F', '663322998', '', 'DIBATO MISSOUME', 'ABONG MBANG', 'Est', 'Unemployed', 'Single', '', '', '', ''),
('HDA204344', 'Duby Zuby', '1/1/1994', 'F', '', '', '(NDONNANG -REFUS) MISSOUME', 'Abong Mbang', 'Est', 'Unemployed', 'Married monogamous', '', '', '', ''),
('HDA204344', 'Duby Jane', '1/1/1994', 'F', '', '', '(NDONNANG -REFUS) MISSOUME', 'Abong Mbang', 'Est', 'Unemployed', 'Married monogamous', '', '', '', ''),
('HDA204345', 'Duby Olia', '1/1/2005', 'F', '', '', '(NDONNANG -REFUS)  MISSOUME', 'Abong Mbang', 'Est', 'Unemployed', 'Married monogamous', '', '', '', ''),
('HDA204345', 'Macintyre Joseph', '1/1/2005', 'F', '', '', '(NDONNANG -REFUS)  MISSOUME', 'Abong Mbang', 'Est', 'Unemployed', 'Married monogamous', '', '', '', ''),
('HDA204346', 'Macintyre Jane', '1/1/1994', 'F', '698368917', '', '(BERGER)  A COTE DE LA CHEFFERIE DU 3E DEGRE DE NT', 'Abong Mbang', 'Est', 'Unemployed', 'Married monogamous', '', '', '', ''),
('HDA204346', 'Macintyre Joseph', '1/1/1994', 'F', '698368917', '', '(BERGER)  A COTE DE LA CHEFFERIE DU 3E DEGRE DE NT', 'Abong Mbang', 'Est', 'Unemployed', 'Married monogamous', '', '', '', ''),
('HDA204348', 'Macintyre Joseph', '1/1/1953', 'F', '', '677335236', '(DIBATO) AU NIVEAU DU SANCTUAIRE MISSION CATHOLIQU', 'Bebend (Atok)', 'Est', 'Unemployed', 'Single', '', '', '', ''),
('HDA204348', 'Macintyre Joseph', '1/1/1953', 'F', '', '677335236', '(DIBATO) AU NIVEAU DU SANCTUAIRE MISSION CATHOLIQU', 'Bebend (Atok)', 'Est', 'Unemployed', 'Single', '', '', '', ''),
('HDA204349', 'Manth Aby', '2/20/1999', 'F', '', '', '(NDONNANG) CHEZ LE CHEF DE FAMILLE NANG ETIENNE', 'Mboma', 'Est', 'Unemployed', 'Co-habiting', '', '', '', ''),
('HDA204349', 'Manth Rennie', '2/20/1999', 'F', '', '', '(NDONNANG) CHEZ LE CHEF DE FAMILLE NANG ETIENNE', 'Mboma', 'Est', 'Unemployed', 'Co-habiting', '', '', '', ''),
('HDA204350', 'Manth Roger', '11/26/1996', 'F', '661480742', '', 'ESSENG II', 'Mboanz (Angossas)', 'Est', 'Unemployed', 'Co-habiting', '', '', '', ''),
('HDA204350', 'Manth Gayle', '11/26/1996', 'F', '661480742', '', 'ESSENG II', 'Mboanz (Angossas)', 'Est', 'Unemployed', 'Co-habiting', '', '', '', ''),
('HDA204351', 'Manth Ramy', '7/30/1999', 'M', '660339877', '690800377', '(ESSENG) FANG-BILOUN', 'Nyakokombo (Kobdombo)', 'Centre', 'Businessman', 'Single', '', '', '', ''),
('HDA204351', 'Manth Gabbie', '7/30/1999', 'M', '660339877', '690800377', '(ESSENG) FANG-BILOUN', 'Nyakokombo (Kobdombo)', 'Centre', 'Businessman', 'Single', '', '', '', ''),
('HDA204352', 'Macintyre Joseph', '3/8/1999', 'F', '695816248', '', 'ABONDOUM', 'Abong Mbang', 'Est', 'Private sector employee', 'Co-habiting', '', '', '', ''),
('HDA204352', 'Macintyre Jet', '3/8/1999', 'F', '695816248', '', 'ABONDOUM', 'Abong Mbang', 'Est', 'Private sector employee', 'Co-habiting', '', '', '', ''),
('HDA204353', 'Macintyre Abu', '12/1/1993', 'F', '678996462', '', 'ABONG-MBANG ,EN FACE DE LA BICEC', 'Abong Mbang', 'Est', 'Unemployed', 'Single', '', '', '', ''),
('HDA204353', 'Macintyre Jane', '12/1/1993', 'F', '678996462', '', 'ABONG-MBANG ,EN FACE DE LA BICEC', 'Abong Mbang', 'Est', 'Unemployed', 'Single', '', '', '', ''),
('HDA204354', 'Macintyre Adele', '3/1/1992', 'F', '681256469', '', 'DIBATO ABONG MBANG,OBOW', 'Abong Mbang', 'Est', 'Vendor', 'Widow(er)', '', '', '', ''),
('HDA204354', 'Yellow James', '3/1/1992', 'F', '681256469', '', 'DIBATO ABONG MBANG,OBOW', 'Abong Mbang', 'Est', 'Vendor', 'Widow(er)', '', '', '', ''),
('HDA204355', 'Yellow Uij', '1/20/1980', 'M', '660355728 / 664009697', '663247568', '(ESSENG)', 'Mboanz (Angossas)', 'Est', 'Unemployed', 'Co-habiting', '', '', '', ''),
('HDA204355', 'Yellow Jomi', '1/20/1980', 'M', '660355728 / 664009697', '663247568', '(ESSENG)', 'Mboanz (Angossas)', 'Est', 'Unemployed', 'Co-habiting', '', '', '', ''),
('HDA204356', 'Ramula Agenio', '1/1/2006', 'M', '', '', 'ESSENG', 'Mboanz (Angossas)', 'Est', 'Student', 'Single', '', '', '', ''),
('HDA204356', 'Ramula	Rosario	', '1/1/2006', 'M', '', '', 'ESSENG', 'Mboanz (Angossas)', 'Est', 'Student', 'Single', '', '', '', ''),
('HDA204357', 'Bonjorna Jono', '8/8/1999', 'F', '664009742', '', '(PTME-ESSENG)', 'Mboanz (Angossas)', 'Est', 'Housewife', 'Single', '', '', '', ''),
('HDA204357', 'Bonjorna Rab Ramula Agenio', '8/8/1999', 'F', '664009742', '', '(PTME-ESSENG)', 'Mboanz (Angossas)', 'Est', 'Housewife', 'Single', '', '', '', ''),
('HDA204358', 'Bonjorna Ojhi Ramula Rosario', '2/14/1996', 'M', '690398787', '', 'DIBATO', 'Abong Mbang', 'Est', 'Student', 'Single', '', '', '', ''),
('HDA204358', 'Labunda Agy Bonjorna Jono', '2/14/1996', 'M', '690398787', '', 'DIBATO', 'Abong Mbang', 'Est', 'Student', 'Single', '', '', '', ''),
('HDA204359', 'Labunda Obinoal ', '6/14/1981', 'F', '695180664', '695298925', 'DIBATO ABONG MBANG, MBOULE I', 'Abong Mbang', 'Est', 'Vendor', 'Co-habiting', '', '', '', ''),
('HDA204359', 'Lathuro	Jono Bonjorna Ojhi', '6/14/1981', 'F', '695180664', '695298925', 'DIBATO ABONG MBANG, MBOULE I', 'Abong Mbang', 'Est', 'Vendor', 'Co-habiting', '', '', '', ''),
('HDA204360', 'Lathuro	Jack Labunda Agy', '2/11/1983', 'F', '694687023', '666049615', 'DIBATO', 'Abong Mbang', 'Est', 'Housewife', 'Widow(er)', '', '', '', ''),
('HDA204360', 'Lathuro	Lebin', '2/11/1983', 'F', '694687023', '666049615', 'DIBATO', 'Abong Mbang', 'Est', 'Housewife', 'Widow(er)', '', '', '', ''),
('HDA204361', 'Leboven Age', '2/14/1992', 'F', '694533015/655366444', '659049957', 'DJOW (DIBATO)', 'Abong Mbang', 'Est', 'Unemployed', 'Single', '', '', '', ''),
('HDA204361', 'Lathuro  Jeo', '2/14/1992', 'F', '694533015/655366444', '659049957', 'DJOW (DIBATO)', 'Abong Mbang', 'Est', 'Unemployed', 'Single', '', '', '', ''),
('HDA204362', 'Shan Xiao', '1/1/2003', 'F', '677611440', '677611440', 'DIBATO ABONG MBANG, SOURIS', 'Abong Mbang', 'Est', 'Student', 'Single', '', '', '', ''),
('HDA204362', 'Shan Xum', '1/1/2003', 'F', '677611440', '677611440', 'DIBATO ABONG MBANG, SOURIS', 'Abong Mbang', 'Est', 'Student', 'Single', '', '', '', ''),
('HDA204363', 'Shan Xiao Lun', '4/24/1988', 'F', '651181461', '', '(NDONNANG) NGOULMAKON', 'Abong Mbang', 'Est', 'Housewife', 'Married monogamous', '', '', '', ''),
('HDA204363', 'Barumida Filsen', '4/24/1988', 'F', '651181461', '', '(NDONNANG) NGOULMAKON', 'Abong Mbang', 'Est', 'Housewife', 'Married monogamous', '', '', '', ''),
('HDA204364', 'Tetra Alon', '5/20/1973', 'M', '', '', '(NDONNANG) ANDJOU', 'Abong Mbang', 'Est', 'Unemployed', 'Co-habiting', '', '', '', ''),
('HDA204364', 'Lewis Tetra', '5/20/1973', 'M', '', '', '(NDONNANG) ANDJOU', 'Abong Mbang', 'Est', 'Unemployed', 'Co-habiting', '', '', '', ''),
('HDA204365', 'Tetra Zeal', '1/1/1952', 'F', 'S/C 683850624', '693850624', '(NDONNANG) NGOMDOUMA', 'Abong Mbang', 'Est', 'Unemployed', 'Widow(er)', '', '', '', ''),
('HDA204365', 'Jorrison Manny', '1/1/1952', 'F', 'S/C 683850624', '693850624', '(NDONNANG) NGOMDOUMA', 'Abong Mbang', 'Est', 'Unemployed', 'Widow(er)', '', '', '', ''),
('HDA204366', 'Jeremiah Joseph', '11/7/1961', 'F', '696693924/656689654', '676006737', 'BRIANT', 'Messamena', 'Est', 'Unemployed', 'Widow(er)', '', '', '', ''),
('HDA204294', 'Jeremiah Olina', '5/1/1988', 'M', '663381620', '660835552', '(DIBATO) A 100m Apres lecole dagriculture (DIBATO)', 'Abong Mbang', 'Est', 'Labourer', '', '', '', '', ''),
('HDA204369', 'Jeremiah Jane', '12/4/1966', 'F', '', '', '(CSC) KODJANS', 'Bebend (Atok)', 'Est', 'Housewife', 'Co-habiting', '', '', '', ''),
('HDA204370', 'Jeremiah Obui', '12/4/1976', 'F', '657876935', '666043135', 'EMERENCE', 'Dja (Mindourou)', 'Est', 'Vendor', 'Single', '', '', '', ''),
('HDA204371', 'Ilina Ethu', '4/8/1980', 'F', '673553873 / 664911360', '', '(MOLLO) MINKOAGUE', 'Bebend (Atok)', 'Est', 'Vendor', 'Single', '', '', '', ''),
('HDA204372', 'Ilina Doni', '1/1/1986', 'F', '', '', '(NDONNANG) NONGBALLA', 'Abong Mbang', 'Est', 'Unemployed', 'Single', '', '', '', ''),
('HDA204288', 'Nonino	 Ageni', '9/2/1973', 'M', '697035827', '693357440', '(MOLLO) TONKLA', '', 'Est', 'Civil Servant', 'Married monogamous', '', '', '', ''),
('HDA204373', 'Chakalio Alo', '9/10/1979', 'M', '696122361', '661000917', '(FORTUNE) KODJANS', 'Messamena', 'Est', 'Unemployed', 'Co-habiting', '', '', '', ''),
('HDA204374', 'Chakalio Debonoir', '1/1/1962', 'F', '698683836', '698683836', '(NELIE) MBOUMO', 'Messamena', 'Est', 'Unemployed', 'Widow(er)', '', '', '', ''),
('HDA203746', 'Chakalio Aden', '8/23/1974', 'F', '693318154', '', '(NELIE) MBOULE', 'Abong Mbang', 'Est', 'Housewife', 'Single', '', '', '', ''),
('HDA204375', 'Chakalio Zuia', '3/8/1987', 'F', '', '698012524', '(Nelie) MADOUMA', 'Abong Mbang', 'Est', 'Unemployed', '', '', '', '', ''),
('HDA204376', 'Listy Agen', '1/10/1999', 'M', '', '678408137', 'OBC-PRISON (quartier plateau)', 'Abong Mbang', 'Est', 'Unemployed', 'Single', '', '', '', ''),
('HDA204377', 'Listy Baigan', '5/20/1988', 'M', '656697291', '691114892', '(MOLLO) MINDOUROU, MAYANG, FACE FOYER', 'Abong Mbang', 'Est', 'Unemployed', 'Co-habiting', '', '', '', ''),
('HDA204378', 'Listy Joseph', '1/1/1966', 'F', '657335601', '657335601', 'CSC', 'Abong Mbang', 'Est', 'Unemployed', 'Co-habiting', '', '', '', ''),
('HDA204379', 'Listy Lidsey', '1/1/1982', 'F', '661123152', '661123157', 'ABONG MBANG, MAYOS', 'ABONG MBANG', 'Est', 'Unemployed', 'Co-habiting', '', '', '', ''),
('HDA204380', 'Jobolocy Acloby', '6/10/1988', 'F', '696718706', '690182542', '(MOLLO) ABONG MBANG, MBOULE', 'ABONG MBANG', 'Est', 'Private sector employee', 'Single', '', '', '', ''),
('HDA204381', 'Badman Bolo', '1/1/1990', 'F', 's/c 670608011', 'KENFACK VERONIQUE', 'MBOULE II (BERGER)', 'Abong Mbang', 'Est', 'Unemployed', 'Single', '', '', '', ''),
('HDA204382', 'Oberjine Zula', '5/23/1982', 'F', '673289958', '', 'BERGER', 'ABONG MBANG', 'Est', 'Vendor', 'Widow(er)', '', '', '', ''),
('HDA204382', 'Nathan	Kobi', '5/23/1982', 'F', '673289958', '', 'BERGER', 'ABONG MBANG', 'Est', 'Vendor', 'Widow(er)', '', '', '', ''),
('HDA204383', 'Nathan	Rany', '1/1/2002', 'F', '661410143', '', '(ESSENG) KOUMBOU', 'Mboanz (Angossas)', 'Est', 'Housewife', 'Single', '', '', '', ''),
('HDA204384', 'Nathan	Jany', '1/1/1985', 'M', '661410143 /661842490', '', '(ESSENG) KOUMBOU', 'Mboanz (Angossas)', 'Est', '', 'Single', '', '', '', ''),
('HDA204387', 'Nathan	Jody', '1/1/1961', 'F', '', '', '(ESSENG), NGONDO', 'Abong Mbang', 'Est', 'Housewife', 'Widow(er)', '', '', '', ''),
('HDA204388', 'Duby Zuby', '1/1/2014', 'M', '667246425', '', 'PEDIATRIE (NGUEMETAK Chefferie)', 'Bebend (Atok)', 'Est', '', '', '', '', '', ''),
('HDA204389', 'Duby Jane', '5/20/1980', 'F', '694797338', '694805379', '(MOLLO) DERRIERE LE DEUXIEME CARREFOUR DU BAR LAMA', 'Abong Mbang', 'Est', 'Unemployed', 'Single', '', '', '', ''),
('HDA204390', 'Duby Olia', '2/14/1984', 'M', '697140317', '699033343', '(MOLLO) MAMPANG', 'Doume', 'Est', 'Private sector employee', 'Married monogamous', '', '', '', ''),
('HDA204390', 'Jorrison Veny', '2/14/1984', 'M', '697140317', '699033343', '(MOLLO) MAMPANG', 'Doume', 'Est', 'Private sector employee', 'Married monogamous', '', '', '', ''),
('HDA204391', 'Insuree Test', '5/9/1981', 'F', '655237041', '698039305', '(PTME) ABONG MBANG PLATEAU', 'Abong Mbang', 'Est', 'Unemployed', 'Widow(er)', '', '', '', ''),
('HDA203362', 'Man Test', '4/26/1987', 'F', '693318154/671820152', '677393154', 'PTME', 'Abong Mbang', 'Est', 'Civil Servant', 'Single', '', '', '', ''),
('HDA204393', 'Woman Test', '1/1/1999', 'F', '676908019 / 682279132 / 698028685', '676908019', 'PTME', 'Abong Mbang', 'Est', 'Housewife', 'Co-habiting', '', '', '', ''),
('HDA204395', 'Insuree	 Test', '1/17/1992', 'F', '655293329', '674369362', '(NELIE) NYONG', 'Abong Mbang', 'Est', 'Vendor', 'Single', '', '', '', ''),
('HDA204398', 'Woman Test', '1/1/1958', 'F', '694227217', '', 'OBC', 'Bebend (Atok)', 'Est', '', 'Widow(er)', '', '', '', ''),
('HDA204398', 'Man Test', '1/1/1958', 'F', '694227217', '', 'OBC', 'Bebend (Atok)', 'Est', '', 'Widow(er)', '', '', '', ''),
('HDA204394', 'arafat ahmed', '1/1/1976', 'F', '650430517', '', 'BRIANT', 'Abong Mbang', 'Est', 'Labourer', 'Single', '', '', '', ''),
('HDA204394', 'arafa hoda', '1/1/1976', 'F', '650430517', '', 'BRIANT', 'Abong Mbang', 'Est', 'Labourer', 'Single', '', '', '', ''),
('HDA204397', 'arafat mona', '1/1/1989', 'F', '694733474', '', '(OBC)', 'Abong Mbang', 'Est', 'Student', 'Single', '', '', '', ''),
('HDA203839', 'arafa ahmed', '4/30/1996', 'F', '691129037', '', 'BERGER', 'Abong Mbang', 'Est', '', '', '', '', '', ''),
('HDA203343', 'Family Test', '4/7/1987', 'F', '693311160', '', 'ELISABETH', 'Lomie', 'Est', 'Housewife', '', '', '', '', ''),
('HDA204399', 'Family Son', '1/1/1977', 'F', '699788075', '696388965', '(MARIE) MPEMZOK', 'Abong Mbang', 'Est', 'Unemployed', 'Married monogamous', '', '', '', ''),
('HDA204400', 'Family Father', '3/25/1966', 'M', '677654675', '', '(NELIE) NTINDA', 'Abong Mbang', 'Est', '', 'Co-habiting', '', '', '', ''),
('HDA204400', 'arafat mona', '3/25/1966', 'M', '677654675', '', '(NELIE) NTINDA', 'Abong Mbang', 'Est', '', 'Co-habiting', '', '', '', ''),
('HDA204401', 'arafa hoda', '6/24/1991', 'M', '', '668427405', 'NDONNANG', 'Abong Mbang', 'Est', 'Unemployed', 'Co-habiting', '', '', '', ''),
('HDA204403', 'arafat ahmed', '10/27/2015', 'F', '693318154', '', '(PEDIATRIE -PDV plusieurs mois) NTOLOCK', 'Abong Mbang', 'Est', 'Unemployed', 'Single', '', '', '', ''),
('HDA204404', 'Family Son', '1/11/1968', 'F', '66572403', '66572403', 'ELISABETH', 'Abong Mbang', 'Est', 'Unemployed', 'Co-habiting', '', '', '', ''),
('HDA204405', 'Family	Father			', '5/4/1989', 'M', '693419264', '662128848', 'DIBATO', 'Abong Mbang', 'Est', 'Student', 'Single', '', '', '', ''),
('HDA204406', 'Family 	Test			', '7/22/1972', 'F', '', '', '(DIBATO)', 'Abong Mbang', 'Est', 'Vendor', 'Widow(er)', '', '', '', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
