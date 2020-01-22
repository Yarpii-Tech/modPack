UPDATE `Traders_DATA` SET `item` = '["75Rnd_545x39_RPK",1]' WHERE `item` = '["45Rnd_545x39_RPK",1]';
UPDATE character_data SET Backpack = REPLACE(Backpack, '"45Rnd_545x39_RPK"', '"75Rnd_545x39_RPK"') WHERE INSTR(Backpack, '"45Rnd_545x39_RPK"') > 0;
UPDATE character_data SET Inventory = REPLACE(Inventory, '"45Rnd_545x39_RPK"', '"75Rnd_545x39_RPK"') WHERE INSTR(Inventory, '"45Rnd_545x39_RPK"') > 0;
UPDATE object_data SET Inventory = REPLACE(Inventory, '"45Rnd_545x39_RPK"', '"75Rnd_545x39_RPK"') WHERE INSTR(Inventory, '"45Rnd_545x39_RPK"') > 0;

ALTER TABLE `garage` ADD `serverKey` varchar(10) NOT NULL DEFAULT 'old' AFTER `Colour2`;
ALTER TABLE `garage` ADD `ObjUID` varchar(20) NOT NULL DEFAULT 'old' AFTER `serverKey`;
ALTER TABLE `garage` ADD `StorageCounts` varchar(30) NOT NULL DEFAULT '[0,0,0]' AFTER `CharacterID`;
ALTER TABLE `garage` ADD `DateMaintained` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP AFTER `DateStored`;

ALTER TABLE `garage` MODIFY COLUMN `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
ALTER TABLE `garage` MODIFY COLUMN `CharacterID` bigint(20) unsigned NOT NULL DEFAULT '0';

DROP EVENT IF EXISTS `RemoveOldVG`;
