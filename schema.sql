-- MySQL Workbench Synchronization
-- Generated: 2018-09-21 15:08
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: Lucas

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

ALTER SCHEMA `etudiant`  DEFAULT CHARACTER SET utf8  DEFAULT COLLATE utf8_general_ci ;

ALTER TABLE `etudiant`.`assessment` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci , ENGINE = InnoDB ;

ALTER TABLE `etudiant`.`enrolment` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci , ENGINE = InnoDB ;

ALTER TABLE `etudiant`.`module` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci , ENGINE = InnoDB ;

ALTER TABLE `etudiant`.`student` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci , ENGINE = InnoDB ;

ALTER TABLE `etudiant`.`year` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci , ENGINE = InnoDB ;

ALTER TABLE `etudiant`.`assessment` 
ADD CONSTRAINT `fk_assessment_module1`
  FOREIGN KEY (`id_module`)
  REFERENCES `etudiant`.`module` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_assessment_student1`
  FOREIGN KEY (`id_student`)
  REFERENCES `etudiant`.`student` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `etudiant`.`enrolment` 
ADD CONSTRAINT `fk_enrolment_student1`
  FOREIGN KEY (`id_student`)
  REFERENCES `etudiant`.`student` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_enrolment_year1`
  FOREIGN KEY (`id_year`)
  REFERENCES `etudiant`.`year` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `etudiant`.`module` 
ADD CONSTRAINT `fk_module_year`
  FOREIGN KEY (`year_id`)
  REFERENCES `etudiant`.`year` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;



































