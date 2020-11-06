DROP TABLE IF EXISTS `foodie`.`offer_spec`;
CREATE TABLE `foodie`.`offer_spec` (
  `uuid` BINARY(16) NOT NULL,
  `offer_uuid` BINARY(16) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `inventory` INT NOT NULL,
  `discount` DECIMAL(4,2) NOT NULL,
  `original_price` VARCHAR(45) NOT NULL,
  `discounted_price` VARCHAR(45) NOT NULL,
  `currency` VARCHAR(45) NOT NULL,
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `updated_at` DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uuid`));

ALTER TABLE `foodie`.`offer_spec`
ADD INDEX `offer_spec_idx` (`offer_uuid` ASC) VISIBLE;
;
ALTER TABLE `foodie`.`offer_spec`
ADD CONSTRAINT `offer_spec`
  FOREIGN KEY (`offer_uuid`)
  REFERENCES `foodie`.`offer_metadata` (`uuid`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;

