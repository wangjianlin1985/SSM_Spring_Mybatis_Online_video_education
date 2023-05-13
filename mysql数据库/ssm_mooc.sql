﻿-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- Server version:               10.3.14-MariaDB - MariaDB Server
-- Server OS:                    Linux
-- HeidiSQL 版本:                  10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for ssm_mooc
CREATE DATABASE IF NOT EXISTS `ssm_mooc` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `ssm_mooc`;

-- Dumping structure for table ssm_mooc.course
DROP TABLE IF EXISTS `course`;
CREATE TABLE IF NOT EXISTS `course` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `context` varchar(500) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `label` varchar(100) DEFAULT NULL,
  `hour` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- Dumping data for table ssm_mooc.course: ~9 rows (approximately)
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` (`id`, `name`, `context`, `type`, `price`, `label`, `hour`) VALUES
	(1, 'Python', 'Python', '1', '1', '一般', '20'),
	(2, 'Python入门', 'Python入门', '0', '0', '还行', '10'),
	(3, '1024设计', '1024设计', '1', '0', '还行', '5'),
	(4, 'Python爬虫', 'Python爬虫技巧', '0', '0', '不错', '12'),
	(5, 'java', 'java基础入门', '1', '0', '一般', '14'),
	(6, 'Python爬虫2', 'Python爬虫2', '0', '0', '一般', '15'),
	(7, '123', '123123', '1', '1', NULL, NULL),
	(8, '12123', '123123', '1', '1', NULL, NULL),
	(9, 'java环境安装教程', '很简单，一学就会', '0', '0', NULL, NULL);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;

-- Dumping structure for table ssm_mooc.ipset
DROP TABLE IF EXISTS `ipset`;
CREATE TABLE IF NOT EXISTS `ipset` (
  `ip` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(255) DEFAULT NULL,
  `mark` varchar(255) DEFAULT NULL,
  `firsttime` datetime DEFAULT NULL,
  `bantime` datetime DEFAULT NULL,
  `totime` datetime DEFAULT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table ssm_mooc.ipset: ~10 rows (approximately)
/*!40000 ALTER TABLE `ipset` DISABLE KEYS */;
INSERT INTO `ipset` (`ip`, `type`, `mark`, `firsttime`, `bantime`, `totime`) VALUES
	('0:0:0:0:0:0:0:1', NULL, NULL, '2019-10-27 20:00:34', NULL, '2019-08-21 13:25:19'),
	('127.0.0.1', '0', '恶意登陆管理员账号！', '2019-10-16 11:57:36', '2117-10-16 19:16:14', '2019-10-29 16:09:50'),
	('172.162.1.125', '0', '多次测试未知账户！', '2019-10-16 18:34:05', '2019-10-16 18:39:14', '2019-10-16 18:34:05'),
	('172.162.1.40', '0', '恶意登陆管理员账号！', '2019-10-16 14:11:35', '2117-10-16 19:00:29', '2019-10-16 19:05:29'),
	('172.162.1.41', '1', '多次测试未知账户！', '2019-10-16 12:00:48', '2019-10-17 19:21:21', '2019-10-16 19:20:43'),
	('172.162.1.42', '0', '多次测试未知账户！', '2019-10-16 14:09:01', '2019-10-17 18:57:18', '2019-10-17 19:22:21'),
	('172.162.1.43', '0', '多次测试未知账户！', '2019-10-16 12:00:30', '2019-10-16 19:24:00', '2019-10-16 14:04:47'),
	('172.162.1.44', '1', '多次测试未知账户！', '2019-10-16 15:09:06', '2019-10-16 19:26:04', '2019-10-16 19:19:24'),
	('172.162.1.87', '1', '密码多次输入错误！', '2019-10-16 19:08:26', '2019-08-21 09:10:58', '2019-10-16 19:09:36'),
	('192.168.99.1', NULL, NULL, '2019-08-22 10:23:53', NULL, '2019-08-22 10:23:59');
/*!40000 ALTER TABLE `ipset` ENABLE KEYS */;

-- Dumping structure for table ssm_mooc.log
DROP TABLE IF EXISTS `log`;
CREATE TABLE IF NOT EXISTS `log` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `executor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8;

