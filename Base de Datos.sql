-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.21-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para base
CREATE DATABASE IF NOT EXISTS `base` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `base`;

-- Volcando estructura para tabla base.addon_account
CREATE TABLE IF NOT EXISTS `addon_account` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla base.addon_account: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `addon_account` DISABLE KEYS */;
INSERT IGNORE INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('property_black_money', 'Argent Sale Propriété', 0),
	('society_ambulance', 'EMS', 1),
	('society_busdriver', 'Busero', 1),
	('society_mechanic', 'Mechanic', 1),
	('society_police', 'Police', 1),
	('society_taxi', 'Taxi', 1);
/*!40000 ALTER TABLE `addon_account` ENABLE KEYS */;

-- Volcando estructura para tabla base.addon_account_data
CREATE TABLE IF NOT EXISTS `addon_account_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(100) DEFAULT NULL,
  `money` int(11) NOT NULL,
  `owner` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_addon_account_data_account_name_owner` (`account_name`,`owner`),
  KEY `index_addon_account_data_account_name` (`account_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla base.addon_account_data: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `addon_account_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `addon_account_data` ENABLE KEYS */;

-- Volcando estructura para tabla base.addon_inventory
CREATE TABLE IF NOT EXISTS `addon_inventory` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla base.addon_inventory: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `addon_inventory` DISABLE KEYS */;
INSERT IGNORE INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('property', 'Propriété', 0),
	('society_ambulance', 'EMS', 1),
	('society_busdriver', 'Busero', 1),
	('society_mechanic', 'Mechanic', 1),
	('society_police', 'Police', 1),
	('society_taxi', 'Taxi', 1);
/*!40000 ALTER TABLE `addon_inventory` ENABLE KEYS */;

-- Volcando estructura para tabla base.addon_inventory_items
CREATE TABLE IF NOT EXISTS `addon_inventory_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inventory_name` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_addon_inventory_items_inventory_name_name` (`inventory_name`,`name`),
  KEY `index_addon_inventory_items_inventory_name_name_owner` (`inventory_name`,`name`,`owner`),
  KEY `index_addon_inventory_inventory_name` (`inventory_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla base.addon_inventory_items: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `addon_inventory_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `addon_inventory_items` ENABLE KEYS */;

-- Volcando estructura para tabla base.aircrafts
CREATE TABLE IF NOT EXISTS `aircrafts` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla base.aircrafts: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `aircrafts` DISABLE KEYS */;
INSERT IGNORE INTO `aircrafts` (`name`, `model`, `price`, `category`) VALUES
	('Buzzard', 'buzzard2', 2147483647, 'heli'),
	('Frogger', 'frogger', 2147483647, 'heli'),
	('Havok', 'havok', 2147483647, 'heli'),
	('Sea Sparrow', 'seasparrow', 2147483647, 'heli'),
	('SuperVolito Carbon', 'supervolito2', 2147483647, 'heli'),
	('Swift Deluxe', 'swift2', 2147483647, 'heli'),
	('Volatus', 'volatus', 2147483647, 'heli');
/*!40000 ALTER TABLE `aircrafts` ENABLE KEYS */;

-- Volcando estructura para tabla base.aircraft_categories
CREATE TABLE IF NOT EXISTS `aircraft_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla base.aircraft_categories: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `aircraft_categories` DISABLE KEYS */;
INSERT IGNORE INTO `aircraft_categories` (`name`, `label`) VALUES
	('heli', 'Helicopteros');
/*!40000 ALTER TABLE `aircraft_categories` ENABLE KEYS */;

-- Volcando estructura para tabla base.billing
CREATE TABLE IF NOT EXISTS `billing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(40) NOT NULL,
  `sender` varchar(40) NOT NULL,
  `target_type` varchar(50) NOT NULL,
  `target` varchar(40) NOT NULL,
  `label` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla base.billing: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `billing` DISABLE KEYS */;
/*!40000 ALTER TABLE `billing` ENABLE KEYS */;

-- Volcando estructura para tabla base.boats
CREATE TABLE IF NOT EXISTS `boats` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla base.boats: ~16 rows (aproximadamente)
/*!40000 ALTER TABLE `boats` DISABLE KEYS */;
INSERT IGNORE INTO `boats` (`name`, `model`, `price`, `category`) VALUES
	('Dinghy 4Seat', 'dinghy', 2147483647, 'boat'),
	('Dinghy 2Seat', 'dinghy2', 2147483647, 'boat'),
	('Dinghy Yacht', 'dinghy4', 2147483647, 'boat'),
	('Jetmax', 'jetmax', 2147483647, 'boat'),
	('Marquis', 'marquis', 2147483647, 'boat'),
	('Seashark', 'seashark', 2147483647, 'boat'),
	('Seashark Yacht', 'seashark3', 2147483647, 'boat'),
	('Speeder', 'speeder', 2147483647, 'boat'),
	('Squalo', 'squalo', 2147483647, 'boat'),
	('Submarine', 'submersible', 2147483647, 'subs'),
	('Kraken', 'submersible2', 2147483647, 'subs'),
	('Suntrap', 'suntrap', 2147483647, 'boat'),
	('Toro', 'toro', 2147483647, 'boat'),
	('Toro Yacht', 'toro2', 2147483647, 'boat'),
	('Tropic', 'tropic', 2147483647, 'boat'),
	('Tropic Yacht', 'tropic2', 2147483647, 'boat');
/*!40000 ALTER TABLE `boats` ENABLE KEYS */;

-- Volcando estructura para tabla base.boat_categories
CREATE TABLE IF NOT EXISTS `boat_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla base.boat_categories: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `boat_categories` DISABLE KEYS */;
INSERT IGNORE INTO `boat_categories` (`name`, `label`) VALUES
	('boat', 'Boats'),
	('subs', 'Submersibles');
/*!40000 ALTER TABLE `boat_categories` ENABLE KEYS */;

-- Volcando estructura para tabla base.bought_houses
CREATE TABLE IF NOT EXISTS `bought_houses` (
  `houseid` int(50) NOT NULL,
  PRIMARY KEY (`houseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla base.bought_houses: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `bought_houses` DISABLE KEYS */;
/*!40000 ALTER TABLE `bought_houses` ENABLE KEYS */;

-- Volcando estructura para tabla base.bwh_bans
CREATE TABLE IF NOT EXISTS `bwh_bans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `receiver` text NOT NULL,
  `sender` varchar(60) NOT NULL,
  `length` datetime DEFAULT NULL,
  `reason` text NOT NULL,
  `unbanned` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla base.bwh_bans: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `bwh_bans` DISABLE KEYS */;
/*!40000 ALTER TABLE `bwh_bans` ENABLE KEYS */;

-- Volcando estructura para tabla base.bwh_identifiers
CREATE TABLE IF NOT EXISTS `bwh_identifiers` (
  `steam` varchar(60) NOT NULL,
  `license` varchar(60) NOT NULL,
  `ip` varchar(60) NOT NULL,
  `name` varchar(128) NOT NULL,
  `xbl` varchar(60) DEFAULT NULL,
  `live` varchar(60) DEFAULT NULL,
  `discord` varchar(60) DEFAULT NULL,
  `fivem` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`steam`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla base.bwh_identifiers: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `bwh_identifiers` DISABLE KEYS */;
/*!40000 ALTER TABLE `bwh_identifiers` ENABLE KEYS */;

-- Volcando estructura para tabla base.bwh_warnings
CREATE TABLE IF NOT EXISTS `bwh_warnings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `receiver` text NOT NULL,
  `sender` varchar(60) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla base.bwh_warnings: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `bwh_warnings` DISABLE KEYS */;
/*!40000 ALTER TABLE `bwh_warnings` ENABLE KEYS */;

-- Volcando estructura para tabla base.cardealer_vehicles
CREATE TABLE IF NOT EXISTS `cardealer_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla base.cardealer_vehicles: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `cardealer_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `cardealer_vehicles` ENABLE KEYS */;

-- Volcando estructura para tabla base.communityservice
CREATE TABLE IF NOT EXISTS `communityservice` (
  `identifier` varchar(100) NOT NULL,
  `actions_remaining` int(10) NOT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla base.communityservice: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `communityservice` DISABLE KEYS */;
/*!40000 ALTER TABLE `communityservice` ENABLE KEYS */;

-- Volcando estructura para tabla base.crew_phone_bank
CREATE TABLE IF NOT EXISTS `crew_phone_bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT 1,
  `identifier` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla base.crew_phone_bank: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `crew_phone_bank` DISABLE KEYS */;
/*!40000 ALTER TABLE `crew_phone_bank` ENABLE KEYS */;

-- Volcando estructura para tabla base.crew_phone_news
CREATE TABLE IF NOT EXISTS `crew_phone_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla base.crew_phone_news: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `crew_phone_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `crew_phone_news` ENABLE KEYS */;

-- Volcando estructura para tabla base.datastore
CREATE TABLE IF NOT EXISTS `datastore` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla base.datastore: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `datastore` DISABLE KEYS */;
INSERT IGNORE INTO `datastore` (`name`, `label`, `shared`) VALUES
	('property', 'Propriété', 0),
	('society_ambulance', 'EMS', 1),
	('society_busdriver', 'Busero', 1),
	('society_mechanic', 'Mechanic', 1),
	('society_police', 'Police', 1),
	('society_taxi', 'Taxi', 1);
/*!40000 ALTER TABLE `datastore` ENABLE KEYS */;

-- Volcando estructura para tabla base.datastore_data
CREATE TABLE IF NOT EXISTS `datastore_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_datastore_data_name_owner` (`name`,`owner`),
  KEY `index_datastore_data_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=13061 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla base.datastore_data: ~209 rows (aproximadamente)
/*!40000 ALTER TABLE `datastore_data` DISABLE KEYS */;
INSERT IGNORE INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(12852, 'society_ambulance', NULL, '{}'),
	(12853, 'society_busdriver', NULL, '{}'),
	(12854, 'society_mechanic', NULL, '{"garage":[]}'),
	(12855, 'society_police', NULL, '{"weapons":[{"count":0,"name":"WEAPON_PUMPSHOTGUN"},{"count":1,"name":"WEAPON_SPECIALCARBINE"},{"count":4,"name":"WEAPON_SMG"},{"count":0,"name":"WEAPON_RPG"},{"count":1,"name":"WEAPON_COMBATPISTOL"},{"count":1,"name":"WEAPON_HEAVYPISTOL"},{"count":2,"name":"WEAPON_STUNGUN"},{"count":1,"name":"WEAPON_FLASHLIGHT"},{"count":1,"name":"WEAPON_NIGHTSTICK"},{"count":39,"name":"WEAPON_PISTOL"},{"count":1,"name":"WEAPON_PISTOL50"},{"count":0,"name":"WEAPON_MACHINEPISTOL"},{"count":11,"name":"WEAPON_ASSAULTRIFLE"},{"count":0,"name":"WEAPON_HEAVYSNIPER"},{"count":1,"name":"WEAPON_PETROLCAN"},{"count":4,"name":"WEAPON_KNIFE"},{"count":8,"name":"WEAPON_MICROSMG"},{"count":3,"name":"WEAPON_FIREWORK"},{"count":0,"name":"WEAPON_CARBINERIFLE"},{"count":1,"name":"WEAPON_BAT"}]}'),
	(12856, 'society_taxi', NULL, '{}'),
	(12857, 'property', 'steam:1100001150ed5e0', '{}'),
	(12858, 'property', 'steam:110000141cdcf0a', '{"dressing":[{"skin":{"mask_1":51,"makeup_1":0,"ears_1":-1,"hair_color_1":0,"helmet_1":52,"lipstick_2":0,"arms":0,"decals_2":0,"glasses_2":0,"hair_2":0,"bags_1":0,"beard_2":0,"glasses_1":-1,"makeup_3":0,"hair_1":12,"age_2":0,"skin":0,"makeup_2":0,"beard_1":2,"mask_2":0,"shoes_2":0,"eyebrows_2":0,"bproof_1":1,"tshirt_1":57,"lipstick_4":0,"chain_1":0,"torso_1":178,"decals_1":0,"torso_2":0,"tshirt_2":0,"hair_color_2":0,"lipstick_3":0,"beard_4":0,"eyebrows_3":0,"sex":0,"chain_2":0,"lipstick_1":0,"face":0,"helmet_2":0,"eyebrows_1":0,"ears_2":0,"pants_2":0,"shoes_1":6,"pants_1":77,"bags_2":0,"makeup_4":0,"age_1":0,"beard_3":0,"bproof_2":-1,"eyebrows_4":0},"label":"adminnnn"},{"skin":{"mask_1":51,"makeup_1":0,"ears_1":-1,"hair_color_1":0,"helmet_1":52,"lipstick_2":0,"arms":0,"decals_2":0,"glasses_2":0,"hair_2":0,"bags_1":0,"beard_2":0,"glasses_1":-1,"makeup_3":0,"hair_1":12,"age_2":0,"skin":0,"makeup_2":0,"beard_1":2,"mask_2":0,"shoes_2":0,"eyebrows_2":0,"bproof_1":1,"tshirt_1":120,"lipstick_4":0,"chain_1":0,"torso_1":261,"decals_1":0,"torso_2":8,"tshirt_2":0,"hair_color_2":0,"lipstick_3":0,"beard_4":0,"eyebrows_3":0,"sex":0,"chain_2":0,"lipstick_1":0,"face":0,"helmet_2":0,"eyebrows_1":0,"ears_2":0,"pants_2":0,"shoes_1":6,"pants_1":25,"bags_2":0,"makeup_4":0,"age_1":0,"beard_3":0,"bproof_2":-1,"eyebrows_4":0},"label":"ciudadano"},{"skin":{"mask_1":51,"makeup_1":0,"ears_1":2,"hair_color_1":0,"helmet_1":-1,"lipstick_2":0,"arms":60,"decals_2":0,"torso_1":222,"hair_2":0,"bags_1":0,"torso_2":13,"glasses_1":-1,"makeup_3":0,"hair_1":12,"age_2":0,"skin":0,"makeup_2":0,"beard_1":2,"mask_2":0,"decals_1":0,"shoes_2":5,"glasses_2":0,"bproof_1":0,"tshirt_1":0,"lipstick_4":0,"chain_1":0,"tshirt_2":0,"lipstick_3":0,"arms_2":0,"eyebrows_3":0,"hair_color_2":0,"beard_4":0,"sex":0,"lipstick_1":0,"face":0,"chain_2":0,"ears_2":0,"bags_2":0,"helmet_2":0,"eyebrows_1":0,"eyebrows_2":0,"pants_2":0,"shoes_1":26,"pants_1":11,"eyebrows_4":0,"makeup_4":0,"age_1":0,"beard_3":0,"bproof_2":0,"beard_2":0},"label":"vacaadmin"},{"skin":{"mask_1":51,"makeup_1":0,"ears_1":2,"hair_color_1":0,"helmet_1":83,"lipstick_2":0,"arms":41,"decals_2":0,"torso_1":53,"hair_2":0,"bags_1":0,"beard_2":0,"glasses_1":-1,"makeup_3":0,"hair_1":12,"age_2":0,"skin":0,"makeup_2":0,"beard_1":2,"mask_2":0,"eyebrows_2":0,"shoes_2":0,"decals_1":0,"bproof_1":2,"tshirt_1":104,"lipstick_4":0,"chain_1":112,"tshirt_2":0,"lipstick_3":0,"torso_2":0,"eyebrows_3":0,"hair_color_2":0,"beard_4":0,"lipstick_1":0,"arms_2":0,"face":0,"chain_2":2,"ears_2":0,"bags_2":0,"helmet_2":0,"eyebrows_1":0,"glasses_2":0,"pants_2":0,"shoes_1":25,"pants_1":31,"eyebrows_4":0,"makeup_4":0,"sex":0,"beard_3":0,"bproof_2":0,"age_1":0},"label":"geox"},{"skin":{"mask_1":52,"makeup_1":0,"ears_1":2,"eyebrows_4":0,"helmet_1":104,"lipstick_2":0,"arms":41,"decals_2":0,"torso_1":53,"hair_2":0,"bags_1":0,"torso_2":0,"glasses_1":-1,"makeup_3":0,"hair_1":12,"age_2":0,"skin":0,"makeup_2":0,"beard_1":2,"mask_2":0,"eyebrows_2":0,"shoes_2":0,"decals_1":0,"bproof_1":2,"tshirt_1":104,"lipstick_4":0,"chain_1":112,"glasses_2":0,"beard_4":0,"lipstick_3":0,"beard_2":0,"hair_color_2":0,"eyebrows_3":0,"arms_2":0,"tshirt_2":0,"sex":0,"chain_2":2,"face":0,"lipstick_1":0,"helmet_2":20,"eyebrows_1":0,"ears_2":0,"pants_2":0,"shoes_1":25,"pants_1":31,"hair_color_1":0,"makeup_4":0,"age_1":0,"beard_3":0,"bproof_2":0,"bags_2":0},"label":"cni"},{"skin":{"mask_1":50,"makeup_1":0,"bags_2":0,"hair_color_1":0,"helmet_1":-1,"lipstick_2":0,"arms":0,"decals_2":0,"torso_1":65,"hair_2":0,"bags_1":0,"torso_2":0,"glasses_1":-1,"makeup_3":0,"hair_1":12,"eyebrows_3":0,"skin":0,"makeup_2":0,"beard_1":2,"mask_2":0,"age_2":0,"shoes_2":8,"beard_2":0,"eyebrows_2":0,"tshirt_1":100,"lipstick_4":0,"chain_1":0,"age_1":0,"bproof_1":1,"decals_1":0,"tshirt_2":0,"hair_color_2":0,"lipstick_3":0,"lipstick_1":0,"glasses_2":0,"arms_2":0,"chain_2":0,"pants_1":39,"ears_1":-1,"helmet_2":0,"eyebrows_1":0,"beard_4":0,"pants_2":0,"shoes_1":8,"face":0,"ears_2":0,"makeup_4":0,"sex":0,"beard_3":0,"bproof_2":-1,"eyebrows_4":0},"label":"la casa de papel"}]}'),
	(12859, 'property', 'steam:1100001447f9d42', '{"dressing":[{"label":"1r DÍA","skin":{"ears_1":-1,"skin":0,"makeup_2":0,"makeup_1":0,"ears_2":0,"tshirt_2":0,"mask_2":0,"bproof_1":12,"eyebrows_1":0,"chain_1":0,"eyebrows_4":0,"chain_2":0,"hair_color_2":0,"glasses_2":0,"hair_1":0,"torso_2":0,"makeup_3":0,"bags_1":44,"lipstick_4":0,"lipstick_2":0,"arms":30,"helmet_1":-1,"makeup_4":0,"beard_1":0,"hair_2":0,"decals_1":0,"bproof_2":1,"bags_2":0,"eyebrows_3":0,"pants_2":2,"glasses_1":-1,"mask_1":0,"beard_2":0,"torso_1":13,"beard_4":0,"decals_2":0,"pants_1":4,"age_2":0,"eyebrows_2":0,"beard_3":0,"hair_color_1":0,"shoes_2":0,"age_1":0,"shoes_1":1,"helmet_2":0,"lipstick_1":0,"lipstick_3":0,"sex":0,"tshirt_1":15,"arms_2":1,"face":0}},{"label":"ropa civil","skin":{"ears_1":1,"skin":0,"makeup_2":0,"makeup_1":9,"ears_2":0,"tshirt_2":0,"mask_2":0,"bproof_1":0,"eyebrows_1":0,"chain_1":0,"eyebrows_4":0,"chain_2":0,"arms":30,"glasses_2":0,"hair_1":44,"torso_2":0,"makeup_3":0,"bags_1":44,"lipstick_4":0,"hair_color_2":0,"sex":0,"helmet_1":-1,"makeup_4":0,"beard_1":0,"hair_2":0,"decals_1":0,"bproof_2":0,"bags_2":0,"eyebrows_3":3,"pants_2":0,"glasses_1":-1,"mask_1":0,"age_2":0,"torso_1":22,"beard_4":0,"decals_2":0,"pants_1":26,"beard_2":0,"shoes_2":0,"beard_3":0,"hair_color_1":0,"lipstick_2":2,"eyebrows_2":1,"face":0,"helmet_2":0,"lipstick_1":0,"lipstick_3":1,"shoes_1":14,"age_1":0,"arms_2":1,"tshirt_1":15}},{"label":"Táctico","skin":{"ears_1":1,"skin":0,"makeup_2":0,"makeup_1":9,"ears_2":0,"tshirt_2":0,"mask_2":0,"bproof_1":0,"eyebrows_1":0,"chain_1":0,"eyebrows_4":0,"chain_2":0,"eyebrows_2":1,"glasses_2":0,"hair_1":44,"torso_2":0,"makeup_3":0,"bags_1":44,"lipstick_4":0,"helmet_1":-1,"sex":0,"bags_2":0,"torso_1":50,"beard_1":0,"hair_2":0,"decals_1":0,"bproof_2":0,"makeup_4":0,"eyebrows_3":3,"pants_2":0,"glasses_1":-1,"mask_1":0,"age_2":0,"arms":30,"beard_4":0,"decals_2":0,"pants_1":31,"shoes_2":0,"age_1":0,"beard_3":0,"hair_color_1":0,"hair_color_2":0,"lipstick_2":2,"face":0,"helmet_2":0,"lipstick_1":0,"lipstick_3":1,"shoes_1":24,"beard_2":0,"arms_2":1,"tshirt_1":130}},{"label":"táctico 2","skin":{"ears_1":1,"skin":0,"makeup_2":0,"makeup_1":9,"ears_2":0,"tshirt_2":0,"mask_2":0,"bproof_1":0,"eyebrows_1":0,"chain_1":0,"eyebrows_4":0,"chain_2":0,"eyebrows_2":1,"glasses_2":0,"hair_1":44,"torso_2":3,"makeup_3":0,"bags_1":44,"lipstick_4":0,"lipstick_2":2,"sex":0,"helmet_1":-1,"torso_1":111,"beard_1":0,"hair_2":0,"decals_1":0,"bproof_2":0,"bags_2":0,"eyebrows_3":3,"pants_2":0,"glasses_1":-1,"mask_1":0,"makeup_4":0,"age_2":0,"beard_4":0,"decals_2":0,"pants_1":31,"arms":22,"shoes_2":0,"beard_3":0,"hair_color_1":0,"age_1":0,"hair_color_2":0,"shoes_1":24,"helmet_2":0,"lipstick_1":0,"lipstick_3":1,"tshirt_1":133,"beard_2":0,"arms_2":0,"face":0}},{"label":"sudadera","skin":{"ears_1":1,"skin":0,"makeup_2":0,"makeup_1":9,"ears_2":0,"tshirt_2":4,"mask_2":0,"bproof_1":0,"eyebrows_1":0,"chain_1":0,"eyebrows_4":0,"chain_2":0,"lipstick_2":2,"glasses_2":0,"hair_1":44,"torso_2":0,"makeup_3":0,"bags_1":44,"lipstick_4":0,"hair_color_2":0,"sex":0,"helmet_1":-1,"makeup_4":0,"beard_1":0,"hair_2":0,"decals_1":0,"bproof_2":0,"eyebrows_2":1,"eyebrows_3":3,"pants_2":2,"glasses_1":-1,"mask_1":0,"bags_2":0,"torso_1":86,"beard_4":0,"decals_2":0,"pants_1":31,"age_2":0,"arms":22,"beard_3":0,"hair_color_1":0,"shoes_2":0,"age_1":0,"shoes_1":24,"helmet_2":0,"lipstick_1":0,"lipstick_3":1,"tshirt_1":111,"beard_2":0,"arms_2":0,"face":0}},{"label":"Inspector Jefe","skin":{"ears_1":1,"skin":0,"lipstick_2":2,"makeup_1":9,"ears_2":0,"tshirt_2":0,"mask_2":0,"bproof_1":0,"eyebrows_1":0,"chain_1":0,"eyebrows_4":0,"chain_2":0,"age_1":0,"glasses_2":0,"hair_1":44,"torso_2":0,"makeup_3":0,"bags_1":44,"lipstick_4":0,"eyebrows_2":1,"sex":0,"helmet_1":-1,"makeup_4":0,"beard_1":0,"hair_2":0,"hair_color_2":0,"bproof_2":0,"decals_1":0,"eyebrows_3":3,"pants_2":2,"glasses_1":-1,"mask_1":0,"arms":30,"bags_2":0,"beard_4":0,"decals_2":0,"pants_1":31,"torso_1":22,"age_2":0,"beard_3":0,"hair_color_1":0,"shoes_2":0,"makeup_2":0,"shoes_1":24,"helmet_2":0,"lipstick_1":0,"lipstick_3":1,"beard_2":0,"tshirt_1":130,"arms_2":0,"face":0}}]}'),
	(12860, 'property', 'steam:11000013ef761ce', '{"weapons":[],"dressing":[{"skin":{"watches_1":0,"makeup_1":0,"bags_2":0,"eyebrows_4":0,"helmet_1":-1,"lipstick_2":0,"arms":0,"decals_2":0,"torso_1":251,"hair_2":0,"bags_1":0,"torso_2":14,"glasses_1":2,"makeup_3":0,"hair_1":1,"age_2":0,"skin":8,"makeup_2":0,"beard_1":18,"glasses_2":0,"mask_2":0,"lipstick_1":0,"shoes_2":0,"decals_1":0,"eyebrows_2":0,"tshirt_1":15,"lipstick_4":0,"chain_1":0,"watches_2":0,"tshirt_2":0,"lipstick_3":0,"ears_1":-1,"hair_color_2":0,"beard_2":10,"beard_4":0,"sex":0,"face":0,"chain_2":0,"ears_2":0,"hair_color_1":0,"helmet_2":0,"eyebrows_1":0,"mask_1":0,"pants_2":14,"shoes_1":81,"pants_1":97,"bproof_1":0,"makeup_4":0,"age_1":0,"beard_3":0,"bproof_2":0,"eyebrows_3":0},"label":"bueno"},{"skin":{"watches_1":15,"makeup_1":0,"bags_2":0,"hair_color_1":0,"helmet_1":-1,"lipstick_2":0,"arms_2":0,"decals_2":0,"torso_1":205,"hair_2":0,"bags_1":0,"torso_2":0,"glasses_1":2,"makeup_3":0,"bracelets_2":0,"bracelets_1":0,"hair_1":1,"eyebrows_3":0,"skin":8,"sex":0,"makeup_2":0,"beard_1":18,"decals_1":0,"lipstick_1":0,"mask_1":0,"shoes_2":2,"tshirt_2":0,"eyebrows_2":0,"tshirt_1":15,"lipstick_4":0,"chain_1":2,"watches_2":0,"lipstick_3":0,"beard_2":10,"ears_1":-1,"hair_color_2":0,"pants_1":42,"glasses_2":0,"beard_4":0,"eyebrows_4":0,"chain_2":2,"mask_2":0,"ears_2":0,"helmet_2":0,"eyebrows_1":0,"bproof_1":0,"pants_2":5,"shoes_1":8,"face":0,"arms":15,"makeup_4":0,"age_1":0,"beard_3":0,"bproof_2":0,"age_2":0},"label":"ganster"},{"skin":{"watches_1":15,"makeup_1":0,"bags_2":0,"hair_color_1":0,"helmet_1":-1,"lipstick_2":0,"arms_2":0,"decals_2":0,"torso_1":205,"hair_2":0,"bags_1":0,"torso_2":0,"glasses_1":2,"makeup_3":0,"bracelets_2":0,"bracelets_1":0,"hair_1":1,"eyebrows_3":0,"skin":8,"sex":0,"makeup_2":0,"beard_1":18,"decals_1":0,"lipstick_1":0,"mask_1":0,"shoes_2":2,"tshirt_2":0,"eyebrows_2":0,"tshirt_1":15,"lipstick_4":0,"chain_1":2,"watches_2":0,"lipstick_3":0,"beard_2":10,"ears_1":-1,"hair_color_2":0,"pants_1":62,"glasses_2":0,"beard_4":0,"eyebrows_4":0,"chain_2":2,"mask_2":0,"ears_2":0,"helmet_2":0,"eyebrows_1":0,"bproof_1":0,"pants_2":0,"shoes_1":8,"face":0,"arms":15,"makeup_4":0,"age_1":0,"beard_3":0,"bproof_2":0,"age_2":0},"label":"aaaa"},{"skin":{"mask_1":55,"makeup_1":0,"ears_1":3,"hair_color_1":0,"helmet_1":-1,"lipstick_2":0,"arms_2":0,"decals_2":0,"glasses_2":0,"hair_2":0,"bags_1":0,"beard_2":10,"glasses_1":0,"makeup_3":0,"bracelets_2":0,"bracelets_1":0,"hair_1":1,"age_2":0,"skin":3,"age_1":0,"makeup_2":0,"beard_1":0,"torso_2":3,"ears_2":0,"decals_1":-1,"shoes_2":0,"tshirt_2":0,"eyebrows_2":0,"tshirt_1":131,"lipstick_4":0,"chain_1":0,"watches_2":0,"lipstick_3":0,"lipstick_1":0,"eyebrows_4":0,"beard_4":0,"eyebrows_3":0,"bproof_1":0,"face":0,"watches_1":15,"chain_2":0,"torso_1":139,"hair_color_2":0,"helmet_2":0,"eyebrows_1":0,"mask_2":0,"pants_2":0,"shoes_1":10,"pants_1":24,"bags_2":0,"makeup_4":0,"sex":0,"beard_3":0,"bproof_2":0,"arms":38},"label":"mafioso"}]}'),
	(12861, 'property', 'steam:1100001175f8a59', '{}'),
	(12862, 'property', 'steam:1100001494aad45', '{"dressing":[{"skin":{"chain_2":0,"makeup_4":0,"lipstick_3":0,"ears_2":0,"bproof_2":0,"decals_2":0,"skin":3,"torso_2":2,"beard_1":0,"pants_2":0,"beard_2":0,"bags_2":0,"arms":5,"makeup_2":0,"age_1":0,"bags_1":0,"lipstick_2":0,"lipstick_1":0,"eyebrows_3":0,"lipstick_4":0,"shoes_2":7,"tshirt_1":1,"ears_1":-1,"makeup_1":0,"helmet_2":0,"hair_1":6,"decals_1":0,"mask_1":0,"hair_2":0,"pants_1":103,"sex":0,"torso_1":141,"glasses_1":-1,"tshirt_2":0,"hair_color_2":0,"eyebrows_2":0,"mask_2":0,"glasses_2":0,"age_2":0,"eyebrows_1":0,"helmet_1":-1,"chain_1":0,"eyebrows_4":0,"hair_color_1":0,"face":2,"shoes_1":83,"beard_4":0,"beard_3":0,"bproof_1":0,"makeup_3":0},"label":"w"},{"skin":{"chain_2":0,"eyebrows_1":0,"lipstick_3":0,"ears_2":0,"bproof_2":0,"decals_2":0,"skin":3,"sex":0,"beard_1":0,"pants_2":0,"beard_2":0,"bags_2":0,"arms":12,"helmet_2":20,"age_1":0,"bags_1":45,"lipstick_2":0,"lipstick_1":0,"eyebrows_3":0,"lipstick_4":0,"beard_4":0,"shoes_2":15,"tshirt_1":73,"bracelets_2":0,"makeup_1":0,"bracelets_1":0,"mask_1":35,"hair_1":14,"decals_1":0,"ears_1":0,"hair_2":0,"pants_1":28,"torso_1":120,"torso_2":10,"glasses_1":5,"tshirt_2":1,"hair_color_2":0,"eyebrows_2":0,"mask_2":0,"glasses_2":0,"age_2":0,"makeup_4":0,"helmet_1":106,"chain_1":0,"makeup_3":0,"hair_color_1":0,"face":0,"shoes_1":10,"makeup_2":0,"beard_3":0,"bproof_1":0,"eyebrows_4":0},"label":"erffse"}],"weapons":[]}'),
	(12863, 'property', 'steam:11000014215f0fe', '{"dressing":[{"label":"normañ","skin":{"torso_2":0,"age_1":0,"eyebrows_2":0,"bproof_1":0,"makeup_1":0,"lipstick_1":0,"hair_color_1":0,"lipstick_2":0,"eyebrows_1":0,"beard_1":0,"beard_4":0,"skin":2,"makeup_3":0,"chain_1":0,"lipstick_3":0,"tshirt_1":15,"glasses_1":-1,"sex":0,"bags_2":0,"mask_2":0,"age_2":0,"makeup_2":0,"decals_1":0,"pants_2":0,"helmet_2":0,"pants_1":37,"lipstick_4":0,"ears_1":-1,"eyebrows_4":0,"ears_2":0,"torso_1":61,"tshirt_2":0,"shoes_2":0,"decals_2":0,"face":0,"hair_color_2":0,"bproof_2":0,"beard_2":0,"helmet_1":-1,"bags_1":0,"hair_1":8,"makeup_4":0,"chain_2":0,"arms":0,"hair_2":0,"mask_1":0,"shoes_1":7,"eyebrows_3":0,"glasses_2":0,"beard_3":0}},{"label":"admin","skin":{"torso_2":9,"age_1":0,"eyebrows_2":0,"bproof_1":0,"makeup_1":0,"lipstick_1":0,"hair_color_1":0,"lipstick_2":0,"eyebrows_1":0,"beard_1":0,"beard_4":0,"skin":2,"makeup_3":0,"chain_1":0,"lipstick_3":0,"tshirt_1":15,"glasses_1":-1,"sex":0,"bags_2":0,"mask_2":0,"age_2":0,"makeup_2":0,"decals_1":0,"pants_2":9,"helmet_2":0,"pants_1":77,"lipstick_4":0,"ears_1":-1,"eyebrows_4":0,"ears_2":0,"torso_1":178,"tshirt_2":0,"shoes_2":9,"decals_2":0,"face":0,"hair_color_2":0,"bproof_2":0,"beard_2":0,"helmet_1":-1,"bags_1":0,"hair_1":8,"makeup_4":0,"chain_2":0,"arms":0,"hair_2":0,"mask_1":0,"shoes_1":55,"eyebrows_3":0,"glasses_2":0,"beard_3":0}},{"label":"admin","skin":{"torso_2":8,"age_1":0,"eyebrows_2":0,"bproof_1":0,"makeup_1":0,"lipstick_1":0,"glasses_2":0,"lipstick_2":0,"eyebrows_1":0,"beard_1":0,"beard_4":0,"skin":3,"makeup_3":0,"hair_color_1":0,"lipstick_3":0,"tshirt_1":15,"glasses_1":-1,"sex":0,"age_2":0,"pants_1":54,"makeup_2":0,"mask_2":0,"decals_1":0,"pants_2":6,"helmet_2":9,"decals_2":0,"chain_1":0,"ears_1":-1,"lipstick_4":0,"ears_2":0,"torso_1":222,"bags_2":0,"shoes_2":7,"eyebrows_4":0,"face":0,"hair_color_2":0,"bproof_2":0,"beard_2":0,"helmet_1":-1,"bags_1":0,"hair_1":11,"chain_2":0,"shoes_1":55,"arms":6,"hair_2":0,"mask_1":0,"makeup_4":0,"tshirt_2":0,"eyebrows_3":0,"beard_3":0}},{"skin":{"torso_2":0,"age_1":0,"eyebrows_2":0,"bproof_1":2,"makeup_1":0,"lipstick_1":0,"glasses_2":0,"lipstick_2":0,"eyebrows_1":0,"beard_1":0,"beard_4":0,"skin":3,"makeup_3":0,"bags_2":0,"lipstick_3":0,"tshirt_1":122,"glasses_1":-1,"sex":0,"torso_1":53,"decals_2":0,"mask_2":0,"age_2":0,"decals_1":0,"pants_2":0,"helmet_2":0,"chain_1":112,"ears_1":2,"lipstick_4":0,"makeup_2":0,"ears_2":0,"pants_1":31,"tshirt_2":24,"shoes_2":0,"eyebrows_4":0,"face":0,"hair_color_2":0,"bproof_2":0,"beard_2":0,"helmet_1":83,"bags_1":0,"hair_1":11,"hair_color_1":0,"chain_2":2,"arms":41,"hair_2":0,"mask_1":51,"shoes_1":25,"eyebrows_3":0,"makeup_4":0,"beard_3":0}},{"label":"mafia","skin":{"torso_2":1,"age_1":0,"eyebrows_2":0,"bproof_1":0,"makeup_1":0,"lipstick_1":0,"glasses_2":0,"lipstick_2":0,"eyebrows_1":0,"beard_1":0,"beard_4":0,"skin":3,"makeup_3":0,"hair_color_1":0,"lipstick_3":0,"tshirt_1":32,"glasses_1":-1,"sex":0,"pants_1":28,"age_2":0,"decals_2":0,"mask_2":0,"decals_1":0,"pants_2":6,"helmet_2":0,"ears_1":-1,"chain_1":0,"chain_2":0,"lipstick_4":0,"ears_2":0,"torso_1":32,"bags_2":0,"shoes_2":4,"eyebrows_4":0,"face":0,"hair_color_2":0,"bproof_2":0,"hair_2":0,"helmet_1":-1,"bags_1":0,"hair_1":11,"makeup_2":0,"shoes_1":10,"arms":0,"beard_2":0,"mask_1":0,"makeup_4":0,"tshirt_2":0,"eyebrows_3":0,"beard_3":0}},{"label":"formal","skin":{"torso_2":5,"age_1":0,"eyebrows_2":0,"bproof_1":0,"lipstick_4":0,"lipstick_1":0,"hair_color_1":0,"lipstick_2":0,"eyebrows_1":0,"beard_1":0,"beard_4":0,"skin":3,"makeup_3":0,"eyebrows_4":0,"lipstick_3":0,"tshirt_1":12,"glasses_1":-1,"sex":0,"hair_2":0,"chain_2":0,"makeup_4":0,"mask_2":0,"decals_1":0,"pants_2":2,"helmet_2":0,"tshirt_2":0,"chain_1":0,"pants_1":105,"eyebrows_3":0,"ears_2":0,"torso_1":192,"bags_2":0,"shoes_2":0,"ears_1":-1,"face":0,"hair_color_2":0,"bproof_2":0,"makeup_1":0,"helmet_1":-1,"bags_1":0,"hair_1":11,"age_2":0,"decals_2":0,"arms":0,"beard_2":0,"mask_1":0,"shoes_1":7,"makeup_2":0,"glasses_2":0,"beard_3":0}}]}'),
	(12864, 'property', 'steam:11000014a1bb0c4', '{"dressing":[{"label":"POLI CALVO","skin":{"pants_2":0,"bproof_1":0,"glasses_1":-1,"helmet_2":0,"hair_2":0,"makeup_1":0,"bracelets_1":0,"tshirt_1":58,"hair_1":0,"hair_color_2":0,"beard_3":0,"lipstick_3":0,"ears_2":0,"torso_1":13,"age_2":0,"arms":0,"bracelets_2":0,"makeup_4":0,"face":0,"decals_1":0,"helmet_1":-1,"bags_2":0,"lipstick_4":0,"eyebrows_2":0,"decals_2":0,"beard_4":0,"lipstick_2":0,"glasses_2":0,"pants_1":31,"chain_1":125,"mask_1":0,"hair_color_1":0,"eyebrows_4":0,"bproof_2":0,"beard_1":0,"lipstick_1":0,"chain_2":0,"mask_2":0,"age_1":0,"tshirt_2":0,"eyebrows_1":0,"torso_2":0,"sex":0,"eyebrows_3":0,"skin":0,"makeup_2":0,"shoes_1":25,"bags_1":0,"ears_1":-1,"shoes_2":0,"beard_2":0,"makeup_3":0}}]}'),
	(12865, 'property', 'steam:110000143cd279b', '{"dressing":[{"skin":{"chain_2":0,"eyebrows_1":0,"lipstick_3":0,"ears_2":0,"bproof_2":0,"hair_color_1":0,"skin":0,"torso_2":0,"beard_1":0,"pants_2":0,"beard_2":0,"bags_2":0,"arms":0,"makeup_2":0,"age_1":0,"bags_1":0,"lipstick_2":0,"lipstick_1":0,"eyebrows_3":0,"lipstick_4":0,"shoes_2":0,"tshirt_1":58,"ears_1":-1,"makeup_1":0,"decals_2":0,"hair_1":0,"decals_1":0,"mask_1":0,"hair_2":0,"pants_1":31,"helmet_2":0,"beard_4":0,"glasses_1":-1,"torso_1":13,"hair_color_2":0,"eyebrows_2":0,"mask_2":0,"glasses_2":0,"age_2":0,"makeup_4":0,"helmet_1":-1,"chain_1":125,"makeup_3":0,"tshirt_2":0,"face":0,"shoes_1":25,"sex":0,"beard_3":0,"bproof_1":0,"eyebrows_4":0},"label":"clavopoli"},{"skin":{"chain_2":0,"eyebrows_1":0,"lipstick_3":0,"ears_2":0,"bproof_2":0,"hair_color_1":4,"skin":3,"torso_2":12,"beard_1":0,"pants_2":0,"beard_2":0,"bags_2":0,"arms":4,"makeup_2":0,"age_1":0,"bags_1":0,"lipstick_2":0,"lipstick_1":0,"eyebrows_3":0,"lipstick_4":0,"shoes_2":1,"tshirt_1":23,"ears_1":-1,"makeup_1":0,"decals_2":0,"hair_1":21,"decals_1":37,"mask_1":51,"hair_2":0,"pants_1":11,"helmet_2":0,"beard_4":0,"glasses_1":-1,"torso_1":222,"hair_color_2":0,"eyebrows_2":0,"mask_2":9,"glasses_2":0,"age_2":0,"makeup_4":0,"helmet_1":-1,"chain_1":0,"makeup_3":0,"tshirt_2":0,"face":0,"shoes_1":7,"sex":0,"beard_3":0,"bproof_1":0,"eyebrows_4":0},"label":"vacaAdministradora"},{"skin":{"chain_2":0,"eyebrows_1":0,"lipstick_3":0,"ears_2":0,"bproof_2":0,"hair_color_1":4,"skin":3,"torso_2":6,"beard_1":0,"pants_2":12,"beard_2":0,"bags_2":0,"arms":2,"makeup_2":0,"age_1":0,"bags_1":0,"lipstick_2":0,"lipstick_1":0,"eyebrows_3":0,"lipstick_4":0,"shoes_2":10,"tshirt_1":15,"ears_1":-1,"makeup_1":0,"decals_2":0,"mask_1":0,"hair_1":21,"decals_1":0,"helmet_2":0,"hair_2":0,"pants_1":2,"beard_4":0,"torso_1":2,"glasses_1":-1,"makeup_4":0,"hair_color_2":0,"eyebrows_2":0,"mask_2":0,"glasses_2":0,"age_2":0,"arms_2":0,"helmet_1":-1,"tshirt_2":0,"makeup_3":0,"eyebrows_4":0,"face":0,"shoes_1":7,"chain_1":0,"beard_3":0,"bproof_1":0,"sex":0},"label":"lol"},{"skin":{"chain_2":0,"makeup_4":0,"lipstick_3":0,"ears_2":0,"chain_1":0,"hair_color_1":4,"skin":3,"torso_2":0,"beard_1":0,"pants_2":0,"beard_2":0,"bags_2":0,"arms":2,"makeup_2":0,"age_1":0,"bags_1":0,"lipstick_2":0,"lipstick_1":0,"eyebrows_3":0,"lipstick_4":0,"shoes_2":0,"tshirt_1":15,"ears_1":-1,"makeup_1":0,"helmet_2":0,"mask_1":0,"hair_1":21,"decals_1":0,"decals_2":0,"hair_2":0,"pants_1":33,"torso_1":50,"bproof_2":0,"glasses_1":-1,"eyebrows_1":0,"hair_color_2":0,"eyebrows_2":0,"beard_4":0,"glasses_2":0,"age_2":0,"arms_2":0,"helmet_1":-1,"tshirt_2":0,"eyebrows_4":0,"mask_2":0,"face":0,"shoes_1":25,"sex":0,"beard_3":0,"bproof_1":0,"makeup_3":0},"label":"COMISARIO"},{"skin":{"chain_2":0,"eyebrows_1":0,"lipstick_3":0,"ears_2":0,"bproof_2":0,"hair_color_1":4,"skin":3,"sex":6,"beard_1":0,"pants_2":0,"beard_2":0,"bags_2":0,"arms":3,"makeup_2":0,"age_1":0,"bags_1":0,"lipstick_2":0,"lipstick_1":0,"eyebrows_3":0,"lipstick_4":0,"shoes_2":12,"tshirt_1":15,"ears_1":-1,"makeup_1":0,"beard_4":0,"mask_1":14,"hair_1":21,"decals_1":37,"makeup_4":0,"hair_2":0,"pants_1":95,"torso_1":246,"tshirt_2":0,"glasses_1":-1,"torso_2":0,"hair_color_2":0,"eyebrows_2":0,"mask_2":0,"glasses_2":0,"age_2":0,"arms_2":0,"helmet_1":-1,"helmet_2":0,"makeup_3":0,"chain_1":0,"face":0,"shoes_1":7,"decals_2":0,"beard_3":0,"bproof_1":0,"eyebrows_4":0},"label":"dmin"},{"skin":{"chain_2":0,"eyebrows_1":0,"lipstick_3":0,"ears_2":0,"bproof_2":-1,"hair_color_1":4,"skin":5,"sex":0,"beard_1":0,"pants_2":3,"beard_2":0,"bags_2":0,"helmet_2":5,"age_1":0,"bags_1":0,"lipstick_2":0,"lipstick_1":0,"eyebrows_3":0,"lipstick_4":0,"shoes_2":1,"tshirt_1":15,"ears_1":-1,"makeup_1":0,"torso_2":0,"mask_1":51,"hair_1":39,"decals_1":0,"mask_2":3,"hair_2":0,"pants_1":59,"torso_1":182,"makeup_4":0,"glasses_1":-1,"decals_2":0,"hair_color_2":0,"eyebrows_2":0,"beard_4":0,"glasses_2":0,"age_2":0,"arms_2":0,"helmet_1":9,"tshirt_2":0,"makeup_3":0,"chain_1":0,"face":0,"shoes_1":6,"makeup_2":0,"beard_3":0,"bproof_1":0,"eyebrows_4":0},"label":"osa"},{"skin":{"chain_2":0,"eyebrows_1":0,"lipstick_3":0,"ears_2":0,"bproof_2":0,"hair_color_1":4,"skin":5,"sex":0,"beard_1":0,"pants_2":0,"beard_2":0,"bags_2":0,"arms":4,"helmet_2":0,"age_1":0,"bags_1":0,"lipstick_2":0,"lipstick_1":0,"eyebrows_3":0,"lipstick_4":0,"shoes_2":3,"tshirt_1":15,"ears_1":-1,"makeup_1":0,"torso_2":3,"mask_1":57,"hair_1":39,"decals_1":37,"mask_2":0,"hair_2":0,"pants_1":3,"torso_1":111,"makeup_4":0,"glasses_1":5,"decals_2":0,"hair_color_2":0,"eyebrows_2":0,"beard_4":0,"glasses_2":0,"age_2":0,"arms_2":0,"helmet_1":-1,"tshirt_2":0,"makeup_3":0,"eyebrows_4":0,"face":0,"shoes_1":7,"chain_1":0,"beard_3":0,"bproof_1":0,"makeup_2":0},"label":"subcomisario"},{"skin":{"chain_2":2,"eyebrows_1":0,"lipstick_3":0,"ears_2":0,"bproof_2":0,"hair_color_1":4,"skin":5,"torso_2":0,"beard_1":0,"pants_2":0,"beard_2":0,"bags_2":0,"arms":4,"helmet_2":0,"age_1":0,"bags_1":0,"lipstick_2":0,"lipstick_1":0,"eyebrows_3":0,"lipstick_4":0,"shoes_2":0,"tshirt_1":15,"ears_1":-1,"makeup_1":0,"makeup_4":0,"mask_1":57,"hair_1":39,"decals_1":37,"tshirt_2":0,"hair_2":0,"pants_1":31,"torso_1":53,"eyebrows_4":0,"glasses_1":5,"mask_2":0,"hair_color_2":0,"eyebrows_2":0,"beard_4":0,"glasses_2":0,"age_2":0,"arms_2":0,"helmet_1":83,"chain_1":112,"makeup_3":0,"decals_2":0,"face":0,"shoes_1":25,"sex":0,"beard_3":0,"bproof_1":2,"makeup_2":0},"label":"geo"},{"skin":{"chain_2":0,"eyebrows_1":0,"lipstick_3":0,"ears_2":0,"bproof_2":0,"hair_color_1":4,"skin":5,"sex":0,"beard_1":0,"pants_2":0,"beard_2":0,"bags_2":0,"arms":4,"makeup_2":0,"age_1":0,"bags_1":0,"lipstick_2":0,"lipstick_1":0,"eyebrows_3":0,"lipstick_4":0,"shoes_2":3,"tshirt_1":15,"ears_1":-1,"makeup_1":0,"helmet_2":0,"mask_1":57,"hair_1":39,"decals_1":37,"torso_2":3,"hair_2":0,"pants_1":3,"torso_1":111,"makeup_4":0,"glasses_1":5,"decals_2":0,"hair_color_2":0,"eyebrows_2":0,"beard_4":0,"glasses_2":0,"age_2":0,"arms_2":0,"helmet_1":87,"tshirt_2":0,"makeup_3":0,"mask_2":0,"face":0,"shoes_1":7,"chain_1":0,"beard_3":0,"bproof_1":2,"eyebrows_4":0},"label":"subcomisario de verada"},{"skin":{"chain_2":0,"eyebrows_1":0,"lipstick_3":0,"ears_2":0,"bproof_2":0,"hair_color_1":26,"skin":5,"sex":0,"beard_1":0,"pants_2":9,"beard_2":0,"bags_2":2,"arms":2,"makeup_2":0,"age_1":0,"bags_1":53,"lipstick_2":0,"lipstick_1":0,"eyebrows_3":0,"lipstick_4":0,"shoes_2":1,"tshirt_1":2,"ears_1":-1,"makeup_1":0,"helmet_2":0,"mask_1":51,"hair_1":12,"decals_1":0,"decals_2":0,"hair_2":0,"pants_1":97,"torso_1":207,"makeup_4":0,"glasses_1":-1,"beard_4":0,"hair_color_2":13,"eyebrows_2":0,"mask_2":9,"glasses_2":0,"age_2":0,"arms_2":0,"helmet_1":-1,"tshirt_2":12,"makeup_3":0,"eyebrows_4":0,"face":0,"shoes_1":7,"chain_1":0,"beard_3":0,"bproof_1":0,"torso_2":22},"label":"PURPLE ICE"},{"skin":{"chain_2":53,"eyebrows_1":0,"lipstick_3":12,"ears_2":0,"bproof_2":2,"hair_color_1":4,"skin":5,"sex":0,"beard_1":0,"pants_2":9,"beard_2":0,"bags_2":0,"arms":12,"makeup_2":0,"age_1":0,"bags_1":45,"lipstick_2":0,"lipstick_1":0,"eyebrows_3":0,"lipstick_4":20,"shoes_2":3,"tshirt_1":15,"ears_1":0,"makeup_1":0,"mask_2":3,"mask_1":51,"hair_1":21,"decals_1":-1,"makeup_4":0,"hair_2":0,"pants_1":59,"torso_1":139,"tshirt_2":0,"glasses_1":-1,"torso_2":3,"hair_color_2":0,"eyebrows_2":0,"beard_4":0,"glasses_2":0,"age_2":0,"arms_2":0,"helmet_1":9,"decals_2":0,"makeup_3":0,"chain_1":0,"face":0,"shoes_1":7,"eyebrows_4":0,"beard_3":0,"bproof_1":16,"helmet_2":1},"label":"mafia"},{"skin":{"chain_2":45,"makeup_4":0,"lipstick_3":12,"ears_2":0,"bproof_2":2,"hair_color_1":4,"skin":5,"torso_2":3,"beard_1":0,"pants_2":9,"beard_2":0,"bags_2":0,"arms":12,"makeup_2":0,"age_1":0,"bags_1":45,"lipstick_2":0,"lipstick_1":0,"eyebrows_3":0,"lipstick_4":20,"shoes_2":0,"tshirt_1":15,"ears_1":0,"makeup_1":0,"decals_2":0,"mask_1":95,"hair_1":21,"decals_1":-1,"eyebrows_1":0,"hair_2":0,"pants_1":59,"torso_1":139,"tshirt_2":0,"glasses_1":-1,"beard_4":0,"hair_color_2":0,"eyebrows_2":0,"mask_2":0,"glasses_2":0,"age_2":0,"arms_2":0,"helmet_1":-1,"chain_1":0,"makeup_3":0,"eyebrows_4":0,"face":0,"shoes_1":7,"sex":0,"beard_3":0,"bproof_1":16,"helmet_2":0},"label":"mafia re facha"},{"skin":{"chain_2":23,"makeup_4":0,"lipstick_3":12,"ears_2":0,"bproof_2":2,"hair_color_1":4,"skin":5,"torso_2":10,"beard_1":0,"pants_2":0,"beard_2":0,"bags_2":1,"arms":12,"makeup_2":0,"age_1":0,"bags_1":0,"lipstick_2":0,"lipstick_1":0,"eyebrows_3":0,"lipstick_4":20,"shoes_2":15,"tshirt_1":70,"ears_1":0,"makeup_1":0,"decals_2":0,"mask_1":35,"hair_1":21,"decals_1":-1,"eyebrows_1":0,"hair_2":0,"pants_1":28,"torso_1":120,"tshirt_2":0,"glasses_1":5,"beard_4":0,"hair_color_2":0,"eyebrows_2":0,"mask_2":0,"glasses_2":0,"age_2":0,"arms_2":0,"helmet_1":106,"chain_1":0,"makeup_3":0,"sex":0,"face":0,"shoes_1":10,"eyebrows_4":0,"beard_3":0,"bproof_1":0,"helmet_2":20},"label":"mafia re fachear2"},{"skin":{"chain_2":53,"eyebrows_1":0,"lipstick_3":12,"ears_2":0,"bproof_2":1,"hair_color_1":4,"skin":5,"torso_2":2,"beard_1":0,"pants_2":3,"beard_2":0,"bags_2":3,"arms":12,"makeup_2":0,"age_1":0,"bags_1":0,"lipstick_2":0,"lipstick_1":0,"eyebrows_3":0,"lipstick_4":20,"shoes_2":0,"tshirt_1":15,"ears_1":0,"makeup_1":0,"decals_2":0,"mask_1":51,"hair_1":21,"decals_1":-1,"helmet_2":1,"hair_2":0,"pants_1":31,"makeup_3":0,"torso_1":111,"glasses_1":-1,"tshirt_2":0,"hair_color_2":0,"eyebrows_2":0,"mask_2":3,"glasses_2":0,"age_2":0,"arms_2":0,"helmet_1":9,"beard_4":0,"eyebrows_4":0,"makeup_4":0,"face":0,"shoes_1":25,"chain_1":0,"beard_3":0,"bproof_1":4,"sex":0},"label":"mafia4"}],"weapons":[{"ammo":234,"name":"WEAPON_SMG"},{"ammo":500,"name":"WEAPON_PISTOL50"},{"ammo":500,"name":"WEAPON_HEAVYPISTOL"}]}'),
	(12866, 'property', 'steam:110000145f2e1d8', '{}'),
	(12867, 'property', 'steam:11000011c9da99a', '{}'),
	(12868, 'property', 'steam:11000014807d2be', '{}'),
	(12869, 'property', 'steam:11000012eab7fed', '{}'),
	(12870, 'property', 'steam:1100001489ca7d9', '{}'),
	(12871, 'property', 'steam:11000014a16d9bc', '{}'),
	(12872, 'property', 'steam:11000013f49e1da', '{}'),
	(12873, 'property', 'steam:11000013d388516', '{}'),
	(12874, 'property', 'steam:11000011a796606', '{"dressing":[{"skin":{"hair_color_1":0,"face":0,"glasses_2":0,"bproof_1":0,"bags_2":0,"sex":0,"hair_1":12,"lipstick_3":0,"watches_1":30,"tshirt_1":15,"beard_3":0,"makeup_1":0,"lipstick_1":5,"lipstick_4":-1,"hair_2":0,"decals_2":0,"hair_color_2":16,"pants_1":2,"makeup_2":-1,"helmet_2":5,"shoes_1":7,"age_1":0,"eyebrows_1":12,"tshirt_2":0,"eyebrows_3":1,"bproof_2":0,"arms":5,"bags_1":0,"age_2":0,"shoes_2":3,"makeup_4":0,"beard_1":0,"eyebrows_2":10,"torso_1":2,"makeup_3":0,"chain_2":0,"beard_2":0,"lipstick_2":0,"ears_2":0,"watches_2":0,"pants_2":3,"ears_1":0,"glasses_1":-1,"helmet_1":9,"decals_1":0,"eyebrows_4":0,"chain_1":91,"beard_4":0,"skin":3,"torso_2":3},"label":"ns y,lñsd"},{"skin":{"hair_color_1":0,"face":0,"glasses_2":0,"bproof_1":0,"bags_2":0,"sex":0,"hair_1":12,"lipstick_3":0,"watches_1":30,"makeup_2":-1,"tshirt_1":31,"helmet_2":5,"beard_3":0,"makeup_1":0,"lipstick_1":5,"lipstick_4":-1,"hair_2":0,"decals_2":0,"arms_2":0,"hair_color_2":16,"pants_1":24,"eyebrows_3":1,"watches_2":0,"shoes_1":21,"age_1":0,"eyebrows_1":12,"mask_1":0,"arms":24,"age_2":0,"bproof_2":0,"bags_1":0,"lipstick_2":0,"glasses_1":-1,"makeup_4":0,"beard_1":0,"eyebrows_2":10,"tshirt_2":0,"chain_2":0,"torso_1":31,"makeup_3":0,"beard_2":0,"mask_2":0,"shoes_2":0,"pants_2":5,"ears_1":0,"ears_2":0,"chain_1":0,"decals_1":0,"eyebrows_4":0,"helmet_1":9,"beard_4":0,"skin":3,"torso_2":5}},{"skin":{"hair_color_1":0,"face":0,"ears_2":0,"bproof_1":0,"bags_2":0,"sex":0,"hair_1":12,"lipstick_3":0,"watches_1":30,"makeup_2":-1,"tshirt_1":31,"helmet_2":5,"beard_3":0,"makeup_1":0,"lipstick_1":5,"lipstick_4":-1,"hair_2":0,"decals_2":0,"arms_2":0,"hair_color_2":16,"pants_1":24,"eyebrows_3":1,"tshirt_2":0,"beard_2":0,"arms":24,"eyebrows_1":12,"mask_1":0,"glasses_1":-1,"bproof_2":0,"watches_2":0,"bags_1":0,"shoes_2":0,"age_1":0,"makeup_4":0,"beard_1":0,"eyebrows_2":10,"chain_1":0,"chain_2":0,"torso_1":31,"makeup_3":0,"helmet_1":-1,"mask_2":0,"age_2":0,"pants_2":5,"ears_1":0,"lipstick_2":0,"glasses_2":0,"decals_1":0,"eyebrows_4":0,"shoes_1":21,"beard_4":0,"skin":3,"torso_2":5},"label":"a"},{"skin":{"hair_color_1":7,"face":0,"glasses_2":0,"bproof_1":0,"bags_2":0,"sex":0,"makeup_2":0,"hair_1":21,"helmet_2":5,"lipstick_3":0,"watches_1":30,"arms_2":0,"tshirt_1":132,"eyebrows_3":0,"beard_3":0,"makeup_1":0,"lipstick_1":5,"lipstick_4":-1,"helmet_1":-1,"decals_2":0,"age_2":0,"hair_color_2":0,"pants_1":12,"bproof_2":0,"bracelets_1":0,"beard_2":10,"age_1":0,"eyebrows_1":12,"mask_1":0,"shoes_2":1,"shoes_1":31,"arms":0,"bags_1":0,"chain_2":0,"torso_1":123,"makeup_4":0,"beard_1":3,"eyebrows_2":10,"makeup_3":0,"tshirt_2":0,"mask_2":0,"lipstick_2":0,"ears_2":0,"chain_1":0,"watches_2":0,"pants_2":0,"ears_1":-1,"glasses_1":-1,"bracelets_2":11,"decals_1":0,"eyebrows_4":0,"hair_2":4,"beard_4":0,"skin":3,"torso_2":2},"label":"adri v3r"},{"skin":{"hair_color_1":7,"face":0,"glasses_2":0,"glasses_1":-1,"bags_2":0,"sex":0,"makeup_2":0,"hair_1":21,"helmet_2":5,"lipstick_3":0,"watches_1":26,"arms_2":0,"tshirt_1":2,"eyebrows_3":0,"beard_3":0,"makeup_1":0,"lipstick_1":5,"lipstick_4":-1,"helmet_1":-1,"decals_2":0,"tshirt_2":20,"hair_color_2":0,"pants_1":2,"age_2":0,"bracelets_1":0,"beard_2":10,"age_1":0,"eyebrows_1":12,"mask_1":0,"bproof_2":0,"shoes_2":10,"chain_1":0,"bags_1":0,"arms":2,"chain_2":0,"makeup_4":0,"beard_1":3,"eyebrows_2":10,"torso_1":2,"makeup_3":0,"shoes_1":57,"mask_2":0,"lipstick_2":0,"ears_2":0,"watches_2":0,"pants_2":9,"ears_1":-1,"hair_2":4,"bracelets_2":11,"decals_1":0,"eyebrows_4":0,"bproof_1":0,"beard_4":0,"skin":3,"torso_2":3},"label":"baquet"},{"skin":{"hair_color_1":7,"face":0,"ears_2":0,"bproof_1":0,"bags_2":0,"sex":0,"makeup_2":0,"hair_1":21,"helmet_2":1,"lipstick_3":0,"watches_1":30,"arms_2":0,"tshirt_1":31,"eyebrows_3":0,"beard_3":0,"makeup_1":0,"lipstick_1":5,"lipstick_4":-1,"hair_2":4,"decals_2":0,"eyebrows_4":0,"hair_color_2":0,"pants_1":24,"glasses_1":8,"bracelets_1":0,"beard_2":10,"arms":24,"eyebrows_1":12,"mask_1":104,"age_2":0,"shoes_2":0,"tshirt_2":0,"bproof_2":0,"bags_1":0,"chain_2":0,"makeup_4":0,"beard_1":3,"eyebrows_2":10,"torso_1":31,"makeup_3":0,"shoes_1":21,"glasses_2":6,"mask_2":25,"age_1":0,"watches_2":0,"pants_2":5,"ears_1":0,"lipstick_2":0,"bracelets_2":11,"decals_1":0,"chain_1":0,"helmet_1":12,"beard_4":0,"skin":3,"torso_2":5},"label":"mafia"},{"skin":{"helmet_2":1,"face":0,"ears_2":0,"bproof_1":0,"bags_2":0,"sex":0,"makeup_2":0,"hair_1":21,"helmet_1":12,"lipstick_3":0,"arms_2":0,"tshirt_2":0,"tshirt_1":31,"eyebrows_4":0,"chain_2":0,"makeup_1":0,"lipstick_1":5,"lipstick_4":-1,"hair_2":4,"decals_2":0,"eyebrows_3":0,"hair_color_2":0,"pants_1":24,"watches_1":30,"bracelets_1":0,"mask_2":0,"age_1":0,"eyebrows_1":12,"mask_1":52,"glasses_1":-1,"shoes_2":0,"age_2":0,"bags_1":0,"glasses_2":0,"bproof_2":0,"makeup_4":0,"beard_1":3,"eyebrows_2":10,"arms":24,"torso_1":31,"makeup_3":0,"hair_color_1":7,"lipstick_2":0,"beard_3":0,"watches_2":0,"pants_2":5,"ears_1":0,"beard_2":10,"bracelets_2":11,"decals_1":0,"chain_1":0,"shoes_1":21,"beard_4":0,"skin":3,"torso_2":5},"label":"tu casa V villa"}]}'),
	(12875, 'property', 'steam:11000014311cd15', '{"dressing":[{"skin":{"mask_1":101,"makeup_1":0,"ears_1":-1,"hair_color_1":10,"helmet_1":-1,"lipstick_2":0,"arms_2":0,"decals_2":0,"torso_1":22,"hair_2":0,"bags_1":0,"beard_2":0,"glasses_1":5,"makeup_3":0,"hair_1":21,"age_2":0,"skin":0,"makeup_2":0,"beard_1":0,"mask_2":9,"decals_1":0,"shoes_2":0,"lipstick_1":0,"bproof_1":0,"tshirt_1":131,"lipstick_4":0,"chain_1":0,"beard_4":0,"lipstick_3":0,"eyebrows_3":0,"glasses_2":2,"hair_color_2":0,"age_1":0,"face":8,"tshirt_2":0,"bags_2":0,"chain_2":0,"eyebrows_2":0,"ears_2":0,"helmet_2":0,"eyebrows_1":0,"torso_2":0,"pants_2":2,"shoes_1":8,"pants_1":4,"eyebrows_4":0,"makeup_4":0,"sex":0,"beard_3":0,"bproof_2":-1,"arms":41},"label":"subinspector"},{"skin":{"mask_1":101,"makeup_1":0,"bags_2":0,"hair_color_1":10,"helmet_1":-1,"lipstick_2":0,"arms_2":0,"decals_2":0,"glasses_2":2,"hair_2":0,"bags_1":0,"torso_2":0,"glasses_1":5,"makeup_3":0,"hair_1":21,"eyebrows_3":0,"skin":0,"makeup_2":0,"beard_1":0,"mask_2":9,"decals_1":0,"shoes_2":0,"lipstick_1":0,"bproof_1":0,"tshirt_1":72,"lipstick_4":0,"chain_1":125,"beard_4":0,"lipstick_3":0,"beard_2":0,"ears_1":-1,"hair_color_2":0,"torso_1":35,"age_1":0,"face":8,"tshirt_2":3,"chain_2":0,"age_2":0,"eyebrows_2":0,"helmet_2":0,"eyebrows_1":0,"ears_2":0,"pants_2":0,"shoes_1":7,"pants_1":24,"eyebrows_4":0,"makeup_4":0,"sex":0,"beard_3":0,"bproof_2":-1,"arms":31},"label":"sub wapo"},{"skin":{"mask_1":101,"makeup_1":0,"ears_1":-1,"hair_color_1":10,"helmet_1":-1,"lipstick_2":0,"arms":42,"decals_2":0,"torso_1":139,"hair_2":0,"bags_1":0,"torso_2":3,"glasses_1":5,"makeup_3":0,"bracelets_2":0,"bracelets_1":4,"hair_1":21,"eyebrows_3":0,"skin":0,"makeup_2":0,"beard_1":0,"lipstick_1":0,"decals_1":0,"shoes_2":0,"tshirt_2":0,"eyebrows_2":0,"tshirt_1":124,"lipstick_4":0,"chain_1":125,"lipstick_3":0,"ears_2":0,"arms_2":0,"age_1":0,"hair_color_2":0,"glasses_2":2,"beard_2":0,"face":8,"beard_4":0,"chain_2":0,"bags_2":0,"mask_2":9,"helmet_2":0,"eyebrows_1":0,"age_2":0,"pants_2":2,"shoes_1":8,"pants_1":4,"bproof_1":0,"makeup_4":0,"sex":0,"beard_3":0,"bproof_2":-1,"eyebrows_4":0},"label":"poli wapo"},{"skin":{"mask_1":101,"makeup_1":0,"ears_1":-1,"hair_color_1":10,"helmet_1":83,"lipstick_2":0,"arms":17,"decals_2":0,"torso_1":53,"hair_2":0,"bags_1":0,"torso_2":0,"glasses_1":5,"makeup_3":0,"bracelets_2":0,"bracelets_1":4,"hair_1":21,"eyebrows_3":0,"skin":0,"makeup_2":0,"beard_1":0,"mask_2":9,"glasses_2":2,"shoes_2":0,"beard_2":0,"bproof_1":0,"tshirt_1":2,"lipstick_4":0,"chain_1":112,"decals_1":0,"beard_4":0,"lipstick_3":0,"arms_2":0,"hair_color_2":0,"lipstick_1":0,"age_1":0,"face":8,"bags_2":0,"chain_2":2,"eyebrows_2":0,"ears_2":0,"helmet_2":0,"eyebrows_1":0,"tshirt_2":0,"pants_2":0,"shoes_1":25,"pants_1":31,"eyebrows_4":0,"makeup_4":0,"sex":0,"beard_3":0,"bproof_2":-1,"age_2":0},"label":"G.E.O"},{"skin":{"mask_1":101,"makeup_1":0,"ears_1":-1,"hair_color_1":10,"helmet_1":83,"lipstick_2":0,"arms":17,"decals_2":0,"glasses_2":2,"hair_2":0,"bags_1":0,"torso_2":0,"glasses_1":5,"makeup_3":0,"bracelets_2":0,"bracelets_1":4,"hair_1":21,"age_2":0,"skin":0,"makeup_2":0,"beard_1":0,"mask_2":9,"decals_1":0,"shoes_2":0,"beard_4":0,"bproof_1":2,"tshirt_1":15,"lipstick_4":0,"chain_1":112,"lipstick_3":0,"arms_2":0,"eyebrows_3":0,"age_1":0,"hair_color_2":0,"beard_2":0,"face":8,"tshirt_2":0,"eyebrows_4":0,"chain_2":2,"eyebrows_2":0,"ears_2":0,"helmet_2":0,"eyebrows_1":0,"bags_2":0,"pants_2":0,"shoes_1":25,"pants_1":31,"lipstick_1":0,"makeup_4":0,"sex":0,"beard_3":0,"bproof_2":0,"torso_1":53},"label":"geo bueno"},{"skin":{"mask_1":101,"makeup_1":0,"ears_1":-1,"hair_color_1":10,"helmet_1":83,"lipstick_2":0,"arms_2":0,"decals_2":0,"torso_1":178,"hair_2":0,"bags_1":0,"torso_2":8,"glasses_1":5,"makeup_3":0,"bracelets_2":0,"bracelets_1":4,"hair_1":21,"age_2":0,"skin":0,"makeup_2":0,"beard_1":0,"lipstick_1":0,"glasses_2":2,"shoes_2":9,"decals_1":0,"bproof_1":0,"tshirt_1":15,"lipstick_4":0,"chain_1":17,"eyebrows_3":0,"beard_4":0,"lipstick_3":0,"age_1":0,"hair_color_2":0,"mask_2":9,"beard_2":0,"face":8,"eyebrows_4":0,"chain_2":1,"eyebrows_2":0,"ears_2":0,"helmet_2":0,"eyebrows_1":0,"bags_2":0,"pants_2":9,"shoes_1":55,"pants_1":77,"tshirt_2":0,"makeup_4":0,"sex":0,"beard_3":0,"bproof_2":0,"arms":17},"label":"admin"},{"skin":{"mask_1":101,"makeup_1":0,"bags_2":0,"eyebrows_4":0,"helmet_1":-1,"lipstick_2":0,"arms_2":0,"decals_2":0,"glasses_2":2,"hair_2":0,"bags_1":0,"beard_2":0,"glasses_1":5,"makeup_3":0,"bracelets_2":0,"bracelets_1":0,"hair_1":21,"eyebrows_3":0,"skin":0,"makeup_2":0,"beard_1":0,"lipstick_1":0,"torso_1":29,"shoes_2":0,"torso_2":0,"eyebrows_2":0,"tshirt_1":31,"lipstick_4":0,"chain_1":12,"decals_1":0,"age_2":0,"tshirt_2":0,"lipstick_3":0,"hair_color_2":0,"ears_1":-1,"ears_2":0,"bproof_1":0,"beard_4":0,"chain_2":2,"face":8,"mask_2":9,"helmet_2":0,"eyebrows_1":0,"hair_color_1":10,"pants_2":0,"shoes_1":10,"pants_1":28,"arms":27,"makeup_4":0,"age_1":0,"beard_3":0,"bproof_2":0,"sex":0},"label":"CNI"}]}'),
	(12876, 'property', 'steam:11000014774e6e6', '{}'),
	(12877, 'property', 'steam:11000014271ddf7', '{}'),
	(12878, 'property', 'steam:110000141656315', '{}'),
	(12879, 'property', 'steam:110000147a863fb', '{"dressing":[{"skin":{"tshirt_2":0,"eyebrows_1":30,"hair_color_2":29,"eyebrows_2":10,"shoes_2":0,"bproof_2":0,"helmet_2":1,"mask_2":7,"decals_1":0,"skin":3,"pants_2":2,"beard_1":3,"makeup_1":0,"arms":5,"sex":0,"lipstick_3":0,"chain_2":0,"ears_2":0,"hair_color_1":29,"decals_2":0,"beard_4":0,"shoes_1":7,"lipstick_1":0,"hair_2":0,"hair_1":24,"lipstick_4":0,"eyebrows_3":0,"torso_1":271,"makeup_3":0,"torso_2":5,"eyebrows_4":0,"chain_1":0,"makeup_2":0,"bags_1":0,"face":0,"tshirt_1":15,"pants_1":97,"ears_1":-1,"lipstick_2":0,"age_2":0,"bproof_1":0,"glasses_1":7,"beard_2":10,"makeup_4":0,"bags_2":0,"beard_3":0,"glasses_2":0,"mask_1":51,"helmet_1":56,"age_1":0},"label":"normal"}]}'),
	(12880, 'property', 'steam:11000013f430324', '{}'),
	(12881, 'property', 'steam:110000145637ea3', '{"dressing":[{"skin":{"ears_2":0,"helmet_2":0,"bproof_2":0,"mask_1":0,"chain_1":12,"ears_1":2,"eyebrows_1":0,"lipstick_2":0,"eyebrows_2":0,"age_2":0,"tshirt_1":132,"decals_1":0,"beard_2":0,"glasses_1":4,"torso_2":0,"makeup_3":0,"bags_2":0,"hair_2":0,"arms":37,"skin":0,"tshirt_2":0,"makeup_1":0,"torso_1":26,"makeup_4":0,"bags_1":0,"chain_2":2,"decals_2":0,"bproof_1":0,"mask_2":0,"pants_1":10,"shoes_1":10,"beard_4":0,"hair_color_1":3,"shoes_2":0,"eyebrows_3":0,"beard_3":0,"glasses_2":0,"age_1":0,"lipstick_3":0,"sex":0,"lipstick_4":0,"eyebrows_4":0,"lipstick_1":0,"beard_1":0,"face":0,"hair_1":3,"pants_2":0,"hair_color_2":0,"helmet_1":-1,"makeup_2":0},"label":"DETECTIVE"},{"skin":{"torso_1":28,"helmet_2":0,"bproof_2":0,"mask_1":0,"chain_1":0,"ears_1":2,"arms_2":0,"lipstick_2":0,"decals_2":0,"age_2":0,"tshirt_1":4,"decals_1":0,"beard_2":0,"mask_2":0,"torso_2":0,"makeup_3":0,"bags_2":0,"hair_2":0,"arms":1,"eyebrows_2":0,"skin":0,"tshirt_2":0,"makeup_1":0,"chain_2":0,"sex":0,"bags_1":0,"makeup_4":0,"bproof_1":0,"ears_2":0,"glasses_1":4,"pants_1":10,"shoes_1":10,"beard_4":0,"hair_color_1":3,"eyebrows_4":0,"eyebrows_3":0,"beard_3":0,"glasses_2":0,"age_1":0,"lipstick_3":0,"beard_1":0,"helmet_1":-1,"lipstick_1":0,"shoes_2":0,"eyebrows_1":0,"face":0,"hair_1":3,"pants_2":0,"hair_color_2":0,"lipstick_4":0,"makeup_2":0},"label":"NORMAL"},{"skin":{"ears_2":0,"helmet_2":0,"bproof_2":0,"mask_1":52,"chain_1":112,"ears_1":2,"lipstick_1":0,"lipstick_2":0,"eyebrows_2":0,"age_2":0,"tshirt_1":15,"decals_1":0,"beard_2":0,"mask_2":0,"torso_2":0,"makeup_3":0,"shoes_1":25,"hair_2":0,"arms":37,"skin":0,"eyebrows_3":0,"tshirt_2":0,"makeup_1":0,"chain_2":2,"age_1":0,"bags_1":0,"torso_1":53,"decals_2":0,"bproof_1":2,"makeup_4":0,"pants_1":31,"shoes_2":0,"beard_4":0,"hair_color_1":3,"lipstick_4":0,"glasses_1":4,"beard_3":0,"glasses_2":0,"bags_2":0,"lipstick_3":0,"sex":0,"helmet_1":83,"arms_2":0,"eyebrows_1":0,"eyebrows_4":0,"face":0,"hair_1":3,"pants_2":0,"hair_color_2":0,"beard_1":0,"makeup_2":0},"label":"G.E.O"},{"skin":{"torso_1":55,"helmet_2":0,"bproof_2":0,"mask_1":57,"chain_1":0,"ears_1":2,"eyebrows_1":0,"lipstick_2":0,"eyebrows_2":0,"age_2":0,"tshirt_1":122,"decals_1":0,"beard_2":0,"mask_2":12,"torso_2":0,"makeup_3":0,"shoes_1":25,"hair_2":0,"arms":41,"eyebrows_3":0,"skin":0,"tshirt_2":0,"makeup_1":0,"chain_2":0,"makeup_4":0,"bags_1":0,"decals_2":0,"bproof_1":2,"ears_2":0,"arms_2":0,"pants_1":25,"glasses_1":4,"beard_4":0,"hair_color_1":3,"lipstick_4":0,"eyebrows_4":0,"beard_3":0,"glasses_2":0,"age_1":0,"lipstick_3":0,"sex":0,"helmet_1":-1,"lipstick_1":0,"bags_2":0,"shoes_2":0,"face":0,"hair_1":3,"pants_2":0,"hair_color_2":0,"beard_1":0,"makeup_2":0},"label":"SUB-INSPECTOR"},{"skin":{"ears_2":0,"helmet_2":0,"bproof_2":0,"mask_1":0,"chain_1":0,"ears_1":2,"lipstick_1":0,"lipstick_2":0,"eyebrows_2":0,"age_2":0,"tshirt_1":2,"decals_1":0,"beard_2":0,"mask_2":0,"torso_2":2,"makeup_3":0,"shoes_1":55,"hair_2":0,"arms":1,"skin":0,"torso_1":178,"tshirt_2":0,"eyebrows_3":0,"chain_2":0,"makeup_4":0,"bags_1":0,"sex":0,"decals_2":0,"bproof_1":0,"shoes_2":2,"pants_1":77,"glasses_1":4,"beard_4":0,"hair_color_1":3,"eyebrows_4":0,"bags_2":0,"beard_3":0,"glasses_2":0,"makeup_1":0,"lipstick_3":0,"helmet_1":-1,"age_1":0,"beard_1":0,"arms_2":0,"eyebrows_1":0,"face":0,"hair_1":3,"pants_2":2,"hair_color_2":0,"lipstick_4":0,"makeup_2":0},"label":"ADMIN"},{"skin":{"torso_1":222,"helmet_2":0,"bproof_2":0,"mask_1":51,"chain_1":0,"ears_1":2,"lipstick_1":0,"lipstick_2":0,"eyebrows_2":0,"age_2":0,"tshirt_1":0,"decals_1":0,"beard_2":0,"mask_2":0,"torso_2":14,"makeup_3":0,"bags_2":0,"hair_2":0,"arms":1,"skin":0,"chain_2":0,"tshirt_2":0,"eyebrows_3":0,"decals_2":0,"sex":0,"bags_1":0,"bproof_1":0,"ears_2":0,"glasses_1":4,"makeup_1":0,"pants_1":44,"makeup_4":0,"beard_4":0,"hair_color_1":3,"lipstick_4":0,"eyebrows_4":0,"beard_3":0,"glasses_2":0,"age_1":0,"lipstick_3":0,"shoes_1":42,"helmet_1":-1,"eyebrows_1":0,"arms_2":0,"beard_1":0,"face":0,"hair_1":3,"pants_2":0,"hair_color_2":0,"shoes_2":2,"makeup_2":0},"label":"VACA"},{"skin":{"torso_1":273,"helmet_2":0,"bproof_2":0,"mask_1":0,"chain_1":125,"ears_1":2,"arms_2":0,"lipstick_2":0,"eyebrows_2":0,"age_2":0,"tshirt_1":107,"decals_1":0,"beard_2":0,"mask_2":0,"torso_2":0,"makeup_3":0,"shoes_1":25,"hair_2":0,"arms":0,"eyebrows_3":0,"skin":0,"tshirt_2":21,"makeup_1":0,"chain_2":0,"makeup_4":0,"bags_1":0,"sex":0,"decals_2":0,"bproof_1":0,"ears_2":0,"pants_1":8,"helmet_1":-1,"beard_4":0,"hair_color_1":3,"lipstick_4":0,"glasses_1":4,"beard_3":0,"glasses_2":0,"beard_1":0,"lipstick_3":0,"age_1":0,"eyebrows_1":0,"shoes_2":0,"lipstick_1":0,"bags_2":0,"face":0,"hair_1":3,"pants_2":0,"hair_color_2":0,"eyebrows_4":0,"makeup_2":0},"label":"CNI"},{"label":"MAFIA ADMIN","skin":{"torso_1":28,"helmet_2":0,"bproof_2":0,"mask_1":50,"chain_1":0,"ears_1":2,"lipstick_1":0,"lipstick_2":0,"decals_2":0,"age_2":0,"tshirt_1":4,"decals_1":0,"beard_2":0,"mask_2":0,"torso_2":0,"makeup_3":0,"bags_2":0,"hair_2":0,"arms":1,"skin":0,"eyebrows_2":0,"tshirt_2":0,"makeup_1":0,"bproof_1":0,"sex":0,"bags_1":0,"ears_2":0,"shoes_1":10,"beard_1":0,"lipstick_4":0,"pants_1":10,"glasses_1":4,"beard_4":0,"hair_color_1":3,"shoes_2":0,"makeup_4":0,"beard_3":0,"glasses_2":0,"chain_2":0,"lipstick_3":0,"eyebrows_3":0,"age_1":0,"arms_2":0,"eyebrows_1":0,"helmet_1":-1,"face":0,"hair_1":3,"pants_2":0,"hair_color_2":0,"eyebrows_4":0,"makeup_2":0}}]}'),
	(12882, 'property', 'steam:11000014446efb1', '{}'),
	(12883, 'property', 'steam:110000133a475f7', '{"dressing":[{"label":"Ropa Geos.","skin":{"helmet_1":59,"tshirt_2":0,"hair_color_1":8,"ears_2":0,"lipstick_2":0,"glasses_2":0,"shoes_1":25,"decals_1":0,"eyebrows_2":0,"makeup_4":0,"torso_2":0,"chain_1":83,"eyebrows_4":0,"bproof_1":18,"pants_2":0,"beard_1":0,"makeup_2":0,"arms":44,"lipstick_3":0,"beard_4":0,"decals_2":0,"bproof_2":2,"sex":1,"shoes_2":0,"eyebrows_3":0,"chain_2":2,"lipstick_4":0,"makeup_1":0,"hair_color_2":8,"pants_1":30,"ears_1":-1,"tshirt_1":15,"hair_2":0,"mask_2":10,"eyebrows_1":0,"mask_1":52,"face":21,"lipstick_1":0,"bags_1":0,"arms_2":0,"age_2":0,"glasses_1":11,"age_1":0,"torso_1":46,"bags_2":0,"beard_3":0,"skin":4,"helmet_2":9,"hair_1":15,"makeup_3":0,"beard_2":0}},{"label":"Ropa Admin","skin":{"helmet_1":90,"tshirt_2":0,"hair_color_1":8,"ears_2":0,"lipstick_2":0,"glasses_2":0,"shoes_1":58,"decals_1":0,"eyebrows_2":0,"makeup_4":0,"torso_2":3,"chain_1":0,"eyebrows_4":0,"bproof_1":0,"pants_2":3,"beard_1":0,"makeup_2":0,"arms":34,"lipstick_3":0,"beard_4":0,"decals_2":0,"bproof_2":0,"hair_color_2":8,"shoes_2":3,"eyebrows_3":0,"chain_2":0,"lipstick_4":0,"makeup_1":0,"pants_1":79,"tshirt_1":15,"ears_1":-1,"hair_2":0,"lipstick_1":0,"mask_2":10,"eyebrows_1":0,"mask_1":0,"face":21,"sex":1,"bags_1":0,"arms_2":0,"age_2":0,"glasses_1":11,"age_1":0,"torso_1":180,"bags_2":0,"beard_3":0,"skin":4,"helmet_2":3,"hair_1":15,"makeup_3":0,"beard_2":0}},{"label":"Ropa De civil","skin":{"helmet_1":43,"tshirt_2":0,"hair_color_1":8,"ears_2":0,"lipstick_2":0,"glasses_2":0,"shoes_1":25,"beard_3":0,"eyebrows_2":0,"lipstick_3":0,"torso_2":0,"chain_1":0,"eyebrows_4":0,"bproof_1":0,"pants_2":9,"beard_1":0,"makeup_2":0,"arms":37,"arms_2":0,"beard_4":0,"lipstick_1":0,"bproof_2":0,"decals_2":0,"mask_1":0,"eyebrows_3":0,"chain_2":0,"lipstick_4":0,"makeup_1":0,"hair_2":0,"hair_color_2":8,"ears_1":-1,"helmet_2":1,"pants_1":61,"eyebrows_1":0,"shoes_2":0,"makeup_4":0,"tshirt_1":15,"sex":1,"beard_2":0,"face":21,"age_2":0,"glasses_1":11,"age_1":0,"torso_1":195,"bags_2":0,"skin":4,"mask_2":10,"decals_1":0,"hair_1":15,"makeup_3":0,"bags_1":0}}]}'),
	(12884, 'property', 'steam:11000010350be30', '{}'),
	(12885, 'property', 'steam:110000146e4b421', '{}'),
	(12886, 'property', 'steam:11000014a114d2b', '{}'),
	(12887, 'property', 'steam:1100001482b48af', '{}'),
	(12888, 'property', 'steam:110000134b17272', '{}'),
	(12889, 'property', 'steam:110000145d133a6', '{}'),
	(12890, 'property', 'steam:11000011bff4aef', '{"weapons":[]}'),
	(12891, 'property', 'steam:11000014915a4e7', '{}'),
	(12892, 'property', 'steam:110000144682c20', '{}'),
	(12893, 'property', 'steam:110000149b01e65', '{}'),
	(12894, 'property', 'steam:11000013e22254c', '{}'),
	(12895, 'property', 'steam:11000014428934c', '{}'),
	(12896, 'property', 'steam:11000013ed0a104', '{}'),
	(12897, 'property', 'steam:1100001322c6b54', '{}'),
	(12898, 'property', 'steam:110000102af2be8', '{}'),
	(12899, 'property', 'steam:110000143398cb7', '{"dressing":[{"skin":{"age_2":0,"makeup_2":0,"bproof_2":0,"beard_3":0,"helmet_2":0,"helmet_1":-1,"chain_2":0,"lipstick_1":0,"tshirt_1":1,"pants_2":0,"face":0,"eyebrows_2":0,"glasses_2":0,"shoes_1":27,"eyebrows_1":0,"eyebrows_4":0,"hair_2":0,"ears_1":-1,"lipstick_2":0,"beard_1":0,"age_1":0,"beard_4":0,"makeup_3":0,"lipstick_4":0,"hair_color_1":0,"decals_2":0,"hair_1":0,"skin":0,"eyebrows_3":0,"torso_1":146,"pants_1":87,"tshirt_2":0,"bproof_1":0,"ears_2":0,"sex":0,"mask_2":0,"hair_color_2":0,"beard_2":0,"shoes":35,"makeup_4":0,"torso_2":0,"shoes_2":0,"mask_1":0,"decals_1":0,"chain_1":0,"lipstick_3":0,"makeup_1":0,"bags_2":0,"arms":0,"glasses_1":-1,"bags_1":0}},{"skin":{"age_2":0,"shoes_2":0,"bproof_2":1,"beard_3":0,"watches_1":21,"helmet_2":0,"helmet_1":-1,"chain_2":0,"lipstick_1":0,"tshirt_1":1,"pants_2":0,"glasses_2":0,"face":0,"arms":2,"shoes_1":27,"beard_4":0,"makeup_2":0,"arms_2":0,"beard_1":0,"hair_color_2":0,"ears_1":-1,"lipstick_2":0,"hair_1":21,"age_1":0,"eyebrows_4":0,"makeup_3":0,"tshirt_2":0,"hair_color_1":9,"decals_2":0,"bags_1":0,"skin":0,"eyebrows_3":0,"ears_2":0,"pants_1":87,"torso_1":2,"bproof_1":4,"lipstick_4":0,"beard_2":0,"mask_2":0,"watches_2":0,"makeup_4":0,"shoes":35,"makeup_1":0,"torso_2":0,"hair_2":0,"mask_1":0,"decals_1":0,"eyebrows_2":0,"lipstick_3":0,"eyebrows_1":0,"bags_2":0,"sex":0,"glasses_1":-1,"chain_1":86}},{"skin":{"age_2":0,"shoes_2":0,"bproof_2":0,"beard_3":0,"watches_1":20,"helmet_2":0,"helmet_1":-1,"chain_2":0,"hair_1":21,"tshirt_1":21,"pants_2":0,"glasses_2":0,"face":0,"eyebrows_2":0,"shoes_1":27,"makeup_2":0,"arms_2":0,"ears_2":0,"watches_2":0,"mask_1":0,"ears_1":-1,"lipstick_2":0,"lipstick_1":0,"age_1":0,"makeup_4":0,"makeup_3":0,"tshirt_2":0,"beard_1":0,"decals_2":0,"torso_1":28,"skin":0,"eyebrows_3":0,"bags_1":20,"pants_1":28,"eyebrows_4":0,"bproof_1":0,"beard_2":0,"beard_4":0,"mask_2":0,"hair_color_2":0,"hair_color_1":9,"shoes":35,"makeup_1":0,"torso_2":0,"hair_2":0,"sex":0,"decals_1":0,"eyebrows_1":0,"lipstick_3":0,"lipstick_4":0,"bags_2":0,"arms":1,"glasses_1":-1,"chain_1":38},"label":"+"},{"skin":{"age_2":0,"shoes_2":11,"bproof_2":0,"beard_3":0,"watches_1":20,"helmet_2":0,"helmet_1":-1,"chain_2":0,"lipstick_1":0,"tshirt_1":1,"pants_2":4,"glasses_2":0,"face":0,"eyebrows_2":0,"eyebrows_4":0,"beard_4":0,"arms_2":0,"shoes_1":7,"ears_2":0,"hair_color_2":0,"ears_1":-1,"lipstick_2":0,"makeup_2":0,"age_1":0,"hair_1":21,"makeup_3":0,"lipstick_4":0,"hair_color_1":9,"decals_2":0,"tshirt_2":0,"skin":0,"eyebrows_3":0,"makeup_4":0,"pants_1":86,"bags_1":20,"bproof_1":4,"torso_1":271,"beard_2":0,"mask_2":0,"watches_2":0,"beard_1":0,"shoes":35,"makeup_1":0,"torso_2":1,"hair_2":0,"sex":0,"decals_1":0,"mask_1":0,"lipstick_3":0,"eyebrows_1":0,"bags_2":0,"arms":15,"glasses_1":-1,"chain_1":5},"label":"flow bacano"},{"skin":{"age_2":0,"shoes_2":0,"bproof_2":0,"beard_3":0,"watches_1":20,"helmet_2":0,"helmet_1":-1,"chain_2":0,"hair_1":21,"tshirt_1":122,"pants_2":0,"glasses_2":0,"face":0,"eyebrows_2":0,"eyebrows_4":0,"hair_2":0,"arms_2":0,"shoes_1":25,"lipstick_1":0,"hair_color_2":0,"ears_1":2,"lipstick_2":0,"decals_1":0,"age_1":0,"beard_2":0,"makeup_3":0,"eyebrows_1":0,"hair_color_1":9,"decals_2":0,"ears_2":0,"skin":0,"eyebrows_3":0,"makeup_4":0,"pants_1":25,"beard_4":0,"bproof_1":2,"beard_1":0,"makeup_2":0,"mask_2":0,"watches_2":0,"lipstick_4":0,"shoes":35,"makeup_1":0,"torso_2":0,"sex":0,"mask_1":0,"tshirt_2":0,"torso_1":55,"lipstick_3":0,"chain_1":0,"bags_2":0,"arms":0,"glasses_1":-1,"bags_1":20},"label":"POLICIA TRABAJO"},{"skin":{"age_2":0,"makeup_2":0,"bproof_2":0,"beard_3":0,"watches_1":21,"helmet_2":0,"helmet_1":-1,"chain_2":0,"hair_1":21,"tshirt_1":122,"pants_2":0,"glasses_2":0,"hair_2":0,"eyebrows_2":0,"shoes_1":25,"beard_2":0,"eyebrows_4":0,"arms_2":0,"lipstick_1":0,"shoes_2":0,"ears_1":2,"lipstick_2":0,"arms":41,"age_1":0,"watches_2":0,"makeup_3":0,"mask_1":0,"hair_color_1":9,"beard_4":0,"tshirt_2":0,"skin":0,"eyebrows_3":0,"lipstick_4":0,"pants_1":34,"ears_2":0,"bproof_1":2,"eyebrows_1":0,"beard_1":0,"mask_2":0,"hair_color_2":0,"chain_1":0,"shoes":35,"makeup_1":0,"torso_2":0,"decals_2":0,"sex":0,"decals_1":0,"torso_1":55,"lipstick_3":0,"makeup_4":0,"bags_2":0,"face":0,"glasses_1":-1,"bags_1":0}}]}'),
	(12900, 'property', 'steam:11000010bfb1651', '{"dressing":[{"skin":{"mask_1":0,"makeup_1":0,"ears_1":-1,"hair_color_1":5,"helmet_1":-1,"lipstick_2":0,"arms":27,"decals_2":0,"torso_1":57,"hair_2":0,"bags_1":45,"beard_2":0,"glasses_1":-1,"makeup_3":0,"hair_1":42,"age_2":0,"skin":0,"makeup_2":0,"beard_1":0,"mask_2":-1,"glasses_2":0,"shoes_2":0,"age_1":0,"bproof_1":0,"tshirt_1":64,"lipstick_4":0,"chain_1":0,"decals_1":0,"beard_4":0,"lipstick_3":0,"torso_2":0,"hair_color_2":0,"helmet_2":0,"eyebrows_2":0,"eyebrows_3":0,"face":4,"chain_2":0,"lipstick_1":0,"arms_2":0,"tshirt_2":0,"eyebrows_1":0,"ears_2":0,"pants_2":0,"shoes_1":6,"pants_1":6,"bags_2":0,"makeup_4":0,"sex":1,"beard_3":0,"bproof_2":0,"eyebrows_4":0},"label":"LOZ MARIOS"},{"skin":{"mask_1":0,"makeup_1":0,"bags_2":0,"hair_color_1":5,"helmet_1":-1,"lipstick_2":0,"arms":27,"decals_2":0,"glasses_2":0,"hair_2":0,"bags_1":45,"beard_2":0,"glasses_1":-1,"makeup_3":0,"hair_1":42,"eyebrows_3":0,"skin":0,"makeup_2":0,"beard_1":0,"ears_2":0,"torso_2":0,"shoes_2":0,"age_1":0,"bproof_1":0,"tshirt_1":3,"lipstick_4":0,"chain_1":0,"torso_1":3,"decals_1":0,"ears_1":-1,"beard_4":0,"hair_color_2":0,"lipstick_3":0,"pants_1":13,"lipstick_1":0,"tshirt_2":0,"chain_2":0,"eyebrows_2":0,"arms_2":0,"helmet_2":0,"eyebrows_1":0,"mask_2":-1,"pants_2":17,"shoes_1":1,"face":4,"eyebrows_4":0,"makeup_4":0,"sex":1,"beard_3":0,"bproof_2":0,"age_2":0},"label":":"}]}'),
	(12901, 'property', 'steam:1100001483ca06a', '{}'),
	(12902, 'property', 'steam:11000013eb1ab0b', '{"dressing":[{"skin":{"glasses_1":-1,"skin":0,"makeup_3":0,"beard_2":0,"shoes_2":0,"makeup_1":0,"hair_1":21,"tshirt_2":0,"torso_1":229,"shoes_1":7,"pants_2":10,"beard_1":0,"ears_1":-1,"helmet_1":-1,"tshirt_1":15,"mask_2":0,"decals_1":0,"helmet_2":0,"hair_2":0,"glasses_2":0,"sex":0,"eyebrows_4":0,"bproof_1":0,"face":0,"bags_1":0,"chain_2":0,"hair_color_2":0,"hair_color_1":0,"lipstick_4":0,"eyebrows_1":0,"lipstick_3":0,"age_1":0,"lipstick_1":0,"bproof_2":0,"arms":0,"age_2":0,"chain_1":0,"pants_1":87,"beard_4":0,"lipstick_2":0,"makeup_4":0,"beard_3":0,"decals_2":0,"bags_2":0,"torso_2":5,"ears_2":0,"eyebrows_2":0,"mask_1":90,"makeup_2":0,"eyebrows_3":0},"label":"CHILL"}]}'),
	(12903, 'property', 'steam:110000148ca79d9', '{"dressing":[{"label":"blanco","skin":{"bags_2":0,"hair_color_1":10,"tshirt_2":0,"chain_2":0,"lipstick_3":0,"lipstick_1":0,"glasses_1":5,"torso_1":89,"pants_1":97,"beard_4":0,"decals_1":0,"shoes_2":6,"bags_1":45,"decals_2":0,"hair_color_2":0,"lipstick_2":0,"mask_1":51,"chain_1":0,"makeup_2":0,"mask_2":0,"makeup_4":0,"face":0,"hair_2":0,"skin":0,"beard_2":0,"hair_1":8,"makeup_3":0,"helmet_2":0,"tshirt_1":15,"arms":11,"eyebrows_3":0,"glasses_2":0,"age_1":0,"bproof_1":0,"makeup_1":0,"torso_2":1,"ears_2":0,"helmet_1":-1,"beard_1":0,"ears_1":-1,"lipstick_4":0,"eyebrows_2":0,"eyebrows_1":0,"sex":0,"age_2":0,"shoes_1":7,"eyebrows_4":0,"beard_3":0,"pants_2":2,"bproof_2":0}},{"label":"NEGRO ENTERO","skin":{"bags_2":0,"hair_color_1":10,"tshirt_2":0,"chain_2":0,"lipstick_3":0,"lipstick_1":0,"glasses_1":5,"lipstick_4":0,"pants_1":33,"bracelets_2":0,"beard_4":0,"decals_1":0,"shoes_2":0,"bags_1":45,"hair_color_2":0,"beard_2":0,"shoes_1":7,"makeup_2":0,"lipstick_2":0,"chain_1":0,"mask_2":0,"makeup_1":0,"bracelets_1":7,"makeup_4":0,"face":0,"makeup_3":0,"skin":0,"helmet_2":0,"hair_1":8,"tshirt_1":15,"hair_2":0,"arms_2":0,"arms":18,"eyebrows_3":0,"glasses_2":0,"age_1":0,"bproof_1":11,"eyebrows_1":0,"torso_2":0,"ears_2":0,"eyebrows_4":0,"beard_1":0,"ears_1":-1,"eyebrows_2":0,"torso_1":224,"sex":0,"mask_1":51,"age_2":0,"decals_2":0,"helmet_1":-1,"beard_3":0,"pants_2":0,"bproof_2":1}},{"label":"NEGRO SIN MOCHILA","skin":{"bags_2":0,"hair_color_1":10,"tshirt_2":0,"chain_2":0,"lipstick_3":0,"lipstick_1":0,"glasses_1":5,"lipstick_4":0,"pants_1":33,"bracelets_2":0,"beard_4":0,"decals_1":0,"shoes_2":0,"bags_1":0,"hair_color_2":0,"beard_2":0,"decals_2":0,"eyebrows_4":0,"lipstick_2":0,"chain_1":0,"mask_2":0,"makeup_1":0,"bracelets_1":7,"makeup_4":0,"face":0,"makeup_3":0,"skin":0,"helmet_2":0,"hair_1":8,"tshirt_1":15,"hair_2":0,"arms_2":0,"arms":18,"eyebrows_3":0,"glasses_2":0,"age_1":0,"bproof_1":11,"eyebrows_1":0,"torso_2":0,"age_2":0,"makeup_2":0,"beard_1":0,"ears_1":-1,"eyebrows_2":0,"torso_1":224,"sex":0,"ears_2":0,"helmet_1":-1,"shoes_1":7,"mask_1":51,"beard_3":0,"pants_2":0,"bproof_2":1}},{"label":"vaqueros","skin":{"bags_2":0,"hair_color_1":10,"tshirt_2":0,"helmet_2":0,"lipstick_3":0,"lipstick_1":0,"glasses_1":5,"torso_1":146,"pants_1":3,"bracelets_2":0,"beard_4":0,"decals_1":0,"shoes_2":1,"bags_1":0,"hair_color_2":0,"makeup_2":0,"shoes_1":31,"chain_2":0,"lipstick_2":0,"chain_1":0,"mask_2":0,"makeup_1":0,"bracelets_1":7,"makeup_4":0,"face":0,"beard_2":0,"skin":0,"makeup_3":0,"hair_1":8,"arms_2":20,"hair_2":0,"tshirt_1":15,"arms":5,"eyebrows_3":0,"glasses_2":0,"age_1":0,"bproof_1":0,"eyebrows_4":0,"torso_2":6,"ears_2":0,"eyebrows_1":0,"beard_1":0,"ears_1":-1,"eyebrows_2":0,"lipstick_4":0,"mask_1":51,"sex":0,"age_2":0,"decals_2":0,"helmet_1":-1,"beard_3":0,"pants_2":9,"bproof_2":0}},{"label":"vaqueros vrd","skin":{"bags_2":0,"hair_color_1":10,"tshirt_2":0,"chain_2":1,"lipstick_3":0,"lipstick_1":0,"glasses_1":5,"lipstick_4":0,"pants_1":3,"bracelets_2":0,"beard_4":0,"decals_1":0,"shoes_2":1,"bags_1":0,"beard_2":0,"makeup_3":0,"shoes_1":31,"chain_1":17,"lipstick_2":0,"mask_2":0,"hair_color_2":0,"makeup_1":0,"bracelets_1":7,"makeup_4":0,"face":0,"helmet_2":0,"skin":0,"mask_1":51,"hair_1":8,"hair_2":0,"eyebrows_2":0,"tshirt_1":15,"arms":41,"eyebrows_3":0,"glasses_2":0,"age_1":0,"bproof_1":0,"eyebrows_4":0,"torso_2":6,"ears_2":0,"eyebrows_1":0,"beard_1":0,"ears_1":-1,"makeup_2":0,"torso_1":146,"sex":0,"arms_2":0,"bproof_2":0,"decals_2":0,"age_2":0,"beard_3":0,"pants_2":9,"helmet_1":-1}},{"label":"negroooooooooooo","skin":{"bags_2":0,"hair_color_1":12,"tshirt_2":0,"chain_2":0,"lipstick_3":0,"lipstick_1":0,"glasses_1":5,"lipstick_4":0,"pants_1":97,"bracelets_2":0,"beard_4":0,"decals_1":0,"shoes_2":14,"bags_1":0,"skin":0,"hair_color_2":14,"beard_2":0,"decals_2":0,"lipstick_2":0,"chain_1":0,"mask_2":0,"makeup_1":0,"bracelets_1":7,"makeup_4":0,"face":0,"makeup_3":0,"eyebrows_2":0,"helmet_2":0,"hair_1":46,"helmet_1":-1,"hair_2":0,"tshirt_1":15,"arms":41,"sex":0,"glasses_2":0,"age_1":0,"bproof_1":0,"makeup_2":0,"torso_2":2,"ears_2":0,"eyebrows_1":0,"beard_1":2,"ears_1":-1,"arms_2":0,"eyebrows_3":0,"torso_1":200,"eyebrows_4":0,"age_2":0,"shoes_1":7,"mask_1":51,"beard_3":0,"pants_2":1,"bproof_2":0}}]}'),
	(12904, 'property', 'steam:110000132d5200b', '{}'),
	(12905, 'property', 'steam:110000149d44d94', '{"dressing":[]}'),
	(12906, 'property', 'steam:11000014a1bd7dd', '{"weapons":[]}'),
	(12907, 'property', 'steam:110000141032831', '{}'),
	(12908, 'property', 'steam:11000013ebf3cab', '{"weapons":[{"name":"weapon_assaultrifle","ammo":250},{"name":"WEAPON_HEAVYPISTOL","ammo":500}],"dressing":[{"skin":{"mask_1":0,"makeup_1":57,"ears_1":-1,"hair_color_1":0,"helmet_1":55,"lipstick_2":0,"arms_2":0,"decals_2":0,"torso_1":193,"hair_2":0,"bags_1":0,"beard_2":0,"glasses_1":25,"makeup_3":37,"hair_1":12,"eyebrows_3":0,"skin":0,"lipstick_1":0,"makeup_2":10,"beard_1":0,"glasses_2":4,"mask_2":0,"decals_1":0,"shoes_2":14,"tshirt_2":0,"eyebrows_2":10,"tshirt_1":15,"lipstick_4":0,"chain_1":0,"watches_2":0,"lipstick_3":0,"watches_1":2,"sex":0,"hair_color_2":6,"beard_4":0,"face":0,"ears_2":0,"age_2":0,"chain_2":0,"bproof_1":-1,"bags_2":0,"helmet_2":24,"eyebrows_1":12,"eyebrows_4":0,"pants_2":0,"shoes_1":7,"pants_1":33,"arms":0,"makeup_4":2,"age_1":0,"beard_3":0,"bproof_2":0,"torso_2":6},"label":"A"},{"skin":{"mask_1":0,"makeup_1":57,"ears_1":-1,"hair_color_1":0,"helmet_1":55,"lipstick_2":0,"arms":0,"decals_2":0,"torso_1":193,"hair_2":0,"bags_1":0,"beard_2":0,"glasses_1":25,"makeup_3":37,"hair_1":12,"eyebrows_3":0,"skin":0,"glasses_2":4,"makeup_2":10,"beard_1":0,"decals_1":0,"ears_2":0,"watches_1":2,"shoes_2":6,"tshirt_2":0,"eyebrows_2":10,"tshirt_1":15,"lipstick_4":0,"chain_1":93,"watches_2":0,"lipstick_3":0,"arms_2":0,"pants_1":97,"hair_color_2":6,"beard_4":0,"eyebrows_4":0,"lipstick_1":0,"bproof_1":-1,"chain_2":0,"torso_2":2,"mask_2":0,"helmet_2":24,"eyebrows_1":12,"bags_2":0,"pants_2":1,"shoes_1":7,"face":0,"sex":0,"makeup_4":2,"age_1":0,"beard_3":0,"bproof_2":0,"age_2":0},"label":"Travieso"},{"skin":{"watches_1":2,"makeup_1":57,"ears_1":-1,"hair_color_1":0,"helmet_1":55,"lipstick_2":0,"arms":0,"decals_2":0,"glasses_2":4,"hair_2":0,"bags_1":0,"beard_2":0,"glasses_1":25,"makeup_3":37,"hair_1":12,"age_2":0,"skin":0,"mask_1":0,"makeup_2":10,"beard_1":0,"decals_1":0,"ears_2":0,"torso_1":193,"shoes_2":6,"beard_4":0,"bproof_1":-1,"tshirt_1":15,"lipstick_4":0,"chain_1":93,"watches_2":0,"lipstick_3":0,"arms_2":0,"pants_1":62,"hair_color_2":6,"torso_2":5,"eyebrows_4":0,"lipstick_1":0,"eyebrows_2":10,"chain_2":0,"tshirt_2":0,"mask_2":0,"helmet_2":24,"eyebrows_1":12,"bags_2":0,"pants_2":1,"shoes_1":7,"face":0,"age_1":0,"makeup_4":2,"sex":0,"beard_3":0,"bproof_2":0,"eyebrows_3":0},"label":"SUUU"},{"skin":{"watches_1":2,"makeup_1":57,"ears_1":-1,"hair_color_1":0,"helmet_1":55,"lipstick_2":0,"arms":38,"decals_2":0,"glasses_2":4,"hair_2":0,"bags_1":0,"beard_2":0,"glasses_1":25,"makeup_3":37,"hair_1":12,"eyebrows_3":0,"skin":0,"mask_1":48,"makeup_2":10,"beard_1":0,"decals_1":0,"lipstick_1":0,"torso_1":171,"shoes_2":6,"beard_4":0,"eyebrows_2":10,"tshirt_1":15,"lipstick_4":0,"chain_1":0,"watches_2":0,"lipstick_3":0,"arms_2":0,"torso_2":0,"hair_color_2":6,"pants_1":33,"ears_2":0,"helmet_2":24,"eyebrows_4":0,"chain_2":0,"bags_2":0,"mask_2":0,"tshirt_2":0,"eyebrows_1":12,"bproof_1":16,"pants_2":0,"shoes_1":7,"face":0,"age_1":0,"makeup_4":2,"sex":0,"beard_3":0,"bproof_2":2,"age_2":0},"label":"Broker"},{"skin":{"watches_1":2,"makeup_1":57,"bags_2":0,"hair_color_1":0,"helmet_1":55,"lipstick_2":0,"arms_2":0,"decals_2":0,"glasses_2":4,"hair_2":0,"bags_1":0,"torso_2":6,"glasses_1":25,"makeup_3":37,"hair_1":12,"age_2":0,"skin":0,"eyebrows_2":10,"makeup_2":10,"beard_1":0,"torso_1":193,"mask_2":0,"decals_1":0,"shoes_2":6,"tshirt_2":0,"bproof_1":0,"tshirt_1":15,"lipstick_4":0,"chain_1":85,"watches_2":0,"lipstick_3":0,"pants_1":62,"beard_4":0,"hair_color_2":6,"beard_2":0,"arms":11,"ears_1":-1,"lipstick_1":0,"chain_2":0,"mask_1":48,"ears_2":0,"helmet_2":24,"eyebrows_1":12,"eyebrows_4":0,"pants_2":0,"shoes_1":7,"face":0,"sex":0,"makeup_4":2,"age_1":0,"beard_3":0,"bproof_2":0,"eyebrows_3":0},"label":"Normal"},{"skin":{"watches_1":2,"makeup_1":57,"bags_2":0,"hair_color_1":0,"helmet_1":55,"lipstick_2":0,"arms_2":0,"decals_2":0,"torso_1":193,"hair_2":0,"bags_1":0,"torso_2":5,"glasses_1":25,"makeup_3":37,"hair_1":12,"age_2":0,"skin":0,"glasses_2":4,"makeup_2":10,"beard_1":0,"age_1":0,"ears_2":0,"lipstick_1":0,"shoes_2":6,"decals_1":0,"eyebrows_2":10,"tshirt_1":15,"lipstick_4":0,"chain_1":85,"watches_2":0,"tshirt_2":0,"lipstick_3":0,"ears_1":-1,"beard_4":0,"pants_1":33,"arms":11,"eyebrows_4":0,"mask_1":48,"chain_2":0,"hair_color_2":6,"mask_2":0,"helmet_2":24,"eyebrows_1":12,"bproof_1":0,"pants_2":0,"shoes_1":7,"face":0,"beard_2":0,"makeup_4":2,"sex":0,"beard_3":0,"bproof_2":0,"eyebrows_3":0},"label":"Hola"},{"skin":{"watches_1":2,"makeup_1":57,"bags_2":0,"hair_color_1":0,"helmet_1":55,"lipstick_2":0,"arms":44,"decals_2":0,"glasses_2":4,"hair_2":0,"bags_1":0,"torso_2":3,"glasses_1":25,"makeup_3":37,"hair_1":12,"age_2":0,"skin":0,"beard_2":0,"makeup_2":10,"beard_1":0,"age_1":0,"mask_2":0,"lipstick_1":0,"shoes_2":0,"decals_1":0,"eyebrows_2":10,"tshirt_1":131,"lipstick_4":0,"chain_1":0,"watches_2":0,"eyebrows_4":0,"tshirt_2":0,"lipstick_3":0,"hair_color_2":6,"ears_1":-1,"pants_1":24,"arms_2":0,"bproof_1":0,"chain_2":0,"torso_1":111,"ears_2":0,"helmet_2":24,"eyebrows_1":12,"beard_4":0,"pants_2":0,"shoes_1":10,"face":0,"mask_1":48,"makeup_4":2,"sex":0,"beard_3":0,"bproof_2":0,"eyebrows_3":0},"label":"Mafia Real"}]}'),
	(12909, 'property', 'steam:110000140c50e7e', '{"dressing":[{"skin":{"glasses_1":-1,"skin":0,"makeup_3":0,"beard_2":0,"shoes_2":0,"makeup_1":0,"hair_1":3,"tshirt_2":0,"torso_1":53,"shoes_1":25,"beard_3":0,"beard_1":0,"ears_1":2,"helmet_1":46,"tshirt_1":122,"mask_2":0,"eyebrows_4":0,"pants_1":31,"hair_2":0,"sex":0,"chain_1":0,"pants_2":0,"bproof_1":2,"helmet_2":0,"torso_2":0,"lipstick_1":0,"hair_color_2":0,"hair_color_1":6,"lipstick_4":0,"eyebrows_1":0,"age_2":0,"age_1":0,"bags_2":0,"bproof_2":0,"arms":41,"lipstick_2":0,"lipstick_3":0,"decals_2":0,"beard_4":0,"bags_1":0,"makeup_4":0,"glasses_2":0,"chain_2":0,"eyebrows_2":0,"decals_1":0,"ears_2":0,"face":0,"mask_1":0,"makeup_2":0,"eyebrows_3":0},"label":"geo"},{"skin":{"glasses_1":-1,"skin":0,"makeup_3":0,"beard_2":0,"shoes_2":0,"bproof_1":2,"hair_1":3,"tshirt_2":0,"torso_1":53,"shoes_1":25,"pants_2":0,"beard_1":0,"ears_1":2,"helmet_1":83,"tshirt_1":122,"mask_2":0,"eyebrows_4":0,"helmet_2":0,"hair_2":0,"lipstick_1":0,"sex":0,"lipstick_2":0,"glasses_2":0,"bags_2":0,"torso_2":0,"age_1":0,"hair_color_2":0,"hair_color_1":6,"lipstick_4":0,"eyebrows_1":0,"age_2":0,"eyebrows_2":0,"chain_1":0,"bproof_2":0,"arms":41,"lipstick_3":0,"bags_1":0,"pants_1":31,"beard_4":0,"decals_2":0,"makeup_4":0,"face":0,"makeup_1":0,"decals_1":0,"chain_2":0,"ears_2":0,"beard_3":0,"mask_1":0,"makeup_2":0,"eyebrows_3":0},"label":"geo buena"},{"skin":{"glasses_1":-1,"skin":0,"makeup_3":0,"glasses_2":0,"shoes_2":0,"bproof_1":2,"hair_1":3,"tshirt_2":0,"torso_1":53,"shoes_1":25,"beard_3":0,"beard_1":0,"ears_1":2,"helmet_1":83,"tshirt_1":122,"mask_2":0,"eyebrows_4":0,"helmet_2":0,"hair_2":0,"lipstick_2":0,"chain_1":0,"lipstick_1":0,"bags_2":0,"bags_1":0,"torso_2":0,"pants_2":0,"hair_color_2":0,"hair_color_1":6,"lipstick_4":0,"eyebrows_1":0,"age_2":0,"eyebrows_2":0,"lipstick_3":0,"bproof_2":0,"arms":41,"pants_1":31,"decals_2":0,"face":0,"beard_4":0,"beard_2":0,"makeup_4":0,"decals_1":0,"makeup_1":0,"chain_2":0,"age_1":0,"ears_2":0,"sex":0,"mask_1":35,"makeup_2":0,"eyebrows_3":0},"label":"xd"}]}'),
	(12910, 'property', 'steam:11000014a3623fd', '{"dressing":[{"skin":{"mask_1":0,"makeup_1":0,"ears_1":-1,"hair_color_1":14,"helmet_1":-1,"lipstick_2":0,"arms":15,"decals_2":0,"torso_1":132,"hair_2":0,"bags_1":0,"torso_2":6,"glasses_1":11,"makeup_3":0,"hair_1":59,"eyebrows_3":0,"skin":10,"makeup_2":0,"beard_1":0,"glasses_2":0,"mask_2":0,"decals_1":0,"shoes_2":0,"tshirt_2":0,"bproof_1":0,"tshirt_1":2,"lipstick_4":0,"chain_1":0,"watches_2":0,"lipstick_3":0,"eyebrows_2":0,"beard_4":0,"hair_color_2":7,"watches_1":11,"lipstick_1":0,"face":21,"bags_2":0,"chain_2":0,"age_1":0,"ears_2":0,"helmet_2":0,"eyebrows_1":0,"age_2":0,"pants_2":0,"shoes_1":74,"pants_1":21,"eyebrows_4":0,"makeup_4":0,"sex":1,"beard_3":0,"bproof_2":0,"beard_2":0},"label":"Yo"},{"skin":{"watches_1":2,"makeup_1":0,"ears_1":-1,"hair_color_1":14,"helmet_1":-1,"lipstick_2":0,"arms":15,"decals_2":0,"glasses_2":0,"hair_2":0,"bags_1":0,"beard_2":0,"glasses_1":11,"makeup_3":0,"hair_1":59,"eyebrows_3":0,"skin":10,"makeup_2":0,"beard_1":0,"age_2":0,"ears_2":0,"age_1":0,"shoes_2":0,"pants_1":12,"eyebrows_2":0,"tshirt_1":2,"lipstick_4":0,"chain_1":67,"watches_2":1,"decals_1":0,"tshirt_2":0,"lipstick_3":0,"beard_4":0,"eyebrows_4":0,"hair_color_2":7,"torso_2":17,"torso_1":231,"chain_2":0,"mask_1":0,"bags_2":0,"helmet_2":0,"eyebrows_1":0,"lipstick_1":0,"pants_2":1,"shoes_1":74,"face":21,"bproof_1":0,"makeup_4":0,"sex":1,"beard_3":0,"bproof_2":0,"mask_2":0},"label":"Yo"}]}'),
	(12911, 'property', 'steam:110000140dac238', '{}'),
	(12912, 'property', 'steam:1100001435fc632', '{"dressing":[{"label":"admi","skin":{"bags_2":0,"hair_color_1":29,"tshirt_2":0,"helmet_2":3,"lipstick_3":0,"lipstick_1":0,"glasses_1":0,"torso_1":222,"pants_1":0,"beard_4":0,"decals_1":0,"shoes_2":4,"bags_1":0,"eyebrows_2":0,"lipstick_4":0,"lipstick_2":0,"chain_1":0,"mask_1":51,"eyebrows_4":0,"shoes_1":7,"makeup_4":0,"beard_2":0,"makeup_1":0,"skin":0,"hair_color_2":0,"hair_1":12,"mask_2":6,"makeup_2":0,"chain_2":0,"arms":0,"makeup_3":0,"glasses_2":0,"age_1":0,"bproof_1":0,"face":0,"torso_2":10,"age_2":0,"tshirt_1":0,"beard_1":0,"ears_1":0,"eyebrows_3":0,"sex":0,"hair_2":0,"ears_2":0,"eyebrows_1":0,"decals_2":0,"helmet_1":-1,"beard_3":0,"pants_2":20,"bproof_2":0}},{"label":"banda los ballas","skin":{"bags_2":1,"hair_color_1":29,"tshirt_2":0,"helmet_2":3,"lipstick_3":0,"lipstick_1":0,"glasses_1":0,"lipstick_4":0,"pants_1":87,"beard_4":0,"decals_1":0,"shoes_2":4,"bags_1":23,"eyebrows_2":0,"chain_1":0,"lipstick_2":0,"arms":0,"mask_1":51,"eyebrows_4":0,"face":0,"makeup_4":0,"beard_2":0,"makeup_1":0,"skin":0,"makeup_3":0,"hair_1":12,"makeup_2":0,"hair_color_2":0,"shoes_1":7,"mask_2":6,"sex":0,"glasses_2":0,"age_1":0,"bproof_1":0,"chain_2":0,"torso_2":0,"age_2":0,"tshirt_1":0,"beard_1":0,"ears_1":0,"eyebrows_3":0,"eyebrows_1":0,"torso_1":0,"ears_2":0,"hair_2":0,"decals_2":0,"helmet_1":-1,"beard_3":0,"pants_2":22,"bproof_2":0}}],"weapons":[{"name":"WEAPON_MACHETE","ammo":0},{"name":"WEAPON_PISTOL","ammo":250},{"name":"WEAPON_COMBATPISTOL","ammo":249},{"name":"WEAPON_PISTOL","ammo":250},{"name":"weapon_combatpistol","ammo":250},{"name":"weapon_microsmg","ammo":250},{"name":"WEAPON_SPECIALCARBINE","ammo":328},{"name":"weapon_heavysniper","ammo":250},{"name":"weapon_microsmg","ammo":250},{"name":"weapon_combatpistol","ammo":250},{"name":"weapon_assaultrifle","ammo":250},{"name":"weapon_pistol","ammo":250},{"name":"WEAPON_SMG","ammo":46},{"ammo":156,"name":"WEAPON_PISTOL"},{"name":"WEAPON_SMG","ammo":100},{"ammo":250,"name":"weapon_combatpistol"},{"ammo":250,"name":"weapon_pistol"},{"name":"weapon_smg","ammo":250},{"name":"WEAPON_PISTOL","ammo":250},{"ammo":500,"name":"WEAPON_HEAVYPISTOL"},{"name":"WEAPON_FLASHLIGHT","ammo":100},{"ammo":42,"name":"WEAPON_MACHETE"},{"name":"weapon_assaultrifle","ammo":250},{"ammo":100,"name":"WEAPON_NIGHTSTICK"},{"name":"weapon_combatpistol","ammo":250},{"ammo":500,"name":"WEAPON_SPECIALCARBINE"},{"name":"WEAPON_SMG","ammo":232},{"ammo":250,"name":"weapon_pistol"},{"name":"weapon_knife","ammo":250},{"ammo":250,"name":"weapon_microsmg"},{"name":"WEAPON_COMBATPISTOL","ammo":100},{"ammo":100,"name":"WEAPON_STUNGUN"},{"name":"weapon_smg","ammo":250}]}'),
	(12913, 'property', 'steam:110000143b46740', '{"weapons":[{"name":"WEAPON_MACHETE","ammo":0},{"name":"WEAPON_PISTOL","ammo":250},{"name":"WEAPON_PISTOL","ammo":250},{"name":"weapon_combatpistol","ammo":250}]}'),
	(12914, 'property', 'steam:110000149d1eea6', '{"dressing":[{"skin":{"torso_1":223,"helmet_2":0,"bproof_2":0,"mask_1":0,"chain_1":0,"ears_1":-1,"eyebrows_1":2,"lipstick_2":0,"decals_2":0,"age_2":0,"tshirt_1":4,"decals_1":0,"beard_2":0,"glasses_1":-1,"torso_2":0,"makeup_3":0,"bags_2":0,"hair_2":0,"arms":15,"eyebrows_2":10,"makeup_4":0,"tshirt_2":0,"eyebrows_3":41,"skin":7,"sex":1,"bags_1":0,"chain_2":0,"mask_2":0,"bproof_1":0,"ears_2":0,"pants_1":15,"lipstick_4":0,"beard_4":0,"hair_color_1":57,"eyebrows_4":22,"makeup_1":0,"beard_3":0,"glasses_2":0,"helmet_1":-1,"lipstick_3":0,"age_1":0,"arms_2":0,"shoes_2":0,"lipstick_1":0,"beard_1":0,"face":45,"hair_1":61,"pants_2":0,"hair_color_2":11,"shoes_1":0,"makeup_2":10},"label":"putilla"},{"skin":{"torso_1":226,"helmet_2":0,"bproof_2":0,"mask_1":0,"chain_1":0,"ears_1":-1,"eyebrows_1":2,"lipstick_2":0,"decals_2":0,"age_2":0,"tshirt_1":4,"decals_1":0,"beard_2":0,"glasses_1":-1,"torso_2":0,"makeup_3":0,"bags_2":0,"hair_2":0,"arms":15,"eyebrows_2":10,"mask_2":0,"tshirt_2":0,"eyebrows_3":41,"makeup_4":0,"sex":1,"bags_1":0,"chain_2":0,"skin":7,"bproof_1":0,"ears_2":0,"pants_1":15,"arms_2":0,"beard_4":0,"hair_color_1":57,"lipstick_4":0,"makeup_1":0,"beard_3":0,"glasses_2":0,"shoes_2":0,"helmet_1":-1,"age_1":0,"shoes_1":0,"lipstick_1":0,"lipstick_3":0,"beard_1":0,"face":45,"hair_1":61,"pants_2":0,"hair_color_2":11,"eyebrows_4":22,"makeup_2":10},"label":"Blanco"},{"skin":{"torso_1":78,"helmet_2":0,"bproof_2":0,"mask_1":0,"chain_1":0,"ears_1":-1,"eyebrows_1":2,"lipstick_2":0,"decals_2":0,"age_2":0,"tshirt_1":14,"decals_1":0,"beard_2":0,"mask_2":0,"torso_2":0,"makeup_3":0,"bags_2":0,"hair_2":0,"arms":3,"eyebrows_2":10,"chain_2":0,"tshirt_2":0,"eyebrows_3":41,"skin":7,"sex":1,"bags_1":0,"bproof_1":0,"ears_2":0,"glasses_1":-1,"shoes_1":11,"pants_1":80,"helmet_1":-1,"beard_4":0,"hair_color_1":57,"eyebrows_4":22,"makeup_1":0,"beard_3":0,"glasses_2":0,"age_1":0,"lipstick_3":0,"shoes_2":3,"arms_2":0,"lipstick_1":0,"makeup_4":0,"beard_1":0,"face":45,"hair_1":61,"pants_2":1,"hair_color_2":11,"lipstick_4":0,"makeup_2":10},"label":"Machorra"},{"skin":{"torso_1":213,"helmet_2":0,"bproof_2":0,"mask_1":0,"chain_1":0,"ears_1":-1,"arms_2":0,"lipstick_2":0,"decals_2":0,"age_2":0,"tshirt_1":14,"decals_1":0,"beard_2":0,"mask_2":0,"torso_2":1,"makeup_3":0,"shoes_1":11,"hair_2":0,"arms":4,"eyebrows_2":10,"skin":7,"tshirt_2":0,"makeup_1":0,"chain_2":0,"sex":1,"bags_1":0,"makeup_4":0,"bproof_1":0,"ears_2":0,"shoes_2":3,"pants_1":16,"glasses_1":-1,"beard_4":0,"hair_color_1":57,"eyebrows_4":22,"bags_2":0,"beard_3":0,"glasses_2":0,"eyebrows_3":41,"lipstick_3":0,"eyebrows_1":2,"age_1":0,"helmet_1":-1,"lipstick_4":0,"lipstick_1":0,"face":45,"hair_1":61,"pants_2":8,"hair_color_2":11,"beard_1":0,"makeup_2":10},"label":"Blanco negro calor"},{"label":"Adri","skin":{"torso_1":105,"helmet_2":0,"bproof_2":0,"mask_1":0,"chain_1":0,"ears_1":-1,"lipstick_1":0,"skin":7,"decals_2":0,"age_2":0,"tshirt_1":14,"decals_1":0,"beard_2":0,"mask_2":0,"torso_2":2,"makeup_3":0,"bags_2":0,"hair_2":0,"arms":4,"helmet_1":-1,"eyebrows_2":10,"tshirt_2":0,"makeup_1":0,"chain_2":0,"sex":1,"bags_1":0,"arms_2":0,"bproof_1":0,"ears_2":0,"glasses_1":-1,"pants_1":102,"lipstick_4":0,"beard_4":0,"beard_1":0,"shoes_2":0,"lipstick_2":0,"beard_3":0,"glasses_2":0,"makeup_4":0,"lipstick_3":0,"eyebrows_4":22,"eyebrows_3":41,"shoes_1":28,"age_1":0,"hair_color_1":57,"face":45,"hair_1":61,"pants_2":0,"hair_color_2":11,"eyebrows_1":2,"makeup_2":10}}]}'),
	(12915, 'property', 'steam:110000144cb2283', '{"weapons":[{"name":"WEAPON_MACHETE","ammo":42}],"dressing":[{"skin":{"helmet_1":109,"tshirt_2":0,"hair_color_1":1,"beard_1":7,"pants_1":59,"glasses_2":0,"shoes_1":12,"beard_3":0,"eyebrows_2":0,"lipstick_3":0,"torso_2":4,"chain_1":0,"eyebrows_4":0,"bproof_1":0,"pants_2":7,"bags_1":0,"makeup_2":0,"lipstick_1":0,"decals_2":0,"beard_4":0,"skin":4,"bproof_2":0,"decals_1":0,"mask_1":56,"eyebrows_3":0,"chain_2":0,"helmet_2":4,"makeup_1":0,"shoes":35,"ears_2":0,"ears_1":-1,"lipstick_2":0,"sex":0,"arms":20,"tshirt_1":16,"age_2":0,"face":0,"hair_color_2":0,"eyebrows_1":0,"shoes_2":0,"lipstick_4":0,"glasses_1":5,"age_1":0,"torso_1":230,"bags_2":0,"hair_2":0,"mask_2":8,"beard_2":8,"hair_1":11,"makeup_3":0,"makeup_4":0},"label":"ORIGINAL-CHILL"},{"label":"malandro-negro y amarillo","skin":{"helmet_1":120,"tshirt_2":0,"hair_color_1":1,"beard_1":7,"pants_1":66,"glasses_2":4,"shoes_1":32,"sex":0,"eyebrows_2":0,"lipstick_3":0,"torso_2":16,"chain_1":116,"eyebrows_4":0,"bproof_1":0,"pants_2":3,"skin":4,"makeup_4":0,"makeup_2":0,"lipstick_1":0,"face":0,"beard_4":0,"mask_1":134,"age_2":0,"ears_2":0,"shoes_2":14,"eyebrows_3":0,"decals_2":0,"helmet_2":0,"makeup_1":0,"shoes":35,"decals_1":0,"arms_2":0,"chain_2":0,"lipstick_4":0,"arms":30,"eyebrows_1":0,"lipstick_2":0,"tshirt_1":14,"bags_1":44,"hair_2":0,"hair_color_2":0,"bproof_2":0,"glasses_1":25,"age_1":0,"torso_1":153,"bags_2":0,"ears_1":-1,"mask_2":7,"beard_3":0,"hair_1":11,"makeup_3":0,"beard_2":8}}]}'),
	(12916, 'property', 'steam:1100001459066b5', '{"dressing":[{"label":"vesturario","skin":{"torso_2":4,"age_1":0,"eyebrows_2":10,"bproof_1":0,"makeup_1":23,"lipstick_1":0,"glasses_2":0,"lipstick_2":0,"eyebrows_1":2,"beard_1":0,"beard_4":0,"skin":4,"makeup_3":6,"bags_2":0,"lipstick_3":0,"tshirt_1":15,"glasses_1":-1,"sex":0,"age_2":0,"hair_color_1":0,"mask_2":0,"decals_2":0,"decals_1":0,"pants_2":2,"helmet_2":0,"chain_1":0,"lipstick_4":0,"shoes_2":0,"eyebrows_4":0,"ears_2":0,"torso_1":1,"tshirt_2":-1,"eyebrows_3":0,"ears_1":-1,"face":0,"hair_color_2":0,"bproof_2":0,"beard_2":0,"helmet_1":-1,"bags_1":0,"hair_1":73,"pants_1":55,"makeup_2":10,"arms":0,"hair_2":0,"mask_1":52,"shoes_1":7,"makeup_4":0,"chain_2":0,"beard_3":0}},{"label":"Lgante","skin":{"torso_2":0,"age_1":0,"eyebrows_2":10,"bproof_1":0,"makeup_1":0,"lipstick_1":0,"chain_2":0,"lipstick_2":0,"eyebrows_1":2,"beard_1":0,"beard_4":0,"skin":4,"makeup_3":22,"torso_1":32,"lipstick_3":0,"tshirt_1":36,"glasses_1":-1,"sex":0,"age_2":0,"decals_2":0,"mask_2":0,"hair_color_1":0,"decals_1":0,"pants_2":0,"helmet_2":0,"chain_1":0,"shoes_2":0,"lipstick_4":191,"ears_1":-1,"ears_2":0,"makeup_2":212,"bags_2":0,"eyebrows_3":0,"eyebrows_4":0,"face":0,"hair_color_2":0,"bproof_2":-1,"tshirt_2":0,"helmet_1":0,"bags_1":0,"hair_1":73,"beard_2":0,"glasses_2":0,"arms":4,"hair_2":0,"mask_1":0,"shoes_1":10,"pants_1":28,"makeup_4":0,"beard_3":0}},{"label":"cni","skin":{"torso_2":0,"age_1":0,"eyebrows_2":10,"bproof_1":2,"makeup_1":0,"lipstick_1":0,"chain_2":0,"lipstick_2":0,"eyebrows_1":2,"beard_1":0,"beard_4":0,"skin":4,"makeup_3":22,"hair_color_1":0,"lipstick_3":0,"tshirt_1":57,"glasses_1":-1,"sex":0,"age_2":0,"decals_2":0,"mask_2":0,"eyebrows_4":0,"decals_1":0,"pants_2":0,"helmet_2":0,"chain_1":0,"shoes_2":0,"lipstick_4":191,"beard_2":0,"ears_2":0,"torso_1":89,"bags_2":0,"eyebrows_3":0,"ears_1":-1,"face":0,"hair_color_2":0,"bproof_2":0,"pants_1":31,"helmet_1":0,"bags_1":0,"hair_1":73,"glasses_2":0,"makeup_2":212,"arms":4,"hair_2":0,"mask_1":0,"shoes_1":24,"tshirt_2":0,"makeup_4":0,"beard_3":0}},{"label":"cni 2","skin":{"torso_2":0,"age_1":0,"eyebrows_2":10,"bproof_1":2,"makeup_1":0,"lipstick_1":0,"glasses_2":0,"lipstick_2":0,"eyebrows_1":2,"beard_1":0,"beard_4":0,"skin":4,"makeup_3":22,"bags_2":0,"lipstick_3":0,"tshirt_1":57,"glasses_1":-1,"sex":0,"age_2":0,"decals_2":0,"mask_2":0,"hair_color_1":0,"decals_1":0,"pants_2":0,"helmet_2":20,"chain_1":0,"lipstick_4":191,"shoes_2":0,"eyebrows_4":0,"ears_2":0,"torso_1":89,"tshirt_2":0,"eyebrows_3":0,"ears_1":-1,"face":0,"hair_color_2":0,"bproof_2":0,"beard_2":0,"helmet_1":104,"bags_1":0,"hair_1":73,"makeup_2":212,"pants_1":31,"arms":4,"hair_2":0,"mask_1":0,"shoes_1":24,"chain_2":0,"makeup_4":0,"beard_3":0}},{"label":"cni 3","skin":{"torso_2":0,"age_1":0,"eyebrows_2":10,"bproof_1":2,"lipstick_4":191,"lipstick_1":0,"hair_color_1":0,"lipstick_2":0,"eyebrows_1":2,"beard_1":0,"beard_4":0,"skin":4,"makeup_3":22,"beard_2":0,"lipstick_3":0,"tshirt_1":57,"glasses_1":-1,"sex":0,"bags_2":0,"pants_1":31,"age_2":0,"mask_2":0,"decals_1":0,"pants_2":0,"helmet_2":20,"chain_1":112,"chain_2":2,"makeup_2":212,"makeup_4":0,"ears_2":0,"torso_1":53,"tshirt_2":0,"eyebrows_3":0,"ears_1":-1,"face":0,"hair_color_2":0,"bproof_2":0,"makeup_1":0,"helmet_1":104,"bags_1":0,"hair_1":73,"decals_2":0,"eyebrows_4":0,"arms":4,"hair_2":0,"mask_1":0,"shoes_1":24,"shoes_2":0,"glasses_2":0,"beard_3":0}}]}'),
	(12917, 'property', 'steam:11000013bdbdf36', '{}'),
	(12918, 'property', 'steam:110000146c5198f', '{"dressing":[{"skin":{"beard_1":0,"beard_4":0,"makeup_2":0,"makeup_3":0,"lipstick_1":0,"bags_2":0,"eyebrows_3":3,"lipstick_3":0,"eyebrows_1":30,"eyebrows_4":0,"ears_1":-1,"makeup_4":0,"hair_color_1":0,"hair_1":73,"pants_1":87,"bproof_2":1,"helmet_1":14,"helmet_2":2,"tshirt_1":2,"mask_2":0,"arms_2":0,"glasses_2":0,"hair_2":0,"pants_2":20,"glasses_1":3,"beard_3":0,"beard_2":0,"face":0,"chain_1":0,"lipstick_4":0,"torso_1":139,"eyebrows_2":10,"hair_color_2":0,"makeup_1":0,"shoes_1":7,"age_2":0,"ears_2":0,"arms":1,"age_1":0,"chain_2":0,"decals_2":0,"tshirt_2":0,"decals_1":0,"lipstick_2":0,"mask_1":51,"skin":3,"shoes_2":0,"bproof_1":7,"torso_2":3,"sex":0,"bags_1":0}}]}'),
	(12919, 'property', 'steam:1100001459cdf33', '{}'),
	(12920, 'property', 'steam:1100001454337bf', '{"dressing":[{"label":"blood gang","skin":{"bags_2":0,"hair_color_1":0,"tshirt_2":3,"chain_2":0,"lipstick_3":0,"lipstick_1":0,"glasses_1":-1,"lipstick_4":0,"pants_1":59,"bracelets_2":0,"beard_4":0,"decals_1":0,"shoes_2":11,"bags_1":0,"eyebrows_1":0,"mask_2":4,"hair_color_2":0,"decals_2":0,"lipstick_2":0,"skin":9,"chain_1":0,"makeup_1":0,"bracelets_1":2,"makeup_4":0,"face":0,"tshirt_1":0,"eyebrows_2":0,"beard_2":0,"hair_1":46,"makeup_3":0,"helmet_2":1,"hair_2":0,"arms":0,"eyebrows_3":0,"glasses_2":0,"age_1":0,"bproof_1":0,"eyebrows_4":0,"torso_2":1,"ears_2":0,"makeup_2":0,"beard_1":0,"ears_1":-1,"arms_2":0,"helmet_1":-1,"torso_1":282,"sex":0,"age_2":0,"shoes_1":7,"mask_1":51,"beard_3":0,"pants_2":9,"bproof_2":0}}],"weapons":[{"ammo":250,"name":"weapon_microsmg"},{"name":"WEAPON_SPECIALCARBINE","ammo":182},{"name":"WEAPON_SNIPERRIFLE","ammo":300},{"ammo":300,"name":"WEAPON_ASSAULTRIFLE"}]}'),
	(12921, 'property', 'steam:1100001490c035f', '{}'),
	(12922, 'property', 'steam:1100001322c5167', '{"dressing":[{"label":"atracadorrrr","skin":{"helmet_1":-1,"tshirt_2":0,"hair_color_1":0,"ears_2":0,"lipstick_2":0,"glasses_2":0,"shoes_1":25,"beard_3":0,"eyebrows_2":0,"lipstick_3":0,"torso_2":0,"chain_1":0,"eyebrows_4":0,"bproof_1":0,"pants_2":0,"makeup_2":0,"arms":1,"beard_1":0,"beard_4":0,"shoes_2":0,"bproof_2":0,"beard_2":4,"mask_1":48,"eyebrows_3":0,"chain_2":0,"lipstick_4":0,"makeup_1":0,"pants_1":7,"lipstick_1":0,"ears_1":-1,"hair_color_2":0,"helmet_2":0,"age_2":0,"decals_1":0,"makeup_4":0,"tshirt_1":21,"skin":0,"bags_1":0,"sex":0,"decals_2":0,"glasses_1":0,"age_1":0,"torso_1":68,"bags_2":0,"face":0,"mask_2":1,"eyebrows_1":0,"hair_1":13,"makeup_3":0,"hair_2":5}}]}'),
	(12923, 'property', 'steam:110000147ba94d0', '{}'),
	(12924, 'property', 'steam:110000147e48629', '{}'),
	(12925, 'property', 'steam:110000117a97173', '{}'),
	(12926, 'property', 'steam:110000144b17670', '{"weapons":[{"name":"WEAPON_PISTOL","ammo":42}],"dressing":[{"skin":{"mask_1":0,"makeup_1":0,"bags_2":9,"hair_color_1":8,"helmet_1":-1,"lipstick_2":0,"arms":56,"decals_2":0,"torso_1":2,"hair_2":0,"bags_1":23,"beard_2":0,"glasses_1":-1,"makeup_3":0,"hair_1":44,"eyebrows_3":8,"skin":10,"makeup_2":0,"beard_1":0,"mask_2":0,"shoes_2":11,"glasses_2":0,"bproof_1":0,"tshirt_1":15,"lipstick_4":0,"chain_1":90,"decals_1":0,"torso_2":3,"beard_4":0,"lipstick_3":0,"hair_color_2":0,"eyebrows_2":10,"pants_1":0,"lipstick_1":0,"eyebrows_4":0,"chain_2":1,"ears_2":0,"helmet_2":0,"tshirt_2":0,"eyebrows_1":30,"ears_1":-1,"pants_2":0,"shoes_1":7,"face":0,"age_2":0,"makeup_4":0,"sex":0,"beard_3":0,"bproof_2":-1,"age_1":0},"label":"Incognito"},{"skin":{"mask_1":0,"makeup_1":0,"ears_1":-1,"hair_color_1":8,"helmet_1":-1,"lipstick_2":0,"arms":56,"decals_2":0,"torso_1":2,"hair_2":0,"bags_1":23,"beard_2":0,"glasses_1":-1,"makeup_3":0,"hair_1":44,"eyebrows_3":8,"skin":10,"makeup_2":0,"beard_1":0,"mask_2":0,"shoes_2":12,"glasses_2":0,"bproof_1":0,"tshirt_1":15,"lipstick_4":0,"chain_1":90,"decals_1":0,"eyebrows_2":10,"beard_4":0,"lipstick_3":0,"hair_color_2":0,"sex":0,"torso_2":3,"tshirt_2":0,"face":0,"chain_2":1,"lipstick_1":0,"bags_2":9,"helmet_2":0,"eyebrows_1":30,"ears_2":0,"pants_2":9,"shoes_1":7,"pants_1":2,"age_2":0,"makeup_4":0,"age_1":0,"beard_3":0,"bproof_2":-1,"eyebrows_4":0},"label":"Chicago Bulls"},{"skin":{"mask_1":0,"makeup_1":0,"ears_1":-1,"hair_color_1":8,"helmet_1":-1,"lipstick_2":0,"arms_2":0,"decals_2":0,"torso_1":84,"hair_2":0,"bags_1":23,"beard_2":0,"glasses_1":-1,"makeup_3":0,"hair_1":44,"eyebrows_3":8,"skin":10,"makeup_2":0,"beard_1":0,"mask_2":0,"glasses_2":0,"shoes_2":5,"decals_1":0,"bproof_1":0,"tshirt_1":15,"lipstick_4":0,"chain_1":90,"beard_4":0,"lipstick_3":0,"sex":0,"torso_2":0,"hair_color_2":0,"eyebrows_2":10,"pants_1":59,"bags_2":9,"lipstick_1":0,"chain_2":1,"tshirt_2":0,"ears_2":0,"helmet_2":0,"eyebrows_1":30,"age_2":0,"pants_2":9,"shoes_1":7,"face":0,"eyebrows_4":0,"makeup_4":0,"age_1":0,"beard_3":0,"bproof_2":-1,"arms":96},"label":"Supreme"},{"skin":{"mask_1":0,"makeup_1":0,"bags_2":9,"eyebrows_4":0,"helmet_1":-1,"lipstick_2":0,"arms_2":0,"decals_2":0,"torso_1":2,"hair_2":0,"bags_1":23,"beard_2":0,"glasses_1":-1,"makeup_3":0,"hair_1":44,"eyebrows_3":8,"skin":10,"makeup_2":0,"beard_1":0,"mask_2":0,"glasses_2":0,"shoes_2":1,"decals_1":0,"bproof_1":0,"tshirt_1":15,"lipstick_4":0,"chain_1":90,"beard_4":0,"lipstick_3":0,"torso_2":3,"eyebrows_2":10,"hair_color_2":0,"pants_1":78,"lipstick_1":0,"age_2":0,"helmet_2":0,"chain_2":1,"hair_color_1":8,"ears_1":-1,"tshirt_2":0,"eyebrows_1":30,"ears_2":0,"pants_2":8,"shoes_1":83,"face":0,"arms":125,"makeup_4":0,"sex":0,"beard_3":0,"bproof_2":-1,"age_1":0},"label":"Chicago 22"},{"skin":{"mask_1":0,"makeup_1":0,"bags_2":3,"hair_color_1":8,"helmet_1":-1,"lipstick_2":0,"arms":125,"decals_2":0,"torso_1":83,"hair_2":0,"bags_1":67,"beard_2":0,"glasses_1":-1,"makeup_3":0,"hair_1":44,"eyebrows_3":8,"skin":10,"makeup_2":0,"beard_1":0,"mask_2":0,"glasses_2":0,"shoes_2":2,"decals_1":0,"bproof_1":0,"tshirt_1":59,"lipstick_4":0,"chain_1":90,"tshirt_2":1,"lipstick_3":0,"eyebrows_2":10,"beard_4":0,"hair_color_2":0,"pants_1":2,"lipstick_1":0,"torso_2":0,"eyebrows_4":0,"chain_2":1,"ears_1":-1,"ears_2":0,"helmet_2":0,"eyebrows_1":30,"arms_2":0,"pants_2":3,"shoes_1":31,"face":0,"age_1":0,"makeup_4":0,"sex":0,"beard_3":0,"bproof_2":0,"age_2":0},"label":"Chaleco la once"},{"skin":{"mask_1":0,"makeup_1":0,"ears_1":-1,"hair_color_1":8,"helmet_1":-1,"lipstick_2":0,"arms":52,"decals_2":0,"torso_1":271,"hair_2":0,"bags_1":67,"beard_2":0,"glasses_1":-1,"makeup_3":0,"hair_1":44,"eyebrows_3":8,"skin":10,"makeup_2":0,"beard_1":0,"mask_2":0,"glasses_2":0,"shoes_2":3,"decals_1":0,"bproof_1":0,"tshirt_1":59,"lipstick_4":0,"chain_1":90,"tshirt_2":1,"lipstick_3":0,"sex":0,"torso_2":1,"hair_color_2":0,"beard_4":0,"eyebrows_2":10,"face":0,"lipstick_1":0,"chain_2":1,"arms_2":0,"ears_2":0,"helmet_2":0,"eyebrows_1":30,"age_2":0,"pants_2":4,"shoes_1":83,"pants_1":86,"bags_2":3,"makeup_4":0,"age_1":0,"beard_3":0,"bproof_2":0,"eyebrows_4":0},"label":"BAarcelona"},{"skin":{"mask_1":0,"makeup_1":0,"bags_2":3,"hair_color_1":8,"helmet_1":-1,"lipstick_2":0,"arms_2":0,"decals_2":0,"torso_1":2,"hair_2":0,"bags_1":67,"beard_2":0,"glasses_1":-1,"makeup_3":0,"hair_1":44,"eyebrows_3":8,"skin":10,"makeup_2":0,"beard_1":0,"mask_2":0,"glasses_2":0,"shoes_2":3,"decals_1":0,"bproof_1":0,"tshirt_1":1,"lipstick_4":0,"chain_1":90,"beard_4":0,"lipstick_3":0,"eyebrows_2":10,"pants_1":2,"hair_color_2":0,"lipstick_1":0,"eyebrows_4":0,"tshirt_2":0,"torso_2":3,"chain_2":1,"ears_1":-1,"ears_2":0,"helmet_2":0,"eyebrows_1":30,"age_2":0,"pants_2":9,"shoes_1":83,"face":0,"arms":2,"makeup_4":0,"sex":0,"beard_3":0,"bproof_2":0,"age_1":0},"label":"dd"},{"skin":{"mask_1":0,"makeup_1":0,"ears_1":2,"hair_color_1":8,"helmet_1":-1,"lipstick_2":0,"arms_2":0,"decals_2":0,"torso_1":111,"hair_2":0,"bags_1":52,"torso_2":3,"lipstick_3":0,"makeup_3":0,"hair_1":44,"eyebrows_3":8,"skin":10,"makeup_2":0,"beard_1":0,"lipstick_1":0,"mask_2":0,"shoes_2":12,"eyebrows_2":10,"bproof_1":0,"tshirt_1":15,"lipstick_4":0,"chain_1":0,"age_1":0,"glasses_1":-1,"decals_1":0,"tshirt_2":0,"hair_color_2":0,"arms":96,"beard_2":0,"beard_4":0,"pants_1":87,"chain_2":0,"bags_2":0,"glasses_2":0,"helmet_2":0,"eyebrows_1":30,"ears_2":0,"pants_2":20,"shoes_1":6,"face":0,"eyebrows_4":0,"makeup_4":0,"sex":0,"beard_3":0,"bproof_2":0,"age_2":0},"label":"Families"}]}'),
	(12927, 'property', 'steam:110000145a6bc9c', '{"dressing":[{"label":"banda lila","skin":{"bags_2":1,"hair_color_1":33,"tshirt_2":14,"chain_2":0,"lipstick_3":0,"lipstick_1":0,"glasses_1":-1,"lipstick_4":0,"pants_1":87,"beard_4":0,"decals_1":0,"shoes_2":4,"bags_1":23,"hair_2":0,"lipstick_2":0,"decals_2":0,"makeup_2":0,"eyebrows_4":0,"chain_1":1,"makeup_4":0,"face":0,"hair_color_2":0,"skin":4,"beard_2":0,"hair_1":38,"makeup_3":0,"helmet_2":0,"makeup_1":0,"mask_2":6,"eyebrows_3":0,"glasses_2":0,"age_1":0,"bproof_1":10,"tshirt_1":2,"torso_2":0,"ears_2":0,"eyebrows_2":1,"beard_1":0,"ears_1":-1,"mask_1":51,"torso_1":0,"sex":0,"eyebrows_1":0,"age_2":0,"shoes_1":7,"bproof_2":0,"beard_3":0,"pants_2":22,"helmet_1":-1}},{"label":"banda roja","skin":{"bags_2":0,"hair_color_1":21,"tshirt_2":2,"helmet_2":0,"lipstick_3":0,"lipstick_1":0,"glasses_1":-1,"lipstick_4":0,"pants_1":28,"beard_4":0,"decals_1":0,"shoes_2":12,"bags_1":45,"makeup_2":0,"chain_2":0,"hair_color_2":0,"lipstick_2":0,"decals_2":0,"chain_1":0,"eyebrows_4":0,"mask_2":4,"makeup_4":0,"face":0,"beard_2":0,"skin":4,"makeup_3":0,"hair_1":38,"hair_2":0,"tshirt_1":31,"makeup_1":0,"arms":1,"eyebrows_3":0,"glasses_2":0,"age_1":0,"bproof_1":86,"bproof_2":0,"torso_2":0,"ears_2":0,"eyebrows_1":0,"beard_1":0,"ears_1":-1,"eyebrows_2":1,"arms_2":0,"torso_1":30,"sex":0,"age_2":0,"shoes_1":7,"mask_1":51,"beard_3":0,"pants_2":0,"helmet_1":-1}},{"label":"negro corto con pelo mascara y zapatos rojos","skin":{"bags_2":0,"hair_color_1":21,"tshirt_2":1,"chain_2":0,"lipstick_3":0,"lipstick_1":0,"glasses_1":-1,"torso_1":2,"pants_1":2,"bracelets_2":0,"beard_4":0,"decals_1":0,"shoes_2":12,"makeup_3":0,"helmet_2":0,"bags_1":0,"shoes_1":7,"chain_1":0,"mask_2":4,"watches_1":2,"lipstick_2":0,"mask_1":51,"beard_2":0,"makeup_1":0,"bracelets_1":4,"makeup_4":0,"face":0,"watches_2":0,"skin":4,"hair_2":0,"hair_1":38,"tshirt_1":0,"makeup_2":0,"eyebrows_1":0,"arms":7,"sex":0,"glasses_2":0,"age_1":0,"bproof_1":0,"arms_2":0,"torso_2":0,"age_2":0,"lipstick_4":0,"beard_1":0,"ears_1":-1,"eyebrows_2":1,"eyebrows_3":0,"hair_color_2":0,"ears_2":0,"helmet_1":-1,"decals_2":0,"eyebrows_4":0,"beard_3":0,"pants_2":12,"bproof_2":0}},{"label":"negro tipo sicario con pelo y mascara roja","skin":{"bags_2":0,"hair_color_1":21,"tshirt_2":1,"chain_2":0,"lipstick_3":0,"lipstick_1":0,"glasses_1":-1,"torso_1":86,"pants_1":79,"bracelets_2":0,"beard_4":0,"decals_1":0,"shoes_2":0,"makeup_3":0,"helmet_2":0,"bags_1":45,"shoes_1":7,"chain_1":0,"mask_2":4,"watches_1":2,"lipstick_2":0,"mask_1":51,"beard_2":0,"makeup_1":0,"bracelets_1":4,"makeup_4":0,"face":0,"watches_2":0,"skin":4,"hair_2":0,"hair_1":38,"tshirt_1":0,"makeup_2":0,"eyebrows_1":0,"arms":30,"sex":0,"glasses_2":0,"age_1":0,"bproof_1":0,"eyebrows_4":0,"torso_2":0,"age_2":0,"lipstick_4":0,"beard_1":0,"hair_color_2":0,"eyebrows_2":1,"eyebrows_3":0,"ears_1":-1,"ears_2":0,"arms_2":0,"decals_2":0,"helmet_1":-1,"beard_3":0,"pants_2":0,"bproof_2":0}},{"label":"camuflaje","skin":{"bags_2":0,"hair_color_1":21,"tshirt_2":1,"chain_2":0,"lipstick_3":0,"lipstick_1":0,"glasses_1":-1,"torso_1":208,"pants_1":87,"bracelets_2":0,"beard_4":0,"decals_1":0,"shoes_2":10,"watches_2":0,"beard_2":0,"bags_1":45,"makeup_3":0,"shoes_1":7,"chain_1":0,"mask_2":4,"lipstick_2":0,"hair_color_2":0,"watches_1":2,"makeup_1":0,"bracelets_1":4,"makeup_4":0,"face":0,"helmet_2":0,"skin":4,"bproof_2":0,"hair_1":38,"hair_2":0,"tshirt_1":0,"eyebrows_1":0,"arms":30,"sex":0,"glasses_2":0,"age_1":0,"bproof_1":0,"eyebrows_4":0,"torso_2":8,"age_2":0,"ears_2":0,"beard_1":0,"ears_1":-1,"lipstick_4":0,"makeup_2":0,"eyebrows_2":1,"eyebrows_3":0,"mask_1":51,"decals_2":0,"arms_2":0,"beard_3":0,"pants_2":16,"helmet_1":-1}},{"label":"rojo y blanco","skin":{"bags_2":0,"hair_color_1":21,"tshirt_2":1,"chain_2":0,"lipstick_3":0,"lipstick_1":0,"glasses_1":-1,"lipstick_4":0,"pants_1":2,"bracelets_2":0,"beard_4":0,"decals_1":0,"shoes_2":11,"beard_2":0,"makeup_3":0,"bags_1":45,"decals_2":0,"hair_color_2":0,"chain_1":0,"mask_2":4,"lipstick_2":0,"watches_2":0,"watches_1":2,"makeup_1":0,"bracelets_1":4,"makeup_4":0,"face":0,"helmet_2":0,"skin":4,"bproof_2":0,"hair_1":38,"hair_2":0,"tshirt_1":0,"eyebrows_4":0,"arms":30,"eyebrows_3":0,"glasses_2":0,"age_1":0,"bproof_1":0,"eyebrows_1":0,"torso_2":7,"ears_2":0,"makeup_2":0,"beard_1":0,"ears_1":-1,"mask_1":51,"eyebrows_2":1,"arms_2":0,"torso_1":200,"sex":0,"shoes_1":7,"age_2":0,"beard_3":0,"pants_2":9,"helmet_1":-1}}],"weapons":[{"ammo":42,"name":"WEAPON_MACHETE"},{"ammo":250,"name":"weapon_microsmg"},{"ammo":250,"name":"weapon_microsmg"},{"ammo":100,"name":"WEAPON_SPECIALCARBINE"},{"ammo":227,"name":"WEAPON_COMBATPISTOL"},{"ammo":200,"name":"WEAPON_SPECIALCARBINE"},{"ammo":500,"name":"WEAPON_SPECIALCARBINE"},{"ammo":250,"name":"weapon_microsmg"},{"ammo":250,"name":"weapon_machinepistol"},{"ammo":100,"name":"WEAPON_COMBATPISTOL"},{"ammo":200,"name":"WEAPON_SNIPERRIFLE"},{"ammo":200,"name":"WEAPON_SNIPERRIFLE"},{"ammo":200,"name":"WEAPON_SNIPERRIFLE"},{"ammo":200,"name":"WEAPON_SNIPERRIFLE"},{"ammo":200,"name":"WEAPON_PISTOL50"},{"ammo":200,"name":"WEAPON_PISTOL50"},{"ammo":200,"name":"WEAPON_PISTOL50"},{"ammo":200,"name":"WEAPON_VINTAGEPISTOL"},{"ammo":200,"name":"WEAPON_VINTAGEPISTOL"},{"ammo":200,"name":"WEAPON_VINTAGEPISTOL"},{"ammo":200,"name":"WEAPON_VINTAGEPISTOL"},{"ammo":200,"name":"WEAPON_MARKSMANPISTOL"},{"ammo":200,"name":"WEAPON_MARKSMANPISTOL"},{"ammo":200,"name":"WEAPON_MACHINEPISTOL"},{"ammo":200,"name":"WEAPON_MACHINEPISTOL"},{"ammo":200,"name":"WEAPON_MACHINEPISTOL"},{"ammo":200,"name":"WEAPON_MACHINEPISTOL"},{"ammo":200,"name":"WEAPON_MACHINEPISTOL"},{"ammo":200,"name":"WEAPON_ASSAULTRIFLE"},{"ammo":200,"name":"WEAPON_ASSAULTRIFLE"},{"ammo":200,"name":"WEAPON_ASSAULTRIFLE"},{"ammo":200,"name":"WEAPON_ASSAULTRIFLE"},{"ammo":200,"name":"WEAPON_KNIFE"},{"ammo":200,"name":"WEAPON_MARKSMANPISTOL"},{"ammo":542,"name":"WEAPON_PISTOL"},{"ammo":200,"name":"WEAPON_PISTOL"},{"ammo":200,"name":"WEAPON_PISTOL"},{"ammo":200,"name":"WEAPON_ASSAULTRIFLE"},{"ammo":200,"name":"WEAPON_ASSAULTRIFLE"},{"ammo":200,"name":"WEAPON_ASSAULTRIFLE"},{"ammo":200,"name":"WEAPON_ASSAULTRIFLE"},{"ammo":200,"name":"WEAPON_PISTOL50"},{"ammo":164,"name":"WEAPON_PISTOL"},{"ammo":200,"name":"WEAPON_SNIPERRIFLE"},{"ammo":200,"name":"WEAPON_ASSAULTRIFLE"},{"ammo":200,"name":"WEAPON_MACHINEPISTOL"},{"ammo":200,"name":"WEAPON_SNIPERRIFLE"},{"ammo":200,"name":"WEAPON_ASSAULTRIFLE"},{"ammo":200,"name":"WEAPON_MUSKET"},{"ammo":200,"name":"WEAPON_MUSKET"},{"ammo":200,"name":"WEAPON_MUSKET"},{"ammo":200,"name":"WEAPON_MUSKET"},{"ammo":200,"name":"WEAPON_MUSKET"},{"ammo":200,"name":"WEAPON_MUSKET"},{"ammo":200,"name":"WEAPON_HEAVYSHOTGUN"},{"ammo":200,"name":"WEAPON_HEAVYSHOTGUN"},{"ammo":200,"name":"WEAPON_HEAVYSHOTGUN"},{"ammo":200,"name":"WEAPON_HEAVYSHOTGUN"},{"ammo":200,"name":"WEAPON_HEAVYSHOTGUN"},{"ammo":200,"name":"WEAPON_HEAVYSHOTGUN"},{"ammo":200,"name":"WEAPON_PUMPSHOTGUN"},{"ammo":200,"name":"WEAPON_PUMPSHOTGUN"},{"ammo":200,"name":"WEAPON_PUMPSHOTGUN"},{"ammo":200,"name":"WEAPON_PUMPSHOTGUN"},{"ammo":200,"name":"WEAPON_PUMPSHOTGUN"},{"ammo":200,"name":"WEAPON_PUMPSHOTGUN"},{"ammo":400,"name":"WEAPON_ASSAULTRIFLE"},{"ammo":300,"name":"WEAPON_MICROSMG"},{"ammo":300,"name":"WEAPON_SMG"},{"ammo":300,"name":"WEAPON_SMG"},{"ammo":300,"name":"WEAPON_SMG"},{"ammo":300,"name":"WEAPON_SMG"},{"ammo":300,"name":"WEAPON_SMG"},{"ammo":250,"name":"weapon_combatpistol"},{"ammo":200,"name":"WEAPON_MICROSMG"},{"ammo":38,"name":"WEAPON_SPECIALCARBINE"},{"ammo":300,"name":"WEAPON_SMG"},{"ammo":190,"name":"WEAPON_PISTOL"},{"ammo":196,"name":"WEAPON_HEAVYSNIPER"},{"ammo":300,"name":"WEAPON_SMG"},{"ammo":129,"name":"WEAPON_HEAVYPISTOL"},{"ammo":300,"name":"WEAPON_ASSAULTRIFLE"},{"ammo":42,"name":"WEAPON_MACHETE"},{"ammo":69,"name":"WEAPON_COMBATPISTOL"},{"ammo":250,"name":"weapon_assaultrifle"},{"ammo":300,"name":"WEAPON_PISTOL"},{"ammo":200,"name":"WEAPON_ASSAULTRIFLE"},{"ammo":200,"name":"WEAPON_HEAVYSNIPER"},{"ammo":247,"name":"WEAPON_COMBATPISTOL"},{"ammo":250,"name":"weapon_assaultrifle"},{"ammo":200,"name":"WEAPON_SNIPERRIFLE"},{"ammo":95,"name":"WEAPON_SMG"},{"ammo":248,"name":"WEAPON_PISTOL"},{"name":"WEAPON_HEAVYPISTOL","ammo":100},{"ammo":100,"name":"WEAPON_SMG"},{"name":"WEAPON_ASSAULTRIFLE","ammo":184},{"ammo":500,"name":"WEAPON_COMBATPISTOL"},{"name":"WEAPON_SNIPERRIFLE","ammo":200},{"ammo":200,"name":"WEAPON_PISTOL"},{"ammo":200,"name":"WEAPON_MARKSMANPISTOL"},{"name":"WEAPON_PISTOL","ammo":200},{"name":"WEAPON_SNIPERRIFLE","ammo":300},{"name":"WEAPON_ASSAULTRIFLE","ammo":300},{"ammo":300,"name":"WEAPON_SMG"}]}'),
	(12928, 'property', 'steam:110000147e28a5e', '{"dressing":[{"skin":{"torso_1":1,"helmet_2":0,"bproof_2":2,"mask_1":0,"chain_1":3,"ears_1":0,"eyebrows_1":2,"lipstick_2":0,"eyebrows_2":10,"age_2":0,"tshirt_1":1,"decals_1":-1,"beard_2":10,"skin":16,"mask_2":0,"torso_2":4,"makeup_3":0,"chain_2":1,"shoes_1":6,"hair_2":0,"watches_2":0,"tshirt_2":0,"decals_2":0,"bracelets_2":0,"eyebrows_3":0,"watches_1":0,"age_1":0,"bags_1":1,"bproof_1":4,"ears_2":0,"sex":0,"glasses_1":-1,"pants_1":2,"bags_2":0,"beard_4":0,"hair_color_1":0,"lipstick_4":33,"makeup_4":0,"beard_3":0,"glasses_2":0,"eyebrows_4":0,"helmet_1":-1,"makeup_1":10,"bracelets_1":6,"shoes_2":0,"lipstick_1":0,"beard_1":20,"face":33,"hair_1":66,"pants_2":8,"hair_color_2":0,"arms":0,"makeup_2":0},"label":"callee"},{"skin":{"torso_1":1,"helmet_2":0,"bproof_2":2,"bracelets_1":6,"chain_1":3,"ears_1":2,"lipstick_1":0,"lipstick_2":0,"eyebrows_2":10,"age_2":0,"tshirt_1":15,"decals_1":-1,"beard_2":10,"eyebrows_3":0,"mask_2":0,"torso_2":4,"makeup_3":0,"skin":16,"shoes_1":6,"hair_2":0,"watches_2":0,"chain_2":1,"tshirt_2":0,"bracelets_2":0,"makeup_1":10,"watches_1":0,"sex":0,"bags_1":1,"decals_2":0,"bproof_1":4,"ears_2":0,"glasses_1":3,"pants_1":2,"bags_2":0,"beard_4":0,"beard_1":20,"shoes_2":0,"makeup_4":0,"beard_3":0,"glasses_2":2,"lipstick_4":33,"helmet_1":-1,"eyebrows_4":0,"arms":0,"age_1":0,"mask_1":0,"eyebrows_1":2,"face":33,"hair_1":66,"pants_2":8,"hair_color_2":0,"hair_color_1":0,"makeup_2":0},"label":"siuu callee"},{"skin":{"ears_2":0,"helmet_2":0,"bproof_2":2,"mask_1":52,"chain_1":1,"ears_1":2,"lipstick_1":0,"skin":16,"decals_2":0,"age_2":0,"tshirt_1":15,"decals_1":0,"beard_2":10,"chain_2":2,"mask_2":0,"torso_2":3,"makeup_3":0,"torso_1":139,"bags_2":1,"hair_2":0,"arms":4,"eyebrows_2":10,"watches_2":0,"tshirt_2":87,"makeup_1":10,"watches_1":0,"age_1":0,"bags_1":23,"bproof_1":16,"bracelets_2":0,"glasses_1":24,"lipstick_4":33,"pants_1":59,"lipstick_2":0,"beard_4":0,"hair_color_1":0,"eyebrows_4":0,"sex":0,"beard_3":0,"glasses_2":2,"shoes_1":7,"lipstick_3":0,"eyebrows_3":0,"bracelets_1":6,"makeup_4":0,"eyebrows_1":2,"shoes_2":0,"face":33,"hair_1":66,"pants_2":9,"hair_color_2":0,"beard_1":20,"makeup_2":0},"label":"afia"},{"skin":{"ears_2":0,"helmet_2":0,"bproof_2":0,"mask_1":134,"chain_1":3,"ears_1":-1,"lipstick_1":0,"lipstick_2":0,"eyebrows_2":10,"age_2":0,"tshirt_1":15,"decals_1":-1,"beard_2":10,"skin":16,"eyebrows_3":0,"chain_2":1,"mask_2":14,"torso_2":14,"makeup_3":0,"torso_1":274,"shoes_1":77,"hair_2":0,"watches_2":0,"decals_2":0,"bproof_1":0,"tshirt_2":3,"makeup_1":10,"watches_1":0,"age_1":0,"bags_1":1,"sex":0,"bracelets_2":0,"glasses_1":-1,"arms_2":0,"pants_1":106,"lipstick_3":0,"beard_4":0,"hair_color_1":0,"eyebrows_4":0,"makeup_4":0,"beard_3":0,"glasses_2":0,"beard_1":20,"helmet_1":-1,"lipstick_4":33,"bracelets_1":0,"eyebrows_1":2,"bags_2":0,"shoes_2":3,"face":33,"hair_1":66,"pants_2":14,"hair_color_2":0,"arms":10,"makeup_2":0},"label":"admin"},{"skin":{"ears_2":0,"helmet_2":0,"bproof_2":0,"bracelets_1":6,"chain_1":1,"ears_1":2,"lipstick_1":0,"lipstick_2":0,"decals_2":0,"age_2":0,"tshirt_1":32,"decals_1":0,"beard_2":10,"mask_2":0,"skin":16,"chain_2":2,"glasses_1":24,"torso_2":0,"makeup_3":0,"eyebrows_2":10,"shoes_1":21,"hair_2":0,"watches_2":0,"torso_1":32,"bproof_1":0,"tshirt_2":0,"makeup_1":10,"watches_1":0,"age_1":0,"bags_1":0,"mask_1":52,"bracelets_2":0,"beard_1":20,"makeup_4":0,"pants_1":24,"bags_2":0,"beard_4":0,"hair_color_1":0,"shoes_2":0,"sex":0,"beard_3":0,"glasses_2":2,"lipstick_4":33,"lipstick_3":0,"eyebrows_3":0,"eyebrows_1":2,"arms_2":0,"arms":4,"eyebrows_4":0,"face":33,"hair_1":66,"pants_2":0,"hair_color_2":0,"helmet_1":-1,"makeup_2":0},"label":"mafia admin"},{"label":"santa atracos","skin":{"ears_2":0,"helmet_2":0,"bproof_2":0,"mask_1":134,"chain_1":3,"ears_1":-1,"arms_2":3,"skin":16,"decals_2":0,"age_2":0,"tshirt_1":15,"decals_1":-1,"beard_2":10,"beard_1":20,"lipstick_4":33,"eyebrows_2":10,"mask_2":14,"torso_2":0,"makeup_3":0,"torso_1":116,"bags_2":0,"hair_2":0,"watches_2":0,"bproof_1":0,"shoes_2":7,"tshirt_2":3,"eyebrows_3":0,"watches_1":0,"makeup_4":0,"bags_1":0,"arms":28,"bracelets_2":0,"glasses_1":-1,"chain_2":1,"pants_1":57,"lipstick_2":0,"beard_4":0,"hair_color_1":0,"eyebrows_4":0,"shoes_1":88,"beard_3":0,"glasses_2":0,"bracelets_1":0,"lipstick_3":0,"makeup_1":10,"age_1":0,"eyebrows_1":2,"helmet_1":-1,"lipstick_1":0,"face":33,"hair_1":66,"pants_2":0,"hair_color_2":0,"sex":0,"makeup_2":0}}]}'),
	(12929, 'property', 'steam:1100001436dc1d3', '{}'),
	(12930, 'property', 'steam:11000013d20a15a', '{"dressing":[{"skin":{"glasses_1":-1,"skin":0,"makeup_3":0,"glasses_2":0,"shoes_2":1,"bproof_1":0,"hair_1":0,"tshirt_2":0,"torso_1":205,"shoes_1":6,"beard_3":0,"arms_2":0,"beard_1":0,"ears_1":-1,"helmet_1":-1,"tshirt_1":130,"mask_2":0,"eyebrows_4":0,"helmet_2":0,"hair_2":0,"sex":0,"chain_1":0,"lipstick_2":0,"pants_2":11,"lipstick_3":0,"torso_2":3,"age_1":0,"hair_color_2":0,"hair_color_1":0,"lipstick_4":0,"eyebrows_1":0,"age_2":0,"eyebrows_2":0,"bags_2":0,"bproof_2":0,"arms":34,"bags_1":0,"pants_1":97,"makeup_1":0,"beard_4":0,"decals_2":0,"makeup_4":0,"lipstick_1":0,"beard_2":0,"decals_1":0,"chain_2":0,"ears_2":0,"face":0,"mask_1":0,"makeup_2":0,"eyebrows_3":0},"label":"a"},{"skin":{"glasses_1":-1,"skin":0,"makeup_3":0,"beard_2":0,"shoes_2":0,"bproof_1":0,"hair_1":3,"tshirt_2":0,"torso_1":192,"shoes_1":21,"beard_3":0,"arms_2":2,"beard_1":0,"ears_1":-1,"helmet_1":-1,"tshirt_1":4,"mask_2":0,"decals_1":0,"pants_1":52,"hair_2":0,"bags_2":0,"chain_1":0,"face":0,"helmet_2":0,"sex":0,"torso_2":5,"age_1":0,"makeup_1":0,"hair_color_1":29,"lipstick_4":0,"eyebrows_1":0,"age_2":0,"lipstick_1":0,"hair_color_2":0,"bproof_2":0,"arms":17,"bags_1":0,"pants_2":2,"lipstick_2":0,"beard_4":0,"eyebrows_4":0,"makeup_4":0,"decals_2":0,"glasses_2":0,"eyebrows_2":0,"lipstick_3":0,"ears_2":0,"chain_2":0,"mask_1":0,"makeup_2":0,"eyebrows_3":0}}]}'),
	(12931, 'property', 'steam:11000014a340954', '{"dressing":[{"label":"mafia","skin":{"helmet_1":7,"tshirt_2":0,"hair_color_1":0,"ears_2":0,"pants_1":28,"glasses_2":0,"shoes_1":21,"sex":0,"eyebrows_2":0,"lipstick_3":0,"torso_2":0,"chain_1":0,"eyebrows_4":0,"hair_color_2":0,"bproof_1":0,"pants_2":0,"bracelets_2":0,"arms_2":0,"makeup_2":0,"arms":17,"makeup_4":0,"beard_4":0,"bracelets_1":0,"age_2":0,"shoes_2":0,"mask_1":52,"eyebrows_3":0,"decals_2":0,"lipstick_4":0,"makeup_1":0,"lipstick_2":0,"eyebrows_1":0,"ears_1":-1,"hair_2":4,"lipstick_1":0,"tshirt_1":4,"decals_1":0,"chain_2":0,"face":0,"helmet_2":2,"beard_2":0,"bproof_2":0,"beard_1":0,"glasses_1":-1,"age_1":0,"torso_1":142,"bags_2":2,"beard_3":0,"mask_2":0,"skin":0,"hair_1":2,"makeup_3":0,"bags_1":51}}]}'),
	(12932, 'property', 'steam:11000014555d1f7', '{"dressing":[{"label":"EL PUTO CNI","skin":{"bags_2":0,"hair_color_1":2,"tshirt_2":0,"chain_2":0,"lipstick_3":0,"lipstick_1":0,"glasses_1":25,"torso_1":53,"pants_1":31,"beard_4":0,"decals_1":0,"shoes_2":0,"bags_1":0,"beard_2":0,"shoes_1":25,"chain_1":0,"lipstick_2":0,"mask_2":0,"hair_color_2":0,"makeup_2":0,"eyebrows_4":1,"makeup_4":0,"face":0,"makeup_3":0,"skin":0,"helmet_2":20,"hair_1":21,"makeup_1":0,"hair_2":0,"tshirt_1":130,"arms":6,"sex":0,"glasses_2":6,"age_1":1,"bproof_1":2,"arms_2":0,"torso_2":0,"ears_2":0,"lipstick_4":0,"beard_1":1,"ears_1":2,"eyebrows_1":0,"eyebrows_2":0,"eyebrows_3":0,"mask_1":52,"helmet_1":104,"decals_2":0,"age_2":0,"beard_3":0,"pants_2":0,"bproof_2":0}},{"label":"NIDEAHHH","skin":{"bags_2":0,"hair_color_1":2,"tshirt_2":0,"chain_2":0,"lipstick_3":0,"lipstick_1":0,"glasses_1":25,"torso_1":105,"pants_1":25,"beard_4":0,"decals_1":0,"shoes_2":0,"bags_1":0,"beard_2":0,"shoes_1":6,"chain_1":5,"lipstick_2":0,"mask_2":0,"hair_color_2":0,"makeup_2":0,"helmet_1":104,"makeup_4":0,"face":0,"makeup_3":0,"skin":0,"helmet_2":20,"hair_1":21,"makeup_1":0,"hair_2":0,"tshirt_1":130,"arms":5,"sex":0,"glasses_2":6,"age_1":1,"bproof_1":0,"lipstick_4":0,"torso_2":0,"ears_2":0,"mask_1":52,"beard_1":1,"ears_1":2,"eyebrows_1":0,"eyebrows_2":0,"eyebrows_3":0,"eyebrows_4":1,"arms_2":0,"decals_2":0,"age_2":0,"beard_3":0,"pants_2":0,"bproof_2":0}},{"label":"ADMINSSSSS","skin":{"bags_2":0,"hair_color_1":2,"tshirt_2":0,"chain_2":0,"lipstick_3":0,"lipstick_1":0,"glasses_1":25,"torso_1":178,"pants_1":77,"beard_4":0,"decals_1":0,"shoes_2":1,"bags_1":0,"tshirt_1":130,"decals_2":0,"helmet_1":104,"lipstick_2":0,"chain_1":5,"mask_2":0,"makeup_2":0,"hair_color_2":0,"makeup_4":0,"face":0,"beard_2":0,"eyebrows_2":0,"makeup_3":0,"hair_1":21,"helmet_2":20,"makeup_1":0,"hair_2":0,"arms":5,"eyebrows_3":0,"glasses_2":6,"age_1":1,"bproof_1":0,"skin":0,"torso_2":1,"ears_2":0,"lipstick_4":0,"beard_1":1,"ears_1":2,"eyebrows_1":0,"sex":0,"arms_2":0,"mask_1":52,"eyebrows_4":1,"shoes_1":55,"age_2":0,"beard_3":0,"pants_2":1,"bproof_2":0}},{"label":"FURBOLLLLLLL","skin":{"bags_2":0,"hair_color_1":2,"tshirt_2":0,"chain_2":0,"lipstick_3":0,"lipstick_1":0,"glasses_1":25,"lipstick_4":0,"pants_1":83,"beard_4":0,"decals_1":0,"shoes_2":11,"bags_1":0,"makeup_2":0,"eyebrows_2":0,"decals_2":0,"lipstick_2":0,"chain_1":18,"mask_2":0,"eyebrows_4":1,"hair_color_2":0,"makeup_4":0,"face":0,"beard_2":0,"skin":0,"makeup_3":0,"hair_1":21,"helmet_2":0,"tshirt_1":122,"hair_2":0,"arms":41,"eyebrows_3":0,"glasses_2":6,"age_1":1,"bproof_1":0,"makeup_1":0,"torso_2":1,"ears_2":0,"helmet_1":46,"beard_1":1,"ears_1":2,"eyebrows_1":0,"arms_2":0,"torso_1":271,"sex":0,"mask_1":52,"shoes_1":75,"age_2":0,"beard_3":0,"pants_2":1,"bproof_2":0}},{"skin":{"bags_2":0,"hair_color_1":2,"tshirt_2":0,"chain_2":0,"lipstick_3":0,"lipstick_1":0,"glasses_1":25,"torso_1":141,"pants_1":6,"beard_4":0,"decals_1":0,"shoes_2":1,"bags_1":0,"ears_1":2,"makeup_2":0,"mask_2":0,"lipstick_2":0,"decals_2":0,"arms_2":0,"eyebrows_4":1,"chain_1":0,"makeup_4":0,"face":0,"bproof_2":0,"eyebrows_2":0,"beard_2":0,"hair_1":21,"makeup_3":0,"helmet_2":0,"hair_2":0,"arms":5,"eyebrows_3":0,"glasses_2":6,"age_1":1,"bproof_1":0,"tshirt_1":122,"torso_2":4,"age_2":0,"makeup_1":0,"beard_1":1,"hair_color_2":0,"ears_2":0,"eyebrows_1":0,"skin":0,"mask_1":52,"lipstick_4":0,"shoes_1":66,"sex":0,"beard_3":0,"pants_2":0,"helmet_1":46}}]}'),
	(12933, 'property', 'steam:11000014317cab0', '{}'),
	(12934, 'property', 'steam:11000013bbfbdd3', '{"dressing":[{"skin":{"bracelets_1":7,"tshirt_2":0,"decals_2":0,"helmet_2":0,"age_2":0,"glasses_1":0,"skin":1,"ears_1":5,"glasses_2":0,"shoes_1":24,"arms":41,"beard_1":0,"ears_2":0,"eyebrows_2":6,"hair_color_2":11,"mask_2":0,"age_1":0,"torso_2":0,"bproof_2":0,"hair_2":4,"beard_2":0,"lipstick_2":0,"pants_1":71,"makeup_4":0,"shoes_2":0,"chain_2":0,"bags_2":0,"eyebrows_4":0,"pants_2":0,"makeup_1":0,"helmet_1":-1,"face":35,"makeup_2":0,"bproof_1":-1,"arms_2":0,"beard_4":0,"hair_color_1":25,"bags_1":0,"hair_1":14,"lipstick_1":0,"tshirt_1":4,"bracelets_2":0,"mask_1":0,"lipstick_3":3,"beard_3":0,"torso_1":10,"chain_1":0,"lipstick_4":0,"sex":0,"eyebrows_1":0,"makeup_3":0,"decals_1":0,"eyebrows_3":0},"label":"elegante"},{"skin":{"bracelets_1":7,"tshirt_2":0,"decals_2":0,"helmet_2":0,"age_2":0,"glasses_1":0,"skin":1,"ears_1":5,"glasses_2":0,"shoes_1":24,"eyebrows_1":0,"shoes_2":0,"arms":41,"beard_1":0,"bproof_2":0,"eyebrows_2":6,"watches_1":0,"mask_2":0,"age_1":0,"pants_1":33,"beard_4":0,"hair_2":4,"beard_2":0,"lipstick_2":0,"hair_color_2":11,"makeup_4":0,"face":35,"chain_2":0,"bags_2":0,"ears_2":0,"pants_2":0,"watches_2":0,"helmet_1":-1,"mask_1":0,"makeup_2":0,"arms_2":0,"torso_2":0,"bproof_1":-1,"hair_color_1":25,"bags_1":0,"hair_1":14,"makeup_1":0,"lipstick_1":0,"bracelets_2":0,"eyebrows_4":0,"lipstick_3":3,"beard_3":0,"torso_1":55,"tshirt_1":129,"lipstick_4":0,"sex":0,"chain_1":0,"makeup_3":0,"decals_1":0,"eyebrows_3":0},"label":"POLICIA"},{"skin":{"shoes_2":0,"tshirt_2":0,"decals_2":0,"helmet_2":0,"hair_color_2":11,"glasses_1":0,"skin":1,"ears_1":5,"glasses_2":0,"shoes_1":24,"beard_4":0,"eyebrows_1":0,"arms":41,"beard_1":0,"face":35,"eyebrows_2":6,"watches_1":0,"mask_2":0,"age_1":0,"pants_1":33,"torso_2":0,"hair_2":4,"beard_2":0,"ears_2":0,"makeup_1":0,"makeup_4":0,"tshirt_1":129,"bproof_1":2,"watches_2":0,"lipstick_2":0,"pants_2":0,"arms_2":0,"helmet_1":-1,"lipstick_3":3,"makeup_2":0,"bags_2":0,"mask_1":0,"age_2":0,"hair_color_1":25,"bags_1":0,"hair_1":14,"lipstick_1":0,"eyebrows_4":0,"bracelets_2":0,"bracelets_1":7,"bproof_2":0,"beard_3":0,"torso_1":53,"chain_2":2,"lipstick_4":0,"sex":0,"eyebrows_3":0,"makeup_3":0,"decals_1":0,"chain_1":112},"label":"CNI 1"}]}'),
	(12935, 'property', 'steam:11000013fff5ccf', '{}'),
	(12936, 'property', 'steam:110000141fd8fd0', '{}'),
	(12937, 'property', 'steam:110000101caae48', '{}'),
	(12938, 'property', 'steam:1100001490f7b1f', '{"dressing":[{"skin":{"age_2":0,"makeup_2":0,"bproof_2":1,"beard_3":0,"helmet_2":0,"helmet_1":1,"chain_2":7,"lipstick_1":0,"tshirt_1":15,"pants_2":4,"face":0,"eyebrows_2":10,"glasses_2":0,"beard_1":14,"beard_2":10,"torso_1":1,"sex":0,"hair_2":0,"ears_1":26,"lipstick_2":0,"eyebrows_4":0,"age_1":0,"bracelets_2":0,"makeup_3":0,"hair_1":50,"hair_color_1":29,"decals_2":0,"arms":2,"shoes_1":7,"eyebrows_3":0,"bracelets_1":6,"pants_1":42,"ears_2":4,"bproof_1":11,"decals_1":0,"makeup_4":0,"mask_2":0,"hair_color_2":0,"shoes_2":10,"beard_4":0,"makeup_1":0,"torso_2":6,"skin":0,"mask_1":0,"tshirt_2":0,"bags_1":0,"lipstick_3":0,"eyebrows_1":5,"bags_2":0,"lipstick_4":0,"glasses_1":-1,"chain_1":10},"label":"blood"},{"skin":{"age_2":0,"shoes_2":0,"bproof_2":1,"beard_3":0,"watches_1":15,"helmet_2":0,"helmet_1":1,"eyebrows_4":0,"hair_1":50,"tshirt_1":2,"pants_2":0,"glasses_2":0,"face":0,"eyebrows_2":10,"hair_2":0,"makeup_2":0,"shoes_1":25,"lipstick_1":0,"hair_color_2":0,"bracelets_2":0,"ears_1":26,"lipstick_2":0,"arms":2,"age_1":0,"bracelets_1":6,"makeup_3":0,"bags_1":0,"beard_1":14,"decals_2":0,"ears_2":4,"skin":0,"eyebrows_3":0,"sex":0,"pants_1":33,"decals_1":0,"bproof_1":7,"beard_2":10,"makeup_4":0,"mask_2":0,"watches_2":0,"chain_2":7,"beard_4":0,"makeup_1":0,"torso_2":0,"hair_color_1":29,"mask_1":0,"tshirt_2":0,"torso_1":50,"lipstick_3":0,"eyebrows_1":5,"bags_2":0,"lipstick_4":0,"glasses_1":-1,"chain_1":10},"label":"black blood"},{"skin":{"bracelets_1":6,"shoes_2":0,"bproof_2":1,"beard_3":0,"watches_1":26,"helmet_2":0,"helmet_1":1,"chain_2":0,"lipstick_1":0,"tshirt_1":2,"pants_2":0,"glasses_2":0,"face":0,"eyebrows_2":10,"lipstick_4":0,"makeup_2":0,"makeup_1":0,"bracelets_2":0,"ears_2":4,"eyebrows_4":0,"ears_1":26,"lipstick_2":0,"hair_color_2":0,"age_1":0,"arms":2,"makeup_3":0,"hair_1":50,"hair_color_1":29,"decals_2":0,"shoes_1":25,"skin":0,"eyebrows_3":0,"tshirt_2":0,"pants_1":33,"hair_2":0,"bproof_1":6,"bags_1":0,"beard_2":10,"mask_2":0,"watches_2":0,"beard_1":14,"age_2":0,"makeup_4":0,"torso_2":3,"beard_4":0,"sex":0,"decals_1":0,"torso_1":2,"lipstick_3":0,"eyebrows_1":5,"bags_2":0,"mask_1":0,"glasses_1":-1,"chain_1":13},"label":"blood tirantes"}]}'),
	(12939, 'property', 'steam:11000013715f23a', '{"dressing":[{"skin":{"glasses_1":-1,"skin":0,"makeup_3":0,"beard_2":0,"shoes_2":0,"bproof_1":0,"hair_1":21,"tshirt_2":0,"torso_1":192,"shoes_1":21,"pants_2":2,"arms_2":0,"beard_1":0,"ears_1":-1,"helmet_1":2,"tshirt_1":4,"hair_2":0,"sex":0,"mask_2":0,"eyebrows_4":0,"pants_1":52,"bags_1":0,"age_2":0,"chain_1":0,"lipstick_1":0,"hair_color_2":0,"chain_2":0,"torso_2":0,"glasses_2":0,"lipstick_2":0,"hair_color_1":0,"lipstick_4":0,"eyebrows_1":0,"lipstick_3":0,"eyebrows_2":0,"decals_2":0,"bproof_2":3,"arms":24,"watches_2":0,"decals_1":0,"makeup_1":0,"beard_4":0,"bags_2":0,"makeup_4":0,"beard_3":0,"watches_1":29,"age_1":0,"face":0,"ears_2":0,"helmet_2":0,"mask_1":51,"makeup_2":0,"eyebrows_3":0},"label":"el cani de barrio"},{"skin":{"glasses_1":-1,"skin":0,"makeup_3":0,"beard_2":0,"shoes_2":0,"bproof_1":0,"hair_1":21,"tshirt_2":0,"torso_1":192,"shoes_1":21,"lipstick_2":0,"arms_2":0,"beard_1":0,"ears_1":-1,"helmet_1":7,"tshirt_1":4,"hair_2":0,"pants_1":52,"mask_2":0,"decals_1":0,"helmet_2":2,"chain_1":0,"bags_1":0,"sex":0,"face":0,"hair_color_2":0,"pants_2":2,"torso_2":5,"eyebrows_4":0,"age_2":0,"hair_color_1":0,"lipstick_4":0,"eyebrows_1":0,"lipstick_3":0,"eyebrows_2":0,"glasses_2":0,"bproof_2":3,"arms":24,"decals_2":0,"makeup_1":0,"watches_2":0,"beard_4":0,"bags_2":0,"makeup_4":0,"beard_3":0,"watches_1":29,"chain_2":0,"age_1":0,"ears_2":0,"lipstick_1":0,"mask_1":51,"makeup_2":0,"eyebrows_3":0},"label":"chiquita calle"}]}'),
	(12940, 'property', 'steam:110000103a215d4', '{"dressing":[{"skin":{"beard_1":0,"beard_4":0,"makeup_2":0,"makeup_3":0,"lipstick_1":0,"bags_2":0,"eyebrows_3":0,"lipstick_3":1,"eyebrows_1":30,"eyebrows_4":0,"ears_1":7,"torso_2":1,"hair_color_1":4,"hair_1":57,"pants_1":33,"bproof_2":0,"helmet_1":0,"helmet_2":0,"glasses_2":0,"mask_2":0,"arms_2":0,"tshirt_1":15,"hair_2":0,"pants_2":9,"glasses_1":0,"beard_3":0,"beard_2":0,"face":0,"sex":0,"lipstick_4":1,"torso_1":253,"eyebrows_2":10,"hair_color_2":1,"age_2":0,"shoes_1":7,"decals_2":0,"makeup_1":0,"arms":42,"age_1":0,"chain_2":0,"lipstick_2":0,"tshirt_2":0,"ears_2":0,"skin":4,"mask_1":4,"bproof_1":0,"shoes_2":0,"chain_1":0,"makeup_4":0,"decals_1":-1,"bags_1":31},"label":"claro"},{"skin":{"beard_1":0,"beard_4":0,"makeup_2":0,"makeup_3":0,"lipstick_1":0,"bags_2":0,"eyebrows_3":0,"lipstick_3":1,"eyebrows_1":30,"glasses_2":0,"ears_1":7,"torso_2":1,"shoes_2":0,"hair_1":57,"pants_1":59,"bproof_2":0,"helmet_1":0,"helmet_2":0,"tshirt_1":15,"mask_2":0,"arms_2":0,"age_2":0,"hair_2":0,"pants_2":0,"glasses_1":0,"beard_3":0,"beard_2":0,"face":0,"decals_1":-1,"lipstick_4":1,"torso_1":51,"eyebrows_2":10,"hair_color_2":1,"lipstick_2":0,"shoes_1":17,"sex":0,"decals_2":0,"arms":167,"age_1":0,"chain_2":0,"skin":4,"tshirt_2":0,"ears_2":0,"chain_1":0,"mask_1":4,"makeup_1":0,"bproof_1":0,"eyebrows_4":0,"makeup_4":0,"hair_color_1":4,"bags_1":0},"label":"si"}]}'),
	(12941, 'property', 'steam:110000148894f9e', '{}'),
	(12942, 'property', 'steam:110000142aff09f', '{}'),
	(12943, 'property', 'steam:11000014381b065', '{"dressing":[{"label":"rojitos","skin":{"eyebrows_4":0,"chain_1":3,"glasses_1":7,"mask_1":0,"age_1":0,"hair_1":14,"age_2":0,"hair_color_2":20,"lipstick_1":0,"makeup_2":0,"makeup_1":0,"chain_2":0,"bproof_2":0,"helmet_1":-1,"skin":3,"makeup_3":0,"makeup_4":0,"beard_4":0,"tshirt_2":0,"bags_1":23,"lipstick_4":0,"beard_2":0,"bags_2":1,"eyebrows_2":0,"torso_2":0,"helmet_2":0,"ears_2":0,"decals_1":0,"lipstick_2":0,"ears_1":-1,"arms":81,"hair_color_1":31,"lipstick_3":0,"torso_1":81,"shoes_1":7,"hair_2":0,"pants_2":4,"sex":0,"arms_2":0,"bproof_1":0,"shoes_2":11,"eyebrows_1":0,"eyebrows_3":0,"beard_3":0,"beard_1":0,"decals_2":0,"tshirt_1":15,"pants_1":42,"glasses_2":0,"mask_2":0,"face":0}},{"label":"juan","skin":{"eyebrows_4":0,"chain_1":3,"glasses_1":7,"mask_1":0,"age_1":0,"hair_1":59,"age_2":0,"hair_color_2":25,"lipstick_1":0,"eyebrows_1":0,"makeup_1":0,"chain_2":0,"bproof_2":0,"helmet_1":-1,"skin":3,"makeup_3":0,"makeup_4":0,"beard_4":0,"tshirt_2":0,"bags_1":23,"lipstick_4":0,"beard_2":0,"bags_2":1,"eyebrows_2":0,"torso_2":0,"arms_2":0,"helmet_2":0,"decals_1":0,"shoes_1":7,"ears_2":0,"arms":81,"lipstick_2":0,"lipstick_3":0,"ears_1":-1,"hair_color_1":53,"hair_2":0,"pants_2":0,"sex":0,"torso_1":81,"bproof_1":0,"shoes_2":11,"makeup_2":0,"eyebrows_3":0,"beard_3":0,"beard_1":0,"decals_2":0,"tshirt_1":15,"pants_1":33,"glasses_2":0,"mask_2":0,"face":0}}]}'),
	(12944, 'property', 'steam:11000014953d014', '{}'),
	(12945, 'property', 'steam:110000141d37203', '{"dressing":[{"skin":{"lipstick_1":3,"tshirt_1":0,"eyebrows_3":0,"bags_2":0,"beard_2":0,"beard_1":0,"eyebrows_4":0,"bags_1":2,"lipstick_4":0,"bproof_1":6,"shoes_1":83,"eyebrows_2":0,"ears_1":0,"torso_2":20,"face":10,"tshirt_2":0,"chain_1":3,"age_1":0,"makeup_3":0,"decals_2":0,"lipstick_3":0,"hair_color_2":0,"arms_2":0,"beard_3":0,"skin":0,"chain_2":0,"helmet_2":0,"sex":0,"makeup_4":0,"pants_2":20,"beard_4":0,"arms":2,"makeup_2":0,"hair_2":0,"age_2":0,"eyebrows_1":0,"glasses_2":0,"bproof_2":2,"ears_2":0,"mask_2":0,"decals_1":7,"shoes_2":9,"pants_1":87,"mask_1":0,"makeup_1":0,"glasses_1":0,"lipstick_2":0,"hair_1":19,"hair_color_1":0,"torso_1":239},"label":"banda"},{"skin":{"watches_1":3,"lipstick_1":3,"tshirt_1":0,"eyebrows_3":0,"bags_2":0,"decals_1":7,"beard_1":0,"eyebrows_4":0,"bags_1":2,"lipstick_4":0,"bracelets_2":4,"bproof_1":0,"eyebrows_1":0,"shoes_1":83,"face":10,"eyebrows_2":0,"torso_2":20,"ears_1":0,"makeup_2":0,"tshirt_2":0,"chain_1":3,"age_1":0,"makeup_3":0,"decals_2":0,"lipstick_3":0,"makeup_4":0,"pants_2":20,"beard_4":0,"skin":0,"chain_2":0,"helmet_2":0,"sex":0,"arms":2,"makeup_1":0,"beard_2":0,"watches_2":0,"bracelets_1":0,"hair_2":0,"age_2":0,"beard_3":0,"glasses_2":0,"bproof_2":0,"hair_color_2":0,"mask_2":0,"arms_2":0,"shoes_2":9,"ears_2":0,"mask_1":0,"torso_1":239,"glasses_1":0,"lipstick_2":0,"hair_1":19,"hair_color_1":0,"pants_1":87},"label":"banda1"}]}'),
	(12946, 'property', 'steam:110000145fdc874', '{}'),
	(12947, 'property', 'steam:110000142f3a0e4', '{}'),
	(12948, 'property', 'steam:1100001422cf835', '{}'),
	(12949, 'property', 'steam:110000119cfe56e', '{}'),
	(12950, 'property', 'steam:1100001482a8e09', '{"dressing":[{"skin":{"chain_2":0,"makeup_4":0,"lipstick_3":0,"ears_2":0,"watches_1":28,"bproof_2":0,"decals_2":0,"skin":0,"sex":0,"beard_1":0,"pants_2":0,"beard_2":0,"bags_2":0,"arms":21,"makeup_2":0,"age_1":0,"bags_1":37,"lipstick_2":0,"lipstick_1":0,"beard_4":0,"eyebrows_3":0,"lipstick_4":0,"mask_1":14,"shoes_2":0,"tshirt_1":0,"bracelets_2":0,"makeup_1":0,"bracelets_1":6,"torso_2":0,"hair_1":2,"decals_1":0,"torso_1":89,"hair_2":0,"pants_1":33,"hair_color_1":34,"ears_1":-1,"glasses_1":-1,"tshirt_2":15,"hair_color_2":0,"eyebrows_2":0,"mask_2":0,"glasses_2":0,"age_2":0,"eyebrows_1":0,"helmet_1":66,"chain_1":0,"makeup_3":0,"bproof_1":0,"face":0,"shoes_1":7,"helmet_2":0,"beard_3":0,"watches_2":0,"eyebrows_4":0},"label":"LosV 1"},{"skin":{"chain_2":0,"eyebrows_1":0,"lipstick_3":0,"ears_2":0,"watches_1":28,"bproof_2":0,"hair_color_1":34,"skin":0,"torso_2":0,"beard_1":0,"pants_2":0,"beard_2":0,"bags_2":0,"arms":79,"makeup_2":0,"age_1":0,"bags_1":37,"lipstick_2":0,"bproof_1":0,"lipstick_1":0,"mask_1":14,"eyebrows_3":0,"lipstick_4":0,"age_2":0,"shoes_2":6,"tshirt_1":22,"bracelets_2":0,"makeup_1":0,"bracelets_1":6,"ears_1":-1,"hair_1":2,"decals_1":0,"tshirt_2":0,"hair_2":0,"pants_1":94,"makeup_4":0,"helmet_2":0,"glasses_1":-1,"decals_2":0,"hair_color_2":0,"eyebrows_2":0,"beard_4":0,"glasses_2":0,"torso_1":21,"arms_2":0,"helmet_1":66,"chain_1":0,"eyebrows_4":0,"mask_2":0,"face":0,"shoes_1":7,"makeup_3":0,"beard_3":0,"watches_2":0,"sex":0},"label":"los v"}]}'),
	(12951, 'property', 'steam:11000014330811e', '{}'),
	(12952, 'property', 'steam:110000147bb0bea', '{}'),
	(12953, 'property', 'steam:11000014a2ad39f', '{}'),
	(12954, 'property', 'steam:1100001099af827', '{}'),
	(12955, 'property', 'steam:11000014217460c', '{}'),
	(12956, 'property', 'steam:110000141453c97', '{}'),
	(12957, 'property', 'steam:11000013d33f24f', '{}'),
	(12958, 'property', 'steam:110000141a29a40', '{}'),
	(12959, 'property', 'steam:11000014a3dc15a', '{}'),
	(12960, 'property', 'steam:1100001465b3a28', '{"dressing":[{"label":"pp","skin":{"bags_2":0,"hair_color_1":0,"tshirt_2":0,"chain_2":0,"lipstick_3":0,"lipstick_1":0,"glasses_1":-1,"torso_1":88,"pants_1":64,"beard_4":0,"decals_1":0,"shoes_2":1,"helmet_2":6,"bags_1":45,"mask_1":51,"hair_color_2":0,"chain_1":3,"mask_2":5,"lipstick_2":0,"watches_2":20,"beard_2":0,"makeup_2":0,"makeup_3":0,"makeup_4":0,"face":0,"eyebrows_2":0,"skin":24,"hair_2":0,"hair_1":24,"tshirt_1":76,"makeup_1":0,"eyebrows_1":0,"arms":24,"sex":0,"glasses_2":0,"age_1":0,"bproof_1":0,"arms_2":0,"torso_2":3,"ears_2":0,"eyebrows_3":0,"beard_1":0,"ears_1":-1,"lipstick_4":0,"watches_1":0,"eyebrows_4":0,"helmet_1":96,"age_2":0,"decals_2":0,"shoes_1":0,"beard_3":0,"pants_2":12,"bproof_2":0}},{"label":"pop","skin":{"bags_2":0,"hair_color_1":0,"tshirt_2":0,"chain_2":0,"lipstick_3":0,"lipstick_1":0,"glasses_1":-1,"torso_1":88,"pants_1":8,"beard_4":0,"decals_1":0,"shoes_2":1,"lipstick_2":0,"bags_1":45,"beard_2":0,"decals_2":0,"hair_color_2":0,"chain_1":3,"watches_1":0,"mask_2":5,"watches_2":20,"makeup_2":0,"eyebrows_4":0,"makeup_4":0,"face":0,"makeup_3":0,"skin":24,"helmet_2":6,"hair_1":24,"hair_2":0,"tshirt_1":76,"makeup_1":0,"arms":24,"eyebrows_3":0,"glasses_2":0,"age_1":0,"bproof_1":0,"eyebrows_1":0,"torso_2":3,"ears_2":0,"arms_2":0,"beard_1":0,"ears_1":-1,"lipstick_4":0,"eyebrows_2":0,"sex":0,"helmet_1":96,"age_2":0,"shoes_1":0,"mask_1":51,"beard_3":0,"pants_2":0,"bproof_2":0}},{"skin":{"bags_2":0,"hair_color_1":0,"tshirt_2":0,"chain_2":0,"lipstick_3":0,"lipstick_1":0,"glasses_1":-1,"torso_1":81,"pants_1":3,"bracelets_2":0,"beard_4":0,"decals_1":0,"shoes_2":10,"makeup_3":0,"helmet_2":6,"bags_1":0,"mask_1":51,"watches_2":20,"chain_1":52,"mask_2":5,"lipstick_2":0,"watches_1":0,"beard_2":0,"makeup_1":0,"bracelets_1":0,"makeup_4":0,"face":0,"hair_color_2":0,"skin":24,"hair_2":0,"hair_1":24,"tshirt_1":1,"eyebrows_4":0,"eyebrows_1":0,"arms":41,"sex":0,"glasses_2":0,"age_1":0,"bproof_1":0,"arms_2":0,"torso_2":0,"age_2":0,"makeup_2":0,"beard_1":0,"ears_1":-1,"eyebrows_3":0,"lipstick_4":0,"eyebrows_2":0,"ears_2":0,"shoes_1":83,"decals_2":0,"helmet_1":96,"beard_3":0,"pants_2":3,"bproof_2":0}},{"label":"banda","skin":{"bags_2":0,"hair_color_1":0,"tshirt_2":0,"chain_2":0,"lipstick_3":0,"lipstick_1":0,"glasses_1":-1,"torso_1":251,"pants_1":97,"bracelets_2":0,"beard_4":0,"decals_1":0,"shoes_2":0,"makeup_3":0,"helmet_2":6,"bags_1":0,"shoes_1":24,"mask_1":51,"chain_1":0,"mask_2":5,"lipstick_2":0,"watches_1":0,"beard_2":0,"makeup_1":0,"bracelets_1":0,"makeup_4":0,"face":0,"hair_color_2":0,"skin":24,"hair_2":0,"hair_1":24,"tshirt_1":131,"eyebrows_1":0,"age_1":0,"arms":41,"sex":0,"glasses_2":0,"watches_2":20,"bproof_1":0,"arms_2":0,"torso_2":1,"ears_2":0,"eyebrows_4":0,"beard_1":0,"ears_1":-1,"makeup_2":0,"lipstick_4":0,"eyebrows_2":0,"eyebrows_3":0,"age_2":0,"decals_2":0,"helmet_1":96,"beard_3":0,"pants_2":1,"bproof_2":0}},{"label":"kk","skin":{"bags_2":0,"hair_color_1":0,"tshirt_2":0,"chain_2":0,"lipstick_3":0,"lipstick_1":0,"glasses_1":-1,"lipstick_4":0,"pants_1":97,"bracelets_2":0,"beard_4":0,"decals_1":0,"shoes_2":0,"makeup_3":0,"helmet_2":6,"bags_1":0,"mask_1":51,"chain_1":0,"mask_2":5,"watches_1":18,"lipstick_2":0,"watches_2":0,"beard_2":0,"makeup_1":0,"bracelets_1":0,"makeup_4":0,"face":0,"helmet_1":96,"skin":24,"hair_2":0,"hair_1":24,"tshirt_1":15,"eyebrows_1":0,"arms_2":0,"arms":17,"eyebrows_3":0,"glasses_2":0,"age_1":0,"bproof_1":0,"eyebrows_4":0,"torso_2":1,"age_2":0,"ears_1":-1,"beard_1":0,"hair_color_2":0,"eyebrows_2":0,"ears_2":0,"torso_1":251,"sex":0,"shoes_1":24,"decals_2":0,"makeup_2":0,"beard_3":0,"pants_2":1,"bproof_2":0}},{"label":"bbs","skin":{"bags_2":0,"hair_color_1":0,"tshirt_2":0,"chain_2":0,"lipstick_3":0,"lipstick_1":0,"glasses_1":-1,"torso_1":271,"pants_1":1,"bracelets_2":0,"beard_4":0,"hair_2":0,"shoes_2":1,"age_1":0,"decals_1":0,"bags_1":0,"beard_2":0,"decals_2":0,"ears_1":-1,"chain_1":49,"lipstick_2":0,"mask_2":5,"watches_1":33,"makeup_1":0,"bracelets_1":0,"makeup_4":0,"face":0,"makeup_3":0,"skin":24,"helmet_2":6,"hair_1":24,"mask_1":51,"eyebrows_1":0,"tshirt_1":15,"arms":2,"eyebrows_3":0,"glasses_2":0,"watches_2":0,"bproof_1":0,"arms_2":0,"torso_2":1,"ears_2":0,"makeup_2":0,"beard_1":0,"hair_color_2":0,"lipstick_4":0,"eyebrows_2":0,"sex":0,"eyebrows_4":0,"age_2":0,"shoes_1":0,"helmet_1":96,"beard_3":0,"pants_2":1,"bproof_2":0}}],"weapons":[]}'),
	(12961, 'property', 'steam:1100001470e0bd3', '{"dressing":[{"label":"BLAK","skin":{"bags_2":1,"hair_color_1":1,"tshirt_2":19,"chain_2":0,"lipstick_3":1,"lipstick_1":1,"glasses_1":19,"lipstick_4":1,"pants_1":1,"bracelets_2":0,"beard_4":4,"decals_1":3,"shoes_2":0,"bags_1":0,"hair_color_2":1,"beard_2":0,"mask_1":52,"lipstick_2":0,"chain_1":10,"mask_2":0,"makeup_1":1,"bracelets_1":0,"makeup_4":1,"face":0,"makeup_3":2,"skin":0,"helmet_2":2,"hair_1":1,"tshirt_1":1,"hair_2":0,"makeup_2":1,"arms":0,"sex":0,"glasses_2":7,"age_1":6,"bproof_1":0,"shoes_1":74,"torso_2":0,"ears_2":0,"eyebrows_4":0,"beard_1":3,"ears_1":0,"eyebrows_1":0,"eyebrows_2":0,"eyebrows_3":0,"torso_1":171,"bproof_2":0,"decals_2":0,"age_2":6,"beard_3":0,"pants_2":7,"helmet_1":4}},{"label":"lv","skin":{"bags_2":0,"hair_color_1":1,"tshirt_2":19,"chain_2":0,"lipstick_3":1,"lipstick_1":1,"glasses_1":19,"lipstick_4":1,"pants_1":1,"bracelets_2":0,"beard_4":4,"decals_1":3,"shoes_2":1,"makeup_3":2,"bags_1":0,"helmet_2":2,"decals_2":0,"chain_1":10,"mask_2":0,"lipstick_2":0,"watches_1":26,"beard_2":0,"makeup_1":1,"bracelets_1":0,"makeup_4":1,"face":0,"eyebrows_4":0,"skin":0,"hair_2":0,"hair_1":1,"ears_1":0,"tshirt_1":1,"age_1":6,"arms":0,"eyebrows_3":0,"glasses_2":7,"watches_2":0,"bproof_1":0,"eyebrows_1":0,"torso_2":0,"age_2":6,"makeup_2":1,"beard_1":3,"hair_color_2":1,"ears_2":0,"eyebrows_2":0,"torso_1":0,"sex":0,"helmet_1":4,"shoes_1":74,"mask_1":52,"beard_3":0,"pants_2":7,"bproof_2":0}},{"label":"robo","skin":{"bags_2":1,"hair_color_1":1,"tshirt_2":19,"helmet_2":2,"lipstick_3":1,"lipstick_1":1,"glasses_1":19,"lipstick_4":1,"pants_1":97,"bracelets_2":0,"beard_4":4,"decals_1":3,"shoes_2":0,"eyebrows_1":0,"makeup_3":2,"bags_1":0,"shoes_1":24,"chain_2":0,"chain_1":10,"mask_2":0,"lipstick_2":0,"watches_1":26,"face":0,"makeup_1":1,"bracelets_1":0,"makeup_4":1,"beard_2":0,"hair_2":0,"eyebrows_2":0,"arms_2":0,"hair_1":1,"tshirt_1":1,"age_1":6,"hair_color_2":1,"arms":17,"eyebrows_3":0,"glasses_2":7,"watches_2":0,"bproof_1":0,"eyebrows_4":0,"torso_2":1,"age_2":6,"skin":0,"beard_1":3,"ears_1":0,"mask_1":52,"ears_2":0,"torso_1":251,"sex":0,"makeup_2":1,"decals_2":0,"helmet_1":4,"beard_3":0,"pants_2":1,"bproof_2":0}},{"label":"bape","skin":{"bags_2":1,"hair_color_1":1,"tshirt_2":0,"chain_2":0,"lipstick_3":1,"lipstick_1":1,"glasses_1":19,"lipstick_4":1,"pants_1":0,"bracelets_2":0,"beard_4":4,"decals_1":3,"shoes_2":0,"eyebrows_1":0,"beard_2":0,"bags_1":0,"makeup_3":2,"bproof_2":0,"makeup_2":1,"chain_1":10,"lipstick_2":0,"mask_2":0,"watches_2":0,"makeup_1":1,"bracelets_1":0,"makeup_4":1,"face":0,"helmet_2":2,"eyebrows_2":0,"hair_2":0,"hair_1":1,"tshirt_1":2,"watches_1":16,"arms_2":0,"arms":0,"eyebrows_3":0,"glasses_2":7,"age_1":6,"bproof_1":0,"skin":0,"torso_2":1,"ears_2":0,"shoes_1":74,"beard_1":3,"hair_color_2":1,"mask_1":52,"torso_1":4,"sex":0,"eyebrows_4":0,"age_2":6,"decals_2":0,"ears_1":0,"beard_3":0,"pants_2":0,"helmet_1":4}}]}'),
	(12962, 'property', 'steam:1100001477c21d5', '{}'),
	(12963, 'property', 'steam:110000142cc20a9', '{}'),
	(12964, 'property', 'steam:110000145364a96', '{}'),
	(12965, 'property', 'steam:110000145cfdf0a', '{}'),
	(12966, 'property', 'steam:1100001416317d7', '{"dressing":[{"label":"Wapo Wapo","skin":{"bags_2":0,"hair_color_1":2,"tshirt_2":0,"chain_2":2,"lipstick_3":0,"lipstick_1":0,"glasses_1":3,"torso_1":20,"pants_1":28,"beard_4":0,"decals_1":0,"shoes_2":0,"bags_1":0,"ears_1":5,"tshirt_1":31,"shoes_1":20,"lipstick_2":0,"chain_1":12,"mask_2":0,"eyebrows_4":0,"eyebrows_1":24,"makeup_4":0,"face":3,"beard_2":7,"eyebrows_2":10,"makeup_3":0,"hair_1":5,"helmet_2":0,"makeup_1":0,"hair_2":0,"arms":27,"eyebrows_3":0,"glasses_2":0,"age_1":0,"bproof_1":0,"lipstick_4":0,"torso_2":1,"ears_2":1,"skin":9,"beard_1":9,"hair_color_2":0,"sex":0,"arms_2":0,"makeup_2":0,"helmet_1":-1,"age_2":0,"decals_2":0,"mask_1":0,"beard_3":0,"pants_2":0,"bproof_2":0}},{"label":"CNI","skin":{"bags_2":0,"hair_color_1":2,"tshirt_2":2,"chain_2":0,"lipstick_3":0,"lipstick_1":0,"glasses_1":3,"torso_1":23,"pants_1":28,"beard_4":0,"decals_1":0,"shoes_2":0,"bags_1":0,"mask_1":0,"beard_2":7,"shoes_1":20,"lipstick_2":0,"chain_1":117,"mask_2":0,"makeup_2":0,"hair_color_2":0,"makeup_4":0,"face":3,"makeup_3":0,"skin":9,"helmet_2":0,"hair_1":5,"makeup_1":0,"hair_2":0,"tshirt_1":10,"arms":27,"sex":0,"glasses_2":0,"age_1":0,"bproof_1":0,"arms_2":0,"torso_2":3,"ears_2":1,"lipstick_4":0,"beard_1":9,"ears_1":5,"eyebrows_1":24,"eyebrows_2":10,"eyebrows_3":0,"eyebrows_4":0,"helmet_1":-1,"decals_2":0,"age_2":0,"beard_3":0,"pants_2":0,"bproof_2":0}},{"label":"Jefe cni","skin":{"bags_2":0,"hair_color_1":2,"tshirt_2":0,"chain_2":2,"lipstick_3":0,"lipstick_1":0,"glasses_1":3,"torso_1":29,"pants_1":28,"beard_4":0,"decals_1":0,"shoes_2":0,"bags_1":0,"mask_1":0,"shoes_1":10,"tshirt_1":34,"lipstick_2":0,"chain_1":27,"mask_2":0,"eyebrows_4":0,"hair_color_2":0,"makeup_4":0,"face":3,"beard_2":7,"skin":9,"makeup_3":0,"hair_1":5,"helmet_2":0,"makeup_1":0,"hair_2":0,"arms":27,"sex":0,"glasses_2":0,"age_1":0,"bproof_1":0,"lipstick_4":0,"torso_2":0,"ears_2":1,"eyebrows_3":0,"beard_1":9,"ears_1":5,"eyebrows_2":10,"eyebrows_1":24,"arms_2":0,"helmet_1":-1,"makeup_2":0,"decals_2":0,"age_2":0,"beard_3":0,"pants_2":0,"bproof_2":0}},{"label":"CNI CALLE","skin":{"bags_2":0,"hair_color_1":2,"tshirt_2":2,"chain_2":0,"lipstick_3":0,"lipstick_1":0,"glasses_1":3,"lipstick_4":0,"pants_1":31,"beard_4":0,"decals_1":0,"shoes_2":2,"bags_1":0,"eyebrows_4":0,"tshirt_1":23,"shoes_1":7,"lipstick_2":0,"chain_1":125,"mask_2":0,"makeup_2":0,"hair_color_2":0,"makeup_4":0,"face":3,"beard_2":7,"skin":9,"makeup_3":0,"hair_1":5,"helmet_2":0,"makeup_1":0,"hair_2":0,"arms":27,"sex":0,"glasses_2":0,"age_1":0,"bproof_1":0,"eyebrows_3":0,"torso_2":0,"ears_2":1,"eyebrows_1":24,"beard_1":9,"ears_1":5,"eyebrows_2":10,"arms_2":0,"torso_1":230,"helmet_1":-1,"mask_1":0,"decals_2":0,"age_2":0,"beard_3":0,"pants_2":0,"bproof_2":0}},{"label":"BRO CNI ESO SI","skin":{"bags_2":0,"hair_color_1":2,"tshirt_2":3,"chain_2":0,"lipstick_3":0,"lipstick_1":0,"glasses_1":3,"lipstick_4":0,"pants_1":31,"beard_4":0,"hair_2":0,"shoes_2":2,"bags_1":0,"decals_1":0,"decals_2":0,"arms_2":0,"lipstick_2":0,"chain_1":125,"mask_2":0,"eyebrows_4":0,"hair_color_2":0,"makeup_4":0,"face":3,"beard_2":7,"eyebrows_2":10,"makeup_3":0,"hair_1":5,"helmet_2":0,"makeup_2":0,"tshirt_1":72,"arms":27,"eyebrows_3":0,"glasses_2":0,"age_1":0,"bproof_1":0,"makeup_1":0,"torso_2":0,"ears_2":2,"skin":9,"beard_1":9,"ears_1":2,"eyebrows_1":24,"mask_1":0,"torso_1":23,"sex":0,"age_2":0,"shoes_1":7,"helmet_1":-1,"beard_3":0,"pants_2":0,"bproof_2":0}}]}'),
	(12967, 'property', 'steam:11000014269a1ae', '{"dressing":[{"label":"fbi","skin":{"eyebrows_4":5,"chain_1":112,"glasses_1":4,"mask_1":0,"age_1":12,"hair_1":46,"age_2":0,"hair_color_2":0,"lipstick_1":4,"makeup_2":0,"makeup_1":3,"chain_2":2,"pants_1":31,"helmet_1":104,"skin":34,"makeup_3":0,"makeup_4":0,"beard_4":0,"face":0,"bags_1":0,"lipstick_4":3,"beard_2":10,"bags_2":5,"eyebrows_2":10,"torso_2":0,"bproof_2":0,"decals_1":0,"helmet_2":20,"ears_2":0,"arms":41,"pants_2":0,"lipstick_3":4,"eyebrows_1":3,"ears_1":2,"hair_2":0,"hair_color_1":35,"sex":0,"torso_1":53,"bproof_1":2,"shoes_2":0,"shoes_1":25,"eyebrows_3":0,"beard_3":35,"beard_1":18,"decals_2":0,"tshirt_1":122,"tshirt_2":0,"glasses_2":0,"mask_2":0,"lipstick_2":4}},{"label":"cno","skin":{"eyebrows_4":5,"chain_1":112,"glasses_1":4,"mask_1":52,"age_1":12,"hair_1":46,"age_2":0,"hair_color_2":0,"lipstick_1":4,"eyebrows_1":3,"makeup_1":3,"lipstick_2":4,"pants_1":31,"helmet_1":104,"skin":34,"makeup_3":0,"makeup_4":0,"beard_4":0,"face":0,"bags_1":0,"lipstick_4":3,"beard_2":10,"bags_2":5,"eyebrows_2":10,"torso_2":0,"bproof_2":0,"decals_1":0,"helmet_2":20,"ears_2":0,"arms":41,"pants_2":0,"lipstick_3":4,"ears_1":2,"torso_1":53,"hair_2":0,"hair_color_1":35,"sex":0,"shoes_1":25,"bproof_1":2,"shoes_2":0,"tshirt_2":0,"eyebrows_3":0,"beard_3":35,"beard_1":18,"decals_2":0,"tshirt_1":122,"makeup_2":0,"glasses_2":0,"mask_2":0,"chain_2":2}}]}'),
	(12968, 'property', 'steam:1100001441e73a0', '{}'),
	(12969, 'property', 'steam:11000013f5e73dd', '{}'),
	(12970, 'property', 'steam:110000146fa93b0', '{"dressing":[{"label":"AFIA","skin":{"torso_2":1,"age_1":0,"eyebrows_2":10,"bproof_1":0,"makeup_1":0,"lipstick_1":0,"hair_color_1":0,"lipstick_2":0,"eyebrows_1":2,"beard_1":11,"beard_4":0,"skin":0,"makeup_3":0,"lipstick_4":0,"lipstick_3":0,"tshirt_1":36,"glasses_1":8,"sex":0,"age_2":0,"decals_2":0,"torso_1":30,"mask_2":0,"decals_1":0,"pants_2":3,"helmet_2":0,"ears_1":-1,"chain_1":0,"makeup_2":0,"tshirt_2":0,"ears_2":0,"pants_1":28,"bags_2":0,"shoes_2":0,"eyebrows_4":0,"face":43,"hair_color_2":3,"bproof_2":0,"beard_2":10,"helmet_1":-1,"bags_1":0,"hair_1":3,"shoes_1":10,"chain_2":0,"arms":4,"hair_2":0,"mask_1":110,"makeup_4":0,"glasses_2":0,"eyebrows_3":0,"beard_3":0}},{"label":"Intervenciones","skin":{"torso_2":0,"age_1":0,"eyebrows_2":10,"bproof_1":2,"makeup_1":0,"lipstick_1":0,"hair_color_1":0,"lipstick_2":0,"eyebrows_1":2,"beard_1":11,"beard_4":0,"skin":0,"makeup_3":0,"decals_2":0,"lipstick_3":0,"tshirt_1":122,"glasses_1":8,"sex":0,"age_2":0,"chain_2":0,"lipstick_4":0,"mask_2":0,"decals_1":0,"pants_2":0,"helmet_2":0,"chain_1":0,"makeup_2":0,"pants_1":31,"eyebrows_4":0,"ears_2":0,"torso_1":53,"bags_2":0,"shoes_2":0,"ears_1":-1,"face":43,"hair_color_2":3,"bproof_2":0,"beard_2":10,"helmet_1":87,"bags_1":0,"hair_1":3,"tshirt_2":0,"shoes_1":24,"arms":4,"hair_2":0,"mask_1":110,"makeup_4":0,"eyebrows_3":0,"glasses_2":0,"beard_3":0}},{"label":"CNI","skin":{"torso_2":0,"age_1":0,"eyebrows_2":10,"bproof_1":2,"makeup_1":0,"lipstick_1":0,"hair_color_1":0,"lipstick_2":0,"eyebrows_1":2,"beard_1":11,"beard_4":0,"skin":0,"makeup_3":0,"decals_2":0,"lipstick_3":0,"tshirt_1":122,"glasses_1":8,"sex":0,"age_2":0,"chain_2":0,"lipstick_4":0,"mask_2":0,"decals_1":0,"pants_2":0,"helmet_2":0,"chain_1":0,"makeup_2":0,"pants_1":31,"eyebrows_4":0,"ears_2":0,"torso_1":53,"bags_2":0,"shoes_2":0,"ears_1":-1,"face":43,"hair_color_2":3,"bproof_2":0,"beard_2":10,"helmet_1":87,"bags_1":0,"hair_1":3,"tshirt_2":0,"shoes_1":24,"arms":4,"hair_2":0,"mask_1":110,"makeup_4":0,"eyebrows_3":0,"glasses_2":0,"beard_3":0}},{"label":"Intervencion .  jefe","skin":{"torso_2":0,"age_1":0,"eyebrows_2":10,"bproof_1":2,"makeup_1":0,"lipstick_1":0,"glasses_2":0,"lipstick_2":0,"eyebrows_1":2,"beard_1":11,"beard_4":0,"skin":0,"makeup_3":0,"lipstick_4":0,"lipstick_3":0,"tshirt_1":122,"glasses_1":8,"sex":0,"hair_color_1":0,"age_2":0,"decals_2":0,"mask_2":0,"decals_1":0,"pants_2":0,"helmet_2":20,"eyebrows_4":0,"chain_1":0,"beard_2":10,"pants_1":31,"ears_2":0,"torso_1":53,"bags_2":0,"shoes_2":0,"ears_1":-1,"face":43,"hair_color_2":3,"bproof_2":0,"tshirt_2":0,"helmet_1":104,"bags_1":0,"hair_1":3,"makeup_2":0,"shoes_1":24,"arms":4,"hair_2":0,"mask_1":107,"makeup_4":0,"chain_2":0,"eyebrows_3":0,"beard_3":0}},{"label":"JEFE INTERVENCIONES 2","skin":{"torso_2":0,"age_1":0,"eyebrows_2":10,"bproof_1":2,"makeup_1":0,"lipstick_1":0,"hair_color_1":0,"lipstick_2":0,"eyebrows_1":2,"beard_1":11,"beard_4":0,"skin":0,"makeup_3":0,"shoes_1":24,"lipstick_3":0,"tshirt_1":122,"glasses_1":8,"sex":0,"age_2":0,"lipstick_4":0,"decals_2":0,"mask_2":0,"decals_1":0,"pants_2":0,"helmet_2":20,"eyebrows_4":0,"chain_1":112,"tshirt_2":0,"beard_2":10,"ears_2":0,"torso_1":53,"bags_2":0,"shoes_2":0,"ears_1":-1,"face":43,"hair_color_2":3,"bproof_2":0,"pants_1":31,"helmet_1":104,"bags_1":0,"hair_1":3,"chain_2":2,"makeup_2":0,"arms":4,"hair_2":0,"mask_1":107,"makeup_4":0,"eyebrows_3":0,"glasses_2":0,"beard_3":0}},{"label":"Investigaciones","skin":{"torso_2":0,"age_1":0,"eyebrows_2":10,"bproof_1":0,"makeup_1":0,"lipstick_1":0,"chain_2":0,"lipstick_2":0,"eyebrows_1":2,"hair_color_1":0,"age_2":0,"beard_1":11,"beard_4":0,"skin":0,"torso_1":273,"lipstick_4":0,"mask_2":0,"makeup_3":0,"eyebrows_4":0,"lipstick_3":0,"tshirt_1":15,"glasses_1":8,"sex":0,"chain_1":125,"glasses_2":0,"bracelets_2":0,"decals_2":0,"decals_1":0,"pants_2":0,"helmet_2":20,"watches_2":0,"bags_2":0,"beard_2":10,"makeup_4":0,"ears_2":0,"watches_1":0,"tshirt_2":0,"arms_2":0,"ears_1":-1,"face":43,"hair_color_2":3,"bproof_2":0,"bracelets_1":0,"helmet_1":107,"bags_1":0,"hair_1":3,"makeup_2":0,"shoes_2":0,"arms":0,"hair_2":0,"mask_1":107,"shoes_1":25,"eyebrows_3":0,"pants_1":8,"beard_3":0}},{"label":"Cientifico","skin":{"torso_2":6,"age_1":0,"eyebrows_2":10,"bproof_1":0,"makeup_1":0,"lipstick_1":0,"hair_color_1":0,"lipstick_2":0,"eyebrows_1":2,"shoes_2":8,"age_2":0,"beard_1":11,"beard_4":0,"skin":0,"beard_2":10,"chain_2":0,"mask_2":0,"makeup_3":0,"makeup_2":0,"lipstick_3":0,"tshirt_1":11,"glasses_1":8,"sex":0,"arms_2":0,"chain_1":128,"bracelets_2":0,"lipstick_4":0,"decals_1":0,"pants_2":0,"bracelets_1":0,"watches_2":0,"eyebrows_4":0,"torso_1":233,"pants_1":20,"ears_2":0,"watches_1":0,"bags_2":0,"eyebrows_3":0,"ears_1":-1,"face":43,"hair_color_2":3,"bproof_2":0,"decals_2":0,"helmet_1":-1,"bags_1":0,"hair_1":3,"helmet_2":0,"glasses_2":0,"arms":127,"hair_2":0,"mask_1":107,"shoes_1":15,"makeup_4":0,"tshirt_2":0,"beard_3":0}}],"weapons":[{"ammo":100,"name":"WEAPON_SMG"},{"ammo":250,"name":"weapon_microsmg"},{"ammo":42,"name":"WEAPON_MACHETE"}]}'),
	(12971, 'property', 'steam:110000146703e89', '{"dressing":[{"skin":{"mask_1":51,"makeup_1":0,"bags_2":0,"hair_color_1":0,"helmet_1":9,"lipstick_2":0,"arms":123,"decals_2":0,"torso_1":53,"hair_2":0,"bags_1":45,"beard_2":10,"glasses_1":5,"makeup_3":0,"hair_1":38,"eyebrows_3":0,"skin":3,"glasses_2":0,"makeup_2":0,"beard_1":3,"watches_1":1,"mask_2":3,"decals_1":0,"shoes_2":0,"beard_4":0,"eyebrows_2":10,"tshirt_1":15,"lipstick_4":0,"chain_1":0,"watches_2":0,"lipstick_3":0,"arms_2":0,"sex":0,"hair_color_2":0,"tshirt_2":0,"ears_1":-1,"face":0,"lipstick_1":0,"chain_2":0,"bproof_1":0,"ears_2":0,"helmet_2":0,"eyebrows_1":0,"torso_2":0,"pants_2":0,"shoes_1":25,"pants_1":0,"eyebrows_4":0,"makeup_4":0,"age_1":0,"beard_3":0,"bproof_2":-1,"age_2":0},"label":"poli sub inspector"},{"skin":{"watches_1":1,"makeup_1":0,"bags_2":0,"hair_color_1":0,"helmet_1":9,"lipstick_2":0,"arms_2":0,"decals_2":0,"glasses_2":0,"hair_2":0,"bags_1":45,"torso_2":0,"glasses_1":5,"makeup_3":0,"hair_1":38,"age_2":0,"skin":3,"beard_4":0,"makeup_2":0,"beard_1":3,"decals_1":0,"mask_2":3,"torso_1":50,"shoes_2":0,"lipstick_3":0,"bproof_1":0,"tshirt_1":15,"lipstick_4":0,"chain_1":0,"watches_2":0,"sex":0,"tshirt_2":0,"ears_1":-1,"hair_color_2":0,"eyebrows_3":0,"face":0,"eyebrows_2":10,"lipstick_1":0,"chain_2":0,"mask_1":51,"ears_2":0,"helmet_2":0,"eyebrows_1":0,"eyebrows_4":0,"pants_2":0,"shoes_1":25,"pants_1":0,"arms":96,"makeup_4":0,"age_1":0,"beard_3":0,"bproof_2":-1,"beard_2":10},"label":"sub inspector"},{"skin":{"watches_1":1,"makeup_1":0,"ears_1":-1,"hair_color_1":0,"helmet_1":9,"lipstick_2":0,"arms":96,"decals_2":0,"glasses_2":0,"hair_2":0,"bags_1":45,"torso_2":0,"glasses_1":5,"makeup_3":0,"hair_1":38,"age_2":0,"skin":3,"lipstick_1":0,"makeup_2":0,"beard_1":3,"beard_2":10,"ears_2":0,"age_1":0,"shoes_2":0,"torso_1":50,"bproof_1":0,"tshirt_1":15,"lipstick_4":0,"chain_1":0,"watches_2":0,"decals_1":0,"beard_4":0,"tshirt_2":0,"hair_color_2":0,"lipstick_3":0,"eyebrows_2":10,"eyebrows_3":0,"face":0,"chain_2":0,"arms_2":0,"eyebrows_4":0,"helmet_2":0,"eyebrows_1":0,"mask_1":51,"pants_2":0,"shoes_1":25,"pants_1":33,"bags_2":0,"makeup_4":0,"sex":0,"beard_3":0,"bproof_2":-1,"mask_2":3},"label":"poliiiiiiiiiiiiii"}]}'),
	(12972, 'property', 'steam:11000014024725f', '{}'),
	(12973, 'property', 'steam:110000145f6ee4d', '{"dressing":[{"label":"ADMINISTRAR","skin":{"bags_2":0,"hair_color_1":0,"tshirt_2":0,"chain_2":0,"lipstick_3":0,"lipstick_1":0,"glasses_1":-1,"torso_1":178,"pants_1":77,"beard_4":0,"decals_1":0,"shoes_2":0,"bags_1":0,"ears_1":-1,"mask_2":0,"lipstick_2":0,"bproof_2":0,"skin":3,"mask_1":0,"chain_1":0,"makeup_4":0,"face":0,"ears_2":0,"eyebrows_2":0,"hair_2":0,"hair_1":46,"beard_2":0,"makeup_3":0,"helmet_2":0,"arms":2,"eyebrows_3":0,"glasses_2":0,"age_1":0,"bproof_1":0,"tshirt_1":15,"torso_2":0,"age_2":0,"makeup_1":0,"beard_1":0,"hair_color_2":0,"lipstick_4":0,"eyebrows_1":0,"sex":0,"eyebrows_4":0,"makeup_2":0,"decals_2":0,"shoes_1":55,"beard_3":0,"pants_2":0,"helmet_1":-1}}]}'),
	(12974, 'property', 'steam:110000143f27b87', '{}'),
	(12975, 'property', 'steam:110000141b96768', '{}'),
	(12976, 'property', 'steam:11000013887a3fd', '{"dressing":[{"label":"Gang","skin":{"torso_2":1,"age_1":0,"eyebrows_2":10,"bproof_1":0,"makeup_1":0,"lipstick_1":0,"hair_color_1":0,"lipstick_2":0,"eyebrows_1":0,"beard_1":0,"beard_4":1,"skin":0,"lipstick_4":0,"makeup_3":0,"age_2":0,"lipstick_3":0,"tshirt_1":2,"glasses_1":-1,"sex":0,"torso_1":279,"mask_2":0,"chain_1":0,"bags_2":0,"decals_1":0,"pants_2":4,"helmet_2":0,"ears_1":-1,"makeup_2":0,"eyebrows_4":0,"beard_2":0,"ears_2":0,"chain_2":0,"tshirt_2":0,"shoes_2":1,"decals_2":0,"face":2,"hair_color_2":54,"bproof_2":0,"arms":56,"helmet_1":-1,"bags_1":0,"hair_1":50,"shoes_1":31,"glasses_2":0,"pants_1":1,"hair_2":0,"mask_1":36,"makeup_4":0,"arms_2":0,"eyebrows_3":0,"beard_3":2}},{"label":"FREE TH EGANG","skin":{"torso_2":1,"age_1":0,"eyebrows_2":10,"bproof_1":0,"makeup_1":0,"lipstick_1":0,"hair_color_1":0,"lipstick_2":0,"eyebrows_1":0,"beard_1":0,"beard_4":1,"skin":0,"chain_2":0,"makeup_3":0,"lipstick_4":0,"lipstick_3":0,"tshirt_1":2,"glasses_1":-1,"sex":0,"age_2":0,"beard_2":0,"mask_2":2,"tshirt_2":0,"decals_1":0,"pants_2":4,"helmet_2":0,"chain_1":0,"eyebrows_3":0,"pants_1":1,"eyebrows_4":0,"ears_2":0,"torso_1":279,"bags_2":0,"shoes_2":1,"ears_1":-1,"face":2,"hair_color_2":54,"bproof_2":0,"decals_2":0,"helmet_1":-1,"bags_1":0,"hair_1":50,"arms_2":0,"makeup_2":0,"arms":56,"hair_2":0,"mask_1":56,"shoes_1":31,"glasses_2":0,"makeup_4":0,"beard_3":2}}]}'),
	(12977, 'property', 'steam:11000013f480fee', '{}'),
	(12978, 'property', 'steam:110000143cefe66', '{}'),
	(12979, 'property', 'steam:11000014509da87', '{"weapons":[{"ammo":250,"name":"weapon_smg"},{"ammo":250,"name":"weapon_combatpistol"},{"ammo":42,"name":"WEAPON_MACHETE"}],"dressing":[{"skin":{"age_2":0,"makeup_2":0,"bproof_2":1,"beard_3":0,"helmet_2":14,"helmet_1":-1,"chain_2":0,"hair_1":27,"tshirt_1":4,"pants_2":0,"face":0,"eyebrows_2":10,"glasses_2":0,"arms_2":0,"shoes_2":4,"lipstick_1":0,"beard_1":10,"ears_1":7,"lipstick_2":0,"beard_4":0,"age_1":0,"eyebrows_4":0,"makeup_3":0,"shoes_1":11,"hair_color_1":0,"decals_2":0,"tshirt_2":0,"skin":3,"eyebrows_3":0,"mask_1":0,"pants_1":52,"ears_2":0,"bproof_1":4,"makeup_4":0,"beard_2":10,"mask_2":14,"hair_color_2":0,"chain_1":3,"hair_2":0,"makeup_1":0,"torso_2":0,"torso_1":192,"sex":0,"decals_1":0,"eyebrows_1":6,"lipstick_3":0,"arms":28,"bags_2":0,"lipstick_4":0,"glasses_1":5,"bags_1":0},"label":"peaky"},{"skin":{"age_2":0,"makeup_2":0,"bproof_2":1,"beard_3":0,"watches_1":4,"helmet_2":2,"helmet_1":7,"chain_2":0,"lipstick_1":0,"tshirt_1":15,"pants_2":0,"face":0,"arms":28,"glasses_2":0,"hair_color_2":0,"beard_2":10,"shoes_1":11,"eyebrows_4":0,"shoes_2":4,"ears_1":7,"lipstick_2":0,"makeup_4":0,"age_1":0,"hair_1":27,"makeup_3":0,"hair_2":0,"hair_color_1":0,"decals_2":0,"tshirt_2":0,"skin":3,"eyebrows_3":0,"ears_2":0,"pants_1":53,"arms_2":0,"bproof_1":4,"beard_1":10,"eyebrows_2":10,"mask_2":14,"watches_2":0,"mask_1":0,"beard_4":0,"makeup_1":0,"torso_2":0,"torso_1":104,"sex":0,"decals_1":0,"eyebrows_1":6,"lipstick_3":0,"bags_1":0,"bags_2":0,"lipstick_4":0,"glasses_1":5,"chain_1":3},"label":"gitano bienvestio"},{"skin":{"age_2":0,"makeup_2":0,"bproof_2":1,"beard_3":0,"watches_1":4,"helmet_2":14,"helmet_1":-1,"chain_2":4,"lipstick_1":0,"tshirt_1":15,"pants_2":0,"face":0,"arms":96,"glasses_2":0,"shoes_1":7,"beard_2":10,"beard_1":10,"eyebrows_4":0,"shoes_2":11,"ears_1":7,"lipstick_2":0,"hair_color_2":0,"age_1":0,"hair_1":27,"makeup_3":0,"arms_2":20,"hair_color_1":0,"decals_2":0,"tshirt_2":0,"skin":3,"eyebrows_3":0,"ears_2":0,"pants_1":33,"mask_1":0,"bproof_1":4,"lipstick_4":0,"torso_1":167,"mask_2":14,"watches_2":0,"beard_4":0,"hair_2":0,"makeup_1":0,"torso_2":0,"makeup_4":0,"sex":0,"decals_1":0,"eyebrows_1":6,"lipstick_3":0,"bags_1":0,"bags_2":0,"eyebrows_2":10,"glasses_1":5,"chain_1":0},"label":"boods 2"},{"skin":{"age_2":0,"makeup_2":0,"bproof_2":1,"beard_3":0,"watches_1":4,"helmet_2":0,"helmet_1":89,"chain_2":4,"lipstick_1":0,"tshirt_1":75,"pants_2":0,"face":0,"torso_1":117,"glasses_2":0,"arms":96,"hair_2":0,"shoes_1":7,"eyebrows_4":0,"shoes_2":11,"ears_1":20,"lipstick_2":0,"hair_color_2":0,"age_1":0,"hair_1":27,"makeup_3":0,"makeup_4":0,"hair_color_1":0,"decals_2":0,"tshirt_2":1,"skin":3,"eyebrows_3":0,"beard_1":10,"arms_2":20,"ears_2":3,"bproof_1":4,"bags_1":0,"beard_2":10,"mask_2":4,"watches_2":0,"beard_4":0,"pants_1":33,"makeup_1":0,"torso_2":0,"eyebrows_2":10,"sex":0,"decals_1":0,"mask_1":51,"lipstick_3":0,"eyebrows_1":6,"bags_2":0,"lipstick_4":0,"glasses_1":5,"chain_1":0},"label":"bood"},{"skin":{"age_2":0,"makeup_2":0,"bproof_2":1,"beard_3":0,"watches_1":18,"helmet_2":2,"helmet_1":7,"chain_2":0,"bracelets_2":0,"tshirt_1":15,"pants_2":9,"glasses_2":0,"hair_1":27,"face":0,"eyebrows_2":10,"arms":32,"bags_1":0,"beard_1":10,"torso_1":73,"hair_color_2":0,"eyebrows_4":0,"ears_1":7,"lipstick_2":0,"shoes_2":15,"age_1":0,"bracelets_1":4,"makeup_3":0,"shoes_1":7,"hair_color_1":0,"decals_2":0,"ears_2":0,"skin":3,"eyebrows_3":0,"arms_2":0,"pants_1":2,"lipstick_1":0,"bproof_1":4,"beard_2":10,"hair_2":0,"mask_2":14,"watches_2":0,"beard_4":0,"decals_1":0,"makeup_1":0,"torso_2":4,"makeup_4":0,"sex":0,"tshirt_2":0,"eyebrows_1":6,"lipstick_3":0,"mask_1":0,"bags_2":0,"lipstick_4":0,"glasses_1":5,"chain_1":3},"label":"patron 1"},{"skin":{"age_2":0,"makeup_2":0,"bproof_2":1,"beard_3":0,"watches_1":4,"helmet_2":0,"helmet_1":89,"eyebrows_4":0,"lipstick_1":0,"tshirt_1":74,"pants_2":0,"glasses_2":0,"mask_1":51,"face":0,"torso_1":28,"ears_2":3,"arms":96,"bracelets_2":0,"hair_color_2":0,"beard_4":0,"hair_1":27,"ears_1":20,"lipstick_2":0,"beard_1":10,"age_1":0,"bracelets_1":4,"makeup_3":0,"eyebrows_2":10,"hair_color_1":0,"decals_2":0,"bags_1":0,"skin":3,"eyebrows_3":0,"decals_1":0,"arms_2":20,"shoes_2":0,"bproof_1":4,"hair_2":0,"beard_2":10,"mask_2":4,"watches_2":0,"lipstick_4":0,"chain_2":0,"makeup_4":0,"torso_2":0,"shoes_1":24,"sex":0,"tshirt_2":3,"pants_1":24,"lipstick_3":0,"eyebrows_1":6,"bags_2":0,"makeup_1":0,"glasses_1":5,"chain_1":18},"label":"elegante"}]}'),
	(12980, 'property', 'steam:1100001133fa348', '{}'),
	(12981, 'property', 'steam:1100001412fbe57', '{}'),
	(12982, 'property', 'steam:11000014218d4a6', '{}'),
	(12983, 'property', 'steam:110000146f1ce1d', '{}'),
	(12984, 'property', 'steam:11000013425daa9', '{}'),
	(12985, 'property', 'steam:1100001430fa8ca', '{}'),
	(12986, 'property', 'steam:11000014175f737', '{"dressing":[{"label":"familia","skin":{"torso_2":0,"age_1":0,"eyebrows_2":9,"bproof_1":0,"makeup_1":0,"lipstick_1":0,"hair_color_1":3,"lipstick_2":0,"eyebrows_1":0,"beard_1":19,"beard_4":0,"skin":0,"makeup_3":0,"lipstick_4":0,"lipstick_3":0,"tshirt_1":4,"glasses_1":-1,"sex":0,"makeup_4":0,"beard_2":10,"pants_1":28,"mask_2":0,"decals_1":0,"pants_2":0,"helmet_2":0,"eyebrows_4":0,"chain_1":3,"age_2":0,"shoes_2":0,"ears_2":0,"torso_1":192,"bags_2":0,"eyebrows_3":0,"ears_1":-1,"face":0,"hair_color_2":0,"bproof_2":0,"tshirt_2":0,"helmet_1":12,"bags_1":0,"hair_1":17,"decals_2":0,"chain_2":0,"arms":1,"hair_2":0,"mask_1":0,"shoes_1":21,"makeup_2":0,"glasses_2":0,"beard_3":0}}]}'),
	(12987, 'property', 'steam:11000013f2b2393', '{}'),
	(12988, 'property', 'steam:1100001427074d5', '{}'),
	(12989, 'property', 'steam:11000013e6dae26', '{}'),
	(12990, 'property', 'steam:11000013f75ac78', '{}'),
	(12991, 'property', 'steam:11000014a1015b8', '{"dressing":[{"skin":{"mask_1":0,"makeup_1":0,"bags_2":0,"hair_color_1":0,"helmet_1":-1,"lipstick_2":0,"arms":0,"decals_2":0,"torso_1":282,"hair_2":0,"bags_1":0,"torso_2":1,"glasses_1":-1,"makeup_3":0,"hair_1":0,"age_2":0,"skin":0,"makeup_2":0,"beard_1":0,"ears_2":0,"shoes_2":0,"glasses_2":0,"eyebrows_2":0,"tshirt_1":0,"lipstick_4":0,"chain_1":0,"decals_1":0,"beard_4":0,"lipstick_3":0,"eyebrows_3":0,"hair_color_2":0,"ears_1":-1,"pants_1":59,"beard_2":0,"lipstick_1":0,"chain_2":0,"bproof_1":0,"tshirt_2":0,"helmet_2":0,"eyebrows_1":0,"mask_2":0,"pants_2":9,"shoes_1":24,"face":0,"eyebrows_4":0,"makeup_4":0,"age_1":0,"beard_3":0,"bproof_2":0,"sex":0}},{"skin":{"mask_1":0,"makeup_1":0,"bags_2":0,"hair_color_1":0,"helmet_1":-1,"lipstick_2":0,"arms":0,"decals_2":0,"glasses_2":0,"hair_2":0,"bags_1":0,"torso_2":1,"glasses_1":-1,"makeup_3":0,"hair_1":0,"eyebrows_3":0,"skin":0,"makeup_2":0,"beard_1":0,"ears_2":0,"shoes_2":0,"torso_1":282,"eyebrows_2":0,"tshirt_1":0,"lipstick_4":0,"chain_1":0,"decals_1":0,"beard_4":0,"lipstick_3":0,"age_2":0,"hair_color_2":0,"beard_2":0,"ears_1":-1,"lipstick_1":0,"tshirt_2":0,"chain_2":0,"face":0,"bproof_1":0,"helmet_2":0,"eyebrows_1":0,"mask_2":0,"pants_2":0,"shoes_1":0,"pants_1":33,"eyebrows_4":0,"makeup_4":0,"age_1":0,"beard_3":0,"bproof_2":0,"sex":0},"label":"persona normal"},{"skin":{"mask_1":0,"makeup_1":0,"bags_2":0,"hair_color_1":22,"helmet_1":-1,"lipstick_2":0,"arms":0,"decals_2":0,"torso_1":192,"hair_2":0,"bags_1":0,"torso_2":3,"glasses_1":-1,"makeup_3":0,"hair_1":14,"eyebrows_3":0,"skin":0,"makeup_2":0,"beard_1":0,"ears_2":0,"shoes_2":0,"glasses_2":0,"bproof_1":0,"tshirt_1":4,"lipstick_4":0,"chain_1":0,"lipstick_1":0,"decals_1":0,"beard_4":0,"tshirt_2":0,"hair_color_2":0,"lipstick_3":0,"sex":0,"ears_1":-1,"beard_2":0,"chain_2":0,"face":0,"eyebrows_2":0,"helmet_2":0,"eyebrows_1":0,"mask_2":0,"pants_2":2,"shoes_1":21,"pants_1":52,"eyebrows_4":0,"makeup_4":0,"age_1":0,"beard_3":0,"bproof_2":0,"age_2":0},"label":"mafioso"},{"skin":{"mask_1":0,"makeup_1":0,"bags_2":0,"hair_color_1":22,"helmet_1":-1,"lipstick_2":0,"arms":0,"decals_2":0,"torso_1":192,"hair_2":0,"bags_1":0,"beard_2":0,"glasses_1":-1,"makeup_3":0,"hair_1":14,"eyebrows_3":0,"skin":0,"makeup_2":0,"beard_1":0,"ears_2":0,"shoes_2":0,"bproof_1":0,"eyebrows_2":0,"tshirt_1":0,"lipstick_4":0,"chain_1":0,"age_1":0,"torso_2":0,"decals_1":0,"helmet_2":0,"beard_4":0,"age_2":0,"lipstick_3":0,"ears_1":-1,"hair_color_2":0,"chain_2":0,"glasses_2":0,"face":0,"tshirt_2":0,"eyebrows_1":0,"mask_2":0,"pants_2":2,"shoes_1":21,"pants_1":52,"eyebrows_4":0,"makeup_4":0,"sex":0,"beard_3":0,"bproof_2":0,"lipstick_1":0},"label":"mafioso1"}]}'),
	(12992, 'property', 'steam:110000146c5db09', '{"dressing":[{"label":"cnp","skin":{"torso_2":0,"age_1":9,"eyebrows_2":0,"bproof_1":2,"makeup_1":0,"lipstick_1":0,"hair_color_1":0,"lipstick_2":0,"eyebrows_1":0,"beard_1":10,"beard_4":0,"skin":0,"makeup_3":0,"lipstick_4":0,"lipstick_3":0,"tshirt_1":122,"glasses_1":-1,"sex":0,"age_2":3,"beard_2":10,"tshirt_2":0,"mask_2":0,"decals_1":0,"pants_2":0,"helmet_2":0,"torso_1":55,"pants_1":34,"shoes_2":0,"chain_1":0,"ears_2":0,"eyebrows_4":0,"bags_2":0,"eyebrows_3":0,"decals_2":0,"face":4,"hair_color_2":0,"bproof_2":0,"ears_1":2,"helmet_1":-1,"bags_1":0,"hair_1":47,"chain_2":0,"shoes_1":25,"arms":41,"hair_2":0,"mask_1":0,"makeup_4":0,"makeup_2":0,"glasses_2":0,"beard_3":0}}]}'),
	(12993, 'property', 'steam:11000010ba1a463', '{"dressing":[{"label":"atracos","skin":{"torso_2":0,"age_1":0,"eyebrows_2":0,"bproof_1":10,"makeup_1":0,"lipstick_1":0,"hair_color_1":0,"lipstick_2":0,"eyebrows_1":0,"bags_2":0,"beard_1":0,"beard_4":0,"skin":3,"decals_2":0,"age_2":0,"chain_2":0,"makeup_3":0,"bracelets_1":5,"lipstick_3":0,"tshirt_1":24,"glasses_1":5,"sex":0,"mask_2":0,"lipstick_4":0,"bracelets_2":0,"chain_1":18,"decals_1":0,"pants_2":2,"helmet_2":7,"watches_2":0,"beard_2":0,"eyebrows_4":0,"torso_1":262,"ears_2":0,"watches_1":0,"tshirt_2":0,"shoes_2":0,"ears_1":-1,"face":0,"hair_color_2":0,"bproof_2":1,"glasses_2":0,"makeup_2":0,"bags_1":45,"hair_1":25,"makeup_4":0,"arms_2":0,"pants_1":97,"hair_2":0,"mask_1":0,"shoes_1":8,"eyebrows_3":0,"arms":5,"beard_3":0}},{"label":"atracos fix","skin":{"torso_2":0,"age_1":0,"eyebrows_2":0,"bproof_1":10,"makeup_1":0,"lipstick_1":0,"chain_2":0,"lipstick_2":0,"eyebrows_1":0,"pants_1":97,"beard_1":0,"beard_4":0,"skin":3,"age_2":0,"makeup_4":0,"decals_2":0,"makeup_3":0,"mask_2":0,"lipstick_3":0,"tshirt_1":24,"glasses_1":5,"sex":0,"beard_2":0,"lipstick_4":0,"bracelets_2":0,"chain_1":18,"decals_1":0,"pants_2":2,"bracelets_1":5,"watches_2":0,"ears_1":-1,"helmet_2":7,"torso_1":262,"ears_2":0,"watches_1":0,"bags_2":0,"arms_2":0,"eyebrows_4":0,"face":0,"hair_color_2":0,"bproof_2":1,"shoes_2":0,"makeup_2":0,"bags_1":45,"hair_1":25,"glasses_2":0,"tshirt_2":0,"arms":4,"hair_2":0,"mask_1":0,"shoes_1":8,"eyebrows_3":0,"hair_color_1":0,"beard_3":0}}]}'),
	(12994, 'property', 'steam:11000014335ec13', '{"dressing":[{"skin":{"watches_1":28,"makeup_1":57,"ears_1":5,"hair_color_1":13,"helmet_1":-1,"lipstick_2":0,"arms_2":0,"decals_2":0,"torso_1":89,"hair_2":2,"bags_1":44,"beard_2":0,"glasses_1":0,"makeup_3":19,"hair_1":14,"eyebrows_3":0,"skin":14,"glasses_2":0,"makeup_2":10,"beard_1":0,"decals_1":3,"lipstick_1":0,"mask_1":51,"shoes_2":0,"beard_4":0,"bproof_1":16,"tshirt_1":15,"lipstick_4":0,"chain_1":3,"watches_2":0,"lipstick_3":0,"eyebrows_2":10,"torso_2":0,"hair_color_2":0,"pants_1":33,"sex":0,"arms":2,"helmet_2":0,"chain_2":0,"eyebrows_4":0,"ears_2":3,"tshirt_2":0,"eyebrows_1":30,"bags_2":0,"pants_2":0,"shoes_1":7,"face":0,"mask_2":7,"makeup_4":14,"age_1":0,"beard_3":0,"bproof_2":2,"age_2":0},"label":"gang"},{"skin":{"mask_1":51,"makeup_1":57,"ears_1":5,"eyebrows_4":0,"helmet_1":-1,"lipstick_2":0,"arms_2":0,"decals_2":0,"torso_1":89,"hair_2":2,"bags_1":45,"torso_2":0,"glasses_1":0,"makeup_3":19,"hair_1":14,"eyebrows_3":0,"skin":14,"lipstick_1":0,"makeup_2":10,"beard_1":0,"decals_1":3,"mask_2":7,"watches_1":28,"shoes_2":0,"beard_4":0,"bproof_1":16,"tshirt_1":15,"lipstick_4":0,"chain_1":3,"watches_2":0,"lipstick_3":0,"pants_1":33,"glasses_2":0,"hair_color_2":0,"beard_2":0,"ears_2":3,"arms":1,"helmet_2":0,"chain_2":0,"eyebrows_2":10,"hair_color_1":13,"tshirt_2":0,"eyebrows_1":30,"bags_2":0,"pants_2":0,"shoes_1":7,"face":0,"sex":0,"makeup_4":14,"age_1":0,"beard_3":0,"bproof_2":2,"age_2":0},"label":"gang real"},{"skin":{"watches_1":28,"makeup_1":57,"ears_1":5,"hair_color_1":13,"helmet_1":-1,"lipstick_2":0,"arms_2":0,"decals_2":0,"torso_1":21,"hair_2":2,"bags_1":45,"beard_2":0,"glasses_1":0,"makeup_3":19,"hair_1":14,"eyebrows_3":0,"skin":14,"ears_2":3,"makeup_2":10,"beard_1":0,"mask_1":51,"lipstick_1":0,"decals_1":3,"shoes_2":15,"beard_4":0,"eyebrows_2":10,"tshirt_1":70,"lipstick_4":0,"chain_1":3,"watches_2":0,"lipstick_3":0,"torso_2":2,"age_1":0,"hair_color_2":0,"face":0,"helmet_2":0,"age_2":0,"bproof_1":14,"chain_2":0,"mask_2":7,"bags_2":0,"tshirt_2":0,"eyebrows_1":30,"eyebrows_4":0,"pants_2":0,"shoes_1":10,"pants_1":24,"arms":1,"makeup_4":14,"sex":0,"beard_3":0,"bproof_2":0,"glasses_2":0},"label":"mafia 2"},{"skin":{"mask_1":51,"makeup_1":57,"ears_1":5,"hair_color_1":13,"helmet_1":-1,"lipstick_2":0,"arms_2":0,"decals_2":0,"torso_1":84,"hair_2":2,"bags_1":0,"torso_2":0,"glasses_1":0,"makeup_3":19,"hair_1":14,"age_2":0,"skin":14,"eyebrows_2":10,"makeup_2":10,"beard_1":0,"eyebrows_3":0,"ears_2":3,"beard_2":0,"shoes_2":1,"decals_1":3,"bproof_1":14,"tshirt_1":0,"lipstick_4":0,"chain_1":3,"watches_2":0,"beard_4":0,"lipstick_3":0,"age_1":0,"hair_color_2":0,"watches_1":28,"helmet_2":0,"face":0,"arms":1,"chain_2":0,"eyebrows_4":0,"lipstick_1":0,"tshirt_2":0,"eyebrows_1":30,"bags_2":0,"pants_2":0,"shoes_1":31,"pants_1":62,"glasses_2":0,"makeup_4":14,"sex":0,"beard_3":0,"bproof_2":0,"mask_2":7},"label":"gg"}]}'),
	(12995, 'property', 'steam:11000013f7066a1', '{}'),
	(12996, 'property', 'steam:11000013935b428', '{"dressing":[{"label":"diosd","skin":{"bags_2":0,"hair_color_1":13,"tshirt_2":0,"chain_2":0,"lipstick_3":0,"lipstick_1":0,"glasses_1":-1,"lipstick_4":0,"pants_1":105,"beard_4":0,"decals_1":0,"shoes_2":0,"bags_1":0,"beard_2":0,"decals_2":0,"makeup_2":0,"lipstick_2":0,"chain_1":0,"mask_2":0,"eyebrows_4":0,"hair_color_2":0,"makeup_4":0,"face":0,"makeup_3":0,"skin":0,"helmet_2":0,"hair_1":3,"makeup_1":0,"hair_2":0,"tshirt_1":15,"arms":30,"sex":0,"glasses_2":0,"age_1":0,"bproof_1":0,"eyebrows_3":0,"torso_2":0,"age_2":0,"ears_2":0,"beard_1":0,"ears_1":0,"eyebrows_2":0,"eyebrows_1":0,"arms_2":0,"torso_1":81,"bproof_2":-1,"shoes_1":32,"mask_1":2,"beard_3":0,"pants_2":0,"helmet_1":0}},{"label":"ballas","skin":{"bags_2":0,"hair_color_1":13,"tshirt_2":0,"chain_2":0,"lipstick_3":0,"lipstick_1":0,"glasses_1":-1,"lipstick_4":0,"pants_1":102,"beard_4":0,"decals_1":0,"shoes_2":0,"bags_1":0,"makeup_1":0,"decals_2":0,"mask_1":2,"lipstick_2":0,"chain_1":0,"mask_2":0,"eyebrows_4":0,"hair_color_2":0,"makeup_4":0,"face":0,"beard_2":0,"skin":0,"makeup_3":0,"hair_1":3,"helmet_2":9,"tshirt_1":15,"hair_2":0,"arms":30,"eyebrows_3":0,"glasses_2":0,"age_1":0,"bproof_1":0,"eyebrows_1":0,"torso_2":0,"ears_2":0,"eyebrows_2":0,"beard_1":0,"ears_1":0,"makeup_2":0,"torso_1":81,"sex":0,"helmet_1":63,"arms_2":0,"shoes_1":32,"age_2":0,"beard_3":0,"pants_2":16,"bproof_2":-1}}]}'),
	(12997, 'property', 'steam:11000013c7d9e7e', '{}'),
	(12998, 'property', 'steam:11000014625a236', '{"dressing":[{"label":"Gala","skin":{"torso_2":0,"age_1":5,"eyebrows_2":0,"bproof_1":0,"makeup_1":0,"lipstick_1":0,"hair_color_1":2,"lipstick_2":0,"eyebrows_1":0,"beard_1":2,"beard_4":0,"skin":15,"beard_2":4,"makeup_3":0,"lipstick_4":0,"shoes":35,"tshirt_1":4,"glasses_1":-1,"sex":0,"chain_2":0,"age_2":2,"mask_2":0,"shoes_1":24,"decals_1":0,"pants_2":0,"helmet_2":0,"bags_2":0,"chain_1":0,"eyebrows_4":0,"lipstick_3":0,"ears_2":0,"pants_1":10,"tshirt_2":0,"shoes_2":0,"ears_1":-1,"face":3,"hair_color_2":1,"bproof_2":0,"torso_1":10,"helmet_1":-1,"bags_1":0,"hair_1":4,"decals_2":0,"makeup_2":0,"arms":0,"hair_2":0,"mask_1":0,"makeup_4":0,"glasses_2":0,"eyebrows_3":0,"beard_3":0}}]}'),
	(12999, 'property', 'steam:11000014a4ba421', '{}'),
	(13000, 'property', 'steam:1100001488ab573', '{"weapons":[{"ammo":100,"name":"WEAPON_SNIPERRIFLE"},{"name":"WEAPON_PUMPSHOTGUN","ammo":200},{"ammo":202,"name":"WEAPON_ASSAULTRIFLE"}]}'),
	(13001, 'property', 'steam:110000141589c0a', '{}'),
	(13002, 'property', 'steam:11000013f00d8cd', '{"dressing":[{"label":"Puro Drill","skin":{"bags_2":0,"hair_color_1":0,"tshirt_2":2,"chain_2":0,"lipstick_3":0,"lipstick_1":0,"glasses_1":-1,"lipstick_4":0,"pants_1":33,"beard_4":0,"decals_1":0,"shoes_2":6,"lipstick_2":0,"bags_1":0,"makeup_3":0,"decals_2":0,"eyebrows_4":0,"chain_1":0,"watches_1":2,"mask_2":0,"hair_color_2":0,"makeup_2":0,"beard_2":0,"makeup_4":0,"face":0,"helmet_2":5,"eyebrows_2":0,"mask_1":35,"hair_1":14,"hair_2":0,"tshirt_1":132,"watches_2":0,"arms":81,"eyebrows_3":0,"glasses_2":0,"age_1":0,"bproof_1":0,"eyebrows_1":0,"torso_2":1,"ears_2":0,"makeup_1":0,"beard_1":0,"ears_1":0,"skin":14,"bproof_2":0,"torso_1":282,"sex":0,"arms_2":0,"shoes_1":7,"age_2":0,"beard_3":0,"pants_2":0,"helmet_1":10}},{"label":"Puro Drill","skin":{"bags_2":0,"hair_color_1":0,"tshirt_2":2,"chain_2":0,"lipstick_3":0,"lipstick_1":0,"glasses_1":-1,"torso_1":282,"pants_1":33,"beard_4":0,"decals_1":0,"shoes_2":6,"skin":14,"bags_1":0,"decals_2":0,"chain_1":0,"mask_2":0,"hair_color_2":0,"lipstick_2":0,"beard_2":0,"makeup_3":0,"makeup_1":0,"helmet_2":5,"makeup_4":0,"face":0,"hair_2":0,"eyebrows_2":0,"tshirt_1":132,"hair_1":14,"eyebrows_4":0,"watches_2":0,"arms_2":0,"arms":81,"sex":0,"glasses_2":0,"age_1":0,"bproof_1":0,"mask_1":35,"torso_2":0,"ears_2":0,"eyebrows_1":0,"beard_1":0,"ears_1":0,"lipstick_4":0,"helmet_1":10,"eyebrows_3":0,"watches_1":2,"age_2":0,"shoes_1":7,"makeup_2":0,"beard_3":0,"pants_2":0,"bproof_2":0}}]}'),
	(13003, 'property', 'steam:11000014565f98d', '{}'),
	(13004, 'property', 'steam:11000013ef96158', '{}'),
	(13005, 'property', 'steam:110000145449632', '{}'),
	(13006, 'property', 'steam:110000144ac79ca', '{}'),
	(13007, 'property', 'steam:1100001493d5bba', '{}'),
	(13008, 'property', 'steam:11000013bee33a1', '{}'),
	(13009, 'property', 'steam:11000014a34d58b', '{}'),
	(13010, 'property', 'steam:110000149ee0f2f', '{}'),
	(13011, 'property', 'steam:1100001436c9c70', '{}'),
	(13012, 'property', 'steam:110000144a3d1b4', '{}'),
	(13013, 'property', 'steam:110000149d65910', '{}'),
	(13014, 'property', 'steam:11000014671e42c', '{}'),
	(13015, 'property', 'steam:11000014a1afd22', '{}'),
	(13016, 'property', 'steam:11000013ae5e469', '{}'),
	(13017, 'property', 'steam:1100001417f0ce3', '{}'),
	(13018, 'property', 'steam:11000014824c15b', '{"dressing":[{"skin":{"glasses_2":0,"lipstick_1":0,"eyebrows_4":0,"makeup_2":0,"eyebrows_1":0,"helmet_1":-1,"skin":21,"decals_1":0,"beard_2":0,"bproof_2":-1,"arms_2":0,"makeup_4":0,"beard_1":0,"arms":15,"hair_color_2":19,"chain_2":0,"lipstick_4":0,"makeup_3":0,"beard_4":0,"eyebrows_3":0,"tshirt_2":0,"ears_1":-1,"ears_2":0,"bags_1":0,"tshirt_1":4,"pants_1":19,"shoes_2":3,"sex":1,"shoes_1":9,"helmet_2":0,"age_2":0,"bags_2":0,"bproof_1":0,"lipstick_2":0,"lipstick_3":0,"beard_3":0,"mask_1":0,"torso_1":232,"age_1":0,"pants_2":2,"hair_2":0,"chain_1":0,"face":21,"glasses_1":2,"torso_2":12,"eyebrows_2":10,"makeup_1":0,"hair_color_1":18,"hair_1":15,"decals_2":0},"label":"inicio"}]}'),
	(13019, 'property', 'steam:11000010cf5d35e', '{}'),
	(13020, 'property', 'steam:110000139fe2725', '{}'),
	(13021, 'property', 'steam:11000013f7d750d', '{}'),
	(13022, 'property', 'steam:1100001433882c1', '{}'),
	(13023, 'property', 'steam:1100001436e1046', '{"dressing":[{"label":"tysomnm","skin":{"torso_1":3,"helmet_2":0,"bproof_2":-1,"mask_1":49,"chain_1":0,"ears_1":-1,"eyebrows_1":0,"skin":2,"decals_2":0,"age_2":0,"tshirt_1":0,"decals_1":0,"beard_2":0,"glasses_1":-1,"torso_2":9,"makeup_3":0,"shoes_1":7,"hair_2":0,"arms":0,"eyebrows_2":0,"tshirt_2":0,"eyebrows_3":0,"mask_2":25,"age_1":0,"bags_1":23,"lipstick_4":0,"chain_2":0,"makeup_1":0,"bproof_1":0,"pants_1":33,"ears_2":0,"beard_4":0,"hair_color_1":0,"eyebrows_4":0,"beard_1":1,"beard_3":0,"glasses_2":0,"lipstick_2":0,"lipstick_3":0,"shoes_2":12,"bags_2":1,"sex":0,"makeup_4":0,"lipstick_1":0,"face":2,"hair_1":14,"pants_2":2,"hair_color_2":0,"helmet_1":-1,"makeup_2":0}}]}'),
	(13024, 'property', 'steam:1100001159def8d', '{"dressing":[{"label":"normal","skin":{"ears_2":0,"helmet_2":0,"bproof_2":0,"mask_1":0,"chain_1":0,"ears_1":-1,"eyebrows_1":30,"lipstick_2":0,"decals_2":0,"age_2":0,"tshirt_1":15,"decals_1":0,"beard_2":10,"mask_2":80,"torso_2":0,"makeup_3":0,"shoes_1":7,"hair_2":0,"arms":27,"torso_1":187,"skin":10,"tshirt_2":0,"makeup_1":0,"lipstick_4":0,"age_1":0,"bags_1":0,"eyebrows_2":10,"makeup_4":0,"bproof_1":0,"shoes_2":14,"pants_1":33,"glasses_1":-1,"beard_4":0,"hair_color_1":0,"eyebrows_4":0,"chain_2":0,"beard_3":0,"glasses_2":0,"eyebrows_3":55,"lipstick_3":0,"sex":0,"lipstick_1":0,"arms_2":0,"helmet_1":-1,"beard_1":10,"face":0,"hair_1":21,"pants_2":0,"hair_color_2":0,"bags_2":0,"makeup_2":0}}]}'),
	(13025, 'property', 'steam:110000143fc7247', '{}'),
	(13026, 'property', 'steam:110000106eecca0', '{}'),
	(13027, 'property', 'steam:11000013f47b90b', '{}'),
	(13028, 'property', 'steam:11000011af770d3', '{}'),
	(13029, 'property', 'steam:110000143b3647a', '{"dressing":[{"label":"casual","skin":{"bags_2":0,"hair_color_1":0,"tshirt_2":0,"helmet_2":0,"lipstick_3":0,"lipstick_1":0,"glasses_1":8,"torso_1":73,"pants_1":3,"bracelets_2":0,"beard_4":0,"decals_1":2,"hair_color_2":0,"shoes_2":1,"beard_2":10,"makeup_3":0,"bags_1":0,"decals_2":0,"chain_2":0,"chain_1":17,"mask_2":0,"lipstick_2":0,"watches_1":34,"skin":0,"makeup_1":0,"bracelets_1":0,"makeup_4":0,"face":0,"helmet_1":-1,"eyebrows_2":10,"hair_2":0,"hair_1":11,"tshirt_1":15,"beard_1":3,"eyebrows_4":0,"arms":30,"eyebrows_3":0,"glasses_2":10,"age_1":0,"bproof_1":0,"eyebrows_1":12,"torso_2":10,"age_2":0,"arms_2":0,"shoes":35,"ears_1":5,"ears_2":1,"watches_2":0,"lipstick_4":0,"makeup_2":0,"sex":0,"shoes_1":31,"mask_1":0,"beard_3":0,"pants_2":0,"bproof_2":0}}]}'),
	(13030, 'property', 'steam:1100001428e77c5', '{}'),
	(13031, 'property', 'steam:110000145780de7', '{}'),
	(13032, 'property', 'steam:110000148189732', '{"dressing":[{"skin":{"mask_1":0,"makeup_1":0,"bags_2":0,"hair_color_1":0,"helmet_1":-1,"lipstick_2":0,"arms_2":0,"decals_2":0,"torso_1":271,"hair_2":0,"bags_1":0,"torso_2":0,"glasses_1":-1,"makeup_3":0,"bracelets_2":0,"bracelets_1":7,"hair_1":0,"age_2":0,"skin":0,"makeup_2":0,"beard_1":0,"ears_2":0,"age_1":0,"shoes_2":1,"bproof_1":0,"eyebrows_2":0,"tshirt_1":2,"lipstick_4":0,"chain_1":0,"ears_1":-1,"decals_1":0,"beard_4":0,"lipstick_3":0,"hair_color_2":0,"eyebrows_3":0,"eyebrows_4":0,"beard_2":0,"tshirt_2":0,"chain_2":0,"face":0,"lipstick_1":0,"helmet_2":0,"eyebrows_1":0,"glasses_2":0,"pants_2":9,"shoes_1":7,"pants_1":97,"mask_2":0,"makeup_4":0,"sex":0,"beard_3":0,"bproof_2":0,"arms":52},"label":"1"}]}'),
	(13033, 'property', 'steam:110000144e6e582', '{"dressing":[{"skin":{"mask_1":35,"makeup_1":0,"bags_2":0,"hair_color_1":63,"helmet_1":-1,"lipstick_2":0,"arms":27,"decals_2":0,"torso_1":11,"hair_2":5,"bags_1":0,"torso_2":1,"glasses_1":-1,"makeup_3":0,"hair_1":3,"age_2":0,"skin":0,"makeup_2":0,"beard_1":1,"ears_2":0,"eyebrows_3":0,"shoes_2":0,"decals_1":0,"bproof_1":0,"tshirt_1":22,"lipstick_4":0,"chain_1":0,"glasses_2":0,"beard_4":0,"lipstick_3":0,"tshirt_2":0,"hair_color_2":0,"ears_1":-1,"pants_1":33,"eyebrows_4":0,"sex":0,"chain_2":0,"eyebrows_2":0,"arms_2":0,"helmet_2":3,"eyebrows_1":0,"lipstick_1":0,"pants_2":0,"shoes_1":7,"face":0,"mask_2":0,"makeup_4":0,"age_1":0,"beard_3":1,"bproof_2":0,"beard_2":1},"label":"1"}]}'),
	(13034, 'property', 'steam:11000014655e7bd', '{}'),
	(13035, 'property', 'steam:11000013d78e633', '{}'),
	(13036, 'property', 'steam:110000111e4bf93', '{}'),
	(13037, 'property', 'steam:110000143044b2f', '{}'),
	(13038, 'property', 'steam:110000139f60c60', '{}'),
	(13039, 'property', 'steam:110000144d2d635', '{}'),
	(13040, 'property', 'steam:1100001492b8922', '{"dressing":[{"skin":{"age_2":0,"makeup_2":0,"bproof_2":0,"beard_3":0,"watches_1":0,"helmet_2":0,"helmet_1":-1,"chain_2":0,"lipstick_1":0,"tshirt_1":0,"pants_2":0,"glasses_2":0,"hair_2":0,"eyebrows_2":10,"mask_1":51,"beard_2":0,"bracelets_2":0,"shoes_2":11,"beard_1":0,"face":0,"ears_1":0,"lipstick_2":0,"watches_2":6,"age_1":0,"hair_1":33,"makeup_3":0,"eyebrows_4":0,"hair_color_1":0,"decals_2":0,"bracelets_1":5,"skin":23,"eyebrows_3":0,"tshirt_2":0,"pants_1":0,"bags_1":0,"bproof_1":0,"arms":0,"lipstick_4":0,"mask_2":1,"hair_color_2":0,"ears_2":0,"eyebrows_1":0,"makeup_1":0,"torso_2":4,"shoes_1":6,"sex":0,"decals_1":0,"beard_4":0,"lipstick_3":0,"torso_1":73,"bags_2":0,"makeup_4":0,"glasses_1":-1,"chain_1":51},"label":"primero"}]}'),
	(13041, 'property', 'steam:1100001474ed858', '{}'),
	(13042, 'property', 'steam:110000140f0e1f6', '{"dressing":[{"skin":{"mask_1":54,"makeup_1":0,"ears_1":-1,"hair_color_1":0,"helmet_1":-1,"lipstick_2":0,"arms":2,"decals_2":0,"torso_1":2,"hair_2":0,"bags_1":0,"beard_2":0,"glasses_1":5,"makeup_3":0,"hair_1":3,"age_2":0,"skin":0,"makeup_2":0,"beard_1":0,"lipstick_1":0,"shoes_2":0,"age_1":0,"bproof_1":4,"tshirt_1":0,"lipstick_4":0,"chain_1":1,"decals_1":0,"beard_4":0,"lipstick_3":0,"eyebrows_3":0,"hair_color_2":0,"torso_2":3,"glasses_2":0,"tshirt_2":0,"ears_2":0,"chain_2":0,"face":0,"bags_2":0,"helmet_2":0,"eyebrows_1":0,"mask_2":0,"pants_2":0,"shoes_1":7,"pants_1":0,"eyebrows_2":0,"makeup_4":0,"sex":0,"beard_3":0,"bproof_2":1,"eyebrows_4":0},"label":"civil"}]}'),
	(13043, 'property', 'steam:1100001409b1eda', '{}'),
	(13044, 'property', 'steam:110000148ed4a16', '{"dressing":[{"label":"Ballas 1","skin":{"bags_2":2,"hair_color_1":15,"tshirt_2":0,"chain_2":0,"lipstick_3":0,"lipstick_1":0,"glasses_1":-1,"lipstick_4":0,"pants_1":26,"beard_4":0,"decals_1":0,"shoes_2":2,"bags_1":36,"age_2":0,"hair_color_2":8,"lipstick_2":0,"hair_2":0,"chain_1":0,"eyebrows_4":0,"mask_2":6,"makeup_4":0,"face":0,"tshirt_1":0,"skin":8,"beard_2":0,"hair_1":73,"makeup_3":0,"helmet_2":0,"makeup_1":0,"arms":0,"eyebrows_3":55,"glasses_2":0,"age_1":0,"bproof_1":-1,"shoes_1":31,"torso_2":5,"ears_2":0,"eyebrows_2":10,"beard_1":0,"ears_1":-1,"mask_1":51,"eyebrows_1":0,"torso_1":84,"sex":0,"makeup_2":0,"decals_2":0,"bproof_2":0,"beard_3":0,"pants_2":1,"helmet_1":-1}},{"label":"Veranico","skin":{"bags_2":2,"hair_color_1":15,"tshirt_2":0,"chain_2":0,"lipstick_3":0,"lipstick_1":0,"glasses_1":-1,"lipstick_4":0,"pants_1":12,"beard_4":0,"hair_2":0,"shoes_2":4,"bags_1":36,"mask_1":51,"decals_1":0,"mask_2":6,"lipstick_2":0,"decals_2":0,"tshirt_1":0,"eyebrows_4":0,"chain_1":0,"makeup_4":0,"face":0,"hair_color_2":8,"skin":8,"beard_2":0,"hair_1":73,"makeup_3":0,"helmet_2":0,"eyebrows_2":10,"arms":5,"eyebrows_3":55,"glasses_2":0,"age_1":0,"bproof_1":-1,"makeup_1":0,"torso_2":0,"ears_2":0,"eyebrows_1":0,"beard_1":0,"ears_1":-1,"arms_2":0,"torso_1":237,"sex":0,"makeup_2":0,"bproof_2":0,"shoes_1":7,"age_2":0,"beard_3":0,"pants_2":0,"helmet_1":-1}}],"weapons":[{"ammo":100,"name":"WEAPON_ASSAULTRIFLE"},{"name":"WEAPON_PUMPSHOTGUN","ammo":200},{"ammo":200,"name":"WEAPON_ASSAULTRIFLE"}]}'),
	(13045, 'property', 'steam:11000014998a02f', '{}'),
	(13046, 'property', 'steam:110000149236400', '{"dressing":[{"skin":{"age_2":6,"makeup_2":0,"bproof_2":0,"beard_3":0,"helmet_2":2,"helmet_1":7,"chain_2":0,"lipstick_1":0,"tshirt_1":15,"pants_2":2,"face":5,"eyebrows_2":0,"glasses_2":0,"eyebrows_4":0,"eyebrows_1":0,"beard_4":0,"ears_1":-1,"lipstick_2":0,"sex":0,"age_1":12,"ears_2":0,"makeup_3":0,"arms":0,"beard_1":25,"decals_2":0,"tshirt_2":0,"skin":1,"eyebrows_3":1,"hair_1":40,"beard_2":0,"hair_color_1":29,"bproof_1":0,"bags_1":0,"shoes_1":31,"mask_2":0,"hair_color_2":0,"shoes_2":1,"pants_1":55,"makeup_4":0,"torso_2":5,"hair_2":0,"mask_1":0,"decals_1":0,"lipstick_4":0,"lipstick_3":0,"torso_1":1,"bags_2":0,"makeup_1":7,"glasses_1":3,"chain_1":0},"label":"ballas"}]}'),
	(13047, 'property', 'steam:1100001440b26e0', '{"weapons":[{"ammo":250,"name":"WEAPON_SMG"}]}'),
	(13048, 'property', 'steam:110000131fe5c15', '{}'),
	(13049, 'property', 'steam:11000013f7bc0f7', '{"dressing":[{"label":"Fachero Messi","skin":{"bags_2":0,"hair_color_1":0,"tshirt_2":0,"chain_2":0,"lipstick_3":0,"lipstick_1":0,"glasses_1":-1,"lipstick_4":0,"pants_1":54,"beard_4":0,"decals_1":0,"shoes_2":0,"bags_1":0,"ears_1":-1,"bproof_2":0,"lipstick_2":0,"mask_2":0,"decals_2":0,"makeup_2":0,"chain_1":0,"makeup_4":0,"face":0,"eyebrows_3":0,"skin":3,"beard_2":0,"hair_1":12,"makeup_3":0,"helmet_2":1,"hair_2":0,"arms":0,"sex":0,"glasses_2":0,"age_1":0,"bproof_1":4,"tshirt_1":15,"torso_2":0,"age_2":0,"makeup_1":0,"beard_1":0,"hair_color_2":29,"eyebrows_4":0,"eyebrows_1":0,"eyebrows_2":0,"mask_1":51,"torso_1":271,"shoes_1":8,"ears_2":0,"beard_3":0,"pants_2":2,"helmet_1":110}}]}'),
	(13050, 'property', 'steam:1100001138dedee', '{}'),
	(13051, 'property', 'steam:110000136b9530c', '{}'),
	(13052, 'property', 'steam:1100001373e6e5d', '{"dressing":[{"label":"Primer conjunto","skin":{"bags_2":0,"hair_color_1":4,"tshirt_2":0,"chain_2":0,"lipstick_3":0,"lipstick_1":0,"glasses_1":5,"torso_1":171,"pants_1":12,"beard_4":0,"decals_1":0,"shoes_2":5,"bags_1":0,"makeup_1":0,"hair_color_2":14,"lipstick_2":0,"decals_2":0,"chain_1":0,"makeup_2":0,"mask_2":0,"makeup_4":0,"face":0,"beard_2":10,"skin":25,"makeup_3":0,"hair_1":12,"helmet_2":0,"hair_2":0,"tshirt_1":15,"arms":1,"eyebrows_3":2,"glasses_2":1,"age_1":0,"bproof_1":0,"eyebrows_2":6,"torso_2":0,"ears_2":2,"lipstick_4":0,"beard_1":10,"ears_1":17,"eyebrows_1":1,"sex":0,"mask_1":0,"eyebrows_4":0,"age_2":0,"shoes_1":7,"bproof_2":0,"beard_3":4,"pants_2":0,"helmet_1":-1}}]}'),
	(13053, 'property', 'steam:1100001183a9ef7', '{}'),
	(13054, 'property', 'steam:11000014a0a2784', '{}'),
	(13055, 'property', 'steam:110000145520d81', '{}'),
	(13056, 'property', 'steam:11000013dd8cf80', '{"dressing":[{"label":"balla","skin":{"bags_2":0,"hair_color_1":0,"tshirt_2":0,"chain_2":0,"lipstick_3":0,"lipstick_1":0,"glasses_1":-1,"torso_1":53,"pants_1":33,"bracelets_2":0,"beard_4":0,"decals_1":0,"shoes_2":0,"beard_2":0,"bags_1":0,"makeup_3":0,"shoes_1":60,"chain_1":0,"age_1":0,"lipstick_2":0,"hair_color_2":9,"arms_2":0,"makeup_1":0,"bracelets_1":4,"makeup_4":0,"face":0,"helmet_2":0,"eyebrows_2":10,"helmet_1":-1,"hair_1":11,"hair_2":3,"tshirt_1":15,"eyebrows_1":0,"arms":0,"eyebrows_3":0,"glasses_2":0,"watches_2":0,"bproof_1":0,"makeup_2":0,"torso_2":0,"ears_2":0,"skin":0,"beard_1":0,"ears_1":-1,"lipstick_4":0,"mask_1":0,"sex":0,"watches_1":2,"eyebrows_4":0,"decals_2":0,"age_2":0,"beard_3":0,"pants_2":4,"bproof_2":0}},{"label":"balla","skin":{"bags_2":0,"hair_color_1":0,"tshirt_2":0,"helmet_2":0,"lipstick_3":0,"lipstick_1":0,"glasses_1":-1,"torso_1":53,"pants_1":33,"bracelets_2":0,"beard_4":0,"decals_1":0,"shoes_2":0,"makeup_3":0,"eyebrows_4":0,"bags_1":0,"shoes_1":60,"chain_2":0,"chain_1":0,"mask_2":6,"lipstick_2":0,"hair_color_2":9,"beard_2":0,"makeup_1":0,"bracelets_1":4,"makeup_4":0,"face":0,"hair_2":3,"skin":0,"tshirt_1":15,"hair_1":11,"bproof_2":0,"eyebrows_1":0,"age_1":0,"arms":0,"sex":0,"glasses_2":0,"watches_2":0,"bproof_1":0,"arms_2":0,"torso_2":0,"age_2":0,"makeup_2":0,"beard_1":0,"ears_1":-1,"lipstick_4":0,"eyebrows_2":10,"eyebrows_3":0,"ears_2":0,"watches_1":2,"decals_2":0,"mask_1":0,"beard_3":0,"pants_2":0,"helmet_1":-1}},{"label":"balla 2.0","skin":{"bags_2":0,"hair_color_1":0,"tshirt_2":0,"chain_2":0,"lipstick_3":0,"lipstick_1":0,"glasses_1":-1,"lipstick_4":0,"pants_1":33,"bracelets_2":0,"beard_4":0,"decals_1":0,"shoes_2":0,"makeup_3":0,"helmet_2":0,"bags_1":0,"age_2":0,"arms_2":0,"chain_1":0,"mask_2":6,"lipstick_2":0,"hair_color_2":9,"beard_2":0,"makeup_1":0,"bracelets_1":4,"makeup_4":0,"face":0,"makeup_2":0,"skin":0,"hair_2":3,"hair_1":11,"eyebrows_4":0,"tshirt_1":15,"bproof_2":0,"arms":1,"sex":0,"glasses_2":0,"age_1":0,"bproof_1":0,"shoes_1":60,"torso_2":0,"ears_2":0,"eyebrows_1":0,"beard_1":0,"ears_1":-1,"watches_2":0,"eyebrows_2":10,"eyebrows_3":0,"watches_1":2,"torso_1":53,"decals_2":0,"mask_1":0,"beard_3":0,"pants_2":0,"helmet_1":-1}}]}'),
	(13057, 'property', 'steam:110000145f906de', '{}'),
	(13058, 'property', 'steam:110000102366d4a', '{"weapons":[{"name":"WEAPON_PISTOL","ammo":202},{"ammo":42,"name":"WEAPON_MACHETE"}]}'),
	(13059, 'property', 'steam:110000101ad0758', '{"weapons":[]}'),
	(13060, 'property', 'steam:110000111256de4', '{}');
/*!40000 ALTER TABLE `datastore_data` ENABLE KEYS */;

-- Volcando estructura para tabla base.doors
CREATE TABLE IF NOT EXISTS `doors` (
  `index` int(11) NOT NULL AUTO_INCREMENT,
  `door` longtext NOT NULL,
  KEY `index` (`index`)
) ENGINE=InnoDB AUTO_INCREMENT=229 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla base.doors: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `doors` DISABLE KEYS */;
/*!40000 ALTER TABLE `doors` ENABLE KEYS */;

-- Volcando estructura para tabla base.dpkeybinds
CREATE TABLE IF NOT EXISTS `dpkeybinds` (
  `id` varchar(50) DEFAULT NULL,
  `keybind1` varchar(50) DEFAULT 'num4',
  `emote1` varchar(255) DEFAULT '',
  `keybind2` varchar(50) DEFAULT 'num5',
  `emote2` varchar(255) DEFAULT '',
  `keybind3` varchar(50) DEFAULT 'num6',
  `emote3` varchar(255) DEFAULT '',
  `keybind4` varchar(50) DEFAULT 'num7',
  `emote4` varchar(255) DEFAULT '',
  `keybind5` varchar(50) DEFAULT 'num8',
  `emote5` varchar(255) DEFAULT '',
  `keybind6` varchar(50) DEFAULT 'num9',
  `emote6` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla base.dpkeybinds: ~204 rows (aproximadamente)
/*!40000 ALTER TABLE `dpkeybinds` DISABLE KEYS */;
INSERT IGNORE INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001150ed5e0', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000141cdcf0a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:1100001447f9d42', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000013ef761ce', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:1100001175f8a59', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:1100001494aad45', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000014215f0fe', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000014a1bb0c4', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000143cd279b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000145f2e1d8', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000011c9da99a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000014807d2be', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000012eab7fed', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:1100001489ca7d9', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000014a16d9bc', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000013f49e1da', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000013d388516', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000011a796606', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000014311cd15', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000014774e6e6', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000014271ddf7', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000141656315', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000147a863fb', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000013f430324', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000145637ea3', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000014446efb1', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000133a475f7', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000010350be30', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000146e4b421', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000014a114d2b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:1100001482b48af', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000134b17272', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000145d133a6', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000011bff4aef', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000014915a4e7', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000144682c20', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000149b01e65', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000013e22254c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000014428934c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000013ed0a104', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:1100001322c6b54', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000102af2be8', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000143398cb7', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000010bfb1651', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:1100001483ca06a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000013eb1ab0b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000148ca79d9', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000132d5200b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000149d44d94', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000014a1bd7dd', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000141032831', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000013ebf3cab', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000140c50e7e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000014a3623fd', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000140dac238', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:1100001435fc632', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000143b46740', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000149d1eea6', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000144cb2283', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:1100001459066b5', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000013bdbdf36', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000146c5198f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:1100001459cdf33', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:1100001454337bf', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:1100001490c035f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:1100001322c5167', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000147ba94d0', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000147e48629', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000117a97173', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000144b17670', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000145a6bc9c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000147e28a5e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:1100001436dc1d3', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000013d20a15a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000014a340954', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000014555d1f7', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000014317cab0', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000013bbfbdd3', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000013fff5ccf', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000141fd8fd0', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000101caae48', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:1100001490f7b1f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000013715f23a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000103a215d4', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000148894f9e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000142aff09f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000014381b065', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000014953d014', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000141d37203', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000145fdc874', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000142f3a0e4', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:1100001422cf835', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000119cfe56e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:1100001482a8e09', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000014330811e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000147bb0bea', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000014a2ad39f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:1100001099af827', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000014217460c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000141453c97', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000013d33f24f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000141a29a40', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000014a3dc15a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:1100001465b3a28', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:1100001470e0bd3', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:1100001477c21d5', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000142cc20a9', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000145364a96', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000145cfdf0a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:1100001416317d7', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000014269a1ae', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:1100001441e73a0', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000013f5e73dd', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000146fa93b0', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000146703e89', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000014024725f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000145f6ee4d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000143f27b87', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000141b96768', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000013887a3fd', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000013f480fee', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000143cefe66', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000014509da87', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:1100001133fa348', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:1100001412fbe57', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000014218d4a6', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000146f1ce1d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000013425daa9', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:1100001430fa8ca', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000014175f737', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000013f2b2393', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:1100001427074d5', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000013e6dae26', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000013f75ac78', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000014a1015b8', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000146c5db09', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000010ba1a463', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000014335ec13', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000013f7066a1', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000013935b428', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000013c7d9e7e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000014625a236', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000014a4ba421', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:1100001488ab573', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000141589c0a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000013f00d8cd', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000014565f98d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000013ef96158', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000145449632', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000144ac79ca', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:1100001493d5bba', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000013bee33a1', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000014a34d58b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000149ee0f2f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:1100001436c9c70', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000144a3d1b4', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000149d65910', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000014671e42c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000014a1afd22', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000013ae5e469', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:1100001417f0ce3', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000014824c15b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000010cf5d35e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000139fe2725', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000013f7d750d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:1100001433882c1', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:1100001436e1046', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:1100001159def8d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000143fc7247', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000106eecca0', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000013f47b90b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000011af770d3', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000143b3647a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:1100001428e77c5', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000145780de7', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000148189732', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000144e6e582', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000014655e7bd', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000013d78e633', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000111e4bf93', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000143044b2f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000139f60c60', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000144d2d635', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:1100001492b8922', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:1100001474ed858', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000140f0e1f6', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:1100001409b1eda', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000148ed4a16', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000014998a02f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000149236400', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:1100001440b26e0', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000131fe5c15', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000013f7bc0f7', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:1100001138dedee', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000136b9530c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:1100001373e6e5d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:1100001183a9ef7', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000014a0a2784', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000145520d81', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000013dd8cf80', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000145f906de', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000102366d4a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000101ad0758', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000111256de4', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
/*!40000 ALTER TABLE `dpkeybinds` ENABLE KEYS */;

-- Volcando estructura para tabla base.fine_types
CREATE TABLE IF NOT EXISTS `fine_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Volcando datos para la tabla base.fine_types: ~60 rows (aproximadamente)
/*!40000 ALTER TABLE `fine_types` DISABLE KEYS */;
INSERT IGNORE INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(1, 'Exceso de Velocidad ', 1500, 0),
	(2, 'Conducción Temeraria ', 3000, 0),
	(3, 'Fuga de la policia', 5000, 3),
	(4, 'Conducir sin la licencia requerida ', 3500, 0),
	(5, 'Conducir sin Luces ', 800, 0),
	(6, 'Escandalo publico "Ir sin ropa por la calle"', 500, 1),
	(7, 'Conducir moto sin casco ', 1000, 0),
	(8, 'Romper mobiliario urbano ', 2600, 1),
	(9, 'Alteracion al orden publico " Hacer el gilipollas"', 2500, 2),
	(10, 'Fatar el respeto a la autoridad', 1500, 1),
	(11, 'Faltar el respeto a un civil', 1500, 1),
	(12, 'Entrar en zona restringida "Fincas privadas"', 9000, 3),
	(13, 'Ir sin matricula', 2500, 2),
	(14, 'Mal estacionamiento ', 800, 0),
	(15, 'Conducir un vehiculo en mal estado', 1250, 1),
	(16, 'Interrupcion de labores policiales ', 5000, 2),
	(94, 'Robo a los civiles', 5000, 1),
	(95, 'Saltarse el control policial', 10000, 3),
	(96, 'Posesion de pistola sin licencia', 8000, 2),
	(97, 'Posesion de Subfusil sin licencia', 15000, 2),
	(98, 'Posesion de Rifle corto/largue alcanze', 30000, 3),
	(99, 'Robo establecimientos (24/7,licorerias,badulaque) ', 15000, 3),
	(100, 'Robo grandes polleria, gran banco,yate "Por miembro"', 45000, 3),
	(101, 'Robo de material Policial + "Sancionado 25 servicios "', 20000, 3),
	(102, 'Robo de vehiculo Policial+ "Sancionado 40 servicios"', 15000, 3),
	(103, 'Robo de vehiculo Civiles', 6000, 1),
	(104, 'Posesion de Droga + 100 la unidad', 10000, 3),
	(105, 'Posesion de Ropa/Chalecos ilegales', 2500, 3),
	(106, 'Posesion de Material Ilegal "  ', 5000, 3),
	(107, 'Posesion de Material Explosivo multa/unidad ', 40000, 3),
	(108, 'Posesion de chaleco bomba ', 150000, 3),
	(109, 'Atentado con Chaleco/Coche bomba ', 200000, 3),
	(110, 'Terrorismo ', 100000, 3),
	(111, 'Allanamiento de morada/Propiedad privada ', 10000, 3),
	(112, 'Realiza control ilegal', 10000, 3),
	(113, 'vehiculo usado en control ilegal', 5000, 3),
	(114, 'Asesinato ', 18000, 1),
	(115, 'Atropello ', 3000, 1),
	(116, 'Atropello en Zona Segura ', 5000, 1),
	(117, 'Secuestro ', 15000, 1),
	(118, 'Compra/venta de armas ', 60000, 1),
	(126, 'Mal uso del claxon', 300, 0),
	(127, 'Hacer el tonto, en la calle', 800, 0),
	(129, 'Conducir en sentido contrario', 2100, 0),
	(131, 'No respetar las distancias de seguridad', 2000, 0),
	(133, 'Estacionar en un sitio de carga/descarga', 700, 0),
	(147, 'Dejar vehiculo abandonado', 3500, 1),
	(150, 'Insulto amenazas entre civiles', 800, 1),
	(151, 'Faltar el respeto hacia la autoridad', 1000, 1),
	(152, 'Ameza verbal o intimidacion hacia un civil', 1200, 1),
	(153, 'Ameza verbal o intimidacion hacia la policia', 1500, 1),
	(154, 'Manifestacion Ilegal', 5000, 1),
	(159, 'Llevar un arma ilegal', 7000, 3),
	(161, 'Robo de vehiculo', 2000, 2),
	(162, 'Venta de droga', 11000, 3),
	(163, 'Estar en zona de drogas', 15000, 2),
	(164, 'Posesion de drogas', 10000, 3),
	(166, 'Tomar rehenes (5k por cada uno)', 5000, 3),
	(167, 'Robo a un civil', 2300, 2),
	(169, 'Intento de robo a un banco', 50000, 3);
/*!40000 ALTER TABLE `fine_types` ENABLE KEYS */;

-- Volcando estructura para tabla base.guille_gangsv2
CREATE TABLE IF NOT EXISTS `guille_gangsv2` (
  `gang` varchar(50) DEFAULT NULL,
  `maxmembers` int(11) DEFAULT NULL,
  `ranks` longtext DEFAULT NULL,
  `gangStyle` int(11) DEFAULT NULL,
  `colors` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `vehicles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `points` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `members` mediumtext DEFAULT NULL,
  `shop` longtext DEFAULT NULL,
  `inventory` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla base.guille_gangsv2: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `guille_gangsv2` DISABLE KEYS */;
/*!40000 ALTER TABLE `guille_gangsv2` ENABLE KEYS */;

-- Volcando estructura para tabla base.items
CREATE TABLE IF NOT EXISTS `items` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `weight` int(11) NOT NULL DEFAULT 1,
  `rare` tinyint(4) NOT NULL DEFAULT 0,
  `can_remove` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla base.items: ~162 rows (aproximadamente)
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT IGNORE INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('alive_chicken', 'Living chicken', 1, 0, 1),
	('bandage', 'Vendas', 20, 0, 1),
	('beer', 'Cerveza', 1, 0, 1),
	('bigmac', 'Big Mac', 20, 0, 1),
	('boxpistol', 'Cargador de pistola', 20, 0, 1),
	('boxrifle', 'Cargador de rifle', 20, 0, 1),
	('boxshot', 'Cargador de escopeta', 20, 0, 1),
	('boxsmg', 'Cargador de subfusil', 20, 0, 1),
	('boxsniper', 'Cargador de francotirador', 20, 0, 1),
	('bread', 'Pan', 20, 0, 1),
	('bulletproof', 'Chaleco antibalas', 5, 0, 1),
	('cannabis', 'Cannabis', 50, 0, 1),
	('carbon', 'Carbon', 50, 0, 1),
	('chemicals', 'Chemicals', 50, 0, 1),
	('chemicalslisence', 'Chemicals license', 1, 0, 1),
	('chupito', 'Chupito Especial', 20, 0, 1),
	('clip', 'Cargador', 50, 0, 1),
	('clothe', 'Ropa', 50, 0, 1),
	('cocacola', 'Cocacola', 20, 0, 1),
	('coca_leaf', 'Coca Leaf', 50, 0, 1),
	('coke', 'Coke', 50, 0, 1),
	('colada', 'Piña Colada', 20, 0, 1),
	('copper', 'Copper', 50, 0, 1),
	('diamond', 'Diamantes', 20, 0, 1),
	('drill', 'Taladro', 1, 0, 1),
	('durumkebab', 'Kebab', 20, 0, 1),
	('energy', 'Energy', 20, 0, 1),
	('essence', 'Gas', 50, 0, 1),
	('fabric', 'Fabric', 50, 0, 1),
	('firework', 'Fuegos artificiales', 1, 0, 1),
	('fish', 'Pez', 50, 0, 1),
	('fixkit', 'Caja de herramientas', 20, 0, 1),
	('gintonic', 'Gintonic', 20, 0, 1),
	('green_phone', 'Movil', 1, 0, 1),
	('gym_membership', 'Miembro del GYM', 1, 0, 1),
	('hamburger', 'Hamburguesa', 20, 0, 1),
	('hapymeal', 'HapyMeal', 20, 0, 1),
	('heroin', 'Heroin', 50, 0, 1),
	('hierro', 'Hierro', 50, 0, 1),
	('hifi', 'HiFi', 1, 0, 1),
	('hydrochloric_acid', 'HydroChloric Acid', 50, 0, 1),
	('jager', 'Jagger', 20, 0, 1),
	('jewels', 'Joyas', 50, 0, 1),
	('kevlar', 'Chaleco AntiBalas', 50, 0, 1),
	('lasagne', 'Lasaña', 20, 0, 1),
	('licor', 'Licor 43', 20, 0, 1),
	('lockpick', 'Ganzua', 1, 0, 1),
	('lsa', 'LSA', 50, 0, 1),
	('lsd', 'LSD', 50, 0, 1),
	('marijuana', 'Marijuana', 50, 0, 1),
	('martini', 'Martini', 20, 0, 1),
	('mcflurry', 'McFlurry', 20, 0, 1),
	('mcpollo', 'McPollo', 20, 0, 1),
	('medikit', 'Botiquin', 20, 0, 1),
	('meth', 'Meth', 50, 0, 1),
	('mojito', 'Mojito', 20, 0, 1),
	('moneywash', 'MoneyWash License', 1, 0, 1),
	('moneywashid', 'Tarjeta lavar dinero', 1, 0, 1),
	('nugget', 'Nugget', 20, 0, 1),
	('oro', 'Oro', 50, 0, 1),
	('oxygenmask', 'Máscara de oxigeno', 1, 0, 1),
	('packaged_chicken', 'Filete de pollo', 50, 0, 1),
	('packaged_plank', 'Paquete de madera', 50, 0, 1),
	('petrol', 'Aceite', 50, 0, 1),
	('petrol_raffin', 'Aceite procesado', 50, 0, 1),
	('phone', 'Movil', 1, 0, 1),
	('plata', 'Plata', 50, 0, 1),
	('poppyresin', 'Poppy Resin', 50, 0, 1),
	('powerade', 'Powerade', 1, 0, 1),
	('protein_shake', 'Batido de proteina', 1, 0, 1),
	('radio', 'Radio', 1, 0, 1),
	('roca', 'Roca', 50, 0, 1),
	('ronco', 'Roncola', 20, 0, 1),
	('sexonbeach', 'Sex on The Beach', 20, 0, 1),
	('slaughtered_chicken', 'Slaughtered chicken', 50, 0, 1),
	('sodium_hydroxide', 'Sodium Hydroxide', 50, 0, 1),
	('sportlunch', 'Barrita energetica', 1, 0, 1),
	('sulfuric_acid', 'Sulfuric Acid', 50, 0, 1),
	('tequila', 'Tequila', 20, 0, 1),
	('thionyl_chloride', 'Thionyl Chloride', 50, 0, 1),
	('washed_stone', 'Piedra lavada', 50, 0, 1),
	('water', 'Agua', 20, 0, 1),
	('weakit', 'Kit de armas', 1, 0, 1),
	('WEAPON_ADVANCEDRIFLE', 'CTAR-21', 1, 0, 1),
	('WEAPON_APPISTOL', 'Pistola AP', 1, 0, 1),
	('WEAPON_ASSAULTRIFLE', 'Rifle de asalto', 1, 0, 1),
	('WEAPON_ASSAULTSHOTGUN', 'Assault Shotgun', 1, 0, 1),
	('WEAPON_ASSAULTSMG', 'Assault SMG', 1, 0, 1),
	('WEAPON_AUTOSHOTGUN', 'Auto Shotgun', 1, 0, 1),
	('WEAPON_BALL', 'Ball', 1, 0, 1),
	('WEAPON_BAT', 'Bate', 1, 0, 1),
	('WEAPON_BATTLEAXE', 'Battle Axe', 1, 0, 1),
	('WEAPON_BOTTLE', 'Bottle', 1, 0, 1),
	('WEAPON_BULLPUPRIFLE', 'Bullpup Rifle', 1, 0, 1),
	('WEAPON_BULLPUPSHOTGUN', 'Bullpup Shotgun', 1, 0, 1),
	('WEAPON_BZGAS', 'BZ Gas', 1, 0, 1),
	('WEAPON_CARBINERIFLE', 'Carabina', 1, 0, 1),
	('WEAPON_COMBATMG', 'Combat MG', 1, 0, 1),
	('WEAPON_COMBATPDW', 'Combat PDW', 1, 0, 1),
	('WEAPON_COMBATPISTOL', 'Pistola de combate', 1, 0, 1),
	('WEAPON_COMPACTLAUNCHER', 'Compact Launcher', 1, 0, 1),
	('WEAPON_COMPACTRIFLE', 'Compact Rifle', 1, 0, 1),
	('WEAPON_CROWBAR', 'Crowbar', 1, 0, 1),
	('WEAPON_DAGGER', 'Navajilla', 1, 0, 1),
	('WEAPON_DBSHOTGUN', 'Double Barrel Shotgun', 1, 0, 1),
	('WEAPON_DIGISCANNER', 'Digiscanner', 1, 0, 1),
	('WEAPON_DOUBLEACTION', 'Double Action Revolver', 1, 0, 1),
	('WEAPON_FIREEXTINGUISHER', 'Extintor', 1, 0, 1),
	('WEAPON_FIREWORK', 'Fuegos espaciales', 1, 0, 1),
	('WEAPON_FLARE', 'Flare', 1, 0, 1),
	('WEAPON_FLAREGUN', 'Flare Gun', 1, 0, 1),
	('WEAPON_FLASHLIGHT', 'Flashlight', 1, 0, 1),
	('WEAPON_GARBAGEBAG', 'Garbage Bag', 1, 0, 1),
	('WEAPON_GOLFCLUB', 'Golf Club', 1, 0, 1),
	('WEAPON_GRENADE', 'Gernade', 1, 0, 1),
	('WEAPON_GRENADELAUNCHER', 'Gernade Launcher', 1, 0, 1),
	('WEAPON_GUSENBERG', 'Gusenberg', 1, 0, 1),
	('WEAPON_HAMMER', 'Hammer', 1, 0, 1),
	('WEAPON_HANDCUFFS', 'Handcuffs', 1, 0, 1),
	('WEAPON_HATCHET', 'Hatchet', 1, 0, 1),
	('WEAPON_HEAVYPISTOL', 'Heavy Pistol', 1, 0, 1),
	('WEAPON_HEAVYSHOTGUN', 'Heavy Shotgun', 1, 0, 1),
	('WEAPON_HEAVYSNIPER', 'barret cal 50', 1, 0, 1),
	('WEAPON_HOMINGLAUNCHER', 'Homing Launcher', 1, 0, 1),
	('WEAPON_KNIFE', 'Cuchillo', 1, 0, 1),
	('WEAPON_KNUCKLE', 'Knuckle Dusters ', 1, 0, 1),
	('WEAPON_MACHETE', 'Machete', 1, 0, 1),
	('WEAPON_MACHINEPISTOL', 'Machine Pistol', 1, 0, 1),
	('WEAPON_MARKSMANPISTOL', 'Marksman Pistol', 1, 0, 1),
	('WEAPON_MARKSMANRIFLE', 'Marksman Rifle', 1, 0, 1),
	('WEAPON_MG', 'MG', 1, 0, 1),
	('WEAPON_MICROSMG', 'Micro SMG', 1, 0, 1),
	('WEAPON_MINIGUN', 'Minigun', 1, 0, 1),
	('WEAPON_MOLOTOV', 'Molotov', 1, 0, 1),
	('WEAPON_MUSKET', 'Musket', 1, 0, 1),
	('WEAPON_NIGHTSTICK', 'Police Baton', 1, 0, 1),
	('WEAPON_PETROLCAN', 'Petrol Can', 1, 0, 1),
	('WEAPON_PIPEBOMB', 'Pipe Bomb', 1, 0, 1),
	('WEAPON_PISTOL', 'Pistola', 1, 0, 1),
	('WEAPON_PISTOL50', 'Police .50', 1, 0, 1),
	('WEAPON_POOLCUE', 'Pool Cue', 1, 0, 1),
	('WEAPON_PROXMINE', 'Proximity Mine', 1, 0, 1),
	('WEAPON_PUMPSHOTGUN', 'Pump Shotgun', 1, 0, 1),
	('WEAPON_RAILGUN', 'Rail Gun', 1, 0, 1),
	('WEAPON_REVOLVER', 'Revolver', 1, 0, 1),
	('WEAPON_RPG', 'RPG', 1, 0, 1),
	('WEAPON_SAWNOFFSHOTGUN', 'Sawn Off Shotgun', 1, 0, 1),
	('weapon_shit', 'Repuestos de armas', 15, 0, 1),
	('WEAPON_SMG', 'SMG', 1, 0, 1),
	('WEAPON_SMOKEGRENADE', 'Smoke Gernade', 1, 0, 1),
	('WEAPON_SNIPERRIFLE', 'Sniper Rifle', 1, 0, 1),
	('WEAPON_SNOWBALL', 'Snow Ball', 1, 0, 1),
	('WEAPON_SNSPISTOL', 'SNS Pistol', 1, 0, 1),
	('WEAPON_SPECIALCARBINE', 'Special Rifle', 1, 0, 1),
	('WEAPON_STICKYBOMB', 'C4', 1, 0, 1),
	('WEAPON_STINGER', 'Stinger', 1, 0, 1),
	('WEAPON_STUNGUN', 'Police Taser', 1, 0, 1),
	('WEAPON_SWITCHBLADE', 'Switch Blade', 1, 0, 1),
	('WEAPON_VINTAGEPISTOL', 'Vintage Pistol', 1, 0, 1),
	('WEAPON_WRENCH', 'Wrench', 1, 0, 1),
	('wood', 'Wood', 50, 0, 1),
	('wool', 'Wool', 50, 0, 1);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;

-- Volcando estructura para tabla base.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla base.jobs: ~12 rows (aproximadamente)
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT IGNORE INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('ambulance', 'EMS', 1),
	('busdriver', 'Conductor de Bus', 0),
	('garbage', 'Basurero', 0),
	('mechanic', 'Mecánico', 1),
	('offambulance', 'Fuera de Servicio', 1),
	('offmechanic', 'Fuera de Servicio', 1),
	('offpolice', 'Fuera de Servicio', 1),
	('offtaxi', 'Fuera de Servicio', 1),
	('police', 'Policia', 1),
	('taxi', 'Taxi', 1),
	('trucker', 'Camionero', 0),
	('unemployed', 'Desempleado', 0);
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;

-- Volcando estructura para tabla base.job_grades
CREATE TABLE IF NOT EXISTS `job_grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(50) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=412 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla base.job_grades: ~43 rows (aproximadamente)
/*!40000 ALTER TABLE `job_grades` DISABLE KEYS */;
INSERT IGNORE INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(1, 'unemployed', 0, 'unemployed', 'En Paro', 200, '{}', '{}'),
	(2, 'police', 0, 'recruit', 'Recluta', 1250, '{}', '{}'),
	(3, 'police', 1, 'officer', 'Oficial', 1500, '{}', '{}'),
	(4, 'police', 2, 'sergeant', 'Sargento', 1480, '{}', '{}'),
	(5, 'police', 3, 'lieutenant', 'Inspector', 1550, '{}', '{}'),
	(6, 'police', 4, 'boss', 'Intendente', 2000, '{}', '{}'),
	(21, 'ambulance', 3, 'boss', 'Sub Director', 1600, '{"tshirt_2":2,"ears_1":0,"glasses_1":15,"torso_2":0,"ears_2":0,"glasses_2":0,"shoes_2":20,"pants_1":96,"shoes_1":59,"bags_1":0,"helmet_2":0,"pants_2":0,"torso_1":249,"tshirt_1":74,"arms":86,"bags_2":0,"helmet_1":-1}', '{"tshirt_2":0,"ears_1":0,"glasses_1":15,"torso_2":0,"ears_2":0,"glasses_2":0,"shoes_2":1,"pants_1":99,"shoes_1":59,"bags_1":0,"helmet_2":0,"pants_2":0,"torso_1":258,"tshirt_1":159,"arms":2,"bags_2":0,"helmet_1":-1}'),
	(22, 'ambulance', 0, 'ambulance', 'Practicas', 1100, '{"tshirt_2":0,"ears_1":0,"glasses_1":15,"torso_2":0,"ears_2":0,"glasses_2":0,"shoes_2":20,"pants_1":96,"shoes_1":59,"bags_1":0,"helmet_2":0,"pants_2":0,"torso_1":250,"tshirt_1":129,"arms":2,"bags_2":0,"helmet_1":-1}', '{"tshirt_2":0,"ears_1":0,"glasses_1":15,"torso_2":0,"ears_2":0,"glasses_2":0,"shoes_2":1,"pants_1":99,"shoes_1":59,"bags_1":0,"helmet_2":0,"pants_2":0,"torso_1":258,"tshirt_1":159,"arms":2,"bags_2":0,"helmet_1":-1}'),
	(23, 'ambulance', 1, 'doctor', 'Enfermero', 1200, '{"tshirt_2":0,"ears_1":0,"glasses_1":15,"torso_2":0,"ears_2":0,"glasses_2":0,"shoes_2":20,"pants_1":96,"shoes_1":59,"bags_1":0,"helmet_2":0,"pants_2":0,"torso_1":250,"tshirt_1":129,"arms":2,"bags_2":0,"helmet_1":-1}', '{"tshirt_2":0,"ears_1":0,"glasses_1":15,"torso_2":0,"ears_2":0,"glasses_2":0,"shoes_2":1,"pants_1":99,"shoes_1":59,"bags_1":0,"helmet_2":0,"pants_2":0,"torso_1":258,"tshirt_1":159,"arms":2,"bags_2":0,"helmet_1":-1}'),
	(24, 'ambulance', 2, 'chief_doctor', 'Doctor', 1400, '{"tshirt_2":0,"ears_1":0,"glasses_1":15,"torso_2":0,"ears_2":0,"glasses_2":0,"shoes_2":20,"pants_1":96,"shoes_1":59,"bags_1":0,"helmet_2":0,"pants_2":0,"torso_1":250,"tshirt_1":129,"arms":2,"bags_2":0,"helmet_1":-1}', '{"tshirt_2":0,"ears_1":0,"glasses_1":15,"torso_2":0,"ears_2":0,"glasses_2":0,"shoes_2":1,"pants_1":99,"shoes_1":59,"bags_1":0,"helmet_2":0,"pants_2":0,"torso_1":258,"tshirt_1":159,"arms":2,"bags_2":0,"helmet_1":-1}'),
	(25, 'ambulance', 4, 'boss', 'Director', 2000, '{"tshirt_2":2,"ears_1":0,"glasses_1":15,"torso_2":0,"ears_2":0,"glasses_2":0,"shoes_2":20,"pants_1":96,"shoes_1":59,"bags_1":0,"helmet_2":0,"pants_2":0,"torso_1":249,"tshirt_1":74,"arms":86,"bags_2":0,"helmet_1":-1}', '{"tshirt_2":0,"ears_1":0,"glasses_1":15,"torso_2":0,"ears_2":0,"glasses_2":0,"shoes_2":1,"pants_1":99,"shoes_1":59,"bags_1":0,"helmet_2":0,"pants_2":0,"torso_1":258,"tshirt_1":159,"arms":2,"bags_2":0,"helmet_1":-1}'),
	(26, 'mechanic', 0, 'recrue', 'Recluta', 1600, '{"tshirt_2":0,"hair_color_1":5,"glasses_2":3,"shoes_1":46,"shoes_2":0,"torso_2":1,"hair_color_2":0,"pants_1":66,"glasses_1":4,"hair_1":2,"sex":0,"decals_2":0,"tshirt_1":15,"helmet_1":8,"helmet_2":0,"arms":4,"face":19,"decals_1":0,"torso_1":147,"hair_2":0,"skin":34,"pants_2":1}', '{"tshirt_2":3,"decals_2":0,"glasses":0,"hair_1":2,"torso_1":73,"shoes":1,"hair_color_2":0,"glasses_1":19,"skin":13,"face":6,"pants_2":5,"tshirt_1":75,"pants_1":37,"helmet_1":57,"torso_2":0,"arms":14,"sex":1,"glasses_2":0,"decals_1":0,"hair_2":0,"helmet_2":0,"hair_color_1":0}'),
	(27, 'mechanic', 1, 'novice', 'Novato', 1600, '{"tshirt_2":0,"hair_color_1":5,"glasses_2":3,"shoes_1":27,"shoes_2":0,"torso_2":3,"hair_color_2":0,"pants_1":39,"glasses_1":4,"hair_1":2,"sex":0,"decals_2":0,"tshirt_1":15,"helmet_1":-1,"helmet_2":0,"arms":38,"face":19,"decals_1":0,"torso_1":66,"hair_2":0,"skin":34,"pants_2":3}', '{"tshirt_2":3,"decals_2":0,"glasses":0,"hair_1":2,"torso_1":73,"shoes":1,"hair_color_2":0,"glasses_1":19,"skin":13,"face":6,"pants_2":5,"tshirt_1":75,"pants_1":37,"helmet_1":57,"torso_2":0,"arms":14,"sex":1,"glasses_2":0,"decals_1":0,"hair_2":0,"helmet_2":0,"hair_color_1":0}'),
	(28, 'mechanic', 2, 'experimente', 'Experimentado', 1600, '{"tshirt_2":0,"hair_color_1":5,"glasses_2":3,"shoes_1":46,"shoes_2":0,"torso_2":1,"hair_color_2":0,"pants_1":66,"glasses_1":4,"hair_1":2,"sex":0,"decals_2":0,"tshirt_1":15,"helmet_1":8,"helmet_2":0,"arms":4,"face":19,"decals_1":0,"torso_1":147,"hair_2":0,"skin":34,"pants_2":1}', '{"tshirt_2":3,"decals_2":0,"glasses":0,"hair_1":2,"torso_1":73,"shoes":1,"hair_color_2":0,"glasses_1":19,"skin":13,"face":6,"pants_2":5,"tshirt_1":75,"pants_1":37,"helmet_1":57,"torso_2":0,"arms":14,"sex":1,"glasses_2":0,"decals_1":0,"hair_2":0,"helmet_2":0,"hair_color_1":0}'),
	(29, 'mechanic', 3, 'chief', 'Subjefe', 1600, '{"tshirt_2":0,"hair_color_1":5,"glasses_2":3,"shoes_1":27,"shoes_2":0,"torso_2":1,"hair_color_2":0,"pants_1":38,"glasses_1":4,"hair_1":2,"sex":0,"decals_2":0,"tshirt_1":15,"helmet_1":-1,"helmet_2":0,"arms":38,"face":19,"decals_1":0,"torso_1":65,"hair_2":0,"skin":34,"pants_2":1}', '{"tshirt_2":3,"decals_2":0,"glasses":0,"hair_1":2,"torso_1":73,"shoes":1,"hair_color_2":0,"glasses_1":19,"skin":13,"face":6,"pants_2":5,"tshirt_1":75,"pants_1":37,"helmet_1":57,"torso_2":0,"arms":14,"sex":1,"glasses_2":0,"decals_1":0,"hair_2":0,"helmet_2":0,"hair_color_1":0}'),
	(30, 'mechanic', 4, 'boss', 'Jefe', 1600, '{"tshirt_2":0,"hair_color_1":5,"glasses_2":3,"shoes_1":27,"shoes_2":0,"torso_2":0,"hair_color_2":0,"pants_1":38,"glasses_1":4,"hair_1":2,"sex":0,"decals_2":0,"tshirt_1":15,"helmet_1":-1,"helmet_2":0,"arms":38,"face":19,"decals_1":0,"torso_1":65,"hair_2":0,"skin":34,"pants_2":0}', '{"tshirt_2":3,"decals_2":0,"glasses":0,"hair_1":2,"torso_1":73,"shoes":1,"hair_color_2":0,"glasses_1":19,"skin":13,"face":6,"pants_2":5,"tshirt_1":75,"pants_1":37,"helmet_1":57,"torso_2":0,"arms":14,"sex":1,"glasses_2":0,"decals_1":0,"hair_2":0,"helmet_2":0,"hair_color_1":0}'),
	(31, 'taxi', 0, 'recrue', 'Recluta', 1200, '{"hair_2":0,"hair_color_2":0,"torso_1":32,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":31,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":0,"age_2":0,"glasses_2":0,"ears_2":0,"arms":27,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":0,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":0,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":10,"pants_1":24}', '{"hair_2":0,"hair_color_2":0,"torso_1":57,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":38,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":1,"age_2":0,"glasses_2":0,"ears_2":0,"arms":21,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":1,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":5,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":49,"pants_1":11}'),
	(32, 'taxi', 1, 'novice', 'Conductor', 1300, '{"hair_2":0,"hair_color_2":0,"torso_1":32,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":31,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":0,"age_2":0,"glasses_2":0,"ears_2":0,"arms":27,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":0,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":0,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":10,"pants_1":24}', '{"hair_2":0,"hair_color_2":0,"torso_1":57,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":38,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":1,"age_2":0,"glasses_2":0,"ears_2":0,"arms":21,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":1,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":5,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":49,"pants_1":11}'),
	(33, 'taxi', 2, 'experimente', 'Experimentado', 1400, '{"hair_2":0,"hair_color_2":0,"torso_1":26,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":57,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":4,"age_2":0,"glasses_2":0,"ears_2":0,"arms":11,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":0,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":0,"bproof_1":0,"mask_1":0,"decals_1":0,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":10,"pants_1":24}', '{"hair_2":0,"hair_color_2":0,"torso_1":57,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":38,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":1,"age_2":0,"glasses_2":0,"ears_2":0,"arms":21,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":1,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":5,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":49,"pants_1":11}'),
	(34, 'taxi', 3, 'uber', 'Uber', 1500, '{"hair_2":0,"hair_color_2":0,"torso_1":26,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":57,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":4,"age_2":0,"glasses_2":0,"ears_2":0,"arms":11,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":0,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":0,"bproof_1":0,"mask_1":0,"decals_1":0,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":10,"pants_1":24}', '{"hair_2":0,"hair_color_2":0,"torso_1":57,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":38,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":1,"age_2":0,"glasses_2":0,"ears_2":0,"arms":21,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":1,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":5,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":49,"pants_1":11}'),
	(35, 'taxi', 4, 'boss', 'Jefe', 2000, '{"hair_2":0,"hair_color_2":0,"torso_1":29,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":31,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":4,"age_2":0,"glasses_2":0,"ears_2":0,"arms":1,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":0,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":0,"bproof_1":0,"mask_1":0,"decals_1":0,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":4,"eyebrows_1":0,"face":0,"shoes_1":10,"pants_1":24}', '{"hair_2":0,"hair_color_2":0,"torso_1":57,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":38,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":1,"age_2":0,"glasses_2":0,"ears_2":0,"arms":21,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":1,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":5,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":49,"pants_1":11}'),
	(48, 'offpolice', 0, 'recruit', 'Policia', 12, '{}', '{}'),
	(49, 'offpolice', 1, 'officer', 'Policia', 24, '{}', '{}'),
	(50, 'offpolice', 2, 'sergeant', 'Policia', 36, '{}', '{}'),
	(51, 'offpolice', 3, 'lieutenant', 'Policia', 48, '{}', '{}'),
	(52, 'offpolice', 4, 'boss', 'Policia', 50, '{}', '{}'),
	(53, 'offmechanic', 0, 'recrue', 'Mecánico', 300, '{}', '{}'),
	(54, 'offmechanic', 1, 'novice', 'Mecánico', 300, '{}', '{}'),
	(55, 'offmechanic', 2, 'experimente', 'Mecánico', 400, '{}', '{}'),
	(56, 'offmechanic', 3, 'chief', 'Mecánico', 500, '{}', '{}'),
	(57, 'offmechanic', 4, 'boss', 'Mecánico', 600, '{}', '{}'),
	(58, 'offambulance', 0, 'ambulance', 'EMS', 12, '{}', '{}'),
	(59, 'offambulance', 1, 'doctor', 'EMS', 24, '{}', '{}'),
	(60, 'offambulance', 2, 'chief_doctor', 'EMS', 36, '{}', '{}'),
	(61, 'offambulance', 3, 'boss', 'EMS', 48, '{}', '{}'),
	(62, 'offtaxi', 0, 'recrue', 'Taxista', 12, '{}', '{}'),
	(63, 'offtaxi', 1, 'novice', 'Taxista', 24, '{}', '{}'),
	(64, 'offtaxi', 2, 'experimente', 'Taxista', 36, '{}', '{}'),
	(65, 'offtaxi', 3, 'uber', 'Taxista', 48, '{}', '{}'),
	(66, 'offtaxi', 4, 'boss', 'Taxista', 50, '{}', '{}'),
	(266, 'garbage', 0, 'employee', 'Empleado', 850, '{"tshirt_1":59,"torso_1":89,"arms":31,"pants_1":36,"glasses_1":19,"decals_2":0,"hair_color_2":0,"helmet_2":0,"hair_color_1":0,"face":2,"glasses_2":0,"torso_2":1,"shoes":35,"hair_1":0,"skin":0,"sex":0,"glasses_1":19,"pants_2":0,"hair_2":0,"decals_1":0,"tshirt_2":0,"helmet_1":5}', '{"tshirt_1":36,"torso_1":0,"arms":68,"pants_1":30,"glasses_1":15,"decals_2":0,"hair_color_2":0,"helmet_2":0,"hair_color_1":0,"face":27,"glasses_2":0,"torso_2":11,"shoes":26,"hair_1":5,"skin":0,"sex":1,"glasses_1":15,"pants_2":2,"hair_2":0,"decals_1":0,"tshirt_2":0,"helmet_1":19}'),
	(267, 'trucker', 0, 'employe', 'Empleado', 850, '{}', '{}'),
	(268, 'busdriver', 0, 'employee', 'Empleado', 500, '{}', '{}');
/*!40000 ALTER TABLE `job_grades` ENABLE KEYS */;

-- Volcando estructura para tabla base.licenses
CREATE TABLE IF NOT EXISTS `licenses` (
  `type` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla base.licenses: ~8 rows (aproximadamente)
/*!40000 ALTER TABLE `licenses` DISABLE KEYS */;
INSERT IGNORE INTO `licenses` (`type`, `label`) VALUES
	('aircraft', 'Licencia de aeronaves'),
	('boating', 'Licencia de Capitan'),
	('dmv', 'Leyes de transito'),
	('drive', 'Carnet de conducir'),
	('drive_bike', 'Carnet de moto'),
	('drive_truck', 'Carnet de camión'),
	('weapon', 'Licencia de armas'),
	('weed_processing', 'Weed Processing License');
/*!40000 ALTER TABLE `licenses` ENABLE KEYS */;

-- Volcando estructura para tabla base.owned_properties
CREATE TABLE IF NOT EXISTS `owned_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `rented` int(11) NOT NULL,
  `owner` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla base.owned_properties: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `owned_properties` DISABLE KEYS */;
/*!40000 ALTER TABLE `owned_properties` ENABLE KEYS */;

-- Volcando estructura para tabla base.owned_vehicles
CREATE TABLE IF NOT EXISTS `owned_vehicles` (
  `owner` varchar(60) NOT NULL,
  `vehicle` longtext NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'State of the vehicle',
  `stored` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'State of the vehicle',
  `garage_name` varchar(50) NOT NULL DEFAULT 'Garage_Central',
  `pound` tinyint(1) NOT NULL DEFAULT 0,
  `vehiclename` varchar(50) DEFAULT NULL,
  `plate` varchar(50) NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT 'car',
  `job` varchar(50) DEFAULT NULL,
  `vehicle_type` varchar(10) NOT NULL DEFAULT 'car',
  `fourrieremecano` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`plate`) USING BTREE,
  KEY `vehsowned` (`owner`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Volcando datos para la tabla base.owned_vehicles: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `owned_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `owned_vehicles` ENABLE KEYS */;

-- Volcando estructura para tabla base.phone_app_chat
CREATE TABLE IF NOT EXISTS `phone_app_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla base.phone_app_chat: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `phone_app_chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_app_chat` ENABLE KEYS */;

-- Volcando estructura para tabla base.phone_calls
CREATE TABLE IF NOT EXISTS `phone_calls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(10) NOT NULL,
  `num` varchar(10) NOT NULL,
  `incoming` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `accepts` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla base.phone_calls: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `phone_calls` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_calls` ENABLE KEYS */;

-- Volcando estructura para tabla base.phone_messages
CREATE TABLE IF NOT EXISTS `phone_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transmitter` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `isRead` int(11) NOT NULL DEFAULT 0,
  `owner` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla base.phone_messages: 0 rows
/*!40000 ALTER TABLE `phone_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_messages` ENABLE KEYS */;

-- Volcando estructura para tabla base.phone_users_contacts
CREATE TABLE IF NOT EXISTS `phone_users_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL,
  `number` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `display` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla base.phone_users_contacts: 0 rows
/*!40000 ALTER TABLE `phone_users_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_users_contacts` ENABLE KEYS */;

-- Volcando estructura para tabla base.playerhousing
CREATE TABLE IF NOT EXISTS `playerhousing` (
  `id` int(32) NOT NULL,
  `owner` varchar(50) DEFAULT NULL,
  `rented` tinyint(1) DEFAULT NULL,
  `price` int(32) DEFAULT NULL,
  `wardrobe` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla base.playerhousing: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `playerhousing` DISABLE KEYS */;
/*!40000 ALTER TABLE `playerhousing` ENABLE KEYS */;

-- Volcando estructura para tabla base.properties
CREATE TABLE IF NOT EXISTS `properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `entering` varchar(255) DEFAULT NULL,
  `exit` varchar(255) DEFAULT NULL,
  `inside` varchar(255) DEFAULT NULL,
  `outside` varchar(255) DEFAULT NULL,
  `ipls` varchar(255) DEFAULT '[]',
  `gateway` varchar(255) DEFAULT NULL,
  `is_single` int(11) DEFAULT NULL,
  `is_room` int(11) DEFAULT NULL,
  `is_gateway` int(11) DEFAULT NULL,
  `room_menu` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla base.properties: ~42 rows (aproximadamente)
/*!40000 ALTER TABLE `properties` DISABLE KEYS */;
INSERT IGNORE INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(1, 'WhispymoundDrive', '2677 Whispymound Drive', '{"y":564.89,"z":182.959,"x":119.384}', '{"x":117.347,"y":559.506,"z":183.304}', '{"y":557.032,"z":183.301,"x":118.037}', '{"y":567.798,"z":182.131,"x":119.249}', '[]', NULL, 1, 1, 0, '{"x":118.748,"y":566.573,"z":175.697}', 1500000),
	(2, 'NorthConkerAvenue2045', '2045 North Conker Avenue', '{"x":372.796,"y":428.327,"z":144.685}', '{"x":373.548,"y":422.982,"z":144.907}', '{"y":420.075,"z":145.904,"x":372.161}', '{"x":372.454,"y":432.886,"z":143.443}', '[]', NULL, 1, 1, 0, '{"x":377.349,"y":429.422,"z":137.3}', 1500000),
	(3, 'RichardMajesticApt2', 'Richard Majestic, Apt 2', '{"y":-379.165,"z":37.961,"x":-936.363}', '{"y":-365.476,"z":113.274,"x":-913.097}', '{"y":-367.637,"z":113.274,"x":-918.022}', '{"y":-382.023,"z":37.961,"x":-943.626}', '[]', NULL, 1, 1, 0, '{"x":-927.554,"y":-377.744,"z":112.674}', 1700000),
	(4, 'NorthConkerAvenue2044', '2044 North Conker Avenue', '{"y":440.8,"z":146.702,"x":346.964}', '{"y":437.456,"z":148.394,"x":341.683}', '{"y":435.626,"z":148.394,"x":339.595}', '{"x":350.535,"y":443.329,"z":145.764}', '[]', NULL, 1, 1, 0, '{"x":337.726,"y":436.985,"z":140.77}', 1500000),
	(5, 'WildOatsDrive', '3655 Wild Oats Drive', '{"y":502.696,"z":136.421,"x":-176.003}', '{"y":497.817,"z":136.653,"x":-174.349}', '{"y":495.069,"z":136.666,"x":-173.331}', '{"y":506.412,"z":135.0664,"x":-177.927}', '[]', NULL, 1, 1, 0, '{"x":-174.725,"y":493.095,"z":129.043}', 1500000),
	(6, 'HillcrestAvenue2862', '2862 Hillcrest Avenue', '{"y":596.58,"z":142.641,"x":-686.554}', '{"y":591.988,"z":144.392,"x":-681.728}', '{"y":590.608,"z":144.392,"x":-680.124}', '{"y":599.019,"z":142.059,"x":-689.492}', '[]', NULL, 1, 1, 0, '{"x":-680.46,"y":588.6,"z":136.769}', 1500000),
	(7, 'LowEndApartment', 'Appartement de base', '{"y":-1078.735,"z":28.4031,"x":292.528}', '{"y":-1007.152,"z":-102.002,"x":265.845}', '{"y":-1002.802,"z":-100.008,"x":265.307}', '{"y":-1078.669,"z":28.401,"x":296.738}', '[]', NULL, 1, 1, 0, '{"x":265.916,"y":-999.38,"z":-100.008}', 562500),
	(8, 'MadWayneThunder', '2113 Mad Wayne Thunder', '{"y":454.955,"z":96.462,"x":-1294.433}', '{"x":-1289.917,"y":449.541,"z":96.902}', '{"y":446.322,"z":96.899,"x":-1289.642}', '{"y":455.453,"z":96.517,"x":-1298.851}', '[]', NULL, 1, 1, 0, '{"x":-1287.306,"y":455.901,"z":89.294}', 1500000),
	(9, 'HillcrestAvenue2874', '2874 Hillcrest Avenue', '{"x":-853.346,"y":696.678,"z":147.782}', '{"y":690.875,"z":151.86,"x":-859.961}', '{"y":688.361,"z":151.857,"x":-859.395}', '{"y":701.628,"z":147.773,"x":-855.007}', '[]', NULL, 1, 1, 0, '{"x":-858.543,"y":697.514,"z":144.253}', 1500000),
	(10, 'HillcrestAvenue2868', '2868 Hillcrest Avenue', '{"y":620.494,"z":141.588,"x":-752.82}', '{"y":618.62,"z":143.153,"x":-759.317}', '{"y":617.629,"z":143.153,"x":-760.789}', '{"y":621.281,"z":141.254,"x":-750.919}', '[]', NULL, 1, 1, 0, '{"x":-762.504,"y":618.992,"z":135.53}', 1500000),
	(11, 'TinselTowersApt12', 'Tinsel Towers, Apt 42', '{"y":37.025,"z":42.58,"x":-618.299}', '{"y":58.898,"z":97.2,"x":-603.301}', '{"y":58.941,"z":97.2,"x":-608.741}', '{"y":30.603,"z":42.524,"x":-620.017}', '[]', NULL, 1, 1, 0, '{"x":-622.173,"y":54.585,"z":96.599}', 1700000),
	(12, 'MiltonDrive', 'Milton Drive', '{"x":-775.17,"y":312.01,"z":84.658}', NULL, NULL, '{"x":-775.346,"y":306.776,"z":84.7}', '[]', NULL, 0, 0, 1, NULL, 0),
	(13, 'Modern1Apartment', 'Appartement Moderne 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_01_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.661,"y":327.672,"z":210.396}', 1300000),
	(14, 'Modern2Apartment', 'Appartement Moderne 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_01_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.735,"y":326.757,"z":186.313}', 1300000),
	(15, 'Modern3Apartment', 'Appartement Moderne 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_01_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.386,"y":330.782,"z":195.08}', 1300000),
	(16, 'Mody1Apartment', 'Appartement Mode 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_02_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.615,"y":327.878,"z":210.396}', 1300000),
	(17, 'Mody2Apartment', 'Appartement Mode 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_02_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.297,"y":327.092,"z":186.313}', 1300000),
	(18, 'Mody3Apartment', 'Appartement Mode 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_02_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.303,"y":330.932,"z":195.085}', 1300000),
	(19, 'Vibrant1Apartment', 'Appartement Vibrant 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_03_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.885,"y":327.641,"z":210.396}', 1300000),
	(20, 'Vibrant2Apartment', 'Appartement Vibrant 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_03_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.607,"y":327.344,"z":186.313}', 1300000),
	(21, 'Vibrant3Apartment', 'Appartement Vibrant 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_03_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.525,"y":330.851,"z":195.085}', 1300000),
	(22, 'Sharp1Apartment', 'Appartement Persan 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_04_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.527,"y":327.89,"z":210.396}', 1300000),
	(23, 'Sharp2Apartment', 'Appartement Persan 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_04_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.642,"y":326.497,"z":186.313}', 1300000),
	(24, 'Sharp3Apartment', 'Appartement Persan 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_04_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.503,"y":331.318,"z":195.085}', 1300000),
	(25, 'Monochrome1Apartment', 'Appartement Monochrome 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_05_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.289,"y":328.086,"z":210.396}', 1300000),
	(26, 'Monochrome2Apartment', 'Appartement Monochrome 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_05_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.692,"y":326.762,"z":186.313}', 1300000),
	(27, 'Monochrome3Apartment', 'Appartement Monochrome 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_05_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.094,"y":330.976,"z":195.085}', 1300000),
	(28, 'Seductive1Apartment', 'Appartement Séduisant 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_06_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.263,"y":328.104,"z":210.396}', 1300000),
	(29, 'Seductive2Apartment', 'Appartement Séduisant 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_06_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.655,"y":326.611,"z":186.313}', 1300000),
	(30, 'Seductive3Apartment', 'Appartement Séduisant 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_06_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.3,"y":331.414,"z":195.085}', 1300000),
	(31, 'Regal1Apartment', 'Appartement Régal 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_07_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.956,"y":328.257,"z":210.396}', 1300000),
	(32, 'Regal2Apartment', 'Appartement Régal 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_07_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.545,"y":326.659,"z":186.313}', 1300000),
	(33, 'Regal3Apartment', 'Appartement Régal 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_07_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.087,"y":331.429,"z":195.123}', 1300000),
	(34, 'Aqua1Apartment', 'Appartement Aqua 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_08_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.187,"y":328.47,"z":210.396}', 1300000),
	(35, 'Aqua2Apartment', 'Appartement Aqua 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_08_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.658,"y":326.563,"z":186.313}', 1300000),
	(36, 'Aqua3Apartment', 'Appartement Aqua 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_08_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.287,"y":331.084,"z":195.086}', 1300000),
	(37, 'IntegrityWay', '4 Integrity Way', '{"x":-47.804,"y":-585.867,"z":36.956}', NULL, NULL, '{"x":-54.178,"y":-583.762,"z":35.798}', '[]', NULL, 0, 0, 1, NULL, 0),
	(38, 'IntegrityWay28', '4 Integrity Way - Apt 28', NULL, '{"x":-31.409,"y":-594.927,"z":79.03}', '{"x":-26.098,"y":-596.909,"z":79.03}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{"x":-11.923,"y":-597.083,"z":78.43}', 1700000),
	(39, 'IntegrityWay30', '4 Integrity Way - Apt 30', NULL, '{"x":-17.702,"y":-588.524,"z":89.114}', '{"x":-16.21,"y":-582.569,"z":89.114}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{"x":-26.327,"y":-588.384,"z":89.123}', 1700000),
	(40, 'DellPerroHeights', 'Dell Perro Heights', '{"x":-1447.06,"y":-538.28,"z":33.74}', NULL, NULL, '{"x":-1440.022,"y":-548.696,"z":33.74}', '[]', NULL, 0, 0, 1, NULL, 0),
	(41, 'DellPerroHeightst4', 'Dell Perro Heights - Apt 28', NULL, '{"x":-1452.125,"y":-540.591,"z":73.044}', '{"x":-1455.435,"y":-535.79,"z":73.044}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{"x":-1467.058,"y":-527.571,"z":72.443}', 1700000),
	(42, 'DellPerroHeightst7', 'Dell Perro Heights - Apt 30', NULL, '{"x":-1451.562,"y":-523.535,"z":55.928}', '{"x":-1456.02,"y":-519.209,"z":55.929}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{"x":-1457.026,"y":-530.219,"z":55.937}', 1700000);
/*!40000 ALTER TABLE `properties` ENABLE KEYS */;

-- Volcando estructura para tabla base.rented_vehicles
CREATE TABLE IF NOT EXISTS `rented_vehicles` (
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(22) NOT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla base.rented_vehicles: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `rented_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `rented_vehicles` ENABLE KEYS */;

-- Volcando estructura para tabla base.sg_vip
CREATE TABLE IF NOT EXISTS `sg_vip` (
  `identifier` varchar(40) NOT NULL,
  `vip` tinyint(4) DEFAULT NULL,
  `fecha` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla base.sg_vip: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `sg_vip` DISABLE KEYS */;
/*!40000 ALTER TABLE `sg_vip` ENABLE KEYS */;

-- Volcando estructura para tabla base.shops
CREATE TABLE IF NOT EXISTS `shops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla base.shops: ~22 rows (aproximadamente)
/*!40000 ALTER TABLE `shops` DISABLE KEYS */;
INSERT IGNORE INTO `shops` (`id`, `store`, `item`, `price`) VALUES
	(1, 'TwentyFourSeven', 'bread', 30),
	(2, 'TwentyFourSeven', 'water', 15),
	(3, 'RobsLiquor', 'bread', 30),
	(4, 'RobsLiquor', 'water', 15),
	(5, 'LTDgasoline', 'bread', 30),
	(6, 'LTDgasoline', 'water', 15),
	(7, 'Movil', 'phone', 1000),
	(9, 'TwentyFourSeven', 'fixkit', 500),
	(10, 'LTDgasoline', 'fixkit', 500),
	(11, 'TwentyFourSeven', 'durumkebab', 40),
	(12, 'LTDgasoline', 'durumkebab', 40),
	(13, 'RobsLiquor', 'ronco', 7),
	(14, 'RobsLiquor', 'sexonbeach', 10),
	(34, 'TwentyFourSeven', 'fixkit', 500),
	(45, 'BlackMarket', 'drill', 20000),
	(58, 'Movil', 'hifi', 2500),
	(59, 'Ammunition', 'boxpistol', 550),
	(60, 'Ammunition', 'boxsmg', 850),
	(61, 'Ammunition', 'boxshot', 1000),
	(62, 'Ammunition', 'boxrifle', 1200),
	(63, 'Ammunition', 'bulletproof', 3500),
	(67, 'Ammunition', 'oxygenmask', 400);
/*!40000 ALTER TABLE `shops` ENABLE KEYS */;

-- Volcando estructura para tabla base.trunk_inventory
CREATE TABLE IF NOT EXISTS `trunk_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(8) NOT NULL,
  `data` text NOT NULL,
  `owned` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `plate` (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla base.trunk_inventory: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `trunk_inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `trunk_inventory` ENABLE KEYS */;

-- Volcando estructura para tabla base.twitter_accounts
CREATE TABLE IF NOT EXISTS `twitter_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `password` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `avatar_url` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Volcando datos para la tabla base.twitter_accounts: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `twitter_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `twitter_accounts` ENABLE KEYS */;

-- Volcando estructura para tabla base.twitter_likes
CREATE TABLE IF NOT EXISTS `twitter_likes` (
  `id` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `tweetId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Volcando datos para la tabla base.twitter_likes: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `twitter_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `twitter_likes` ENABLE KEYS */;

-- Volcando estructura para tabla base.twitter_tweets
CREATE TABLE IF NOT EXISTS `twitter_tweets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `FK_twitter_tweets_twitter_accounts` (`authorId`),
  CONSTRAINT `FK_twitter_tweets_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla base.twitter_tweets: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `twitter_tweets` DISABLE KEYS */;
/*!40000 ALTER TABLE `twitter_tweets` ENABLE KEYS */;

-- Volcando estructura para tabla base.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(40) NOT NULL,
  `accounts` longtext DEFAULT NULL,
  `group` varchar(50) DEFAULT 'user',
  `inventory` longtext DEFAULT NULL,
  `job` varchar(20) DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `loadout` longtext DEFAULT NULL,
  `position` varchar(255) DEFAULT '{"x":-269.4,"y":-955.3,"z":31.2,"heading":205.8}',
  `status` longtext DEFAULT NULL,
  `firstname` longtext DEFAULT NULL,
  `lastname` longtext DEFAULT NULL,
  `dateofbirth` longtext DEFAULT NULL,
  `sex` varchar(50) DEFAULT '',
  `height` varchar(50) DEFAULT '',
  `skin` longtext DEFAULT NULL,
  `is_dead` tinyint(1) DEFAULT 0,
  `tattoos` longtext DEFAULT NULL,
  `house` varchar(10000) DEFAULT '{"owns":false,"furniture":[],"houseId":0}',
  `bought_furniture` varchar(10000) DEFAULT '{}',
  `last_house` int(11) DEFAULT 0,
  `last_property` varchar(255) DEFAULT NULL,
  `secondjob` varchar(32) NOT NULL DEFAULT 'unemployed',
  `secondjob_grade` varchar(32) NOT NULL DEFAULT '0',
  `busLevel` int(4) DEFAULT 0,
  `phone_number` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla base.users: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Volcando estructura para tabla base.user_convictions
CREATE TABLE IF NOT EXISTS `user_convictions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `char_id` int(11) DEFAULT NULL,
  `offense` varchar(255) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla base.user_convictions: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `user_convictions` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_convictions` ENABLE KEYS */;

-- Volcando estructura para tabla base.user_licenses
CREATE TABLE IF NOT EXISTS `user_licenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(60) NOT NULL,
  `owner` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla base.user_licenses: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `user_licenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_licenses` ENABLE KEYS */;

-- Volcando estructura para tabla base.vehicles
CREATE TABLE IF NOT EXISTS `vehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla base.vehicles: ~310 rows (aproximadamente)
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT IGNORE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Dodge Challenger 2016', '16challenger', 65000, 'real'),
	('Chevrolet Camaro SS', '16ss', 140000, 'real'),
	('Lamborghini Huracan Performante 18', '18performante', 10, 'vip'),
	('Mercedez Benz 600', '600sel', 10, 'vip'),
	('Yamaha R6', '720s', 10, 'vip'),
	('Porsche 911 Turbo S', '911tbs', 10, 'vip'),
	('Porsche 918', '918', 10, 'vip'),
	('Audi A8', 'a8audi', 160000, 'real'),
	('BMW i8', 'acs8', 10, 'vip'),
	('Adder', 'adder', 900000, 'super'),
	('Akuma', 'AKUMA', 7500, 'motorcycles'),
	('Volkswagen Amarok', 'amarok', 5, 'vip'),
	('Honda S2000', 'ap2', 5, 'vip'),
	('Chevrolet Apache 1958', 'apache58', 20000, 'real'),
	('Ferrari Laferrari', 'aperta', 10, 'vip'),
	('Asea', 'asea', 5500, 'sedans'),
	('Autarch', 'autarch', 1955000, 'super'),
	('Avarus', 'avarus', 18000, 'motorcycles'),
	('Bagger', 'bagger', 13500, 'motorcycles'),
	('Baller', 'baller2', 40000, 'suvs'),
	('Baller Sport', 'baller3', 60000, 'suvs'),
	('Blindado', 'baller6', 2000000, 'offroad'),
	('Banshee', 'banshee', 45000, 'super'),
	('Banshee 900R', 'banshee2', 255000, 'super'),
	('Bati 801', 'bati', 12000, 'motorcycles'),
	('Bati 801RR', 'bati2', 19000, 'motorcycles'),
	('Bentley Bentayga', 'bbentayga', 100000, 'real'),
	('Bugatti Divo', 'bdivo', 10, 'vip'),
	('Chevrolet Belair 1956', 'belair56', 35000, 'real'),
	('Bentley SuperSport 2017', 'BEN17', 100000, 'real'),
	('Bestia GTS', 'bestiagts', 55000, 'sports'),
	('BF400', 'bf400', 6500, 'motorcycles'),
	('Bf Injection', 'bfinjection', 16000, 'offroad'),
	('Bifta', 'bifta', 12000, 'offroad'),
	('Ducati 1', 'BIMOTA', 5, 'vip'),
	('Bison', 'bison', 45000, 'vans'),
	('Blade', 'blade', 15000, 'muscle'),
	('Blazer', 'blazer', 6500, 'offroad'),
	('Blazer Sport', 'blazer4', 8500, 'offroad'),
	('blazer5', 'blazer5', 1755600, 'offroad'),
	('MIni', 'blista', 8000, 'compacts'),
	('Bentley Mulliner 2013', 'bmm', 100000, 'real'),
	('BMW E-38', 'bmwe38', 45000, 'real'),
	('BMW 1', 'BMWS', 5, 'vip'),
	('Bobcat XL', 'bobcatxl', 32000, 'vans'),
	('Bugatti Bolide', 'bolide', 10, 'vip'),
	('Brawler', 'brawler', 45000, 'offroad'),
	('Brioso R/A', 'brioso', 18000, 'compacts'),
	('Ford Bronco', 'BRONCO', 45000, 'real'),
	('Bentley Brooklands 2008', 'brooklands', 100000, 'real'),
	('Btype', 'btype', 62000, 'sportsclassics'),
	('Btype Hotroad', 'btype2', 155000, 'sportsclassics'),
	('Btype Luxe', 'btype3', 85000, 'sportsclassics'),
	('Buccaneer', 'buccaneer', 18000, 'muscle'),
	('Buccaneer Rider', 'buccaneer2', 24000, 'muscle'),
	('Buffalo', 'buffalo', 30000, 'sports'),
	('Bugatti Veyron', 'BUGATTI', 10, 'vip'),
	('Bullet', 'bullet', 90000, 'super'),
	('Burrito', 'burrito3', 19000, 'vans'),
	('Chevrolet c10 Custom', 'c10custom', 75000, 'real'),
	('Chevrolet Corvette C8', 'c8', 10, 'vip'),
	('Camper', 'camper', 42000, 'vans'),
	('Carbonizzare', 'carbonizzare', 75000, 'sports'),
	('Carbon RS', 'carbonrs', 18000, 'motorcycles'),
	('Casco', 'casco', 30000, 'sportsclassics'),
	('Cavalcade', 'cavalcade2', 55000, 'suvs'),
	('Cheetah', 'cheetah', 375000, 'super'),
	('Chimera', 'chimera', 38000, 'motorcycles'),
	('Chino', 'chino', 15000, 'muscle'),
	('Chino Luxe', 'chino2', 19000, 'muscle'),
	('Bugatti Chiron', 'chiron17', 10, 'vip'),
	('Cliffhanger', 'cliffhanger', 9500, 'motorcycles'),
	('Cognoscenti Cabrio', 'cogcabrio', 55000, 'coupes'),
	('Cognoscenti', 'cognoscenti', 55000, 'sedans'),
	('Cometa', 'comet2', 150000, 'sports'),
	('Comet 5', 'comet5', 1145000, 'sports'),
	('Comet 6', 'comet6', 150000, 'sports'),
	('Contender', 'contender', 70000, 'suvs'),
	('Mini Cooper', 'cooperworks', 5, 'vip'),
	('Coquette', 'coquette', 65000, 'sports'),
	('Coquette Classic', 'coquette2', 40000, 'sportsclassics'),
	('Coquette BlackFin', 'coquette3', 55000, 'muscle'),
	('Cruiser (velo)', 'cruiser', 510, 'motorcycles'),
	('Cadillac CTS', 'ctsv16', 100000, 'real'),
	('Cyclone', 'cyclone', 1890000, 'super'),
	('Daemon', 'daemon', 11500, 'motorcycles'),
	('Daemon High', 'daemon2', 13500, 'motorcycles'),
	('Defiler', 'defiler', 9800, 'motorcycles'),
	('Ducati Diavel', 'DIAVEL', 5, 'vip'),
	('Dominator', 'dominator', 35000, 'muscle'),
	('Double T', 'double', 28000, 'motorcycles'),
	('Dubsta', 'dubsta', 45000, 'suvs'),
	('Dubsta Luxuary', 'dubsta2', 60000, 'suvs'),
	('Bubsta 6x6', 'dubsta3', 120000, 'offroad'),
	('Dukes', 'dukes', 28000, 'muscle'),
	('Elegy', 'elegy2', 40000, 'sports'),
	('Emperor', 'emperor', 8500, 'sedans'),
	('Enduro', 'enduro', 5500, 'motorcycles'),
	('Entity XF', 'entityxf', 425000, 'super'),
	('Esskey', 'esskey', 4200, 'motorcycles'),
	('Range Rover Evoque', 'evoque', 10, 'vip'),
	('Exemplar', 'exemplar', 32000, 'coupes'),
	('F620', 'f620', 40000, 'coupes'),
	('Ferrari 812 Superfast', 'f812', 1200000, 'real'),
	('BMW F82 M4 2015', 'F82', 170000, 'real'),
	('Ferrari 8T', 'f8t', 10, 'vip'),
	('Faction', 'faction', 20000, 'muscle'),
	('Faction Rider', 'faction2', 30000, 'muscle'),
	('Faction XL', 'faction3', 40000, 'muscle'),
	('Faggio', 'faggio', 1900, 'motorcycles'),
	('Vespa', 'faggio2', 2800, 'motorcycles'),
	('Felon', 'felon', 42000, 'coupes'),
	('Felon GT', 'felon2', 55000, 'coupes'),
	('Feltzer', 'feltzer2', 55000, 'sports'),
	('Stirling GT', 'feltzer3', 65000, 'sportsclassics'),
	('Fiat 600', 'fiat600', 30000, 'real'),
	('Ferrari Enzo', 'fig', 10, 'vip'),
	('Fixter (velo)', 'fixter', 225, 'motorcycles'),
	('FMJ', 'fmj', 185000, 'super'),
	('Fhantom', 'fq2', 17000, 'suvs'),
	('Fugitive', 'fugitive', 12000, 'sedans'),
	('Furore GT', 'furoregt', 45000, 'sports'),
	('Fusilade', 'fusilade', 19000, 'sedans'),
	('Gargoyle', 'gargoyle', 16500, 'motorcycles'),
	('Gauntlet', 'gauntlet', 30000, 'muscle'),
	('Gang Burrito', 'gburrito', 45000, 'vans'),
	('Burrito', 'gburrito2', 29000, 'vans'),
	('Glendale', 'glendale', 6500, 'sedans'),
	('Grabger', 'granger', 50000, 'suvs'),
	('Gresley', 'gresley', 47500, 'suvs'),
	('Toyota Supra 2020', 'grsupra', 10, 'vip'),
	('BMW 2', 'GSXR', 5, 'vip'),
	('GT 500', 'gt500', 785000, 'sportsclassics'),
	('Guardian', 'guardian', 45000, 'offroad'),
	('Hakuchou', 'hakuchou', 31000, 'motorcycles'),
	('Hakuchou Sport', 'hakuchou2', 55000, 'motorcycles'),
	('Hermes', 'hermes', 535000, 'muscle'),
	('Hexer', 'hexer', 12000, 'motorcycles'),
	('Honda Civic', 'hondacivictr', 35000, 'real'),
	('Hotknife', 'hotknife', 125000, 'muscle'),
	('Huntley S', 'huntley', 40000, 'suvs'),
	('Hustler', 'hustler', 625000, 'muscle'),
	('Infernus', 'infernus', 180000, 'super'),
	('Innovation', 'innovation', 23500, 'motorcycles'),
	('Intruder', 'intruder', 7500, 'sedans'),
	('Issi', 'issi2', 10000, 'compacts'),
	('Issi Sport', 'issi7', 30000, 'compacts'),
	('Jackal', 'jackal', 38000, 'coupes'),
	('Jeep WR 12', 'jeep2012', 10, 'vip'),
	('Jester', 'jester', 65000, 'sports'),
	('Jester(Racecar)', 'jester2', 135000, 'sports'),
	('Journey', 'journey', 6500, 'vans'),
	('Kamacho', 'kamacho', 345000, 'offroad'),
	('Harley', 'KE400', 5, 'vip'),
	('Khamelion', 'khamelion', 38000, 'sports'),
	('KTM RC', 'KTMRC', 5, 'vip'),
	('Kuruma', 'kuruma', 30000, 'sports'),
	('Lamborghini Aventador SVJ', 'lamboavj', 10, 'vip'),
	('Landstalker', 'landstalker', 35000, 'suvs'),
	('RE-7B', 'le7b', 325000, 'super'),
	('Maseratti Levante', 'levante', 10, 'vip'),
	('Lamborghini LP700', 'lp700r', 10, 'vip'),
	('Lynx', 'lynx', 40000, 'sports'),
	('BMW M3', 'M3', 140000, 'real'),
	('Mamba', 'mamba', 70000, 'sports'),
	('Manana', 'manana', 12800, 'sportsclassics'),
	('Manchez', 'manchez', 5300, 'motorcycles'),
	('Massacro', 'massacro', 65000, 'sports'),
	('Massacro(Racecar)', 'massacro2', 130000, 'sports'),
	('Mercedez Benz 300sl', 'mb300sl', 75000, 'real'),
	('Mesa', 'mesa', 16000, 'suvs'),
	('Mesa Trail', 'mesa3', 40000, 'suvs'),
	('Ford Mustang GT 2015', 'MGT', 100000, 'real'),
	('Minivan', 'minivan', 13000, 'vans'),
	('Monroe', 'monroe', 55000, 'sportsclassics'),
	('Moonbeam', 'moonbeam', 18000, 'vans'),
	('Moonbeam Rider', 'moonbeam2', 35000, 'vans'),
	('Maseratti Quattroporte GTS', 'mqgts', 10, 'vip'),
	('Lincoln Navigator', 'navigator', 80000, 'real'),
	('Nemesis', 'nemesis', 5800, 'motorcycles'),
	('Neon', 'neon', 1500000, 'sports'),
	('Nightblade', 'nightblade', 35000, 'motorcycles'),
	('Nightshade', 'nightshade', 65000, 'muscle'),
	('9F', 'ninef', 65000, 'sports'),
	('9F Cabrio', 'ninef2', 80000, 'sports'),
	('Chevrolet Nomad 1956', 'nomad56', 35000, 'real'),
	('Omnis', 'omnis', 35000, 'sports'),
	('Cadillac Limusina presidencial', 'onebeast', 20, 'vip'),
	('Oracle XS', 'oracle2', 35000, 'coupes'),
	('Osiris', 'osiris', 160000, 'super'),
	('McLaren P1', 'p1', 10, 'vip'),
	('Porsche Panamera 17 Turbo', 'PANAMERA17TURBO', 10, 'vip'),
	('Panto', 'panto', 10000, 'compacts'),
	('Paradise', 'paradise', 19000, 'vans'),
	('Pariah', 'pariah', 1420000, 'sports'),
	('Volkswagen Passat', 'PASSAT', 5, 'vip'),
	('Patriot', 'patriot', 55000, 'suvs'),
	('PCJ-600', 'pcj', 6200, 'motorcycles'),
	('Penetrator', 'penetrator', 100000, 'sports'),
	('Penumbra', 'penumbra', 28000, 'sports'),
	('Pfister', 'pfister811', 85000, 'super'),
	('Porsche GT3', 'pgt3', 10, 'vip'),
	('Phoenix', 'phoenix', 12500, 'muscle'),
	('Picador', 'picador', 18000, 'muscle'),
	('Pigalle', 'pigalle', 20000, 'sportsclassics'),
	('Volkswagen Polo', 'polo2018', 5, 'vip'),
	('Prairie', 'prairie', 12000, 'compacts'),
	('Premier', 'premier', 8000, 'sedans'),
	('Primo Custom', 'primo2', 14000, 'sedans'),
	('X80 Proto', 'prototipo', 2500000, 'super'),
	('Fiat Punto EVO', 'PUNTO', 22000, 'real'),
	('Audi SQ8', 'q820', 155000, 'real'),
	('Volkswagen Touareg', 'R50', 10, 'vip'),
	('Yamaha R6', 'r6', 5, 'vip'),
	('Audi R8 V10', 'r8ppi', 10, 'vip'),
	('Radius', 'radi', 29000, 'suvs'),
	('raiden', 'raiden', 1375000, 'sports'),
	('Rapid GT', 'rapidgt', 35000, 'sports'),
	('Rapid GT Convertible', 'rapidgt2', 45000, 'sports'),
	('Rapid GT3', 'rapidgt3', 885000, 'sportsclassics'),
	('Rolls Royce Cullinam', 'rculi', 10, 'vip'),
	('Reaper', 'reaper', 150000, 'super'),
	('Rebel', 'rebel2', 35000, 'offroad'),
	('Regina', 'regina', 5000, 'sedans'),
	('Revolter', 'revolter', 1610000, 'sports'),
	('riata', 'riata', 380000, 'offroad'),
	('Rocoto', 'rocoto', 45000, 'suvs'),
	('Rolls Royce Phantom VIII', 'rrphantom', 10, 'vip'),
	('Audi RS7', 'rs7', 140000, 'real'),
	('Ruffian', 'ruffian', 6800, 'motorcycles'),
	('Rumpo', 'rumpo', 15000, 'vans'),
	('Rumpo Trail', 'rumpo3', 19500, 'vans'),
	('Mercedez Benz S500', 'S500W222', 10, 'vip'),
	('Sabre Turbo', 'sabregt', 20000, 'muscle'),
	('Sabre GT', 'sabregt2', 25000, 'muscle'),
	('Sanchez', 'sanchez', 5300, 'motorcycles'),
	('Sanchez Sport', 'sanchez2', 5300, 'motorcycles'),
	('Sanctus', 'sanctus', 25000, 'motorcycles'),
	('Sandking', 'sandking', 55000, 'offroad'),
	('SC 1', 'sc1', 1603000, 'super'),
	('Schafter', 'schafter2', 25000, 'sedans'),
	('Schafter V12', 'schafter3', 50000, 'sports'),
	('Scorcher (velo)', 'scorcher', 280, 'motorcycles'),
	('Seminole', 'seminole', 25000, 'suvs'),
	('McLaren Senna', 'senna', 10, 'vip'),
	('Sentinel', 'sentinel', 32000, 'coupes'),
	('Sentinel XS', 'sentinel2', 40000, 'coupes'),
	('Sentinel3', 'sentinel3', 650000, 'sports'),
	('Seven 70', 'seven70', 39500, 'sports'),
	('ETR1', 'sheava', 220000, 'super'),
	('Shotaro Concept', 'shotaro', 320000, 'motorcycles'),
	('Rolls Royce Silver 1967', 'silver67', 10, 'vip'),
	('Nissan Skyline', 'SKYLINE', 1000000, 'real'),
	('Slam Van', 'slamvan3', 11500, 'muscle'),
	('Sovereign', 'sovereign', 22000, 'motorcycles'),
	('Audi SQ7', 'SQ72016', 150000, 'real'),
	('Stinger', 'stinger', 80000, 'sportsclassics'),
	('Stinger Gt', 'stingergt', 55000, 'sportsclassics'),
	('Streiter', 'streiter', 500000, 'sports'),
	('Stretch', 'stretch', 300000, 'sedans'),
	('Sultan', 'sultan', 42000, 'sedans'),
	('Sultan Classic', 'sultan2', 50000, 'sedans'),
	('Sultan RS', 'sultanrs', 65000, 'super'),
	('Super Diamond', 'superd', 130000, 'sedans'),
	('Surano', 'surano', 50000, 'sports'),
	('Surfer', 'surfer', 12000, 'vans'),
	('T20', 't20', 1000000, 'super'),
	('Tailgater', 'tailgater', 30000, 'sedans'),
	('Drift Tampa', 'tampa2', 80000, 'sports'),
	('Lamborghini Terzo Milenio', 'terzo', 10, 'vip'),
	('Thrust', 'thrust', 24000, 'motorcycles'),
	('Jeep TrackHawk', 'trhawk', 90000, 'real'),
	('Tri bike (velo)', 'tribike3', 520, 'motorcycles'),
	('Pagani Zonda Tricolore', 'tricolore', 10, 'vip'),
	('Trophy Truck', 'trophytruck', 60000, 'offroad'),
	('Trophy Truck Limited', 'trophytruck2', 80000, 'offroad'),
	('Tropos', 'tropos', 40000, 'sports'),
	('Audi TT', 'tts', 5, 'vip'),
	('Turismo R', 'turismor', 350000, 'super'),
	('Renault Twingo', 'twingo', 10000, 'real'),
	('Tyrus', 'tyrus', 600000, 'super'),
	('Lamborghini Urus', 'urus', 200000, 'real'),
	('Vacca', 'vacca', 120000, 'super'),
	('Vader', 'vader', 7200, 'motorcycles'),
	('Verlierer', 'verlierer2', 70000, 'sports'),
	('Vigero', 'vigero', 12500, 'muscle'),
	('Virgo', 'virgo', 14000, 'muscle'),
	('Visione', 'visione', 2250000, 'super'),
	('Voodoo', 'voodoo', 7200, 'muscle'),
	('Vortex', 'vortex', 9800, 'motorcycles'),
	('Warrener', 'warrener', 4000, 'sedans'),
	('Washington', 'washington', 9000, 'sedans'),
	('Windsor', 'windsor', 95000, 'coupes'),
	('Windsor Drop', 'windsor2', 125000, 'coupes'),
	('Woflsbane', 'wolfsbane', 9000, 'motorcycles'),
	('Rolls Royce Wraith', 'wraith', 10, 'vip'),
	('BMW X5', 'X5E53', 100000, 'real'),
	('BMW X6M', 'X6M', 135000, 'real'),
	('Cadillac XLRV', 'xlrv', 107000, 'real'),
	('XLS', 'xls', 32000, 'suvs'),
	('Fiat 595 SS', 'yFiat595ssA', 30000, 'real'),
	('Yosemite', 'yosemite', 485000, 'muscle'),
	('Youga', 'youga', 10800, 'vans'),
	('Youga Luxuary', 'youga2', 14500, 'vans'),
	('Zentorno', 'zentorno', 1500000, 'super'),
	('Zion', 'zion', 36000, 'coupes'),
	('Zion Cabrio', 'zion2', 45000, 'coupes'),
	('Zombie', 'zombiea', 9500, 'motorcycles'),
	('Zombie Luxuary', 'zombieb', 12000, 'motorcycles'),
	('Z-Type', 'ztype', 220000, 'sportsclassics');
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;

-- Volcando estructura para tabla base.vehicles_for_sale
CREATE TABLE IF NOT EXISTS `vehicles_for_sale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seller` varchar(50) NOT NULL,
  `vehicleProps` longtext NOT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla base.vehicles_for_sale: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `vehicles_for_sale` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehicles_for_sale` ENABLE KEYS */;

-- Volcando estructura para tabla base.vehicle_categories
CREATE TABLE IF NOT EXISTS `vehicle_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla base.vehicle_categories: ~13 rows (aproximadamente)
/*!40000 ALTER TABLE `vehicle_categories` DISABLE KEYS */;
INSERT IGNORE INTO `vehicle_categories` (`name`, `label`) VALUES
	('compacts', 'Compactos'),
	('coupes', 'Cupés'),
	('motorcycles', 'Motos'),
	('muscle', 'Muscle'),
	('offroad', 'Off Road'),
	('real', 'Vehiculos Reales'),
	('sedans', 'Sedanes'),
	('sports', 'Sport'),
	('sportsclassics', 'Sports Clasicos'),
	('super', 'Super'),
	('suvs', 'SUVs'),
	('vans', 'Furgos'),
	('vip', 'Vip');
/*!40000 ALTER TABLE `vehicle_categories` ENABLE KEYS */;

-- Volcando estructura para tabla base.vehicle_sold
CREATE TABLE IF NOT EXISTS `vehicle_sold` (
  `client` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `soldby` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla base.vehicle_sold: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `vehicle_sold` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehicle_sold` ENABLE KEYS */;

-- Volcando estructura para tabla base.weashops
CREATE TABLE IF NOT EXISTS `weashops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zone` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla base.weashops: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `weashops` DISABLE KEYS */;
INSERT IGNORE INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
	(1, 'GunShop', 'WEAPON_PISTOL', 70000),
	(2, 'GunShop', 'WEAPON_MACHETE', 11000),
	(3, 'GunShop', 'WEAPON_BAT', 10000);
/*!40000 ALTER TABLE `weashops` ENABLE KEYS */;

-- Volcando estructura para tabla base.yellowpages_posts
CREATE TABLE IF NOT EXISTS `yellowpages_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `likes` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `FK_yellowpages_posts_twitter_accounts` (`authorId`),
  CONSTRAINT `FK_yellowpages_posts_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla base.yellowpages_posts: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `yellowpages_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `yellowpages_posts` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
