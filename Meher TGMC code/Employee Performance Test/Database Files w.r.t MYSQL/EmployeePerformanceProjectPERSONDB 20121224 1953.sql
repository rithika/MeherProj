-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.28


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema person
--

CREATE DATABASE IF NOT EXISTS person;
USE person;

--
-- Definition of table `competencies`
--

DROP TABLE IF EXISTS `competencies`;
CREATE TABLE `competencies` (
  `TEST_NUMBER` int(11) NOT NULL,
  `DEPARTMENT` int(11) NOT NULL,
  `Q1` varchar(50) NOT NULL,
  `Q2` varchar(50) NOT NULL,
  `Q3` varchar(50) NOT NULL,
  `Q4` varchar(50) NOT NULL,
  `Q5` varchar(50) NOT NULL,
  `Q6` varchar(50) NOT NULL,
  `Q7` varchar(50) NOT NULL,
  `Q8` varchar(50) NOT NULL,
  `Q9` varchar(50) NOT NULL,
  `Q10` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `competencies`
--

/*!40000 ALTER TABLE `competencies` DISABLE KEYS */;
INSERT INTO `competencies` (`TEST_NUMBER`,`DEPARTMENT`,`Q1`,`Q2`,`Q3`,`Q4`,`Q5`,`Q6`,`Q7`,`Q8`,`Q9`,`Q10`) VALUES 
 (101,1,'Ques1','Ques2','Ques3','Ques4','Ques5','Ques6','Ques7','Ques8','Ques9','Ques10');
/*!40000 ALTER TABLE `competencies` ENABLE KEYS */;


--
-- Definition of table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `USERNAME` varchar(10) NOT NULL,
  `PASSWORD` varchar(20) NOT NULL,
  `DEPARTMENT` int(11) NOT NULL,
  `NAME` varchar(20) NOT NULL,
  `EMAIL_ID` varchar(40) NOT NULL,
  `PHONE_NUM` bigint(20) NOT NULL,
  `AGE` int(11) NOT NULL,
  `DOB` varchar(10) NOT NULL,
  `CITY` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` (`USERNAME`,`PASSWORD`,`DEPARTMENT`,`NAME`,`EMAIL_ID`,`PHONE_NUM`,`AGE`,`DOB`,`CITY`) VALUES 
 ('tester','test',1,'Genesis','geneiss@genesis.com',1234567890,19,'10-1-12','Hyderabad'),
 ('KMITE1De','test',1,'Genesis','genesis@g.com',1234567809,19,'10-4-1987','Hyd'),
 ('kmitd1_e1','test',1,'KMIT!1','kmiy@kmit.com',1111122222,20,'10-12-1970','Hyd');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;


--
-- Definition of table `remarks`
--

DROP TABLE IF EXISTS `remarks`;
CREATE TABLE `remarks` (
  `TEST_NUMBER` int(11) NOT NULL,
  `MEMBER_ID` varchar(10) NOT NULL,
  `DEPARTMENT` int(11) DEFAULT NULL,
  `Q1` int(11) DEFAULT NULL,
  `Q1_COMMENTS` mediumtext,
  `Q2` int(11) DEFAULT NULL,
  `Q2_COMMENTS` mediumtext,
  `Q3` int(11) DEFAULT NULL,
  `Q3_COMMENTS` mediumtext,
  `Q4` int(11) DEFAULT NULL,
  `Q4_COMMENTS` mediumtext,
  `Q5` int(11) DEFAULT NULL,
  `Q5_COMMENTS` mediumtext,
  `Q6` int(11) DEFAULT NULL,
  `Q6_COMMENTS` mediumtext,
  `Q7` int(11) DEFAULT NULL,
  `Q7_COMMENTS` mediumtext,
  `Q8` int(11) DEFAULT NULL,
  `Q8_COMMENTS` mediumtext,
  `Q9` int(11) DEFAULT NULL,
  `Q9_COMMENTS` mediumtext,
  `Q10` int(11) DEFAULT NULL,
  `Q10_COMMENTS` mediumtext,
  `FLAG` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `remarks`
--

/*!40000 ALTER TABLE `remarks` DISABLE KEYS */;
INSERT INTO `remarks` (`TEST_NUMBER`,`MEMBER_ID`,`DEPARTMENT`,`Q1`,`Q1_COMMENTS`,`Q2`,`Q2_COMMENTS`,`Q3`,`Q3_COMMENTS`,`Q4`,`Q4_COMMENTS`,`Q5`,`Q5_COMMENTS`,`Q6`,`Q6_COMMENTS`,`Q7`,`Q7_COMMENTS`,`Q8`,`Q8_COMMENTS`,`Q9`,`Q9_COMMENTS`,`Q10`,`Q10_COMMENTS`,`FLAG`) VALUES 
 (101,'KMITE1De',1,5,NULL,8,NULL,6,NULL,6,NULL,6,NULL,7,NULL,6,NULL,6,NULL,7,NULL,8,NULL,1),
 (101,'kmitd1_e1',1,10,NULL,10,NULL,10,NULL,10,NULL,10,NULL,10,NULL,10,NULL,10,NULL,10,NULL,10,NULL,1),
 (101,'kmitd1_e1',1,9,NULL,9,NULL,9,NULL,9,NULL,9,NULL,9,NULL,9,NULL,9,NULL,9,NULL,9,NULL,2),
 (101,'kmitd1_e1',1,9,NULL,9,NULL,9,NULL,9,NULL,9,NULL,9,NULL,9,NULL,9,NULL,9,NULL,9,NULL,3);
/*!40000 ALTER TABLE `remarks` ENABLE KEYS */;


--
-- Definition of table `review_manager`
--

DROP TABLE IF EXISTS `review_manager`;
CREATE TABLE `review_manager` (
  `USERNAME` varchar(10) NOT NULL,
  `PASSWORD` varchar(20) NOT NULL,
  `DEPARTMENT` int(11) NOT NULL,
  `NAME` varchar(20) NOT NULL,
  `EMAIL_ID` varchar(40) NOT NULL,
  `PHONE_NUM` bigint(20) NOT NULL,
  `AGE` int(11) NOT NULL,
  `DOB` varchar(10) NOT NULL,
  `CITY` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review_manager`
--

/*!40000 ALTER TABLE `review_manager` DISABLE KEYS */;
INSERT INTO `review_manager` (`USERNAME`,`PASSWORD`,`DEPARTMENT`,`NAME`,`EMAIL_ID`,`PHONE_NUM`,`AGE`,`DOB`,`CITY`) VALUES 
 ('KMITE1Dr','test',1,'Reviewer','r@r.com',9000000009,25,'12-7-1991','Hyd');
/*!40000 ALTER TABLE `review_manager` ENABLE KEYS */;


--
-- Definition of table `supervisor`
--

DROP TABLE IF EXISTS `supervisor`;
CREATE TABLE `supervisor` (
  `USERNAME` varchar(10) NOT NULL,
  `PASSWORD` varchar(20) NOT NULL,
  `DEPARTMENT` int(11) NOT NULL,
  `NAME` varchar(20) NOT NULL,
  `EMAIL_ID` varchar(40) NOT NULL,
  `PHONE_NUM` bigint(20) NOT NULL,
  `AGE` int(11) NOT NULL,
  `DOB` varchar(10) NOT NULL,
  `CITY` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supervisor`
--

/*!40000 ALTER TABLE `supervisor` DISABLE KEYS */;
INSERT INTO `supervisor` (`USERNAME`,`PASSWORD`,`DEPARTMENT`,`NAME`,`EMAIL_ID`,`PHONE_NUM`,`AGE`,`DOB`,`CITY`) VALUES 
 ('KMITE1Ds','test',1,'Supervisor','s@s.com',9000010009,29,'12-7-1987','Hyd');
/*!40000 ALTER TABLE `supervisor` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
