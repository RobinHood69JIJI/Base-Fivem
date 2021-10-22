USE `base`;

CREATE TABLE `weashops` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`zone` varchar(255) NOT NULL,
	`item` varchar(255) NOT NULL,
	`price` int(11) NOT NULL,

	PRIMARY KEY (`id`)
);


INSERT INTO `weashops` (`zone`, `item`, `price`) VALUES
	('GunShop','WEAPON_PISTOL', 60000),
	('GunShop', 'WEAPON_MACHETE', 10000),
	('GunShop', 'WEAPON_BAT', 9000),

;
