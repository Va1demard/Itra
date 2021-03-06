-- MySQL Workbench Forward Engineering

SET
@OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET
@OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET
@OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8;
USE
`mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`user`
(
    `id` BIGINT
(
    100
) NOT NULL AUTO_INCREMENT,
    `username` VARCHAR
(
    200
) NOT NULL,
    `password` VARCHAR
(
    50
) NOT NULL,
    `email` VARCHAR
(
    200
) NOT NULL,
    `registrationDate` DATETIME NOT NULL,
    `last` DATETIME NULL,
    `status` TINYINT
(
    2
) NOT NULL,
    PRIMARY KEY
(
    `id`
),
    UNIQUE INDEX `id_UNIQUE`
(
    `id` ASC
) VISIBLE,
    UNIQUE INDEX `username_UNIQUE`
(
    `username` ASC
) VISIBLE)
    ENGINE = InnoDB;


SET
SQL_MODE=@OLD_SQL_MODE;
SET
FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET
UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
