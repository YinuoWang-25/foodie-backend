DROP TABLE IF EXISTS `foodie`.`offer_info`;
CREATE TABLE `foodie`.`offer_info` (
  `uuid` BINARY(16) NOT NULL,
  `offer_uuid` BINARY(16) NOT NULL,
  `produced_at` VARCHAR(45) NOT NULL,
  `best_before` DATETIME NOT NULL,
  `brand` VARCHAR(45) NOT NULL,
  `factory_name` VARCHAR(45) NOT NULL,
  `factory_address` VARCHAR(255) NOT NULL,
  `packaging_method` VARCHAR(32) NOT NULL,
  `storage_method` VARCHAR(32) NOT NULL,
  `use_instruction` VARCHAR(255) NOT NULL,
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `updated_at` DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uuid`));

ALTER TABLE `foodie`.`offer_info`
ADD INDEX `offer_info_idx` (`offer_uuid` ASC) VISIBLE;
;
ALTER TABLE `foodie`.`offer_info`
ADD CONSTRAINT `offer_info`
  FOREIGN KEY (`offer_uuid`)
  REFERENCES `foodie`.`offer_metadata` (`uuid`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;