-- Dumping data for table ssm_mooc.log: ~143 rows (approximately)
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` (`id`, `userid`, `username`, `type`, `ip`, `time`, `executor`) VALUES
	(1, '20151612204', 'admin', '登录', '0:0:0:0:0:0:0:1', '2019-10-15 15:13:46', NULL),
	(2, '20151612204', 'admin', '登录', '0:0:0:0:0:0:0:1', '2019-10-15 15:15:57', 'admin'),
	(3, '20151612204', 'admin', '充值500元', '0:0:0:0:0:0:0:1', '2019-10-15 15:16:53', 'admin'),
	(4, '201808231058301205', '1823544517', '充值10000元', '0:0:0:0:0:0:0:1', '2019-10-15 15:18:02', 'admin'),
	(5, '201808231058301205', '1823544517', '屏蔽用户登录', '0:0:0:0:0:0:0:1', '2019-10-15 15:18:12', 'admin'),
	(6, '201808231058301205', '1823544517', '恢复用户登录', '0:0:0:0:0:0:0:1', '2019-10-15 15:19:10', 'admin'),
	(7, '201808231058301205', '1823544517', '登录', '127.0.0.1', '2019-10-15 15:19:15', NULL),
	(8, '201808231058301205', '1823544517', '订阅课程:1024设计', '127.0.0.1', '2019-10-15 15:19:20', NULL),
	(9, '201808231058301205', '1823544517', '购买会员：一年', '127.0.0.1', '2019-10-15 15:31:58', NULL),
	(10, '201808231058301205', '1823544517', '登录', '127.0.0.1', '2019-10-15 16:12:09', NULL),
	(11, '20151612204', 'admin', '登录', '0:0:0:0:0:0:0:1', '2019-10-15 21:45:02', 'admin'),
	(12, '201808231058301205', '1823544517', '登录', '127.0.0.1', '2019-10-15 21:49:02', NULL),
	(13, NULL, NULL, '下架课程：Python', '0:0:0:0:0:0:0:1', '2019-10-15 21:49:27', 'admin'),
	(14, NULL, NULL, '上架课程：Python', '0:0:0:0:0:0:0:1', '2019-10-15 21:49:37', 'admin'),
	(15, NULL, NULL, '下架课程：Python', '0:0:0:0:0:0:0:1', '2019-10-15 21:49:44', 'admin'),
	(16, NULL, NULL, '尝试登录账号:asdawdasdwqweqwrqwe，密码错误', '127.0.0.1', '2019-10-16 10:08:03', NULL),
	(17, '20151612204', 'admin', '登录', '127.0.0.1', '2019-10-16 10:08:48', 'admin'),
	(18, '201808231058301205', '1823544517', '登录', '127.0.0.1', '2019-10-16 10:10:17', NULL),
	(19, '201810161045371069', 'abc', '普通注册', '172.162.1.44', '2019-10-16 10:37:45', NULL),
	(20, '201810161045371069', 'abc', '登录', '172.162.1.44', '2019-10-16 10:38:12', NULL),
	(21, '201810161045371069', 'abc', '购买会员：一个月', '172.162.1.44', '2019-10-16 10:38:27', NULL),
	(22, '201810161045371069', 'abc', '订阅课程:1024设计', '172.162.1.44', '2019-10-16 10:39:07', NULL),
	(23, '201810161045371069', 'abc', '个人信息更改', '172.162.1.44', '2019-10-16 10:40:49', NULL),
	(24, '201810161045371069', 'abc', '个人信息更改', '172.162.1.44', '2019-10-16 10:40:57', NULL),
	(25, '201808231058301205', '1823544517', '登录', '127.0.0.1', '2019-10-16 10:41:17', NULL),
	(26, '201810161045371069', 'abc', '取消课程：1024设计', '172.162.1.44', '2019-10-16 10:41:32', NULL),
	(27, '201810161045371069', 'abc', '个人信息更改', '172.162.1.44', '2019-10-16 10:43:15', NULL),
	(28, '201810161045371069', 'abc', '充值10000元', '127.0.0.1', '2019-10-16 10:44:50', 'admin'),
	(29, '201810161045371069', 'abc', '购买会员：一年', '172.162.1.44', '2019-10-16 10:45:04', NULL),
	(30, '201810161045371069', 'abc', '购买会员：半年', '172.162.1.44', '2019-10-16 10:45:07', NULL),
	(31, '201810161045371069', 'abc', '购买会员：一个月', '172.162.1.44', '2019-10-16 10:45:11', NULL),
	(32, '201810161045371069', 'abc', '购买会员：一个月', '172.162.1.44', '2019-10-16 10:45:13', NULL),
	(33, '201810161045371069', 'abc', '购买会员：一个月', '172.162.1.44', '2019-10-16 10:45:15', NULL),
	(34, '201810161045371069', 'abc', '购买会员：一个月', '172.162.1.44', '2019-10-16 10:45:16', NULL),
	(35, '201810161045371069', 'abc', '购买会员：半年', '172.162.1.44', '2019-10-16 10:46:02', NULL),
	(36, '201810161045371069', 'abc', '购买会员：一个月', '172.162.1.44', '2019-10-16 10:46:05', NULL),
	(37, '201810161045371069', 'abc', '购买会员：一个月', '172.162.1.44', '2019-10-16 10:46:07', NULL),
	(38, '201810161045371069', 'abc', '注销', '172.162.1.44', '2019-10-16 10:46:24', NULL),
	(39, NULL, NULL, '尝试登录账号:admin，密码错误', '172.162.1.44', '2019-10-16 10:46:52', NULL),
	(40, '20151612204', 'admin', '注销', '127.0.0.1', '2019-10-16 10:47:40', 'admin'),
	(41, NULL, NULL, '尝试登录账号:admin，密码错误', '127.0.0.1', '2019-10-16 10:47:50', NULL),
	(42, '20151612204', 'admin', '登录', '127.0.0.1', '2019-10-16 10:48:09', 'admin'),
	(43, '201808231058301205', '1823544517', '登录', '172.162.1.42', '2019-10-16 14:09:19', NULL),
	(44, '201808231058301205', '1823544517', '订阅课程:Python爬虫', '172.162.1.42', '2019-10-16 14:09:32', NULL),
	(45, '20151612204', 'admin', '登录', '127.0.0.1', '2019-10-16 14:34:55', 'admin'),
	(46, '20151612204', 'admin', '登录', '127.0.0.1', '2019-10-16 14:47:31', 'admin'),
	(47, '20151612204', 'admin', '登录', '127.0.0.1', '2019-10-16 15:02:14', 'admin'),
	(48, '20151612204', 'admin', '登录', '127.0.0.1', '2019-10-16 15:06:45', 'admin'),
	(49, '20151612204', 'admin', '登录', '127.0.0.1', '2019-10-16 15:07:24', 'admin'),
	(50, '201808231058301205', '1823544517', '登录', '127.0.0.1', '2019-10-16 15:22:23', NULL),
	(51, '20151612204', 'admin', '登录', '127.0.0.1', '2019-10-16 15:27:01', 'admin'),
	(52, '201808231058301205', '1823544517', '登录', '127.0.0.1', '2019-10-16 15:27:30', NULL),
	(53, '201808231058301205', '1823544517', '发表评论，在\'null\'', '127.0.0.1', '2019-10-16 15:27:45', NULL),
	(54, '20151612204', 'admin', '登录', '127.0.0.1', '2019-10-16 15:29:20', 'admin'),
	(55, '201808231058301205', '1823544517', '登录', '127.0.0.1', '2019-10-16 15:30:13', NULL),
	(56, '201808231058301205', '1823544517', '发表评论，在\'Python爬虫\'', '127.0.0.1', '2019-10-16 15:30:22', NULL),
	(57, '201810161045371069', 'abc', '登录', '172.162.1.44', '2019-10-16 15:34:59', NULL),
	(58, '201810161045371069', 'abc', '订阅课程:1024设计', '172.162.1.44', '2019-10-16 15:35:05', NULL),
	(59, '201810161045371069', 'abc', '发表评论，在\'1024设计\'', '172.162.1.44', '2019-10-16 15:35:30', NULL),
	(60, '201810161045371069', 'abc', '取消课程：1024设计', '172.162.1.44', '2019-10-16 15:36:28', NULL),
	(61, '201810161045371069', 'abc', '屏蔽用户登录', '127.0.0.1', '2019-10-16 15:36:47', 'admin'),
	(62, '201810161045371069', 'abc', '订阅课程:Python入门', '172.162.1.44', '2019-10-16 15:37:03', NULL),
	(63, '201810161045371069', 'abc', '注销', '172.162.1.44', '2019-10-16 15:37:11', NULL),
	(64, '201810161045371069', 'abc', '恢复用户登录', '127.0.0.1', '2019-10-16 15:37:22', 'admin'),
	(65, '201810161045371069', 'abc', '登录', '172.162.1.44', '2019-10-16 15:37:27', NULL),
	(66, '201808231058301205', '1823544517', '注销', '127.0.0.1', '2019-10-16 15:42:47', NULL),
	(67, '20151612204', 'admin', '登录', '127.0.0.1', '2019-10-16 17:11:30', 'admin'),
	(68, '20151612204', 'admin', '登录', '127.0.0.1', '2019-10-16 17:12:28', 'admin'),
	(69, '20151612204', 'admin', '登录', '127.0.0.1', '2019-10-16 17:27:45', 'admin'),
	(70, '20151612204', 'admin', '登录', '127.0.0.1', '2019-10-16 17:28:48', 'admin'),
	(71, '20151612204', 'admin', '登录', '127.0.0.1', '2019-10-16 17:29:32', 'admin'),
	(72, '20151612204', 'admin', '登录', '127.0.0.1', '2019-10-16 17:31:06', 'admin'),
	(73, '20151612204', 'admin', '登录', '127.0.0.1', '2019-10-16 17:40:19', 'admin'),
	(74, '20151612204', 'admin', '登录', '127.0.0.1', '2019-10-16 17:44:57', 'admin'),
	(75, '20151612204', 'admin', '登录', '127.0.0.1', '2019-10-16 17:47:35', 'admin'),
	(76, '20151612204', 'admin', '登录', '127.0.0.1', '2019-10-16 17:48:23', 'admin'),
	(77, '20151612204', 'admin', '登录', '127.0.0.1', '2019-10-16 18:18:24', 'admin'),
	(78, '20151612204', 'admin', '登录', '127.0.0.1', '2019-10-16 18:21:29', 'admin'),
	(79, '20151612204', 'admin', '登录', '127.0.0.1', '2019-10-16 18:27:53', 'admin'),
	(80, '20151612204', 'admin', '登录', '127.0.0.1', '2019-10-16 18:53:35', 'admin'),
	(81, NULL, NULL, '尝试登录账号:96321，密码错误', '172.162.1.40', '2019-10-16 19:01:02', NULL),
	(82, NULL, NULL, '尝试登录账号:96321，密码错误', '172.162.1.40', '2019-10-16 19:01:24', NULL),
	(83, '201810161901381601', '96321', '普通注册', '172.162.1.40', '2019-10-16 19:01:38', NULL),
	(84, '201810161901381601', '96321', '屏蔽用户登录', '127.0.0.1', '2019-10-16 19:01:50', 'admin'),
	(85, '201810161901381601', '96321', '恢复用户登录', '127.0.0.1', '2019-10-16 19:01:55', 'admin'),
	(86, '201810161901381601', '96321', '登录', '172.162.1.40', '2019-10-16 19:02:03', NULL),
	(87, '201810161901381601', '96321', '个人信息更改', '172.162.1.40', '2019-10-16 19:02:33', NULL),
	(88, '201810161901381601', '96321', '订阅课程:Python入门', '172.162.1.40', '2019-10-16 19:02:41', NULL),
	(89, '201810161901381601', '96321', '发表评论，在\'Python入门\'', '172.162.1.40', '2019-10-16 19:02:56', NULL),
	(90, '201810161901381601', '96321', '取消课程：Python入门', '172.162.1.40', '2019-10-16 19:03:08', NULL),
	(91, '201810161901381601', '96321', '购买会员：一个月', '172.162.1.40', '2019-10-16 19:03:40', NULL),
	(92, '201810161901381601', '96321', '订阅课程:Python爬虫2', '172.162.1.40', '2019-10-16 19:03:46', NULL),
	(93, '201810161901381601', '96321', '发表评论，在\'Python爬虫2\'', '172.162.1.40', '2019-10-16 19:03:55', NULL),
	(94, '201810161901381601', '96321', '个人信息更改', '172.162.1.40', '2019-10-16 19:04:36', NULL),
	(95, '201810161901381601', '96321', '注销', '172.162.1.40', '2019-10-16 19:05:29', NULL),
	(96, '20151612204', 'admin', '登录', '172.162.1.44', '2019-10-16 19:15:49', 'admin'),
	(97, '20151612204', 'admin', '登录', '172.162.1.44', '2019-10-16 19:18:37', 'admin'),
	(98, '20151612204', 'admin', '登录', '172.162.1.44', '2019-10-16 19:19:04', 'admin'),
	(99, '20151612204', 'admin', '登录', '172.162.1.41', '2019-10-16 19:20:27', 'admin'),
	(100, '20151612204', 'admin', '登录', '127.0.0.1', '2019-10-16 19:20:55', 'admin'),
	(101, '20151612204', 'admin', '登录', '127.0.0.1', '2019-10-17 15:50:41', NULL),
	(102, '20151612204', 'admin', '登录', '127.0.0.1', '2019-10-17 15:51:46', 'admin'),
	(103, '20151612204', 'admin', '登录', '127.0.0.1', '2019-10-17 15:52:31', NULL),
	(104, '20151612204', 'admin', '登录', '127.0.0.1', '2019-10-17 18:55:21', 'admin'),
	(105, NULL, NULL, '尝试登录账号:admin，密码错误', '0:0:0:0:0:0:0:1', '2019-10-27 20:01:49', NULL),
	(106, '20151612204', 'admin', '登录', '0:0:0:0:0:0:0:1', '2019-10-27 20:01:57', 'admin'),
	(107, '20151612204', 'admin', '登录', '127.0.0.1', '2019-10-29 10:30:06', 'admin'),
	(108, '20151612204', 'admin', '登录', '127.0.0.1', '2019-10-29 10:46:37', 'admin'),
	(109, '20151612204', 'admin', '登录', '127.0.0.1', '2019-10-29 14:30:47', 'admin'),
	(110, '20151612204', 'admin', '登录', '127.0.0.1', '2019-10-29 14:35:21', 'admin'),
	(111, '20151612204', 'admin', '登录', '127.0.0.1', '2019-10-29 14:48:57', 'admin'),
	(112, '20151612204', 'admin', '登录', '127.0.0.1', '2019-10-29 14:51:52', 'admin'),
	(113, '20151612204', 'admin', '登录', '127.0.0.1', '2019-10-29 14:52:54', 'admin'),
	(114, NULL, NULL, '删除课程：张三', '127.0.0.1', '2019-10-29 14:53:07', 'admin'),
	(115, NULL, NULL, '删除课程：张三', '127.0.0.1', '2019-10-29 14:53:16', 'admin'),
	(116, NULL, NULL, '删除课程：张三', '127.0.0.1', '2019-10-29 14:53:22', 'admin'),
	(117, NULL, NULL, '删除课程：张三', '127.0.0.1', '2019-10-29 14:53:29', 'admin'),
	(118, '20151612204', 'admin', '登录', '127.0.0.1', '2019-10-29 15:22:11', 'admin'),
	(119, '20151612204', 'admin', '登录', '127.0.0.1', '2019-10-29 15:23:42', 'admin'),
	(120, '20151612204', 'admin', '登录', '127.0.0.1', '2019-10-29 15:24:57', 'admin'),
	(121, '20151612204', 'admin', '登录', '127.0.0.1', '2019-10-29 15:51:24', 'admin'),
	(122, '20151612204', 'admin', '登录', '127.0.0.1', '2019-10-29 15:53:23', 'admin'),
	(123, NULL, NULL, '上架课程：123123', '127.0.0.1', '2019-10-29 15:54:04', 'admin'),
	(124, NULL, NULL, '下架课程：123123', '127.0.0.1', '2019-10-29 15:54:17', 'admin'),
	(125, NULL, NULL, '删除课程：123123', '127.0.0.1', '2019-10-29 15:54:34', 'admin'),
	(126, '20151612204', 'admin', '发表评论，在\'Python入门\'', '127.0.0.1', '2019-10-29 16:09:50', NULL),
	(127, NULL, NULL, '尝试登录账号:20151612204，密码错误', '0:0:0:0:0:0:0:1', '2019-08-21 09:02:21', NULL),
	(128, '20151612204', 'admin', '登录', '0:0:0:0:0:0:0:1', '2019-08-21 09:02:53', NULL),
	(129, '20151612204', 'admin', '取消课程：Python', '0:0:0:0:0:0:0:1', '2019-08-21 09:03:04', NULL),
	(130, '20151612204', 'admin', '购买会员：一个月', '0:0:0:0:0:0:0:1', '2019-08-21 09:03:55', NULL),
	(131, '20151612204', 'admin', '登录', '0:0:0:0:0:0:0:1', '2019-08-21 09:04:55', 'admin'),
	(132, '201808100710171565', 'xiaoli', '登录', '0:0:0:0:0:0:0:1', '2019-08-21 09:14:15', NULL),
	(133, '201808100710171565', 'xiaoli', '订阅课程:Python爬虫', '0:0:0:0:0:0:0:1', '2019-08-21 09:14:52', NULL),
	(134, '201808100710171565', 'xiaoli', '发表评论，在\'Python爬虫\'', '0:0:0:0:0:0:0:1', '2019-08-21 09:15:57', NULL),
	(135, '201808100710171565', 'xiaoli', '个人信息更改', '0:0:0:0:0:0:0:1', '2019-08-21 09:16:45', NULL),
	(136, '201808100710171565', 'xiaoli', '注销', '0:0:0:0:0:0:0:1', '2019-08-21 09:16:54', NULL),
	(137, '201908210917121275', '123456@qq.com', '普通注册', '0:0:0:0:0:0:0:1', '2019-08-21 09:17:13', NULL),
	(138, '20151612204', 'admin', '登录', '0:0:0:0:0:0:0:1', '2019-08-21 09:22:36', 'admin'),
	(139, '20151612204', 'admin', '登录', '0:0:0:0:0:0:0:1', '2019-08-21 09:22:54', 'admin'),
	(140, '20151612204', 'admin', '登录', '0:0:0:0:0:0:0:1', '2019-08-21 09:23:07', 'admin'),
	(141, '20151612204', 'admin', '登录', '0:0:0:0:0:0:0:1', '2019-08-21 09:23:47', 'admin'),
	(142, NULL, NULL, '上架课程：java环境安装教程', '0:0:0:0:0:0:0:1', '2019-08-21 09:27:44', 'admin'),
	(143, '20151612204', 'admin', '订阅课程:java环境安装教程', '0:0:0:0:0:0:0:1', '2019-08-21 09:27:50', NULL);
/*!40000 ALTER TABLE `log` ENABLE KEYS */;

-- Dumping structure for table ssm_mooc.message
DROP TABLE IF EXISTS `message`;
CREATE TABLE IF NOT EXISTS `message` (
  `courseid` int(100) NOT NULL DEFAULT 0,
  `userid` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table ssm_mooc.message: ~18 rows (approximately)
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` (`courseid`, `userid`) VALUES
	(3, '201808240857431128'),
	(6, '201808231058301205'),
	(4, '20151612204'),
	(5, '20151612204'),
	(2, '201809030750151429'),
	(2, '20151612204'),
	(2, '201809061049051592'),
	(2, '201808240857431128'),
	(6, '201808240857431128'),
	(4, '201809030750151429'),
	(5, '201808240857431128'),
	(1, '201809061049051592'),
	(3, '201808231058301205'),
	(4, '201808231058301205'),
	(2, '201810161045371069'),
	(6, '201810161901381601'),
	(4, '201808100710171565'),
	(9, '20151612204');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;

