-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema oficina
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `oficina` ;

-- -----------------------------------------------------
-- Schema oficina
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `oficina` DEFAULT CHARACTER SET latin1 ;
USE `oficina` ;

-- -----------------------------------------------------
-- Table `oficina`.`TBL_cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `oficina`.`TBL_cliente` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(50) NOT NULL,
  `data_nascimento` DATE NOT NULL,
  `telefone` VARCHAR(20) NOT NULL,
  `cpf` CHAR(11) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 8
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `oficina`.`TBL_funcionario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `oficina`.`TBL_funcionario` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(50) NOT NULL,
  `data_nascimento` DATE NOT NULL,
  `telefone` VARCHAR(20) NOT NULL,
  `cpf` CHAR(11) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 16
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `oficina`.`TBL_marca`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `oficina`.`TBL_marca` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 9
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `oficina`.`TBL_modelo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `oficina`.`TBL_modelo` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(50) NOT NULL,
  `id_marca` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `id_marca` (`id_marca` ASC),
  CONSTRAINT `modelo_ibfk_1`
    FOREIGN KEY (`id_marca`)
    REFERENCES `oficina`.`TBL_marca` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 15
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `oficina`.`TBL_veiculo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `oficina`.`TBL_veiculo` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `placa` CHAR(8) NOT NULL,
  `ano` CHAR(4) NOT NULL,
  `cor` VARCHAR(20) NOT NULL,
  `id_dono` INT(11) NOT NULL,
  `id_modelo` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `id_dono` (`id_dono` ASC),
  INDEX `id_modelo` (`id_modelo` ASC),
  CONSTRAINT `veiculo_ibfk_1`
    FOREIGN KEY (`id_dono`)
    REFERENCES `oficina`.`TBL_cliente` (`id`),
  CONSTRAINT `veiculo_ibfk_2`
    FOREIGN KEY (`id_modelo`)
    REFERENCES `oficina`.`TBL_modelo` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 20
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `oficina`.`TBL_ordem_servico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `oficina`.`TBL_ordem_servico` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `data_os` DATE NOT NULL,
  `id_veiculo` INT(11) NOT NULL,
  `descricao_defeito` TEXT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `id_veiculo` (`id_veiculo` ASC),
  CONSTRAINT `ordem_servico_ibfk_1`
    FOREIGN KEY (`id_veiculo`)
    REFERENCES `oficina`.`TBL_veiculo` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `oficina`.`TBL_produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `oficina`.`TBL_produto` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(50) NOT NULL,
  `preco` DOUBLE NOT NULL,
  `qtde_estoque` INT(11) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `oficina`.`TBL_os_produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `oficina`.`TBL_os_produto` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `id_os` INT(11) NOT NULL,
  `id_produto` INT(11) NOT NULL,
  `qtde` INT(11) NOT NULL,
  `preco` DOUBLE NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `id_os` (`id_os` ASC),
  INDEX `id_produto` (`id_produto` ASC),
  CONSTRAINT `os_produto_ibfk_1`
    FOREIGN KEY (`id_os`)
    REFERENCES `oficina`.`TBL_ordem_servico` (`id`),
  CONSTRAINT `os_produto_ibfk_2`
    FOREIGN KEY (`id_produto`)
    REFERENCES `oficina`.`TBL_produto` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `oficina`.`TBL_servico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `oficina`.`TBL_servico` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(50) NOT NULL,
  `preco` DOUBLE NOT NULL,
  `tempo_estimado` INT(11) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 9
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `oficina`.`TBL_os_servico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `oficina`.`TBL_os_servico` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `id_os` INT(11) NOT NULL,
  `id_servico` INT(11) NOT NULL,
  `tempo_realizado` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `id_os` (`id_os` ASC),
  INDEX `id_servico` (`id_servico` ASC),
  CONSTRAINT `os_servico_ibfk_1`
    FOREIGN KEY (`id_os`)
    REFERENCES `oficina`.`TBL_ordem_servico` (`id`),
  CONSTRAINT `os_servico_ibfk_2`
    FOREIGN KEY (`id_servico`)
    REFERENCES `oficina`.`TBL_servico` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = latin1;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
