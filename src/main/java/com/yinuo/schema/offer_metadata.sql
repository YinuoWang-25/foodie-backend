DROP TABLE IF EXISTS `foodie`.`offer_metadata`;
CREATE TABLE `foodie`.`offer_metadata` (
  `uuid` BINARY(16) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `category_uuid` BINARY(16) NOT NULL,
  `root_category_uuid` BINARY(16) NOT NULL,
  `supplier_uuid` BINARY(16) NOT NULL,
  `sell_counts` INT NOT NULL,
  `status` INT NOT NULL,
  `desc` TEXT NOT NULL,
  `effective_from` DATETIME NOT NULL,
  `expires_at` DATETIME NOT NULL,
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `updated_at` DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uuid`));