DROP TABLE IF EXISTS `foodie`.`customer_address`;
CREATE TABLE `foodie`.`customer_address` (
  `uuid` BINARY(16) NOT NULL,
  `customer_uuid` BINARY(16) NOT NULL,
  `is_default` VARCHAR(32) NOT NULL ,
  `country` VARCHAR(32) NOT NULL ,
  `state` VARCHAR(32) NOT NULL ,
  `city` VARCHAR(32) NOT NULL ,
  `detail` VARCHAR(255) NOT NULL ,
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `updated_at` DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uuid`));