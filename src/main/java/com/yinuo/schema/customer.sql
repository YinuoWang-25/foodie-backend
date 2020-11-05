DROP TABLE IF EXISTS `foodie`.`customer`;
CREATE TABLE `foodie`.`customer` (
  `uuid` BINARY(16) NOT NULL,
  `username` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `display_name` VARCHAR(45) NULL,
  `avadar` VARCHAR(255) NULL,
  `phone_number` VARCHAR(45) NULL,
  `email_address` VARCHAR(45) NULL,
  `sex` ENUM('female', 'male', 'unknown') NULL,
  `birthday` VARCHAR(45) NULL,
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `updated_at` DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uuid`));
