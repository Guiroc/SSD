-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Sam 27 Août 2016 à 18:21
-- Version du serveur :  5.7.9
-- Version de PHP :  5.6.16

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

DROP TABLE IF EXISTS `ssd`;
CREATE TABLE IF NOT EXISTS `ssd` (
  `nom` varchar(50) NOT NULL,
  `taille` int(11) NOT NULL,
  `lecture_sequentielle` int(11) NOT NULL,
  `ecriture_sequentielle` int(11) NOT NULL,
  `lecture_aleatoire` int(11) NOT NULL,
  `ecriture_aleatoire` int(11) NOT NULL,
  `interface` varchar(50) NOT NULL,
  `format` varchar(50) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=93 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `ssd`
--

INSERT INTO `ssd` (`nom`, `taille`, `lecture_sequentielle`, `ecriture_sequentielle`, `lecture_aleatoire`, `ecriture_aleatoire`, `interface`, `format`, `id`) VALUES
('Intel 750 series', 1200, 2400, 1200, 440000, 290000, 'PCIe NVMe 3.0 x4', 'PCI-Express', 1),
('Intel 750 series', 800, 2100, 800, 420000, 210000, 'PCIe NVMe 3.0 x4', 'PCI-Express', 2),
('Intel 750 series', 400, 2200, 900, 430000, 230000, 'PCIe NVMe 3.0 x4', 'PCI-Express', 3),
('Intel 730 series', 480, 550, 470, 89000, 74000, 'SATA 3.0', '2.5"', 4),
('Intel 730 series', 240, 550, 270, 86000, 56000, 'SATA 3.0', '2.5"', 5),
('Intel 600p series', 128, 770, 450, 35000, 91500, 'PCIe NVMe 3.0 x4', 'M.2', 6),
('Intel 600p series', 256, 1570, 540, 71000, 112000, 'PCIe NVMe 3.0 x4', 'M.2', 7),
('Intel 600p series', 512, 1775, 560, 128500, 128000, 'PCIe NVMe 3.0 x4', 'M.2', 8),
('Intel 600p series', 1024, 1800, 560, 155000, 128000, 'PCIe NVMe 3.0 x4', 'M.2', 9),
('Intel 540s series', 1000, 560, 480, 78000, 85000, 'SATA 3.0', '2.5"', 10),
('Intel 540s series', 1000, 560, 480, 78000, 85000, 'SATA 3.0', 'M.2', 11),
('Intel 540s series', 480, 560, 480, 78000, 85000, 'SATA 3.0', '2.5"', 12),
('Intel 540s series', 480, 560, 480, 78000, 85000, 'SATA 3.0', 'M.2', 13),
('Intel 540s series', 360, 560, 480, 74000, 85000, 'SATA 3.0', '2.5"', 14),
('Intel 540s series', 360, 560, 480, 74000, 85000, 'SATA 3.0', 'M.2', 15),
('Intel 540s series', 180, 560, 475, 71000, 85000, 'SATA 3.0', '2.5"', 16),
('Intel 540s series', 180, 560, 475, 71000, 85000, 'SATA 3.0', 'M.2', 17),
('Intel 540s series', 120, 560, 400, 60000, 50000, 'SATA 3.0', '2.5"', 18),
('Intel 540s series', 120, 560, 400, 60000, 50000, 'SATA 3.0', 'M.2', 19),
('Intel 535 series', 480, 540, 490, 48000, 37000, 'SATA 3.0', '2.5"', 20),
('Intel 535 series', 360, 540, 490, 45000, 33000, 'SATA 3.0', '2.5"', 21),
('Intel 535 series', 240, 540, 490, 41000, 80000, 'SATA 3.0', '2.5"', 22),
('Intel 535 series', 180, 540, 490, 41000, 80000, 'SATA 3.0', '2.5"', 23),
('Intel 535 series', 120, 540, 480, 24000, 80000, 'SATA 3.0', '2.5"', 24),
('Intel 535 series', 56, 540, 480, 12000, 80000, 'SATA 3.0', '2.5"', 25),
('Intel 535 series', 360, 540, 490, 45000, 33000, 'SATA 3.0', 'M.2', 26),
('Intel 535 series', 240, 540, 490, 41000, 80000, 'SATA 3.0', 'M.2', 27),
('Intel 535 series', 180, 540, 490, 41000, 80000, 'SATA 3.0', 'M.2', 28),
('Intel 535 series', 120, 540, 480, 24000, 80000, 'SATA 3.0', 'M.2', 29),
('Intel 535 series', 56, 540, 480, 12000, 80000, 'SATA 3.0', 'M.2', 30),
('Samsung 950 PRO', 256, 2500, 900, 270000, 85000, 'PCIe NVMe 3.0 x4', 'M.2', 31),
('Samsung 950 PRO', 512, 2500, 1500, 300000, 110000, 'PCIe NVMe 3.0 x4', 'M.2', 32),
('Samsung 850 PRO', 128, 550, 470, 100000, 90000, 'SATA 3.0', '2.5"', 33),
('Samsung 850 PRO', 256, 550, 520, 100000, 90000, 'SATA 3.0', '2.5"', 34),
('Samsung 850 PRO', 512, 550, 520, 100000, 90000, 'SATA 3.0', '2.5"', 35),
('Samsung 850 PRO', 1024, 550, 520, 100000, 90000, 'SATA 3.0', '2.5"', 36),
('Samsung 850 PRO', 2048, 550, 520, 100000, 90000, 'SATA 3.0', '2.5"', 37),
('Samsung 750 EVO', 120, 540, 520, 94000, 88000, 'SATA 3.0', '2.5"', 38),
('Samsung 750 EVO', 250, 540, 520, 97000, 88000, 'SATA 3.0', '2.5"', 39),
('Samsung 750 EVO', 500, 540, 520, 98000, 88000, 'SATA 3.0', '2.5"', 40),
('Samsung 850 EVO', 120, 540, 500, 97000, 89000, 'SATA 3.0', 'M.2', 41),
('Samsung 850 EVO', 250, 540, 500, 97000, 89000, 'SATA 3.0', 'M.2', 42),
('Samsung 850 EVO', 500, 540, 500, 97000, 89000, 'SATA 3.0', 'M.2', 43),
('Crucial MX300', 275, 530, 500, 55000, 83000, 'SATA 3.0', '2.5"', 44),
('Crucial MX300', 525, 530, 510, 92000, 83000, 'SATA 3.0', '2.5"', 45),
('Crucial MX300', 1000, 530, 510, 92000, 83000, 'SATA 3.0', '2.5"', 46),
('Crucial MX300', 275, 530, 500, 55000, 83000, 'SATA 3.0', 'M.2', 47),
('Crucial MX200', 250, 555, 500, 100000, 87000, 'SATA 3.0', '2.5"', 48),
('Crucial MX200', 500, 555, 500, 100000, 87000, 'SATA 3.0', '2.5"', 49),
('Crucial MX200', 1000, 555, 500, 100000, 87000, 'SATA 3.0', '2.5"', 50),
('Crucial MX300', 250, 555, 500, 100000, 87000, 'SATA 3.0', 'mSATA', 51),
('Crucial MX200', 500, 555, 500, 100000, 87000, 'SATA 3.0', 'mSATA', 52),
('Crucial MX200', 250, 555, 500, 100000, 87000, 'SATA 3.0', 'M.2', 54),
('Crucial BX200', 240, 540, 490, 66000, 78000, 'SATA 3.0', '2.5"', 57),
('Crucial MX200', 500, 555, 500, 100000, 87000, 'SATA 3.0', 'M.2', 56),
('Crucial BX200', 480, 540, 490, 66000, 78000, 'SATA 3.0', '2.5"', 58),
('Crucial BX200', 960, 540, 490, 66000, 78000, 'SATA 3.0', '2.5"', 59),
('Kingston UV400', 120, 550, 350, 90000, 15000, 'SATA 3.0', '2.5"', 60),
('Kingston UV400', 240, 550, 490, 90000, 25000, 'SATA 3.0', '2.5"', 61),
('Kingston UV400', 480, 550, 500, 90000, 35000, 'SATA 3.0', '2.5"', 62),
('Kingston UV400', 960, 540, 540, 90000, 50000, 'SATA 3.0', '2.5"', 63),
('Kingston V300', 60, 150, 50, 85000, 60000, 'SATA 3.0', '2.5"', 64),
('Kingston V300', 120, 180, 133, 85000, 55000, 'SATA 3.0', '2.5"', 65),
('Kingston V300', 240, 191, 142, 85000, 43000, 'SATA 3.0', '2.5"', 66),
('Kingston V300', 480, 450, 208, 73000, 28000, 'SATA 3.0', '2.5"', 67),
('Kingston SSD FURY', 120, 420, 120, 11500, 52000, 'SATA 3.0', '2.5"', 68),
('Kingston SSD FURY', 240, 470, 220, 22000, 41000, 'SATA 3.0', '2.5"', 69),
('Kingston SSD FURY', 480, 450, 208, 30000, 41000, 'SATA 3.0', '2.5"', 70),
('Kingston HyperX Savage SSD', 120, 520, 350, 93000, 83000, 'SATA 3.0', '2.5"', 71),
('Kingston HyperX Savage SSD', 240, 520, 510, 93000, 89000, 'SATA 3.0', '2.5"', 72),
('Kingston HyperX Savage SSD', 480, 520, 500, 92000, 89000, 'SATA 3.0', '2.5"', 73),
('Kingston HyperX Savage SSD', 960, 520, 490, 97000, 89000, 'SATA 3.0', '2.5"', 74),
('Kingston Predator PCIe SSD', 240, 1290, 600, 120000, 78000, 'PCIe 2.0 x4', 'M.2', 75),
('Kingston Predator PCIe SSD', 480, 1100, 910, 117000, 70000, 'PCIe 2.0 x4', 'M.2', 76),
('Kingston Predator PCIe SSD', 960, 1300, 1000, 111000, 72000, 'PCIe 2.0 x4', 'M.2', 77),
('Corsair Neutron series XTi', 1920, 550, 500, 80000, 85000, 'SATA 3.0', '2.5"', 78),
('Corsair Neutron series XTi', 960, 560, 540, 100000, 90000, 'SATA 3.0', '2.5"', 79),
('Corsair Neutron series XTi', 480, 560, 540, 100000, 90000, 'SATA 3.0', '2.5"', 80),
('Corsair Neutron series XTi', 240, 560, 540, 100000, 90000, 'SATA 3.0', '2.5"', 81),
('Corsair Force series LS', 960, 560, 540, 84000, 88000, 'SATA 3.0', '2.5"', 82),
('Corsair Force series LS', 480, 560, 540, 84000, 88000, 'SATA 3.0', '2.5"', 83),
('Corsair Force series LS', 240, 560, 520, 84000, 78000, 'SATA 3.0', '2.5"', 84),
('Corsair Force series LS', 120, 540, 450, 43000, 23000, 'SATA 3.0', '2.5"', 85),
('Corsair Force series LX', 512, 560, 450, 73000, 72000, 'SATA 3.0', '2.5"', 86),
('Corsair Force series LX', 256, 560, 300, 76000, 70000, 'SATA 3.0', '2.5"', 87),
('Corsair Force series LX', 128, 560, 150, 68000, 36000, 'SATA 3.0', '2.5"', 88),
('Corsair Force series LE', 960, 560, 530, 85000, 60000, 'SATA 3.0', '2.5"', 89),
('Corsair Force series LE', 480, 560, 530, 83000, 55000, 'SATA 3.0', '2.5"', 90),
('Corsair Force series LE', 240, 560, 530, 83000, 40000, 'SATA 3.0', '2.5"', 91),
('Corsair Force series LE', 120, 550, 500, 65000, 25000, 'SATA 3.0', '2.5"', 92);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
