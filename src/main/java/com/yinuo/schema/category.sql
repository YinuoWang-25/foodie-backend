DROP TABLE IF EXISTS `foodie`.`category`;
CREATE TABLE `foodie`.`category` (
  `uuid` BINARY(16) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `type_uuid` BINARY(16) NOT NULL,
  `father_uuid` BINARY(16) NOT NULL,
  `logo` VARCHAR(64) NULL,
  `slogan` VARCHAR(64) NULL,
  `photo` VARCHAR(64) NULL,
  `bg_color` VARCHAR(32) NULL,
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `updated_at` DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uuid`));
