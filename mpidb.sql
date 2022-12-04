-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 04 déc. 2022 à 05:38
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
-- Structure de la table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add patient', 7, 'add_patient'),
(26, 'Can change patient', 7, 'change_patient'),
(27, 'Can delete patient', 7, 'delete_patient'),
(28, 'Can view patient', 7, 'view_patient'),
(29, 'Can add user', 8, 'add_user'),
(30, 'Can change user', 8, 'change_user'),
(31, 'Can delete user', 8, 'delete_user'),
(32, 'Can view user', 8, 'view_user');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'mpi', 'patient'),
(8, 'mpi', 'user'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Structure de la table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-12-04 02:10:29.849060'),
(2, 'auth', '0001_initial', '2022-12-04 02:10:39.579567'),
(3, 'admin', '0001_initial', '2022-12-04 02:10:41.820562'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-12-04 02:10:41.903211'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-12-04 02:10:41.962214'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-12-04 02:10:42.715697'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-12-04 02:10:44.310533'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-12-04 02:10:44.758204'),
(9, 'auth', '0004_alter_user_username_opts', '2022-12-04 02:10:44.826152'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-12-04 02:10:46.050567'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-12-04 02:10:46.104085'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-12-04 02:10:46.164127'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-12-04 02:10:46.303123'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-12-04 02:10:46.426534'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-12-04 02:10:46.570528'),
(16, 'auth', '0011_update_proxy_permissions', '2022-12-04 02:10:46.613974'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-12-04 02:10:46.734974'),
(18, 'mpi', '0001_initial', '2022-12-04 02:10:47.052480'),
(19, 'mpi', '0002_user', '2022-12-04 02:10:47.376696'),
(20, 'mpi', '0003_rename_biométrie_patient_biometrie_and_more', '2022-12-04 02:10:48.697581'),
(21, 'mpi', '0004_alter_patient_email', '2022-12-04 02:10:49.511876'),
(22, 'sessions', '0001_initial', '2022-12-04 02:10:50.497386'),
(23, 'mpi', '0005_remove_patient_nui_remove_patient_alergies_and_more', '2022-12-04 02:16:11.044385'),
(24, 'mpi', '0006_patient_etranger', '2022-12-04 02:36:02.985086');

-- --------------------------------------------------------

--
-- Structure de la table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `mpi_patient`
--

CREATE TABLE `mpi_patient` (
  `id` bigint(20) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `date_naiss` varchar(100) NOT NULL,
  `sexe` varchar(1) NOT NULL,
  `region_origine` varchar(30) NOT NULL,
  `commune_naissance` varchar(30) NOT NULL,
  `adresse` varchar(100) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `statut_marital` varchar(10) NOT NULL,
  `fonction` varchar(40) NOT NULL,
  `email` varchar(50) NOT NULL,
  `cni` varchar(20) NOT NULL,
  `contact_urgence` varchar(100) NOT NULL,
  `passport` varchar(20) NOT NULL,
  `unique_id` varchar(100) NOT NULL,
  `village` varchar(100) NOT NULL,
  `etranger` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `mpi_patient`
--

INSERT INTO `mpi_patient` (`id`, `nom`, `date_naiss`, `sexe`, `region_origine`, `commune_naissance`, `adresse`, `telephone`, `statut_marital`, `fonction`, `email`, `cni`, `contact_urgence`, `passport`, `unique_id`, `village`, `etranger`) VALUES
(2, 'Macintyre Jane			', '7/24/1967', 'M', 'Est', 'Messamena', 'MESSAMENA', '696660677', 'Married mo', 'Private sector employee', '', '', '696660677', '', '', 'Eschou', ''),
(3, 'Macintyre Adele', '2/16/1999', 'F', 'Est', 'Mboanz (Angossas)', '(DIBATO) BOUTIQUE D\'IBRAHIM', '660539829', 'Single', 'Unemployed', '', '', '678071470', '', '', 'Mpoundou', ''),
(4, 'Macintyre Abu', '3/11/1993', 'F', 'Est', 'Abong Mbang', '(DIBATO) QUARTIER ADMINISTRATIF', '698088823', 'Single', 'Unemployed', '', '', '695869730', '', '', 'Abong Mbang II', ''),
(5, 'Macintyre Jet', '3/13/1993', 'M', 'Est', 'Mboanz (Angossas)', '(NDONNANG), A COTE DE LA QUINCAILLERIE YASSEN (DEM', '650437496 / 61201009', 'Co-habitin', 'Labourer', '', '', '650437496', '', '', 'ANGOSSAS', ''),
(6, 'Manth Roger', '1/1/1982', 'F', 'Centre', 'Ayos', 'NANMEDJAP AYOS (NDONNANG -ATO)', '656982208', 'Co-habitin', 'Private sector employee', '', '', '', '', '', 'NANMEDJAP', ''),
(7, 'Manth Rennie', '1/1/1996', 'M', 'Est', 'Mboanz (Angossas)', '(DIBATO) ANKOMB', '691110448', 'Single', 'Private sector employee', '', '', '691110448', '', '', 'Ankom', ''),
(8, 'Manth Aby', '4/2/1993', 'F', 'Est', 'Abong Mbang', '(NDONNANG) MBAM EWONDO', '677935820', 'Single', 'Vendor', '', '', '661934155', '', '', 'Abong Mbang II', ''),
(9, 'Manth Gayle', '3/24/1997', 'M', 'Est', '', 'ESSENG', '665112873', 'Single', 'Driver', '', '', '663498364', '', '', 'ESSENG 2', ''),
(10, 'Manth Gabbie', '4/24/1981', 'F', 'Est', 'Abong-MBang', 'QUATIER NYONG', '693151550', 'Co-habitin', 'Private sector employee', '', '', '', '', '', 'QUARTIER NYONG', ''),
(11, 'Manth Ramy', '1/28/1981', 'F', 'Est', 'ABONG-MBANG', '(DIBATO) ABONG-MBANG PLATEAU APRES LA BOULANGERIE', '693224443/650811531', 'Co-habitin', 'Unemployed', '', '', '671049166', '', '', 'ABONG-MBANG PLATEAU', ''),
(12, 'Yellow James', '1/28/1981', 'F', 'Est', 'ABONG-MBANG', '(DIBATO) ABONG-MBANG PLATEAU APRES LA BOULANGERIE', '693224443/650811531', 'Co-habitin', 'Unemployed', '', '', '671049166', '', '', 'ABONG-MBANG PLATEAU', ''),
(13, 'Ramula	Agenio', '10/4/1973', 'M', 'Est', 'Abong Mbang', '(BERGER) AQUARTIER PLATEAU', '671049164', 'Co-habitin', 'Driver', '', '', '693224443', '', '', 'Abong Mbang II', ''),
(14, 'Badman Bolo', '10/4/1973', 'M', 'Est', 'Abong Mbang', '(BERGER) AQUARTIER PLATEAU', '671049164', 'Co-habitin', 'Driver', '', '', '693224443', '', '', 'Abong Mbang II', ''),
(15, 'Yellow	Uij', '1/1/2001', 'F', 'Est', 'Abong Mbang', 'BERGER', '693318154', 'Co-habitin', 'Unemployed', '', '', '', '', '', 'Mboule II', ''),
(16, 'Yellow	Jomi', '1/1/2001', 'F', 'Est', 'Abong Mbang', 'BERGER', '693318154', 'Co-habitin', 'Unemployed', '', '', '', '', '', 'Mboule II', ''),
(17, 'Ramula	Rosario', '5/19/1975', 'M', 'Est', '', 'MBAMA (DIBATO)', '', 'Married mo', 'Housewife', '', '', '', '', '', 'MBAMA', ''),
(18, 'Bonjorna Jono', '5/19/1975', 'M', 'Est', '', 'MBAMA (DIBATO)', '', 'Married mo', 'Housewife', '', '', '', '', '', 'MBAMA', ''),
(19, 'Labunda Agy', '1/1/1978', 'M', 'Est', 'Messamena', '(DIBATO) MBAMA', '', 'Single', '', '', '', '', '', '', 'MBAMA', ''),
(20, 'Bonjorna Rab', '1/1/1978', 'M', 'Est', 'Messamena', '(DIBATO) MBAMA', '', 'Single', '', '', '', '', '', '', 'MBAMA', ''),
(21, 'Labunda Obinoal', '12/25/1958', 'F', 'Est', 'Abong Mbang', '(CSC)', '', 'Widow(er)', 'Labourer', '', '', '', '', '', 'Abong-Doum', ''),
(22, 'Bonjorna Ojhi', '7/6/1992', 'F', 'Est', 'NGUELEMENDOUKA', '(DIBATO) QUARTIER TCHOLOU', '697148128', 'Single', 'Civil Servant', '', '', '657619388', '', '', 'NGUEIEMENDOUKA', ''),
(23, 'Lathuro	Jono', '1/1/1970', 'F', 'Est', 'LOMIE', 'NGOILA', '690250563', 'Co-habitin', 'Vendor', '', '', '690250563', '', '', 'QUARTIER NYONG', ''),
(24, 'Shan Xiao', '3/23/1980', 'F', 'Est', '', '(NDONNANG) QUATIER MAKA', '690969026', 'Single', 'Unemployed', '', '', '698944423', '', '', 'ABONG MBANG', ''),
(25, 'Barumida Filsen', '5/5/1992', 'M', 'Est', '', '( Auto Transf OUT) CHEFFERIE ETCHEK apres FORAGE 1', '696129627', 'Co-habitin', '', '', '', '', '', '', 'CHEFFERIE ETCHEK', ''),
(26, 'Lathuro	Jack', '5/1/1991', 'M', 'Est', 'Abong Mbang', '(NDONNANG)', '655237041', 'Single', 'Unemployed', '', '', '655237041', '', '', 'ABONG MBANG PLATEAU', ''),
(27, 'Lathuro	Lebin', '11/22/1994', 'F', 'Est', 'Abong Mbang', '(DIBATO) QUARTIER NYONG', '655076707', 'Single', 'Student', '', '', '', '', '', 'Abong Mbang II', ''),
(28, 'Leboven Age', '5/1/1991', 'M', 'Est', 'Abong Mbang', '(NDONNANG)', '655237041', 'Single', 'Unemployed', '', '', '655237041', '', '', 'ABONG MBANG PLATEAU', ''),
(29, 'Lathuro	Jeo', '1/1/1994', 'F', 'Est', 'Abong Mbang', 'DIBATO DJOW', '650524785', 'Single', 'Civil Servant', '', '', '', '', '', 'Djow', ''),
(30, 'Shan Xum', '1/1/1994', 'F', 'Est', 'Abong Mbang', 'DIBATO DJOW', '650524785', 'Single', 'Civil Servant', '', '', '', '', '', 'Djow', ''),
(31, 'Shan Xiao Lun', '9/25/2000', 'F', 'Est', 'Abong Mbang', 'NYONG (BERGER)', '673512728', 'Single', 'Vendor', '', '', '', '', '', 'Nyong', ''),
(32, 'Lewis Tetra', '8/19/1981', 'M', 'Est', 'Abong Mbang', '(BERGER) QUARTIER BAMI', '661314869', 'Married mo', 'Vendor', '', '', '', '', '', 'QUARTIER BAMI ABONG MBANG', ''),
(33, 'Jobolocy Acloby', '8/19/1981', 'M', 'Est', 'Abong Mbang', '(BERGER) QUARTIER BAMI', '661314869', 'Married mo', 'Vendor', '', '', '', '', '', 'QUARTIER BAMI ABONG MBANG', ''),
(34, 'Listy Agen', '1/1/1978', 'F', 'Est', 'Abong Mbang', '(DIBATO) DJOW', '657661411', 'Married po', 'Vendor', '', '', '695257666', '', '', 'Djow', ''),
(35, 'Oberjine Zula', '6/17/1978', 'M', 'Est', 'Abong Mbang', 'LOMIE,EKOM,HOTEL RAFIA,MAISON EN BLANCHE AU CARREF', '659090472', 'Co-habitin', 'Private sector employee', '', '', '659090472', '', '', 'EKOM,APRES HOTEL RAFIA MAISON BLANCHE AU CARREFOUR', ''),
(36, 'Tetra Alon', '6/17/1978', 'M', 'Est', 'Abong Mbang', 'LOMIE,EKOM,HOTEL RAFIA,MAISON EN BLANCHE AU CARREF', '659090472', 'Co-habitin', 'Private sector employee', '', '', '659090472', '', '', 'EKOM,APRES HOTEL RAFIA MAISON BLANCHE AU CARREFOUR', ''),
(37, 'Tetra Zeal', '5/12/1956', 'F', 'Est', 'ABON', 'BERGER', '695778824', '', '', '', '', '', '', '', 'NKOLVOLAN,KOLOYOP CHEZ MAMA GEORGETTE', ''),
(38, 'Listy Baigan', '6/25/1975', 'F', 'Est', 'Dja (Mindourou)', '(DIBATO) NKOUAK', '663322998', 'Single', 'Housewife', '', '', '', '', '', 'Nkouak', ''),
(39, 'Listy Joseph', '5/12/1956', 'F', 'Est', 'ABON', 'BERGER', '695778824', '', '', '', '', '', '', '', 'NKOLVOLAN,KOLOYOP CHEZ MAMA GEORGETTE', ''),
(40, 'Listy Lidsey', '2/13/1976', 'F', 'Est', 'Abong Mbang', '(DIBATO) NKOUM APRES L\'ECOLE A GAUCHE', '650553324 / 69757768', 'Co-habitin', 'Housewife', '', '', '', '', '', 'Abong Mbang II', ''),
(41, 'Chakalio Alo', '9/22/1985', 'F', 'Est', 'Abong Mbang', 'BERGER', '696837286', 'Co-habitin', 'Private sector employee', '', '', '', '', '', 'Ankoung', ''),
(42, 'Chakalio Debonoir', '1/1/1999', 'M', 'Est', 'Abong Mbang', 'BERGER', '', '', 'Unemployed', '', '', '', '', '', 'Abong-Doum', ''),
(43, 'Chakalio Aden', '1/1/1994', 'M', 'Est', 'Bebend (Atok)', 'MEKOAGUE (DIBATO)', '661691997', 'Co-habitin', 'Unemployed', '', '', '', '', '', 'Mikouague', ''),
(44, 'Nonino	Ageni', '1/1/1973', 'F', 'Est', 'Abong Mbang', '(BERGER) DJEGLASSI', '696474613', 'Married mo', 'Unemployed', '', '', '696474613', '', '', 'DJEGLASSI', ''),
(45, 'Ilina Ethu', '1/1/1972', 'M', 'Est', 'Abong Mbang', '(BERGER) DJEGLASSI', '696474613', 'Married mo', 'Unemployed', '', '', '696474613', '', '', 'DJEGLASSI', ''),
(46, 'Chakalio Zuia', '1/1/1972', 'M', 'Est', 'Abong Mbang', '(BERGER) DJEGLASSI', '696474613', 'Married mo', 'Unemployed', '', '', '696474613', '', '', 'DJEGLASSI', ''),
(47, 'Ilina Doni', '10/30/2003', 'F', 'Est', 'Abong Mbang', 'MBOULE', '', 'Co-habitin', 'Student', '', '', '', '', '', 'Mboule I', ''),
(48, 'Jeremiah Joseph', '9/27/1991', 'F', 'Est', 'Abong Mbang', '(DIBATO) SOURIS', '679359600', 'Single', 'Unemployed', '', '', '698285695', '', '', 'Abong Mbang II', ''),
(49, 'Jorrison Manny', '4/18/1996', 'F', 'Est', 'Abong Mbang', '(DIBATO) MPEMZOK', '696607094', 'Co-habitin', 'Unemployed', '', '', '696607094', '', '', 'Mpemzok I', ''),
(50, 'Jeremiah Olina', '9/27/1991', 'F', 'Est', 'Abong Mbang', '(DIBATO) SOURIS', '679359600', 'Single', 'Unemployed', '', '', '698285695', '', '', 'Abong Mbang II', ''),
(51, 'Jeremiah Jane', '1/1/1992', 'F', 'Est', 'Abong Mbang', '(NDONNANG) DJOW', '', 'Single', '', '', '', '', '', '', 'DJOW', ''),
(52, 'Jeremiah Obui', '1/1/1992', 'F', 'Est', 'Abong Mbang', 'DJOW', '', 'Single', 'Unemployed', '', '', '', '', '', 'DJOW', ''),
(53, 'Jorrison Veny', '1/1/1992', 'F', 'Est', 'Abong Mbang', '(NDONNANG) DJOW', '', 'Single', '', '', '', '', '', '', 'DJOW', ''),
(54, 'Nathan	Kobi', '5/5/1976', 'M', 'Est', 'Abong Mbang', 'DIBATO', '696607094', 'Co-habitin', 'Civil Servant', '', '', '696607094', '', '', 'Mpemzok I', ''),
(55, 'Nathan	Rany', '6/26/1987', 'M', 'Est', 'Bertoua II', '(NDONNANG -TO) KOLOMIN', '663397345', 'Married mo', 'Vendor', '', '', '', '', '', 'Bertoua II', ''),
(56, 'Nathan	Jany', '6/26/1987', 'M', 'Est', 'Bertoua II', '(NDONNANG -TO) KOLOMIN', '663397345', 'Married mo', 'Vendor', '', '', '', '', '', 'Bertoua II', ''),
(57, 'Nathan	Jody', '1/1/1998', 'F', 'Est', 'ABONG MBANG', 'DIBATO MISSOUME', '663322998', 'Single', 'Unemployed', '', '', '', '', '', 'MISSOUME', ''),
(58, 'Duby Zuby', '1/1/1994', 'F', 'Est', 'Abong Mbang', '(NDONNANG -REFUS) MISSOUME', '', 'Married mo', 'Unemployed', '', '', '', '', '', 'Abong Mbang II', ''),
(59, 'Duby Jane', '1/1/1994', 'F', 'Est', 'Abong Mbang', '(NDONNANG -REFUS) MISSOUME', '', 'Married mo', 'Unemployed', '', '', '', '', '', 'Abong Mbang II', ''),
(60, 'Duby Olia', '1/1/2005', 'F', 'Est', 'Abong Mbang', '(NDONNANG -REFUS)  MISSOUME', '', 'Married mo', 'Unemployed', '', '', '', '', '', 'MISSOUME', ''),
(61, 'Macintyre Joseph', '1/1/2005', 'F', 'Est', 'Abong Mbang', '(NDONNANG -REFUS)  MISSOUME', '', 'Married mo', 'Unemployed', '', '', '', '', '', 'MISSOUME', ''),
(62, 'Macintyre Jane', '1/1/1994', 'F', 'Est', 'Abong Mbang', '(BERGER)  A COTE DE LA CHEFFERIE DU 3E DEGRE DE NT', '698368917', 'Married mo', 'Unemployed', '', '', '', '', '', 'Ntankuimb', ''),
(63, 'Macintyre Joseph', '1/1/1994', 'F', 'Est', 'Abong Mbang', '(BERGER)  A COTE DE LA CHEFFERIE DU 3E DEGRE DE NT', '698368917', 'Married mo', 'Unemployed', '', '', '', '', '', 'Ntankuimb', ''),
(64, 'Macintyre Joseph', '1/1/1953', 'F', 'Est', 'Bebend (Atok)', '(DIBATO) AU NIVEAU DU SANCTUAIRE MISSION CATHOLIQU', '', 'Single', 'Unemployed', '', '', '677335236', '', '', 'Atok', ''),
(65, 'Macintyre Joseph', '1/1/1953', 'F', 'Est', 'Bebend (Atok)', '(DIBATO) AU NIVEAU DU SANCTUAIRE MISSION CATHOLIQU', '', 'Single', 'Unemployed', '', '', '677335236', '', '', 'Atok', ''),
(66, 'Manth Aby', '2/20/1999', 'F', 'Est', 'Mboma', '(NDONNANG) CHEZ LE CHEF DE FAMILLE NANG ETIENNE', '', 'Co-habitin', 'Unemployed', '', '', '', '', '', 'Kak I', ''),
(67, 'Manth Rennie', '2/20/1999', 'F', 'Est', 'Mboma', '(NDONNANG) CHEZ LE CHEF DE FAMILLE NANG ETIENNE', '', 'Co-habitin', 'Unemployed', '', '', '', '', '', 'Kak I', ''),
(68, 'Manth Roger', '11/26/1996', 'F', 'Est', 'Mboanz (Angossas)', 'ESSENG II', '661480742', 'Co-habitin', 'Unemployed', '', '', '', '', '', 'Esseng II', ''),
(69, 'Manth Gayle', '11/26/1996', 'F', 'Est', 'Mboanz (Angossas)', 'ESSENG II', '661480742', 'Co-habitin', 'Unemployed', '', '', '', '', '', 'Esseng II', ''),
(70, 'Manth Ramy', '7/30/1999', 'M', 'Centre', 'Nyakokombo (Kobdombo)', '(ESSENG) FANG-BILOUN', '660339877', 'Single', 'Businessman', '', '', '690800377', '', '', 'Fang-Biloun', ''),
(71, 'Manth Gabbie', '7/30/1999', 'M', 'Centre', 'Nyakokombo (Kobdombo)', '(ESSENG) FANG-BILOUN', '660339877', 'Single', 'Businessman', '', '', '690800377', '', '', 'Fang-Biloun', ''),
(72, 'Macintyre Joseph', '3/8/1999', 'F', 'Est', 'Abong Mbang', 'ABONDOUM', '695816248', 'Co-habitin', 'Private sector employee', '', '', '', '', '', 'ABONDOUM', ''),
(73, 'Macintyre Jet', '3/8/1999', 'F', 'Est', 'Abong Mbang', 'ABONDOUM', '695816248', 'Co-habitin', 'Private sector employee', '', '', '', '', '', 'ABONDOUM', ''),
(74, 'Macintyre Abu', '12/1/1993', 'F', 'Est', 'Abong Mbang', 'ABONG-MBANG ,EN FACE DE LA BICEC', '678996462', 'Single', 'Unemployed', '', '', '', '', '', 'ABONG-MBANG EN FACE DE LA BICEC', ''),
(75, 'Macintyre Jane', '12/1/1993', 'F', 'Est', 'Abong Mbang', 'ABONG-MBANG ,EN FACE DE LA BICEC', '678996462', 'Single', 'Unemployed', '', '', '', '', '', 'ABONG-MBANG EN FACE DE LA BICEC', ''),
(76, 'Macintyre Adele', '3/1/1992', 'F', 'Est', 'Abong Mbang', 'DIBATO ABONG MBANG,OBOW', '681256469', 'Widow(er)', 'Vendor', '', '', '', '', '', 'ABONG MBANG ,OBOW', ''),
(77, 'Yellow James', '3/1/1992', 'F', 'Est', 'Abong Mbang', 'DIBATO ABONG MBANG,OBOW', '681256469', 'Widow(er)', 'Vendor', '', '', '', '', '', 'ABONG MBANG ,OBOW', ''),
(78, 'Yellow Uij', '1/20/1980', 'M', 'Est', 'Mboanz (Angossas)', '(ESSENG)', '660355728 / 66400969', 'Co-habitin', 'Unemployed', '', '', '663247568', '', '', 'Esseng I', ''),
(79, 'Yellow Jomi', '1/20/1980', 'M', 'Est', 'Mboanz (Angossas)', '(ESSENG)', '660355728 / 66400969', 'Co-habitin', 'Unemployed', '', '', '663247568', '', '', 'Esseng I', ''),
(80, 'Ramula Agenio', '1/1/2006', 'M', 'Est', 'Mboanz (Angossas)', 'ESSENG', '', 'Single', 'Student', '', '', '', '', '', 'Esseng I', ''),
(81, 'Ramula	Rosario	', '1/1/2006', 'M', 'Est', 'Mboanz (Angossas)', 'ESSENG', '', 'Single', 'Student', '', '', '', '', '', 'Esseng I', ''),
(82, 'Bonjorna Jono', '8/8/1999', 'F', 'Est', 'Mboanz (Angossas)', '(PTME-ESSENG)', '664009742', 'Single', 'Housewife', '', '', '', '', '', 'Bagbetout', ''),
(83, 'Bonjorna Rab Ramula Agenio', '8/8/1999', 'F', 'Est', 'Mboanz (Angossas)', '(PTME-ESSENG)', '664009742', 'Single', 'Housewife', '', '', '', '', '', 'Bagbetout', ''),
(84, 'Bonjorna Ojhi Ramula Rosario', '2/14/1996', 'M', 'Est', 'Abong Mbang', 'DIBATO', '690398787', 'Single', 'Student', '', '', '', '', '', 'Abong Mbang II', ''),
(85, 'Labunda Agy Bonjorna Jono', '2/14/1996', 'M', 'Est', 'Abong Mbang', 'DIBATO', '690398787', 'Single', 'Student', '', '', '', '', '', 'Abong Mbang II', ''),
(86, 'Labunda Obinoal ', '6/14/1981', 'F', 'Est', 'Abong Mbang', 'DIBATO ABONG MBANG, MBOULE I', '695180664', 'Co-habitin', 'Vendor', '', '', '695298925', '', '', 'ABONG MBANG, MBOULE I', ''),
(87, 'Lathuro	Jono Bonjorna Ojhi', '6/14/1981', 'F', 'Est', 'Abong Mbang', 'DIBATO ABONG MBANG, MBOULE I', '695180664', 'Co-habitin', 'Vendor', '', '', '695298925', '', '', 'ABONG MBANG, MBOULE I', ''),
(88, 'Lathuro	Jack Labunda Agy', '2/11/1983', 'F', 'Est', 'Abong Mbang', 'DIBATO', '694687023', 'Widow(er)', 'Housewife', '', '', '666049615', '', '', 'ABONG MBANG ,MBOMA', ''),
(89, 'Lathuro	Lebin', '2/11/1983', 'F', 'Est', 'Abong Mbang', 'DIBATO', '694687023', 'Widow(er)', 'Housewife', '', '', '666049615', '', '', 'ABONG MBANG ,MBOMA', ''),
(90, 'Leboven Age', '2/14/1992', 'F', 'Est', 'Abong Mbang', 'DJOW (DIBATO)', '694533015/655366444', 'Single', 'Unemployed', '', '', '659049957', '', '', 'Djow', ''),
(91, 'Lathuro  Jeo', '2/14/1992', 'F', 'Est', 'Abong Mbang', 'DJOW (DIBATO)', '694533015/655366444', 'Single', 'Unemployed', '', '', '659049957', '', '', 'Djow', ''),
(92, 'Shan Xiao', '1/1/2003', 'F', 'Est', 'Abong Mbang', 'DIBATO ABONG MBANG, SOURIS', '677611440', 'Single', 'Student', '', '', '677611440', '', '', 'SOURIS', ''),
(93, 'Shan Xum', '1/1/2003', 'F', 'Est', 'Abong Mbang', 'DIBATO ABONG MBANG, SOURIS', '677611440', 'Single', 'Student', '', '', '677611440', '', '', 'SOURIS', ''),
(94, 'Shan Xiao Lun', '4/24/1988', 'F', 'Est', 'Abong Mbang', '(NDONNANG) NGOULMAKON', '651181461', 'Married mo', 'Housewife', '', '', '', '', '', 'NGOULMAKON', ''),
(95, 'Barumida Filsen', '4/24/1988', 'F', 'Est', 'Abong Mbang', '(NDONNANG) NGOULMAKON', '651181461', 'Married mo', 'Housewife', '', '', '', '', '', 'NGOULMAKON', ''),
(96, 'Tetra Alon', '5/20/1973', 'M', 'Est', 'Abong Mbang', '(NDONNANG) ANDJOU', '', 'Co-habitin', 'Unemployed', '', '', '', '', '', 'Abong Mbang II', ''),
(97, 'Lewis Tetra', '5/20/1973', 'M', 'Est', 'Abong Mbang', '(NDONNANG) ANDJOU', '', 'Co-habitin', 'Unemployed', '', '', '', '', '', 'Abong Mbang II', ''),
(98, 'Tetra Zeal', '1/1/1952', 'F', 'Est', 'Abong Mbang', '(NDONNANG) NGOMDOUMA', 'S/C 683850624', 'Widow(er)', 'Unemployed', '', '', '693850624', '', '', 'Abong Mbang II', ''),
(99, 'Jorrison Manny', '1/1/1952', 'F', 'Est', 'Abong Mbang', '(NDONNANG) NGOMDOUMA', 'S/C 683850624', 'Widow(er)', 'Unemployed', '', '', '693850624', '', '', 'Abong Mbang II', ''),
(100, 'Jeremiah Joseph', '11/7/1961', 'F', 'Est', 'Messamena', 'BRIANT', '696693924/656689654', 'Widow(er)', 'Unemployed', '', '', '676006737', '', '', 'EBOUMETOUM', ''),
(101, 'Jeremiah Olina', '5/1/1988', 'M', 'Est', 'Abong Mbang', '(DIBATO) A 100m Apres lecole dagriculture (DIBATO)', '663381620', '', 'Labourer', '', '', '660835552', '', '', 'Djow', ''),
(102, 'Jeremiah Jane', '12/4/1966', 'F', 'Est', 'Bebend (Atok)', '(CSC) KODJANS', '', 'Co-habitin', 'Housewife', '', '', '', '', '', 'Kodjans', ''),
(103, 'Jeremiah Obui', '12/4/1976', 'F', 'Est', 'Dja (Mindourou)', 'EMERENCE', '657876935', 'Single', 'Vendor', '', '', '666043135', '', '', 'DJAPOSTEN', ''),
(104, 'Ilina Ethu', '4/8/1980', 'F', 'Est', 'Bebend (Atok)', '(MOLLO) MINKOAGUE', '673553873 / 66491136', 'Single', 'Vendor', '', '', '', '', '', 'Mikouague', ''),
(105, 'Ilina Doni', '1/1/1986', 'F', 'Est', 'Abong Mbang', '(NDONNANG) NONGBALLA', '', 'Single', 'Unemployed', '', '', '', '', '', 'Abong Mbang II', ''),
(106, 'Nonino	 Ageni', '9/2/1973', 'M', 'Est', '', '(MOLLO) TONKLA', '697035827', 'Married mo', 'Civil Servant', '', '', '693357440', '', '', 'NGOILA', ''),
(107, 'Chakalio Alo', '9/10/1979', 'M', 'Est', 'Messamena', '(FORTUNE) KODJANS', '696122361', 'Co-habitin', 'Unemployed', '', '', '661000917', '', '', 'Kodjans', ''),
(108, 'Chakalio Debonoir', '1/1/1962', 'F', 'Est', 'Messamena', '(NELIE) MBOUMO', '698683836', 'Widow(er)', 'Unemployed', '', '', '698683836', '', '', 'Mboumo', ''),
(109, 'Chakalio Aden', '8/23/1974', 'F', 'Est', 'Abong Mbang', '(NELIE) MBOULE', '693318154', 'Single', 'Housewife', '', '', '', '', '', 'Mboule I', ''),
(110, 'Chakalio Zuia', '3/8/1987', 'F', 'Est', 'Abong Mbang', '(Nelie) MADOUMA', '', '', 'Unemployed', '', '', '698012524', '', '', 'Madouma', ''),
(111, 'Listy Agen', '1/10/1999', 'M', 'Est', 'Abong Mbang', 'OBC-PRISON (quartier plateau)', '', 'Single', 'Unemployed', '', '', '678408137', '', '', 'Abong Mbang II', ''),
(112, 'Listy Baigan', '5/20/1988', 'M', 'Est', 'Abong Mbang', '(MOLLO) MINDOUROU, MAYANG, FACE FOYER', '656697291', 'Co-habitin', 'Unemployed', '', '', '691114892', '', '', 'Abong Mbang II', ''),
(113, 'Listy Joseph', '1/1/1966', 'F', 'Est', 'Abong Mbang', 'CSC', '657335601', 'Co-habitin', 'Unemployed', '', '', '657335601', '', '', 'Abong Mbang II', ''),
(114, 'Listy Lidsey', '1/1/1982', 'F', 'Est', 'ABONG MBANG', 'ABONG MBANG, MAYOS', '661123152', 'Co-habitin', 'Unemployed', '', '', '661123157', '', '', 'ABONG MBANG, MAYOS', ''),
(115, 'Jobolocy Acloby', '6/10/1988', 'F', 'Est', 'ABONG MBANG', '(MOLLO) ABONG MBANG, MBOULE', '696718706', 'Single', 'Private sector employee', '', '', '690182542', '', '', 'ABONG MBANG, MBOULE', ''),
(116, 'Badman Bolo', '1/1/1990', 'F', 'Est', 'Abong Mbang', 'MBOULE II (BERGER)', 's/c 670608011', 'Single', 'Unemployed', '', '', 'KENFACK VERONIQUE', '', '', 'Abong Mbang II', ''),
(117, 'Oberjine Zula', '5/23/1982', 'F', 'Est', 'ABONG MBANG', 'BERGER', '673289958', 'Widow(er)', 'Vendor', '', '', '', '', '', 'ABONG MBANG, KAKA', ''),
(118, 'Nathan	Kobi', '5/23/1982', 'F', 'Est', 'ABONG MBANG', 'BERGER', '673289958', 'Widow(er)', 'Vendor', '', '', '', '', '', 'ABONG MBANG, KAKA', ''),
(119, 'Nathan	Rany', '1/1/2002', 'F', 'Est', 'Mboanz (Angossas)', '(ESSENG) KOUMBOU', '661410143', 'Single', 'Housewife', '', '', '', '', '', 'Esseng I', ''),
(120, 'Nathan	Jany', '1/1/1985', 'M', 'Est', 'Mboanz (Angossas)', '(ESSENG) KOUMBOU', '661410143 /661842490', 'Single', '', '', '', '', '', '', 'Esseng I', ''),
(121, 'Nathan	Jody', '1/1/1961', 'F', 'Est', 'Abong Mbang', '(ESSENG), NGONDO', '', 'Widow(er)', 'Housewife', '', '', '', '', '', 'Abong Mbang II', ''),
(122, 'Duby Zuby', '1/1/2014', 'M', 'Est', 'Bebend (Atok)', 'PEDIATRIE (NGUEMETAK Chefferie)', '667246425', '', '', '', '', '', '', '', 'NGUEMETAK 1', ''),
(123, 'Duby Jane', '5/20/1980', 'F', 'Est', 'Abong Mbang', '(MOLLO) DERRIERE LE DEUXIEME CARREFOUR DU BAR LAMA', '694797338', 'Single', 'Unemployed', '', '', '694805379', '', '', 'Mboule I', ''),
(124, 'Duby Olia', '2/14/1984', 'M', 'Est', 'Doume', '(MOLLO) MAMPANG', '697140317', 'Married mo', 'Private sector employee', '', '', '699033343', '', '', 'Mampang', ''),
(125, 'Jorrison Veny', '2/14/1984', 'M', 'Est', 'Doume', '(MOLLO) MAMPANG', '697140317', 'Married mo', 'Private sector employee', '', '', '699033343', '', '', 'Mampang', ''),
(126, 'Insuree Test', '5/9/1981', 'F', 'Est', 'Abong Mbang', '(PTME) ABONG MBANG PLATEAU', '655237041', 'Widow(er)', 'Unemployed', '', '', '698039305', '', '', 'Abong Mbang II', ''),
(127, 'Man Test', '4/26/1987', 'F', 'Est', 'Abong Mbang', 'PTME', '693318154/671820152', 'Single', 'Civil Servant', '', '', '677393154', '', '', 'Ayene', ''),
(128, 'Woman Test', '1/1/1999', 'F', 'Est', 'Abong Mbang', 'PTME', '676908019 / 68227913', 'Co-habitin', 'Housewife', '', '', '676908019', '', '', 'Nkouole', ''),
(129, 'Insuree	 Test', '1/17/1992', 'F', 'Est', 'Abong Mbang', '(NELIE) NYONG', '655293329', 'Single', 'Vendor', '', '', '674369362', '', '', 'Abong Mbang I', ''),
(130, 'Woman Test', '1/1/1958', 'F', 'Est', 'Bebend (Atok)', 'OBC', '694227217', 'Widow(er)', '', '', '', '', '', '', 'Zoguela', ''),
(131, 'Man Test', '1/1/1958', 'F', 'Est', 'Bebend (Atok)', 'OBC', '694227217', 'Widow(er)', '', '', '', '', '', '', 'Zoguela', ''),
(132, 'arafat ahmed', '1/1/1976', 'F', 'Est', 'Abong Mbang', 'BRIANT', '650430517', 'Single', 'Labourer', '', '', '', '', '', 'Abong Mbang II', ''),
(133, 'arafa hoda', '1/1/1976', 'F', 'Est', 'Abong Mbang', 'BRIANT', '650430517', 'Single', 'Labourer', '', '', '', '', '', 'Abong Mbang II', ''),
(134, 'arafat mona', '1/1/1989', 'F', 'Est', 'Abong Mbang', '(OBC)', '694733474', 'Single', 'Student', '', '', '', '', '', 'Abong Mbang II', ''),
(135, 'arafa ahmed', '4/30/1996', 'F', 'Est', 'Abong Mbang', 'BERGER', '691129037', '', '', '', '', '', '', '', 'Abong Mbang II', ''),
(136, 'Family Test', '4/7/1987', 'F', 'Est', 'Lomie', 'ELISABETH', '693311160', '', 'Housewife', '', '', '', '', '', 'Bapile', ''),
(137, 'Family Son', '1/1/1977', 'F', 'Est', 'Abong Mbang', '(MARIE) MPEMZOK', '699788075', 'Married mo', 'Unemployed', '', '', '696388965', '', '', 'Mpemzok I', ''),
(138, 'Family Father', '3/25/1966', 'M', 'Est', 'Abong Mbang', '(NELIE) NTINDA', '677654675', 'Co-habitin', '', '', '', '', '', '', 'NTINDA', ''),
(139, 'arafat mona', '3/25/1966', 'M', 'Est', 'Abong Mbang', '(NELIE) NTINDA', '677654675', 'Co-habitin', '', '', '', '', '', '', 'NTINDA', ''),
(140, 'arafa hoda', '6/24/1991', 'M', 'Est', 'Abong Mbang', 'NDONNANG', '', 'Co-habitin', 'Unemployed', '', '', '668427405', '', '', 'Kaka', ''),
(141, 'arafat ahmed', '10/27/2015', 'F', 'Est', 'Abong Mbang', '(PEDIATRIE -PDV plusieurs mois) NTOLOCK', '693318154', 'Single', 'Unemployed', '', '', '', '', '', 'OBINAM', ''),
(142, 'Family Son', '1/11/1968', 'F', 'Est', 'Abong Mbang', 'ELISABETH', '66572403', 'Co-habitin', 'Unemployed', '', '', '66572403', '', '', 'Ntimbe II', ''),
(143, 'Family	Father			', '5/4/1989', 'M', 'Est', 'Abong Mbang', 'DIBATO', '693419264', 'Single', 'Student', '', '', '662128848', '', '', 'Mboule I', ''),
(144, 'Family 	Test			', '7/22/1972', 'F', 'Est', 'Abong Mbang', '(DIBATO)', '', 'Widow(er)', 'Vendor', '', '', '', '', '', 'Kaka', '');

-- --------------------------------------------------------

--
-- Structure de la table `mpi_user`
--

CREATE TABLE `mpi_user` (
  `login` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Index pour la table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Index pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Index pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Index pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Index pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Index pour la table `mpi_patient`
--
ALTER TABLE `mpi_patient`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `mpi_user`
--
ALTER TABLE `mpi_user`
  ADD PRIMARY KEY (`login`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT pour la table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `mpi_patient`
--
ALTER TABLE `mpi_patient`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Contraintes pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Contraintes pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
