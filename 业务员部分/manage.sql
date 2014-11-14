-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2014-10-30 13:24:46
-- 服务器版本： 5.7.3-m13
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `manage`
--

-- --------------------------------------------------------

--
-- 表的结构 `addinfo`
--

CREATE TABLE IF NOT EXISTS `addinfo` (
  `device` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `location` varchar(20) NOT NULL,
  `describle` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `addinfo`
--

INSERT INTO `addinfo` (`device`, `number`, `location`, `describle`) VALUES
('IBMPC', '6', 'shelf-03', 'Old'),
('IBMPC', '6', 'shelf-03', 'SMALL'),
('IBMPC', '6', 'shelf-03', 'SMALL'),
('IBMPC', '6', 'shelf-03', 'Old'),
('IBMPC', '6', 'shelf-03', 'Old'),
('', '', '', ''),
('', '', '', ''),
('', '', '', ''),
('', '', '', ''),
('IBMPC', '6', 'shelf-03', 'SMALL'),
('IBMPC', '4', 'shelf-02', 'hah'),
('IBM', '4', 'shelf-02', 'hah'),
('IBM', '4', 'shelf-02', 'hah'),
('IBMPC', '4', 'shelf-02', 'hah'),
('IBMPC', '4', 'shelf-03', 'haha');

-- --------------------------------------------------------

--
-- 表的结构 `device`
--

CREATE TABLE IF NOT EXISTS `device` (
  `device` varchar(20) NOT NULL,
  `number` varchar(20) NOT NULL,
  `location` varchar(50) NOT NULL,
  `describle` varchar(200) NOT NULL,
  `repairnumber` varchar(1) NOT NULL,
  `department` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `device`
--

INSERT INTO `device` (`device`, `number`, `location`, `describle`, `repairnumber`, `department`) VALUES
('IBMPC', '4', 'table1', 'used for coding', '2', 'DataBase Lab'),
('IBMPC', '4', 'Cupboard-02', 'Bought On 20140302', '2', 'HardWare Lab'),
('可调整模块化存储系统', '4', 'shelf-04', 'Hitachi TagmaStore 网络存储控制器、 可调整模块化存储系统和 工作组模块化存储系统', '0', 'DataBase Lab'),
('DSP软核处理器设计实验平台', '2', 'shelf-05', 'use for hardware test.', '0', 'HardWare Lab'),
('IBMDisk', '8', 'shelf-03', '20G*10 piece,high load speed', '0', 'DataBase Lab'),
('IBMDisk', '8', 'shelf-06', ' 8G * 10 pieces,high speed', '1', 'HardWare Lab');

-- --------------------------------------------------------

--
-- 表的结构 `history`
--

CREATE TABLE IF NOT EXISTS `history` (
  `username` varchar(20) NOT NULL,
  `device` varchar(20) NOT NULL,
  `time` varchar(20) NOT NULL,
  `number` varchar(20) NOT NULL,
  `department` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `history`
--

INSERT INTO `history` (`username`, `device`, `time`, `number`, `department`) VALUES
('Yanke', 'HDisk', '2014.09.07', '1', ''),
('Yanke', 'HDisk', '20141025', '1', '');

-- --------------------------------------------------------

--
-- 表的结构 `picture`
--

CREATE TABLE IF NOT EXISTS `picture` (
  `id` varchar(10) NOT NULL,
  `picture` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `repair`
--

CREATE TABLE IF NOT EXISTS `repair` (
  `device` varchar(20) NOT NULL,
  `id` varchar(20) NOT NULL,
  `reporter` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `describle` varchar(50) NOT NULL,
  `department` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `repair`
--

INSERT INTO `repair` (`device`, `id`, `reporter`, `date`, `describle`, `department`) VALUES
('IBMPC', '1-32-55', 'Yanke', '20141028', 'keyBoard', ''),
('IBMPC', '12-33-42', 'Yanke', '20141028', 'Mac', ''),
('IBMPC', '12-33-43', 'Yanke', '20141028', '显示器', ''),
('IBMPC', '9-32-1', 'Yanke', '20141029', 'hardware broken', ''),
('IBMPC', '9-32-2', 'Jianjun', '20141029', '屏幕黑了', 'HardWare Lab'),
('IBMDisk', '2-03-1', 'Jianjun', '20141030', 'eee', 'HardWare Lab');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `name` varchar(20) NOT NULL,
  `actor` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `department` varchar(20) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `realname` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`name`, `actor`, `password`, `department`, `phone`, `realname`, `email`) VALUES
('Jack', 'Admin', '123456', '', '', '', ''),
('Tom', 'Guest', '1234567', 'DataBase Lab', '13456823401', 'Yanke', '1030009266@qq.com'),
('565171252@qq.com', 'Guest', 'yk0328gk12gd1920', 'HardWare Lab', '18654309630', 'Jianjun', 'yk0328gk12gd1920');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addinfo`
--
ALTER TABLE `addinfo`
 ADD FULLTEXT KEY `device` (`device`);

--
-- Indexes for table `device`
--
ALTER TABLE `device`
 ADD FULLTEXT KEY `device` (`device`), ADD FULLTEXT KEY `device_2` (`device`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
 ADD FULLTEXT KEY `username` (`username`,`device`,`time`), ADD FULLTEXT KEY `department` (`department`);

--
-- Indexes for table `picture`
--
ALTER TABLE `picture`
 ADD FULLTEXT KEY `id` (`id`);

--
-- Indexes for table `repair`
--
ALTER TABLE `repair`
 ADD FULLTEXT KEY `device` (`device`,`id`), ADD FULLTEXT KEY `department` (`department`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD FULLTEXT KEY `name` (`name`), ADD FULLTEXT KEY `realname` (`realname`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
