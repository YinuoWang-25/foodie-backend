DROP TABLE IF EXISTS `foodie`.`order_item`;
CREATE TABLE `foodie`.`order_item` (
  `uuid` BINARY(16) NOT NULL,
  `offer_uuid` BINARY(16) NOT NULL,
  `order_uuid` BINARY(16) NOT NULL,
  `offer_spec_uuid` BINARY(16) NOT NULL,
  `offer_name` VARCHAR(45) NOT NULL,
  `price` VARCHAR(45) NOT NULL,
  `counts` VARCHAR(32) NOT NULL,
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `updated_at` DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uuid`));

ALTER TABLE `foodie`.`order_item`
ADD INDEX `oder_item_idx` (`order_uuid` ASC) VISIBLE,
ADD INDEX `offer_id_idx` (`offer_uuid` ASC) VISIBLE,
ADD INDEX `offer_spec_idx` (`offer_spec_uuid` ASC) VISIBLE;
;
ALTER TABLE `foodie`.`order_item`
ADD CONSTRAINT `oder_id`
  FOREIGN KEY (`order_uuid`)
  REFERENCES `foodie`.`order` (`uuid`)
  ON DELETE CASCADE
  ON UPDATE CASCADE,
ADD CONSTRAINT `offer_id`
  FOREIGN KEY (`offer_uuid`)
  REFERENCES `foodie`.`offer_metadata` (`uuid`)
  ON DELETE CASCADE
  ON UPDATE CASCADE,
ADD CONSTRAINT `offer_spec`
  FOREIGN KEY (`offer_spec_uuid`)
  REFERENCES `foodie`.`offer_spec` (`uuid`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;