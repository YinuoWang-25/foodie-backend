DROP TABLE IF EXISTS `foodie`.`offer_photo`;
CREATE TABLE `foodie`.`offer_photo` (
  `uuid` BINARY(16) NOT NULL,
  `offer_uuid` BINARY(16) NOT NULL,
  `url` VARCHAR(512) NOT NULL,
  `cdn_url` VARCHAR(512) NOT NULL,
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `updated_at` DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uuid`));

ALTER TABLE `foodie`.`offer_photo`
ADD INDEX `offer_photo_idx` (`offer_uuid` ASC) VISIBLE;
;
ALTER TABLE `foodie`.`offer_photo`
ADD CONSTRAINT `offer_photo`
  FOREIGN KEY (`offer_uuid`)
  REFERENCES `foodie`.`offer_metadata` (`uuid`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;