DROP TABLE IF EXISTS `foodie`.`order_item`;
CREATE TABLE `foodie`.`order_item` (
  `uuid` BINARY(16) NOT NULL,
  `offer_uuid` BINARY(16) NOT NULL,
  `order_uuid` BINARY(16) NOT NULL,
  `order_spec_uuid` BINARY(16) NOT NULL,
  `offer_name` VARCHAR(45) NOT NULL,
  `price` VARCHAR(45) NOT NULL,
  `counts` VARCHAR(32) NOT NULL,
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `updated_at` DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uuid`));