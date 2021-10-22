--#################################
--#                               #
--# CONFIG. BY -AGUS. AP LEAKS // # 
--#                               #
--#################################

USE `es_extended`;

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_mechanic', 'Mecanico', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_mechanic', 'Mecanico', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_mechanic', 'Mecanico', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('mechanic', 'Mecanico')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('mechanic',0,'recrue','Recluta',1200,'{}','{}'),
	('mechanic',1,'novice','Ayudante',1500,'{}','{}'),
	('mechanic',2,'experimente','Experimentado',2000,'{}','{}'),
	('mechanic',3,'chief',"SubJefe",2400,'{}','{}'),
	('mechanic',4,'boss','Jefe',2800,'{}','{}')
;

INSERT INTO `items` (name, label, weight) VALUES
	('gazbottle', 'Botella de Gas', 2),
	('fixtool', 'Herramientas de reparacion', 2),
	('carotool', 'Herramientas de carroseria', 2),
	('blowpipe', 'Soplete', 2),
	('fixkit', 'Kit de reparacion', 5),
	('carokit', 'Kit de carroseria', 5)
;
