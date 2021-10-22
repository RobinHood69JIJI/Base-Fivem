USE `base`;

INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('boxpistol', 'Cargador de pistola', 1, 0, 1),
	('boxsmg', 'Cargador de subfusil', 1, 0, 1),
	('boxshot', 'Cargador de escopeta', 1, 0, 1),
	('boxrifle', 'Cargador de rifle', 1, 0, 1),
	('boxsniper', 'Cargador de francotirador', 1, 0, 1),
	('bulletproof', 'Chaleco antibalas', 1, 0, 1),
	('drill', 'Drill', 1, 0, 1),
	('firework', 'Fuegos artificiales', 1, 0, 1),
	('lockpick', 'Ganzua', 1, 0, 1),
	('oxygenmask', 'Máscara de oxigeno', 1, 0, 1),
	('weakit', 'Kit de armas', 1, 0, 1)
;

INSERT INTO `shops` (store, item, price) VALUES
	('ExtraItemsShop', 'boxpistol', 14),
	('ExtraItemsShop', 'boxsmg', 14),
	('ExtraItemsShop', 'boxshot', 9),
	('ExtraItemsShop', 'boxrifle', 12),
	('ExtraItemsShop', 'bulletproof', 300),
	('ExtraItemsShop', 'drill', 180),
	('ExtraItemsShop', 'firework', 15),
	('ExtraItemsShop', 'lockpick', 20),
	('ExtraItemsShop', 'oxygenmask', 400),
	('ExtraItemsShop', 'weakit', 75)
;
