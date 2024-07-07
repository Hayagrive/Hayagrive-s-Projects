-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.54 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.1.0.6116
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for efficientauditionscheme
CREATE DATABASE IF NOT EXISTS `efficientauditionscheme` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `efficientauditionscheme`;

-- Dumping structure for table efficientauditionscheme.accesspermission
CREATE TABLE IF NOT EXISTS `accesspermission` (
  `ClientName` varchar(50) DEFAULT NULL,
  `OwnerName` varchar(50) DEFAULT NULL,
  `ZipFileName` varchar(50) DEFAULT NULL,
  `ActivationCode` varchar(50) DEFAULT NULL,
  `SecretKey` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table efficientauditionscheme.accesspermission: ~0 rows (approximately)
/*!40000 ALTER TABLE `accesspermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `accesspermission` ENABLE KEYS */;

-- Dumping structure for table efficientauditionscheme.clientregister
CREATE TABLE IF NOT EXISTS `clientregister` (
  `EmailId` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `AuthorizationCode` varchar(50) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `EdgeNodeId` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table efficientauditionscheme.clientregister: ~2 rows (approximately)
/*!40000 ALTER TABLE `clientregister` DISABLE KEYS */;
/*!40000 ALTER TABLE `clientregister` ENABLE KEYS */;

-- Dumping structure for table efficientauditionscheme.cspregister
CREATE TABLE IF NOT EXISTS `cspregister` (
  `LogKey` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table efficientauditionscheme.cspregister: ~1 rows (approximately)
/*!40000 ALTER TABLE `cspregister` DISABLE KEYS */;
/*!40000 ALTER TABLE `cspregister` ENABLE KEYS */;

-- Dumping structure for table efficientauditionscheme.edgenodes
CREATE TABLE IF NOT EXISTS `edgenodes` (
  `EdgeNodeId` varchar(50) DEFAULT NULL,
  `Username` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table efficientauditionscheme.edgenodes: ~3 rows (approximately)
/*!40000 ALTER TABLE `edgenodes` DISABLE KEYS */;
/*!40000 ALTER TABLE `edgenodes` ENABLE KEYS */;

-- Dumping structure for table efficientauditionscheme.keydetails
CREATE TABLE IF NOT EXISTS `keydetails` (
  `FileName` varchar(50) DEFAULT NULL,
  `PublicKey` varchar(50) DEFAULT NULL,
  `SecretKey` varchar(50) DEFAULT NULL,
  `ClientName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table efficientauditionscheme.keydetails: ~1 rows (approximately)
/*!40000 ALTER TABLE `keydetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `keydetails` ENABLE KEYS */;

-- Dumping structure for table efficientauditionscheme.unauthorizedusers
CREATE TABLE IF NOT EXISTS `unauthorizedusers` (
  `UserName` varchar(50) DEFAULT NULL,
  `AuthorizedKeysTried` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table efficientauditionscheme.unauthorizedusers: ~0 rows (approximately)
/*!40000 ALTER TABLE `unauthorizedusers` DISABLE KEYS */;
/*!40000 ALTER TABLE `unauthorizedusers` ENABLE KEYS */;

-- Dumping structure for table efficientauditionscheme.upload
CREATE TABLE IF NOT EXISTS `upload` (
  `SearchableIndex` varchar(8000) DEFAULT NULL,
  `FileName` varchar(50) DEFAULT NULL,
  `ZipFileName` varchar(50) DEFAULT NULL,
  `ActivationCode` varchar(50) DEFAULT NULL,
  `SecretKey` varchar(50) DEFAULT NULL,
  `ClientName` varchar(50) DEFAULT NULL,
  `EdgeId` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table efficientauditionscheme.upload: ~1 rows (approximately)
/*!40000 ALTER TABLE `upload` DISABLE KEYS */;
/*!40000 ALTER TABLE `upload` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
