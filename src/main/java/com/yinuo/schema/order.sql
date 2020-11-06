DROP TABLE IF EXISTS `foodie`.`order`;
CREATE TABLE `foodie`.`order` (
  `uuid` BINARY(16) NOT NULL,
  `offer_uuid` VARCHAR(45) NOT NULL,
  `customer_uuid` BINARY(16) NOT NULL,
  `customer_name` VARCHAR(45) NOT NULL,
  `customer_address` VARCHAR(45) NOT NULL,
  `customer_phone_number` VARCHAR(32) NOT NULL,
  `item_amount` VARCHAR(32) NOT NULL,
  `tax_amount` VARCHAR(32) NOT NULL,
  `original_total_amount` VARCHAR(32) NOT NULL,
  `discount_amount` VARCHAR(32) NOT NULL,
  `paid_total_amount` VARCHAR(32) NOT NULL,
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `updated_at` DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uuid`));