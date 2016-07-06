-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema friendsdb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema friendsdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `friendsdb` DEFAULT CHARACTER SET utf8 ;
USE `friendsdb` ;

-- -----------------------------------------------------
-- Table `friendsdb`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `friendsdb`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NULL,
  `alias` VARCHAR(255) NULL,
  `email` VARCHAR(255) NULL,
  `pw_hash` VARCHAR(255) NULL,
  `dob` DATE NULL,
  `admin` INT(1) NULL DEFAULT 0,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  `friend` VARCHAR(255) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `friendsdb`.`friends`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `friendsdb`.`friends` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `friend` VARCHAR(255) NULL,
  `member` VARCHAR(255) NULL,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  `user_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_friends_users_idx` (`user_id` ASC),
  CONSTRAINT `fk_friends_users`
    FOREIGN KEY (`user_id`)
    REFERENCES `friendsdb`.`users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
