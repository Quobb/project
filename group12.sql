/*
SQLyog Community v12.4.3 (32 bit)
MySQL - 10.4.24-MariaDB : Database - PHARMARCY_1
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`PHARMARCY_1` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PHARMARCY_1`;

/*Table structure for table `branch` */

DROP TABLE IF EXISTS `branch`;

CREATE TABLE `branch` (
  `brnch_nme` varchar(40) DEFAULT NULL,
  `brnch_id` varchar(40) NOT NULL,
  `brnch_loct` varchar(40) DEFAULT NULL,
  `compy_id` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`brnch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `branch` */

insert  into `branch`(`brnch_nme`,`brnch_id`,`brnch_loct`,`compy_id`) values 
('GHANA-BRNCH','12463485','GHANA','03512600386');

/*Table structure for table `company` */

DROP TABLE IF EXISTS `company`;

CREATE TABLE `company` (
  `compy_name` varchar(40) DEFAULT NULL,
  `compy_id` varchar(40) NOT NULL,
  `compy_loct` varchar(40) DEFAULT NULL,
  `compy_add` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`compy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `company` */

insert  into `company`(`compy_name`,`compy_id`,`compy_loct`,`compy_add`) values 
('jJESS COMPANY','03512600386','TEMA','C1/SITE 5/17 STREET');

/*Table structure for table `dependacy` */

DROP TABLE IF EXISTS `dependacy`;

CREATE TABLE `dependacy` (
  `fname` varchar(40) DEFAULT NULL,
  `lname` varchar(40) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `dp_id` varchar(40) NOT NULL,
  `contact` varchar(40) DEFAULT NULL,
  `dob` varchar(40) DEFAULT NULL,
  `adress` varchar(40) DEFAULT NULL,
  `emply_id` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`dp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `dependacy` */

insert  into `dependacy`(`fname`,`lname`,`gender`,`dp_id`,`contact`,`dob`,`adress`,`emply_id`) values 
('OBED','ARMAH','M','400871','0206544138','25/05/80','GJ-06-11','0021123'),
('FELIX','ASARE','M','413893','0543169847','14/06/1978','GK-08-061','0021123'),
('STELLA','ANDOH','F','4318862','0545802687','03/08/1982','CP-054-12','0021321'),
('FAITH','BUATSI','F','445691','0241518397','30/01/1985','LM-04-35','0021321'),
('FRDRICK','ASAMOAH','M','469712','0267330974','18/05/1991','KP-061-21','0021426'),
('ISSAC','NEWTON','M','478783','0271879789','14/04/1998','GR-0110-45','0021426');

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `emply_fname` varchar(40) DEFAULT NULL,
  `emply_lname` varchar(40) DEFAULT NULL,
  `emply_id` varchar(40) NOT NULL,
  `emply_cnt` varchar(40) DEFAULT NULL,
  `emply_add` varchar(40) DEFAULT NULL,
  `emply_DOB` varchar(40) DEFAULT NULL,
  `brnch_id` varchar(40) DEFAULT NULL,
  `compy_id` varchar(50) DEFAULT NULL,
  `ms_id` varchar(50) DEFAULT NULL,
  `login_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`emply_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `employee` */

insert  into `employee`(`emply_fname`,`emply_lname`,`emply_id`,`emply_cnt`,`emply_add`,`emply_DOB`,`brnch_id`,`compy_id`,`ms_id`,`login_id`) values 
('CHRISTABLE','ASANTE','0021123','0243922920','B4/21','19/01/199','12463485','0351260038','0010401263','413621'),
('GLORIA','BOATENG','0021141','0275831364','C7/241','06/03/1987','12463485','0351260038','4412613728','727261'),
('FRANCIS','AMOAH','0021321','0594136215','F4/713','31/05/1995','12463485','0351260038','0103603603','215000'),
('RICHMOND','YEBOAH','0021362','0261316415','F3/216','04/08/1991','12463485','0351260038','0321080600','386542'),
('EMMAMUEL','KISSIEDU','0021413','0554263141','JK/41316','06/12/1998','12463485','0351260038','0321080600','070736'),
('SYVESTER','ANANE','0021426','0244631842','Z3/8412','12/11/1985',NULL,'0351260038','0321080041','202050');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `login_name` varchar(40) DEFAULT NULL,
  `login_id` varchar(40) NOT NULL,
  `login_email` varchar(40) DEFAULT NULL,
  `login_role` varchar(40) DEFAULT NULL,
  `login_pass` varchar(40) DEFAULT NULL,
  `emply_id` varchar(40) DEFAULT NULL,
  `brnch_id` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `login` */

insert  into `login`(`login_name`,`login_id`,`login_email`,`login_role`,`login_pass`,`emply_id`,`brnch_id`) values 
('EMMANUEL','070736','emmanuel123@gmaiil.com','MANAGER','678912345','0021413','12463485'),
('SYLVESTER','202050','sylvester1233@gmail..com','CEO','123456789','0021426','12463485'),
('FRANCIS','215000','frncis123@gmail.com','P.M','234567891','0021321','12463485'),
('RICHMOND','386542','richmond123@gmail.com','DISTRICT_CORDINATOR','567891234','0021362','12463485'),
('CHRISTABLE','413621','chrristable123@gmail.com','SECETARY','345678912','0021123','12463485'),
('GLORIA','727361','gloria123@gmail.com','PERSONAL-ASSISTANCE','456789123','0021141','12463485');

/*Table structure for table `medical_shop` */

DROP TABLE IF EXISTS `medical_shop`;

CREATE TABLE `medical_shop` (
  `ms_name` varchar(40) DEFAULT NULL,
  `ms_id` varchar(40) NOT NULL,
  `ms_typ` varchar(40) DEFAULT NULL,
  `ms_add` varchar(40) DEFAULT NULL,
  `brnch_id` varchar(40) DEFAULT NULL,
  `emply_id` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ms_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `medical_shop` */

insert  into `medical_shop`(`ms_name`,`ms_id`,`ms_typ`,`ms_add`,`brnch_id`,`emply_id`) values 
('CHEMIST-PHARMACY','00010401263','INDUSTRIAL-PHARMACY','HO/AHOE','12463485','0021321'),
('LOVE-PHARMACY','0103603603','COMPOUNDING-PHARMACY','HOHOE','12463485','0021123'),
('TRUTH-PHARMACY','0321080041','HOSPITAL-PHARMACY','TEMA//C1','12463485','0021426'),
('CITY-PHARMACY','0340806000','HOSPITAL-PHARMACY','TEMA/C5','12463485','0021426'),
('ULTRA-PHARMACY','4412613728','COMPOUNDING-PHARMACY','ACCRA/RAWLINGS PARK','12463485','0021123');

/*Table structure for table `medicine` */

DROP TABLE IF EXISTS `medicine`;

CREATE TABLE `medicine` (
  `med_name` varchar(40) DEFAULT NULL,
  `med_id` varchar(40) NOT NULL,
  `med_qty` varchar(40) DEFAULT NULL,
  `med_desc` varchar(40) DEFAULT NULL,
  `med_compy` varchar(40) DEFAULT NULL,
  `med_cost` varchar(40) DEFAULT NULL,
  `brnch_id` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`med_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `medicine` */

insert  into `medicine`(`med_name`,`med_id`,`med_qty`,`med_desc`,`med_compy`,`med_cost`,`brnch_id`) values 
('GEBEDOL','0012578101','4','WHITE','TEDDY\'S COMPANY','2','12463485'),
('PARACETAMOL','0021375181','6','CAPSULES','DERRICK\'S COMPANYS','1','12463485'),
('PANADOL','0024531227','5','WHITE&BLUE','ELI\'S COMPANY','5','12463485'),
('COLODUIM','0043127814','3','SYRUP','TOMMY\'S COMPANY','3','12463485'),
('ADOM KOA CAPASULES','0221467812','5','SYRUP','PHARMA TRUST','25','12463485'),
('EF-PAC','04316312214','2','CAPSULES','ENTRANCE PHARMACY','6','12463485');

/*Table structure for table `stock` */

DROP TABLE IF EXISTS `stock`;

CREATE TABLE `stock` (
  `stock_id` varchar(40) NOT NULL,
  `stock_nme` varchar(40) DEFAULT NULL,
  `stock_type` varchar(40) DEFAULT NULL,
  `ms_id` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`stock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `stock` */

insert  into `stock`(`stock_id`,`stock_nme`,`stock_type`,`ms_id`) values 
('0734681159173','SUBOXONE TAB','8','0321080041'),
('4171968759043','VIAGRA','5','0321080041'),
('6011787910159','SUBOXONE FILM','7','001040263'),
('8100611741074','METHADONE','10','001040263');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
