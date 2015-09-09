# --------------------------------------------------------
# Host:                         localhost
# Database:                     washshop
# Server version:               5.6.17
# Server OS:                    Win64
# HeidiSQL version:             5.0.0.3272
# Date/time:                    2015-09-09 23:19:48
# --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
# Dumping database structure for washshop
CREATE DATABASE IF NOT EXISTS `washshop` /*!40100 DEFAULT CHARACTER SET big5 */;
USE `washshop`;


# Dumping structure for table washshop.address
DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `ano` int(10) NOT NULL AUTO_INCREMENT,
  `City` char(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Area` char(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Road` char(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Lane` int(10) DEFAULT '0' COMMENT '巷',
  `Lane_Begin` int(10) DEFAULT '0' COMMENT '從 Lane_Begin巷 開始為某一郵遞區號。0 表示整條巷皆為同一郵遞區號。',
  `Lane_End` int(10) DEFAULT '0' COMMENT '到 Lane_End巷 結束為某一郵遞區號。0 表示整條巷皆為同一郵遞區號。999x 表示沒有上限。',
  `Alley` int(10) DEFAULT '0' COMMENT '弄',
  `Alley_Begin` int(10) DEFAULT '0' COMMENT '從 Alley_Begin弄 開始為某一郵遞區號。0 表示整條弄皆為同一郵遞區號。',
  `Alley_End` int(10) DEFAULT '0' COMMENT '到 Alley_End弄 結束為某一郵遞區號。0 表示整條弄皆為同一郵遞區號。255 表示沒有上限。',
  `IsOdd` int(10) DEFAULT '0' COMMENT '是否為奇數，0 表示不分奇偶，1 表示奇數，2 表示偶數。',
  `ZipCode` char(5) DEFAULT NULL,
  PRIMARY KEY (`ano`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table washshop.booking
DROP TABLE IF EXISTS `booking`;
CREATE TABLE IF NOT EXISTS `booking` (
  `sn` int(10) NOT NULL AUTO_INCREMENT,
  `crcode` varchar(5) DEFAULT '',
  `crname` varchar(10) DEFAULT '',
  `bdate` varchar(9) DEFAULT '',
  `cdate` varchar(9) DEFAULT '',
  `kind` int(10) DEFAULT '0',
  `memo` text,
  `btime` varchar(9) DEFAULT '',
  `flag` smallint(3) DEFAULT '1',
  PRIMARY KEY (`sn`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='預約';

# Data exporting was unselected.


# Dumping structure for table washshop.compy
DROP TABLE IF EXISTS `compy`;
CREATE TABLE IF NOT EXISTS `compy` (
  `cpname` char(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `cpaddr` char(40) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `cptel` char(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `cppsen` int(10) unsigned DEFAULT '0',
  `cpwino` int(10) unsigned DEFAULT '0',
  `cpwisno` int(10) unsigned DEFAULT '0',
  `cpwisno_d` int(10) unsigned DEFAULT '4',
  `cpdayn` int(10) unsigned DEFAULT '0',
  `cpqday` int(10) unsigned DEFAULT '0',
  `ppaa` char(2) DEFAULT '' COMMENT '片語顯示',
  `ppcc` char(2) DEFAULT '' COMMENT '新增客戶',
  `getitem` char(2) DEFAULT '' COMMENT '入庫取件',
  `getdisplay` char(1) DEFAULT '' COMMENT '取件顯示方式',
  `Expansion` char(2) DEFAULT '' COMMENT '衣物展開詢問',
  `expmode` char(1) DEFAULT '' COMMENT '展開方式',
  `asmb` char(2) DEFAULT '' COMMENT '顏色組合方式',
  `sp300` char(2) DEFAULT '' COMMENT 'SP300',
  `exit` char(2) DEFAULT '' COMMENT '存檔離開',
  `serialno` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`cpname`),
  UNIQUE KEY `cpname` (`cpname`),
  KEY `cpname_2` (`cpname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table washshop.cr
DROP TABLE IF EXISTS `cr`;
CREATE TABLE IF NOT EXISTS `cr` (
  `crcode` varchar(5) NOT NULL,
  `crdate` varchar(10) DEFAULT '',
  `crname` varchar(8) DEFAULT '',
  `csex` varchar(2) DEFAULT '',
  `crid` varchar(10) DEFAULT '',
  `crtel` varchar(10) DEFAULT '',
  `crtela` varchar(10) DEFAULT '',
  `crtelb` varchar(10) DEFAULT '',
  `cradr` varchar(50) DEFAULT '',
  `crmoney` float DEFAULT '0',
  `crmoney1` float DEFAULT '0',
  `crpsen` float unsigned DEFAULT '0',
  `crdate2` varchar(10) DEFAULT '',
  `crcnt` float unsigned DEFAULT '0',
  `crvip` char(1) DEFAULT 'N',
  `crarea` varchar(10) DEFAULT '',
  `curst` varchar(50) DEFAULT '',
  `crs1` varchar(2) DEFAULT '',
  `crs2` varchar(2) DEFAULT '',
  `crmark` char(1) DEFAULT 'Y',
  PRIMARY KEY (`crcode`),
  KEY `crdate` (`crdate`),
  KEY `crname` (`crname`),
  KEY `crtel` (`crtel`),
  KEY `crtela` (`crtela`),
  KEY `crtelb` (`crtelb`),
  KEY `cradr` (`cradr`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table washshop.crdelete
DROP TABLE IF EXISTS `crdelete`;
CREATE TABLE IF NOT EXISTS `crdelete` (
  `crcode` varchar(5) NOT NULL DEFAULT '',
  `crmoney` float DEFAULT '0',
  `storage` int(10) DEFAULT '0',
  `sdate` varchar(10) DEFAULT '',
  `sday` int(10) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=big5;

# Data exporting was unselected.


# Dumping structure for table washshop.crproc
DROP TABLE IF EXISTS `crproc`;
CREATE TABLE IF NOT EXISTS `crproc` (
  `crcode` varchar(5) NOT NULL,
  `aq1` float NOT NULL,
  `aq2` float NOT NULL,
  `aq3` float NOT NULL,
  `aq4` float NOT NULL,
  PRIMARY KEY (`crcode`)
) ENGINE=MyISAM DEFAULT CHARSET=big5;

# Data exporting was unselected.


# Dumping structure for table washshop.dailymonitor
DROP TABLE IF EXISTS `dailymonitor`;
CREATE TABLE IF NOT EXISTS `dailymonitor` (
  `sn` int(10) NOT NULL AUTO_INCREMENT,
  `ondt` varchar(20) DEFAULT NULL,
  `offdt` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`sn`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table washshop.egroup
DROP TABLE IF EXISTS `egroup`;
CREATE TABLE IF NOT EXISTS `egroup` (
  `gid` int(10) NOT NULL AUTO_INCREMENT,
  `gname` varchar(20) DEFAULT '',
  `g1` int(1) DEFAULT '0',
  `g2` int(1) DEFAULT '0',
  `g3` int(1) DEFAULT '0',
  `g4` int(1) DEFAULT '0',
  `g5` int(1) DEFAULT '0',
  `g6` int(1) DEFAULT '0',
  `g7` int(1) DEFAULT '0',
  `g8` int(1) DEFAULT '0',
  `g9` int(1) DEFAULT '0',
  `g10` int(1) DEFAULT '0',
  `g11` int(1) DEFAULT '0',
  `g12` int(1) DEFAULT '0',
  `g13` int(1) DEFAULT '0',
  `g14` int(1) DEFAULT '0',
  `g15` int(1) DEFAULT '0',
  `g16` int(1) DEFAULT '0',
  `g17` int(1) DEFAULT '0',
  `g18` int(1) DEFAULT '0',
  `g19` int(1) DEFAULT '0',
  PRIMARY KEY (`gid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table washshop.employee
DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `eno` varchar(3) NOT NULL DEFAULT '',
  `ename` varchar(20) NOT NULL DEFAULT '',
  `edate` varchar(9) NOT NULL DEFAULT '',
  `esex` varchar(2) NOT NULL DEFAULT '',
  `ebirthday` varchar(9) NOT NULL DEFAULT '',
  `etela` varchar(10) NOT NULL DEFAULT '',
  `etelb` varchar(10) NOT NULL DEFAULT '',
  `eadrs` varchar(30) NOT NULL DEFAULT '',
  `emark` char(1) NOT NULL DEFAULT 'Y',
  `eid` varchar(10) NOT NULL DEFAULT '',
  `epw` varchar(32) NOT NULL DEFAULT '',
  `egroup` int(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`eno`),
  UNIQUE KEY `m_username` (`eid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

# Data exporting was unselected.


# Dumping structure for table washshop.fplace
DROP TABLE IF EXISTS `fplace`;
CREATE TABLE IF NOT EXISTS `fplace` (
  `wano10` varchar(2) NOT NULL,
  `wiplace` varchar(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table washshop.frsum
DROP TABLE IF EXISTS `frsum`;
CREATE TABLE IF NOT EXISTS `frsum` (
  `sn` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `crcode` varchar(5) DEFAULT '',
  `wicode` varchar(6) DEFAULT '',
  `frmoney` float DEFAULT '0',
  `crmoney` float DEFAULT '0',
  `woptotal` float DEFAULT '0',
  `wototal` float DEFAULT '0',
  `wopsen` float DEFAULT '0',
  `frgetmo` float DEFAULT '0',
  `frealmo` float DEFAULT '0',
  `frcnt` float DEFAULT '0',
  `frpscnt` float DEFAULT '0',
  `frdate` varchar(10) DEFAULT '',
  `frtime` varchar(8) DEFAULT '',
  `sfname` varchar(8) DEFAULT '',
  `fritem` varchar(1) DEFAULT '',
  PRIMARY KEY (`sn`)
) ENGINE=MyISAM DEFAULT CHARSET=big5;

# Data exporting was unselected.


# Dumping structure for table washshop.monthly
DROP TABLE IF EXISTS `monthly`;
CREATE TABLE IF NOT EXISTS `monthly` (
  `widate` varchar(9) DEFAULT NULL,
  `m1` float DEFAULT '0',
  `m0` float DEFAULT '0',
  `m2` float DEFAULT '0',
  `m3` float DEFAULT '0',
  `m4` float DEFAULT '0',
  `m5` float DEFAULT '0',
  `m6` float DEFAULT '0',
  `m7` int(9) DEFAULT '0',
  `m8` int(9) DEFAULT '0',
  `m9` int(9) DEFAULT '0',
  `m10` int(9) DEFAULT '0',
  `m11` float DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table washshop.pross_log
DROP TABLE IF EXISTS `pross_log`;
CREATE TABLE IF NOT EXISTS `pross_log` (
  `sn` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `crcode` varchar(5) NOT NULL,
  `pross` varchar(5) NOT NULL,
  `pross_date` varchar(9) NOT NULL,
  `pross_time` varchar(8) NOT NULL,
  `sfname` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`sn`),
  UNIQUE KEY `sn` (`sn`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='¦¬¨ú¥ó¾Þ§@°O¿ý';

# Data exporting was unselected.


# Dumping structure for table washshop.pross_vip
DROP TABLE IF EXISTS `pross_vip`;
CREATE TABLE IF NOT EXISTS `pross_vip` (
  `sn` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `crcode` varchar(5) NOT NULL DEFAULT '',
  `pross` varchar(8) NOT NULL DEFAULT '',
  `n_money` float NOT NULL DEFAULT '0',
  `o_money` float NOT NULL DEFAULT '0',
  `pross_date` varchar(9) NOT NULL DEFAULT '',
  `pross_time` varchar(8) NOT NULL DEFAULT '',
  `sfname` varchar(8) DEFAULT '',
  PRIMARY KEY (`sn`),
  UNIQUE KEY `sn` (`sn`)
) ENGINE=MyISAM DEFAULT CHARSET=big5 COMMENT='VIP處理紀錄';

# Data exporting was unselected.


# Dumping structure for table washshop.sf
DROP TABLE IF EXISTS `sf`;
CREATE TABLE IF NOT EXISTS `sf` (
  `sfcode` varchar(8) NOT NULL DEFAULT '',
  `sfname` varchar(8) DEFAULT NULL,
  `sfpass` varchar(8) DEFAULT NULL,
  `sfgrade` int(10) unsigned DEFAULT NULL,
  `sftel` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`sfcode`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table washshop.stawo
DROP TABLE IF EXISTS `stawo`;
CREATE TABLE IF NOT EXISTS `stawo` (
  `wicode` varchar(6) NOT NULL,
  `crcode` varchar(5) NOT NULL,
  `wototal` float NOT NULL DEFAULT '0',
  `wopsen` float NOT NULL DEFAULT '0',
  `woptotal` float NOT NULL DEFAULT '0',
  `worealmo` float NOT NULL DEFAULT '0',
  `woowimo` float NOT NULL DEFAULT '0',
  `widate` varchar(10) NOT NULL,
  `witime` varchar(8) NOT NULL,
  `stoverdat` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table washshop.stbwio
DROP TABLE IF EXISTS `stbwio`;
CREATE TABLE IF NOT EXISTS `stbwio` (
  `wicode` varchar(6) NOT NULL DEFAULT '',
  `wisno` varchar(6) NOT NULL DEFAULT '',
  `crcode` varchar(5) DEFAULT '',
  `wiitem` varchar(6) DEFAULT '',
  `winame` varchar(10) NOT NULL DEFAULT '',
  `wiwash` varchar(4) DEFAULT '',
  `wiacc` varchar(10) DEFAULT '',
  `wimemo` varchar(10) DEFAULT '',
  `wiwamo` float unsigned DEFAULT '0',
  `wiexkind` varchar(10) DEFAULT '',
  `wiexmo` float unsigned DEFAULT '0',
  `wiquty` int(10) DEFAULT '0',
  `wisum` float unsigned DEFAULT '0',
  `wiurge` char(1) NOT NULL DEFAULT 'N',
  `widay` varchar(2) DEFAULT '',
  `wimdate` varchar(9) DEFAULT '',
  `wiodate` varchar(9) DEFAULT '',
  `wiotime` time DEFAULT NULL,
  `wiplace` varchar(4) DEFAULT '',
  `widate` varchar(9) DEFAULT '',
  `witime` time DEFAULT NULL,
  `wimark` varchar(10) DEFAULT '',
  `indate` varchar(9) DEFAULT '',
  `mark` char(1) DEFAULT NULL,
  `wisel` char(1) DEFAULT NULL,
  `pps` int(11) DEFAULT '0',
  `picture` varchar(20) DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table washshop.sumname
DROP TABLE IF EXISTS `sumname`;
CREATE TABLE IF NOT EXISTS `sumname` (
  `sumname` varchar(8) DEFAULT NULL,
  `sumwash` varchar(4) DEFAULT NULL,
  `sumwamo` float unsigned DEFAULT NULL,
  `sumquty` float unsigned DEFAULT NULL,
  `sumsum` float unsigned DEFAULT NULL,
  `sumwsmo7` float unsigned DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='¦çª«²Î­pÀÉ';

# Data exporting was unselected.


# Dumping structure for table washshop.tempwio
DROP TABLE IF EXISTS `tempwio`;
CREATE TABLE IF NOT EXISTS `tempwio` (
  `wicode` varchar(6) NOT NULL DEFAULT '',
  `wisno` varchar(6) NOT NULL DEFAULT '',
  `crcode` varchar(5) NOT NULL DEFAULT '',
  `wiitem` varchar(6) DEFAULT '',
  `winame` varchar(10) NOT NULL DEFAULT '',
  `wiwash` varchar(4) DEFAULT '',
  `wiacc` varchar(10) DEFAULT '',
  `wimemo` varchar(10) DEFAULT '',
  `wiwamo` float unsigned DEFAULT '0',
  `wiexkind` varchar(10) DEFAULT '',
  `wiexmo` float unsigned DEFAULT '0',
  `wiquty` int(10) DEFAULT '0',
  `wisum` float unsigned DEFAULT '0',
  `wiurge` char(1) NOT NULL DEFAULT 'N',
  `widay` varchar(2) DEFAULT '',
  `wimdate` varchar(9) DEFAULT '',
  `wiodate` varchar(9) DEFAULT '',
  `wiotime` time DEFAULT NULL,
  `wiplace` varchar(4) DEFAULT '',
  `widate` varchar(9) DEFAULT '',
  `witime` time DEFAULT NULL,
  `wimark` varchar(10) DEFAULT '',
  `indate` varchar(9) DEFAULT '',
  `mark` char(1) DEFAULT NULL,
  `wisel` char(1) DEFAULT NULL,
  `pps` int(11) DEFAULT '0',
  `picture` varchar(20) DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table washshop.tmprec
DROP TABLE IF EXISTS `tmprec`;
CREATE TABLE IF NOT EXISTS `tmprec` (
  `tmdate` varchar(9) NOT NULL,
  `tmtime` time DEFAULT NULL,
  `tmitem` varchar(18) DEFAULT NULL,
  `tmoldmo` float DEFAULT NULL,
  `tonewmo` float DEFAULT NULL,
  `sfname` varchar(8) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table washshop.vip
DROP TABLE IF EXISTS `vip`;
CREATE TABLE IF NOT EXISTS `vip` (
  `crcode` varchar(5) NOT NULL DEFAULT '',
  `vpcode` varchar(5) NOT NULL DEFAULT '',
  `vpmoney` float DEFAULT '0',
  `vpdscnt` int(5) DEFAULT '0',
  `vpreman` float DEFAULT '0',
  `vppsen` int(5) DEFAULT '0',
  `vpsdate` varchar(9) DEFAULT NULL,
  `vpedate` varchar(9) DEFAULT NULL,
  PRIMARY KEY (`crcode`,`vpcode`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='·|­ûÁÊ¶R';

# Data exporting was unselected.


# Dumping structure for table washshop.waacc
DROP TABLE IF EXISTS `waacc`;
CREATE TABLE IF NOT EXISTS `waacc` (
  `wano4` varchar(2) NOT NULL,
  `waacc` varchar(6) NOT NULL,
  PRIMARY KEY (`wano4`),
  KEY `wano4` (`wano4`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table washshop.waadr
DROP TABLE IF EXISTS `waadr`;
CREATE TABLE IF NOT EXISTS `waadr` (
  `wano8` varchar(2) NOT NULL,
  `waadr` varchar(12) NOT NULL,
  PRIMARY KEY (`wano8`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table washshop.waexkind
DROP TABLE IF EXISTS `waexkind`;
CREATE TABLE IF NOT EXISTS `waexkind` (
  `wano7` varchar(2) NOT NULL DEFAULT '',
  `waexkind` varchar(8) DEFAULT NULL,
  `waexmo` float DEFAULT NULL,
  PRIMARY KEY (`wano7`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='¥[¤u';

# Data exporting was unselected.


# Dumping structure for table washshop.waitem
DROP TABLE IF EXISTS `waitem`;
CREATE TABLE IF NOT EXISTS `waitem` (
  `wano3` varchar(2) NOT NULL,
  `waitem` varchar(6) NOT NULL,
  PRIMARY KEY (`wano3`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table washshop.wamemo
DROP TABLE IF EXISTS `wamemo`;
CREATE TABLE IF NOT EXISTS `wamemo` (
  `wano5` varchar(2) NOT NULL,
  `wamemo` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`wano5`),
  UNIQUE KEY `wano5` (`wano5`),
  KEY `wano5_2` (`wano5`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table washshop.waname
DROP TABLE IF EXISTS `waname`;
CREATE TABLE IF NOT EXISTS `waname` (
  `wano1` varchar(2) NOT NULL,
  `waname` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table washshop.wastyle
DROP TABLE IF EXISTS `wastyle`;
CREATE TABLE IF NOT EXISTS `wastyle` (
  `wano2` varchar(2) NOT NULL,
  `wastyle` varchar(10) DEFAULT '',
  `wawsmO1` float unsigned DEFAULT '0',
  `wawsmO2` float unsigned DEFAULT '0',
  `wawsmO3` float unsigned DEFAULT '0',
  `wawsmO4` float unsigned DEFAULT '0',
  `wawsmO5` float unsigned DEFAULT '0',
  `wawsmO6` float unsigned DEFAULT '0',
  `wawsmO7` float unsigned DEFAULT '0',
  `wawsmO8` float unsigned DEFAULT '0',
  `wawsmO9` float unsigned DEFAULT '0',
  `wawsm10` float unsigned DEFAULT '0',
  `washpsno` float unsigned DEFAULT '0',
  PRIMARY KEY (`wano2`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table washshop.wawash
DROP TABLE IF EXISTS `wawash`;
CREATE TABLE IF NOT EXISTS `wawash` (
  `wano6` varchar(2) NOT NULL,
  `wawash` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`wano6`),
  KEY `wano6` (`wano6`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table washshop.wio
DROP TABLE IF EXISTS `wio`;
CREATE TABLE IF NOT EXISTS `wio` (
  `wicode` varchar(6) NOT NULL DEFAULT '',
  `wisno` varchar(6) NOT NULL DEFAULT '',
  `crcode` varchar(5) NOT NULL DEFAULT '',
  `wiitem` varchar(6) DEFAULT '',
  `winame` varchar(10) NOT NULL DEFAULT '',
  `wiwash` varchar(4) DEFAULT '',
  `wiacc` varchar(10) DEFAULT '',
  `wimemo` varchar(10) DEFAULT '',
  `wiwamo` float unsigned DEFAULT '0',
  `wiexkind` varchar(10) DEFAULT '',
  `wiexmo` float unsigned DEFAULT '0',
  `wiquty` int(10) DEFAULT '0',
  `wisum` float unsigned DEFAULT '0',
  `wiurge` char(1) NOT NULL DEFAULT 'N',
  `widay` varchar(2) DEFAULT '',
  `wimdate` varchar(9) DEFAULT '',
  `wiodate` varchar(9) DEFAULT '',
  `wiotime` time DEFAULT NULL,
  `wiplace` varchar(4) DEFAULT '',
  `widate` varchar(9) DEFAULT '',
  `witime` time DEFAULT NULL,
  `wimark` varchar(10) DEFAULT '',
  `indate` varchar(9) DEFAULT '',
  `mark` char(1) DEFAULT NULL,
  `wisel` char(1) DEFAULT NULL,
  `pps` int(11) DEFAULT '0',
  `picture` varchar(20) DEFAULT '',
  KEY `wiodate` (`wiodate`),
  KEY `widate` (`widate`),
  KEY `wicode` (`wicode`),
  KEY `wisno` (`wisno`),
  KEY `crcode` (`crcode`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table washshop.wio_bak
DROP TABLE IF EXISTS `wio_bak`;
CREATE TABLE IF NOT EXISTS `wio_bak` (
  `sno` bigint(6) unsigned NOT NULL AUTO_INCREMENT,
  `wicode` varchar(6) NOT NULL DEFAULT '',
  `wisno` varchar(6) NOT NULL DEFAULT '',
  `crcode` varchar(5) NOT NULL DEFAULT '',
  `wiitem` varchar(6) DEFAULT '',
  `winame` varchar(10) NOT NULL DEFAULT '',
  `wiwash` varchar(4) DEFAULT '',
  `wiacc` varchar(10) DEFAULT '',
  `wimemo` varchar(10) DEFAULT '',
  `wiwamo` float unsigned DEFAULT '0',
  `wiexkind` varchar(10) DEFAULT '',
  `wiexmo` float unsigned DEFAULT '0',
  `wiquty` int(10) DEFAULT '0',
  `wisum` float unsigned DEFAULT '0',
  `wiurge` char(1) NOT NULL DEFAULT 'N',
  `widay` varchar(2) DEFAULT '',
  `wimdate` varchar(9) DEFAULT '',
  `wiodate` varchar(9) DEFAULT '',
  `wiotime` time DEFAULT NULL,
  `wiplace` varchar(4) DEFAULT '',
  `widate` varchar(9) DEFAULT '',
  `witime` time DEFAULT NULL,
  `wimark` varchar(10) DEFAULT '',
  `indate` varchar(9) DEFAULT '',
  `mark` char(1) DEFAULT '',
  `tno` char(2) DEFAULT NULL,
  `pps` int(11) DEFAULT '0',
  `picture` varchar(20) DEFAULT '',
  PRIMARY KEY (`sno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table washshop.wio_change
DROP TABLE IF EXISTS `wio_change`;
CREATE TABLE IF NOT EXISTS `wio_change` (
  `wiosn` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `crcode` varchar(5) NOT NULL,
  `wicode` varchar(6) NOT NULL,
  `wisno` varchar(6) NOT NULL,
  `orgmoney` float DEFAULT '0',
  `newmoney` float DEFAULT '0',
  `chgdate` varchar(9) NOT NULL,
  `chgtime` varchar(8) NOT NULL,
  `note` varchar(8) DEFAULT NULL,
  `sfname` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`wiosn`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table washshop.wio_temp
DROP TABLE IF EXISTS `wio_temp`;
CREATE TABLE IF NOT EXISTS `wio_temp` (
  `sno` bigint(6) unsigned NOT NULL AUTO_INCREMENT,
  `wicode` varchar(6) NOT NULL DEFAULT '',
  `wisno` varchar(6) NOT NULL DEFAULT '',
  `crcode` varchar(5) NOT NULL DEFAULT '',
  `wiitem` varchar(6) DEFAULT '',
  `winame` varchar(10) NOT NULL DEFAULT '',
  `wiwash` varchar(4) DEFAULT '',
  `wiacc` varchar(10) DEFAULT '',
  `wimemo` varchar(10) DEFAULT '',
  `wiwamo` float unsigned DEFAULT '0',
  `wiexkind` varchar(10) DEFAULT '',
  `wiexmo` float unsigned DEFAULT '0',
  `wiquty` int(10) DEFAULT '0',
  `wisum` float unsigned DEFAULT '0',
  `wiurge` char(1) NOT NULL DEFAULT 'N',
  `widay` varchar(2) DEFAULT '',
  `wimdate` varchar(9) DEFAULT '',
  `wiodate` varchar(9) DEFAULT '',
  `wiotime` time DEFAULT NULL,
  `wiplace` varchar(4) DEFAULT '',
  `widate` varchar(9) DEFAULT '',
  `witime` time DEFAULT NULL,
  `wimark` varchar(10) DEFAULT '',
  `indate` varchar(9) DEFAULT '',
  `mark` char(1) DEFAULT '',
  `tno` char(2) DEFAULT NULL,
  `pps` int(11) DEFAULT '0',
  `picture` varchar(20) DEFAULT '',
  PRIMARY KEY (`sno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table washshop.wo
DROP TABLE IF EXISTS `wo`;
CREATE TABLE IF NOT EXISTS `wo` (
  `wiosn` bigint(6) unsigned NOT NULL AUTO_INCREMENT,
  `crcode` varchar(5) NOT NULL DEFAULT '',
  `wicode` varchar(6) DEFAULT '',
  `wisno` varchar(6) DEFAULT NULL,
  `wototal` float DEFAULT '0',
  `woptotal` float DEFAULT '0',
  `worealmo` float DEFAULT '0',
  `frgetmo` float DEFAULT '0',
  `wocntmo` float DEFAULT '0',
  `wopsen` float DEFAULT '0',
  `widate` varchar(10) DEFAULT '',
  `witime` varchar(8) DEFAULT '',
  `sfname` varchar(8) DEFAULT '',
  `fritem` varchar(1) DEFAULT '',
  PRIMARY KEY (`wiosn`),
  KEY `crcode` (`crcode`),
  KEY `wicode` (`wicode`),
  KEY `wisno` (`wisno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table washshop.years
DROP TABLE IF EXISTS `years`;
CREATE TABLE IF NOT EXISTS `years` (
  `month` int(10) NOT NULL AUTO_INCREMENT,
  `washtotal` float DEFAULT '0',
  `cashtotal` float DEFAULT '0',
  PRIMARY KEY (`month`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# Data exporting was unselected.
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
