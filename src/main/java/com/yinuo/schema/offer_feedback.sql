DROP TABLE IF EXISTS `foodie`.`offer_feedback`;
CREATE TABLE `foodie`.`offer_feedback` (
  `uuid` BINARY(16) NOT NULL,
  `customer_uuid` BINARY(16) NOT NULL,
  `offer_uuid` BINARY(16) NOT NULL,
  `offer_name` VARCHAR(32) NOT NULL,
  `comment` VARCHAR(255) NOT NULL,
  `rating` INT NOT NULL,
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `updated_at` DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uuid`));