-- Dumping structure for table ssm_mooc.review
DROP TABLE IF EXISTS `review`;
CREATE TABLE IF NOT EXISTS `review` (
  `reviewid` char(255) NOT NULL,
  `context` char(255) DEFAULT NULL,
  `courseid` int(50) DEFAULT NULL,
  `username` char(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `lable` char(255) DEFAULT NULL,
  `sex` char(50) DEFAULT NULL,
  `vip` int(50) DEFAULT NULL,
  PRIMARY KEY (`reviewid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table ssm_mooc.review: ~17 rows (approximately)
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` (`reviewid`, `context`, `courseid`, `username`, `time`, `lable`, `sex`, `vip`) VALUES
	('201809060327341776', 'fgfdgdsgg', 2, 'zzz', '2019-09-06 15:34:27', '4', 'Female', 1),
	('201809060414381493', '钱花的有点多', 1, '雷宇锋', '2019-09-06 16:38:14', '0', NULL, 1),
	('201809060423031483', '这课不错', 4, 'admin', '2019-09-06 16:03:23', '2', 'Male', 1),
	('201809060444041617', '刷好评', 4, 'adm', '2019-09-06 16:04:44', '4', NULL, 0),
	('201809060450041302', '刷好评', 4, 'adm', '2019-09-06 16:04:50', '4', NULL, 0),
	('201809060452031217', '这还不错', 4, 'adm', '2019-09-06 16:03:52', '3', NULL, 0),
	('201809060457021559', '这课不错', 5, 'admin', '2019-09-06 16:02:57', '2', 'Male', 1),
	('201810151532321876', '测试测试！！！', 6, '1823544517', '2019-10-15 15:32:32', '3', 'Male', 1),
	('201810151554191404', 'en ?', 3, '1823544517', '2019-10-15 15:19:54', '2', 'Male', 1),
	('201810161036391342', '美太太', 3, 'abc', '2019-10-16 10:39:36', '4', 'Female', 1),
	('201810161522301059', '测试', 4, '1823544517', '2019-10-16 15:30:22', '4', 'Male', 1),
	('201810161530351701', 'en    很不错', 3, 'abc', '2019-10-16 15:35:30', '0', 'Female', 1),
	('201810161545271907', '测试测试', 4, '1823544517', '2019-10-16 15:27:45', '4', 'Male', 1),
	('201810161902561206', '', 2, '96321', '2019-10-16 19:02:56', '4', 'Male', 1),
	('201810161903551373', '6666', 6, '96321', '2019-10-16 19:03:55', '4', 'Male', 1),
	('201810291609501589', '还行', 2, 'admin', '2019-10-29 16:09:50', '4', 'Male', 1),
	('201908210915561039', '做的很好', 4, 'xiaoli', '2019-08-21 09:15:57', '4', 'Female', 0);
/*!40000 ALTER TABLE `review` ENABLE KEYS */;

-- Dumping structure for table ssm_mooc.user
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` varchar(100) NOT NULL DEFAULT '',
  `sex` varchar(50) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `mail` varchar(200) DEFAULT NULL,
  `vx` varchar(200) DEFAULT NULL,
  `nickname` varchar(200) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `mission` varchar(500) DEFAULT NULL,
  `buycase` varchar(200) DEFAULT NULL,
  `mycase` varchar(200) DEFAULT NULL,
  `collect` varchar(200) DEFAULT NULL,
  `education` varchar(200) DEFAULT NULL,
  `vip` datetime DEFAULT NULL,
  `fristtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table ssm_mooc.user: ~19 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `sex`, `phone`, `mail`, `vx`, `nickname`, `username`, `password`, `mission`, `buycase`, `mycase`, `collect`, `education`, `vip`, `fristtime`) VALUES
	('20151612204', 'Male', '18235447111', '1347845688@qq.com', '1111', 'admin', 'admin', 'admin', 'admin', NULL, NULL, '458000', '本科/大专', '2033-11-01 19:57:53', NULL),
	('201808100710171565', 'Female', '18235447111', '1347845688@qq.com', '121', '小李', 'xiaoli', '123456', NULL, NULL, NULL, '500', '初中及以下', NULL, '2019-08-10 19:17:10'),
	('201808100930501831', 'Male', '18235447111', '1347845688@qq.com', '1111111111111111111', '张三', 'zhangsan', 'asdasd', NULL, NULL, NULL, '0', '本科/大专', '2019-09-01 20:41:04', '2019-08-10 09:50:30'),
	('201808101154331492', 'Female', '1111111111111', '1347845688@qq.com', NULL, NULL, 'zhazhabi', 'zxcvbnm', NULL, NULL, NULL, '500', NULL, NULL, '2019-08-10 11:33:54'),
	('201808230425131682', NULL, '123456789', '125486', '15846', 'bad', 'bb', '123456', NULL, NULL, NULL, '500', '研究生以上', NULL, '2019-08-23 16:13:25'),
	('201808230439101712', NULL, NULL, NULL, NULL, NULL, '18235445172', '1111', NULL, NULL, NULL, '500', NULL, NULL, '2019-08-23 16:10:39'),
	('201808231058301205', 'Male', '12345689', '789@qq.com', '784554asdd', '雷', '1823544517', '123654', NULL, '0', NULL, '7000', '本科/大专', '2019-10-15 15:31:58', '2019-08-23 10:30:58'),
	('201808240857431128', 'Female', '12345678907assa', '1347845688@qq.com', '4dgde', 'zzzgf', 'zzz', '12345', NULL, NULL, NULL, '0', '研究生以上', '2023-01-06 15:33:03', '2019-08-24 08:43:57'),
	('201808241105291520', NULL, NULL, NULL, NULL, NULL, '1823544517111111111111', '123456', NULL, NULL, NULL, '500', NULL, NULL, '2019-08-24 11:29:05'),
	('201808241117291016', NULL, NULL, NULL, NULL, NULL, '182354451722222222222', '123456', NULL, NULL, NULL, '500', NULL, NULL, '2019-08-24 11:29:17'),
	('201808241149281125', NULL, NULL, NULL, NULL, NULL, '18235445171111', '123456', NULL, NULL, NULL, '500', NULL, NULL, '2019-08-24 11:28:49'),
	('201809030750151429', NULL, NULL, NULL, NULL, NULL, 'adm', '123', NULL, NULL, NULL, '500', NULL, NULL, '2019-09-03 19:15:50'),
	('201809061018111546', 'Male', '110', '1347845688@qq.com', 'js666', 'js', 'js', 'js666', NULL, NULL, NULL, '10000', '研究生以上', '2020-03-06 10:15:16', '2019-09-06 10:11:18'),
	('201809061049051592', NULL, NULL, NULL, NULL, NULL, '雷宇锋', '110', NULL, NULL, NULL, '0', NULL, '2019-12-06 16:37:39', '2019-09-06 10:05:49'),
	('201809061051011416', NULL, NULL, NULL, NULL, NULL, 'sdsd', '123', NULL, NULL, NULL, '500', NULL, NULL, '2019-09-06 10:01:51'),
	('201809061055001264', NULL, NULL, NULL, NULL, NULL, 'aaa', '123', NULL, NULL, NULL, '500', NULL, NULL, '2019-09-06 10:00:55'),
	('201809061108071033', 'Female', '12123', '1347845688@qq.com', NULL, NULL, '111', 'qweqwe', NULL, NULL, NULL, '500', NULL, NULL, '2019-09-06 11:07:08'),
	('201810161045371069', 'Female', '13096613748', '1347845688@qq.com', '1223', '去玩儿', 'abc', '123456', NULL, '0', NULL, '0', '研究生以上', '2021-05-16 10:38:27', '2019-10-16 10:37:45'),
	('201810161901381601', 'Male', '96321', '1347845688@qq.com', '96321', '96321', '96321', '96321', NULL, '0', NULL, '0', '研究生以上', '2019-11-16 19:03:40', '2019-10-16 19:01:38');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
