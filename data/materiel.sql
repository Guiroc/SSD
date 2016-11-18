-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Dim 11 Septembre 2016 à 19:23
-- Version du serveur :  5.7.11
-- Version de PHP :  5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `materiel`
--

-- --------------------------------------------------------

--
-- Structure de la table `ssd`
--

CREATE TABLE `ssd` (
  `nom` varchar(50) NOT NULL,
  `taille` int(11) NOT NULL DEFAULT '0',
  `lecture_sequentielle` int(11) NOT NULL DEFAULT '0',
  `ecriture_sequentielle` int(11) NOT NULL DEFAULT '0',
  `lecture_aleatoire` int(11) NOT NULL DEFAULT '0',
  `ecriture_aleatoire` int(11) NOT NULL DEFAULT '0',
  `interface` varchar(50) NOT NULL,
  `format` varchar(50) NOT NULL,
  `id` int(11) NOT NULL,
  `prix_materiel_net` decimal(10,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `ssd`
--

INSERT INTO `ssd` (`nom`, `taille`, `lecture_sequentielle`, `ecriture_sequentielle`, `lecture_aleatoire`, `ecriture_aleatoire`, `interface`, `format`, `id`, `prix_materiel_net`) VALUES
('Intel 750 series', 1200, 2400, 1200, 440000, 290000, 'PCIe NVMe 3.0 x4', 'PCI-Express', 1, NULL),
('Intel 750 series', 800, 2100, 800, 420000, 210000, 'PCIe NVMe 3.0 x4', 'PCI-Express', 2, NULL),
('Intel 750 series', 400, 2200, 900, 430000, 230000, 'PCIe NVMe 3.0 x4', 'PCI-Express', 3, NULL),
('Intel 730 series', 480, 550, 470, 89000, 74000, 'SATA 3.0', '2.5 pouces', 4, NULL),
('Intel 730 series', 240, 550, 270, 86000, 56000, 'SATA 3.0', '2.5 pouces', 5, NULL),
('Intel 600p series', 128, 770, 450, 35000, 91500, 'PCIe NVMe 3.0 x4', 'M.2', 6, NULL),
('Intel 600p series', 256, 1570, 540, 71000, 112000, 'PCIe NVMe 3.0 x4', 'M.2', 7, NULL),
('Intel 600p series', 512, 1775, 560, 128500, 128000, 'PCIe NVMe 3.0 x4', 'M.2', 8, NULL),
('Intel 600p series', 1024, 1800, 560, 155000, 128000, 'PCIe NVMe 3.0 x4', 'M.2', 9, NULL),
('Intel 540s series', 1000, 560, 480, 78000, 85000, 'SATA 3.0', '2.5 pouces', 10, NULL),
('Intel 540s series', 1000, 560, 480, 78000, 85000, 'SATA 3.0', 'M.2', 11, NULL),
('Intel 540s series', 480, 560, 480, 78000, 85000, 'SATA 3.0', '2.5 pouces', 12, NULL),
('Intel 540s series', 480, 560, 480, 78000, 85000, 'SATA 3.0', 'M.2', 13, NULL),
('Intel 540s series', 360, 560, 480, 74000, 85000, 'SATA 3.0', '2.5 pouces', 14, NULL),
('Intel 540s series', 360, 560, 480, 74000, 85000, 'SATA 3.0', 'M.2', 15, NULL),
('Intel 540s series', 180, 560, 475, 71000, 85000, 'SATA 3.0', '2.5 pouces', 16, NULL),
('Intel 540s series', 180, 560, 475, 71000, 85000, 'SATA 3.0', 'M.2', 17, NULL),
('Intel 540s series', 120, 560, 400, 60000, 50000, 'SATA 3.0', '2.5 pouces', 18, '59.99'),
('Intel 540s series', 120, 560, 400, 60000, 50000, 'SATA 3.0', 'M.2', 19, '57.95'),
('Intel 535 series', 480, 540, 490, 48000, 37000, 'SATA 3.0', '2.5 pouces', 20, NULL),
('Intel 535 series', 360, 540, 490, 45000, 33000, 'SATA 3.0', '2.5 pouces', 21, NULL),
('Intel 535 series', 240, 540, 490, 41000, 80000, 'SATA 3.0', '2.5 pouces', 22, NULL),
('Intel 535 series', 180, 540, 490, 41000, 80000, 'SATA 3.0', '2.5 pouces', 23, NULL),
('Intel 535 series', 120, 540, 480, 24000, 80000, 'SATA 3.0', '2.5 pouces', 24, NULL),
('Intel 535 series', 56, 540, 480, 12000, 80000, 'SATA 3.0', '2.5 pouces', 25, NULL),
('Intel 535 series', 360, 540, 490, 45000, 33000, 'SATA 3.0', 'M.2', 26, NULL),
('Intel 535 series', 240, 540, 490, 41000, 80000, 'SATA 3.0', 'M.2', 27, NULL),
('Intel 535 series', 180, 540, 490, 41000, 80000, 'SATA 3.0', 'M.2', 28, NULL),
('Intel 535 series', 120, 540, 480, 24000, 80000, 'SATA 3.0', 'M.2', 29, '59.99'),
('Intel 535 series', 56, 540, 480, 12000, 80000, 'SATA 3.0', 'M.2', 30, NULL),
('Samsung 950 PRO', 256, 2500, 900, 270000, 85000, 'PCIe NVMe 3.0 x4', 'M.2', 31, NULL),
('Samsung 950 PRO', 512, 2500, 1500, 300000, 110000, 'PCIe NVMe 3.0 x4', 'M.2', 32, NULL),
('Samsung 850 PRO', 128, 550, 470, 100000, 90000, 'SATA 3.0', '2.5 pouces', 33, NULL),
('Samsung 850 PRO', 256, 550, 520, 100000, 90000, 'SATA 3.0', '2.5 pouces', 34, NULL),
('Samsung 850 PRO', 512, 550, 520, 100000, 90000, 'SATA 3.0', '2.5 pouces', 35, NULL),
('Samsung 850 PRO', 1024, 550, 520, 100000, 90000, 'SATA 3.0', '2.5 pouces', 36, NULL),
('Samsung 850 PRO', 2048, 550, 520, 100000, 90000, 'SATA 3.0', '2.5 pouces', 37, NULL),
('Samsung 750 EVO', 120, 540, 520, 94000, 88000, 'SATA 3.0', '2.5 pouces', 38, '59.95'),
('Samsung 750 EVO', 250, 540, 520, 97000, 88000, 'SATA 3.0', '2.5 pouces', 39, '84.90'),
('Samsung 750 EVO', 500, 540, 520, 98000, 88000, 'SATA 3.0', '2.5 pouces', 40, '149.90'),
('Samsung 850 EVO', 120, 540, 500, 97000, 89000, 'SATA 3.0', 'M.2', 41, NULL),
('Samsung 850 EVO', 250, 540, 500, 97000, 89000, 'SATA 3.0', 'M.2', 42, NULL),
('Samsung 850 EVO', 500, 540, 500, 97000, 89000, 'SATA 3.0', 'M.2', 43, NULL),
('Crucial MX300', 275, 530, 500, 55000, 83000, 'SATA 3.0', '2.5 pouces', 44, NULL),
('Crucial MX300', 525, 530, 510, 92000, 83000, 'SATA 3.0', '2.5 pouces', 45, '145.99'),
('Crucial MX300', 1000, 530, 510, 92000, 83000, 'SATA 3.0', '2.5 pouces', 46, NULL),
('Crucial MX300', 275, 530, 500, 55000, 83000, 'SATA 3.0', 'M.2', 47, NULL),
('Crucial MX200', 250, 555, 500, 100000, 87000, 'SATA 3.0', '2.5 pouces', 48, NULL),
('Crucial MX200', 500, 555, 500, 100000, 87000, 'SATA 3.0', '2.5 pouces', 49, NULL),
('Crucial MX200', 1000, 555, 500, 100000, 87000, 'SATA 3.0', '2.5 pouces', 50, NULL),
('Crucial MX300', 250, 555, 500, 100000, 87000, 'SATA 3.0', 'mSATA', 51, NULL),
('Crucial MX200', 500, 555, 500, 100000, 87000, 'SATA 3.0', 'mSATA', 52, NULL),
('Crucial MX200', 250, 555, 500, 100000, 87000, 'SATA 3.0', 'M.2', 54, NULL),
('Crucial BX200', 240, 540, 490, 66000, 78000, 'SATA 3.0', '2.5 pouces', 57, NULL),
('Crucial MX200', 500, 555, 500, 100000, 87000, 'SATA 3.0', 'M.2', 56, NULL),
('Crucial BX200', 480, 540, 490, 66000, 78000, 'SATA 3.0', '2.5 pouces', 58, NULL),
('Crucial BX200', 960, 540, 490, 66000, 78000, 'SATA 3.0', '2.5 pouces', 59, NULL),
('Kingston UV400', 120, 550, 350, 90000, 15000, 'SATA 3.0', '2.5 pouces', 60, '44.90'),
('Kingston UV400', 240, 550, 490, 90000, 25000, 'SATA 3.0', '2.5 pouces', 61, '67.99'),
('Kingston UV400', 480, 550, 500, 90000, 35000, 'SATA 3.0', '2.5 pouces', 62, NULL),
('Kingston UV400', 960, 540, 540, 90000, 50000, 'SATA 3.0', '2.5 pouces', 63, NULL),
('Kingston V300', 60, 150, 50, 85000, 60000, 'SATA 3.0', '2.5 pouces', 64, NULL),
('Kingston V300', 120, 180, 133, 85000, 55000, 'SATA 3.0', '2.5 pouces', 65, '47.99'),
('Kingston V300', 240, 191, 142, 85000, 43000, 'SATA 3.0', '2.5 pouces', 66, NULL),
('Kingston V300', 480, 450, 208, 73000, 28000, 'SATA 3.0', '2.5 pouces', 67, NULL),
('Kingston HyperX FURY', 120, 420, 120, 11500, 52000, 'SATA 3.0', '2.5 pouces', 68, '49.99'),
('Kingston HyperX FURY', 240, 470, 220, 22000, 41000, 'SATA 3.0', '2.5 pouces', 69, '79.90'),
('Kingston HyperX FURY', 480, 450, 208, 30000, 41000, 'SATA 3.0', '2.5 pouces', 70, '154.99'),
('Kingston HyperX Savage SSD', 120, 520, 350, 93000, 83000, 'SATA 3.0', '2.5 pouces', 71, '65.99'),
('Kingston HyperX Savage SSD', 240, 520, 510, 93000, 89000, 'SATA 3.0', '2.5 pouces', 72, '94.99'),
('Kingston HyperX Savage SSD', 480, 520, 500, 92000, 89000, 'SATA 3.0', '2.5 pouces', 73, '164.99'),
('Kingston HyperX Savage SSD', 960, 520, 490, 97000, 89000, 'SATA 3.0', '2.5 pouces', 74, '379.99'),
('Kingston Predator PCIe SSD', 240, 1290, 600, 120000, 78000, 'PCIe 2.0 x4', 'M.2', 75, '196.00'),
('Kingston Predator PCIe SSD', 480, 1100, 910, 117000, 70000, 'PCIe 2.0 x4', 'M.2', 76, '449.99'),
('Kingston Predator PCIe SSD', 960, 1300, 1000, 111000, 72000, 'PCIe 2.0 x4', 'M.2', 77, NULL),
('Corsair Neutron series XTi', 1920, 550, 500, 80000, 85000, 'SATA 3.0', '2.5 pouces', 78, NULL),
('Corsair Neutron series XTi', 960, 560, 540, 100000, 90000, 'SATA 3.0', '2.5 pouces', 79, NULL),
('Corsair Neutron series XTi', 480, 560, 540, 100000, 90000, 'SATA 3.0', '2.5 pouces', 80, NULL),
('Corsair Neutron series XTi', 240, 560, 540, 100000, 90000, 'SATA 3.0', '2.5 pouces', 81, NULL),
('Corsair Force series LS', 960, 560, 540, 84000, 88000, 'SATA 3.0', '2.5 pouces', 82, NULL),
('Corsair Force series LS', 480, 560, 540, 84000, 88000, 'SATA 3.0', '2.5 pouces', 83, NULL),
('Corsair Force series LS', 240, 560, 520, 84000, 78000, 'SATA 3.0', '2.5 pouces', 84, NULL),
('Corsair Force series LS', 120, 540, 450, 43000, 23000, 'SATA 3.0', '2.5 pouces', 85, '51.90'),
('Corsair Force series LX', 512, 560, 450, 73000, 72000, 'SATA 3.0', '2.5 pouces', 86, NULL),
('Corsair Force series LX', 256, 560, 300, 76000, 70000, 'SATA 3.0', '2.5 pouces', 87, NULL),
('Corsair Force series LX', 128, 560, 150, 68000, 36000, 'SATA 3.0', '2.5 pouces', 88, NULL),
('Corsair Force series LE', 960, 560, 530, 85000, 60000, 'SATA 3.0', '2.5 pouces', 89, NULL),
('Corsair Force series LE', 480, 560, 530, 83000, 55000, 'SATA 3.0', '2.5 pouces', 90, NULL),
('Corsair Force series LE', 240, 560, 530, 83000, 40000, 'SATA 3.0', '2.5 pouces', 91, NULL),
('Corsair Force series LE', 120, 550, 500, 65000, 25000, 'SATA 3.0', '2.5 pouces', 92, NULL),
('SanDisk Ultra II', 120, 550, 500, 81000, 80000, 'SATA 3.0', '2.5 pouces', 93, NULL),
('SanDisk Ultra II', 240, 550, 500, 91000, 80000, 'SATA 3.0', '2.5 pouces', 94, NULL),
('SanDisk Ultra II', 480, 550, 500, 98000, 80000, 'SATA 3.0', '2.5 pouces', 95, NULL),
('SanDisk Ultra II', 960, 550, 500, 95000, 79000, 'SATA 3.0', '2.5 pouces', 96, NULL),
('SanDisk Extreme PRO', 240, 550, 520, 100000, 90000, 'SATA 3.0', '2.5 pouces', 97, NULL),
('SanDisk Extreme PRO', 480, 550, 515, 100000, 90000, 'SATA 3.0', '2.5 pouces', 98, NULL),
('SanDisk Extreme PRO', 960, 550, 515, 100000, 90000, 'SATA 3.0', '2.5 pouces', 99, NULL),
('SanDisk SSD PLUS', 120, 530, 400, 0, 0, 'SATA 3.0', '2.5 pouces', 104, '48.95'),
('SanDisk SSD PLUS', 240, 530, 440, 0, 0, 'SATA 3.0', '2.5 pouces', 105, NULL),
('SanDisk SSD PLUS', 480, 535, 445, 0, 0, 'SATA 3.0', '2.5 pouces', 106, NULL),
('Toshiba Q300 PRO', 256, 550, 510, 90000, 58000, 'SATA 3.0', '2.5 pouces', 107, NULL),
('Toshiba Q300 PRO', 1024, 550, 520, 92000, 63000, 'SATA 3.0', '2.5 pouces', 108, NULL),
('Toshiba Q300 PRO', 512, 550, 520, 92000, 63000, 'SATA 3.0', '2.5 pouces', 109, NULL),
('Toshiba Q300', 960, 550, 530, 87000, 83000, 'SATA 3.0', '2.5 pouces', 110, NULL),
('Toshiba Q300', 480, 550, 520, 86000, 83000, 'SATA 3.0', '2.5 pouces', 111, NULL),
('Toshiba Q300', 120, 550, 450, 81000, 40000, 'SATA 3.0', '2.5 pouces', 112, '52.99'),
('Toshiba Q300', 240, 550, 520, 86000, 73000, 'SATA 3.0', '2.5 pouces', 113, NULL),
('PNY CS900 Series', 120, 560, 450, 86000, 81000, 'SATA 3.0', '2.5 pouces', 115, NULL),
('PNY CS900 Series', 240, 560, 460, 86000, 80000, 'SATA 3.0', '2.5 pouces', 116, NULL),
('PNY CS900 Series', 480, 555, 470, 89000, 83000, 'SATA 3.0', '2.5 pouces', 117, NULL),
('PNY CS2200 Series', 240, 560, 470, 87000, 95000, 'SATA 3.0', '2.5 pouces', 118, NULL),
('PNY CS2200 Series', 480, 565, 540, 95000, 95000, 'SATA 3.0', '2.5 pouces', 119, NULL),
('PNY CS2200 Series', 960, 565, 540, 95000, 90000, 'SATA 3.0', '2.5 pouces', 120, NULL),
('Samsung 850 EVO', 120, 540, 520, 94000, 88000, 'SATA 3.0', '2.5 pouces', 121, NULL),
('Samsung 850 EVO', 250, 540, 520, 97000, 88000, 'SATA 3.0', '2.5 pouces', 122, NULL),
('Samsung 850 EVO', 500, 540, 520, 98000, 90000, 'SATA 3.0', '2.5 pouces', 123, NULL),
('Samsung 850 EVO', 1024, 540, 520, 98000, 90000, 'SATA 3.0', '2.5 pouces', 124, NULL),
('Samsung 850 EVO', 2048, 540, 520, 98000, 90000, 'SATA 3.0', '2.5 pouces', 125, NULL),
('Samsung 850 EVO', 4096, 540, 520, 98000, 90000, 'SATA 3.0', '2.5 pouces', 126, NULL),
('Samsung 850 EVO', 120, 540, 520, 95000, 88000, 'SATA 3.0', 'mSATA', 127, NULL),
('Samsung 850 EVO', 250, 540, 520, 97000, 88000, 'SATA 3.0', 'mSATA', 128, NULL),
('Samsung 850 EVO', 500, 540, 520, 97000, 88000, 'SATA 3.0', 'mSATA', 129, NULL),
('Samsung 850 EVO', 1024, 540, 520, 97000, 88000, 'SATA 3.0', 'mSATA', 130, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id_utilisateur` int(11) NOT NULL,
  `speudo_utilisateur` varchar(50) NOT NULL,
  `mot_de_passe_utilisateur` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `ssd`
--
ALTER TABLE `ssd`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `ssd`
--
ALTER TABLE `ssd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
