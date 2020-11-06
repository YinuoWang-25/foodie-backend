DROP TABLE IF EXISTS `foodie`.`order_status`;
CREATE TABLE `foodie`.`order_status` (
  `uuid` BINARY(16) NOT NULL,
  `order_uuid` BINARY(16) NOT NULL,
  `order_status` VARCHAR(45) NOT NULL,
  `created_time` DATETIME NOT NULL,
  `payment_time` DATETIME NOT NULL,
  `delivered_time` DATETIME NOT NULL,
  `success_time` DATETIME NOT NULL,
  `close_time` DATETIME NOT NULL,
  `comment_time` DATETIME NOT NULL,
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `updated_at` DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uuid`));

ALTER TABLE `foodie`.`order_status`
ADD INDEX `order_status_idx` (`order_uuid` ASC) VISIBLE;
;
ALTER TABLE `foodie`.`order_status`
ADD CONSTRAINT `order_status`
  FOREIGN KEY (`order_uuid`)
  REFERENCES `foodie`.`order` (`uuid`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;