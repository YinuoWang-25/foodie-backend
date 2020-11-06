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

ALTER TABLE `foodie`.`offer_feedback`
ADD INDEX `offer_feedback_idx` (`offer_uuid` ASC) VISIBLE,
ADD INDEX `offer_feedback_customer_idx` (`customer_uuid` ASC) VISIBLE;
;
ALTER TABLE `foodie`.`offer_feedback`
ADD CONSTRAINT `offer_feedback`
  FOREIGN KEY (`offer_uuid`)
  REFERENCES `foodie`.`offer_metadata` (`uuid`)
  ON DELETE CASCADE
  ON UPDATE CASCADE,
ADD CONSTRAINT `offer_feedback_customer`
  FOREIGN KEY (`customer_uuid`)
  REFERENCES `foodie`.`customer` (`uuid`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;
