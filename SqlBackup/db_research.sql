-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2016 �?09 �?23 �?15:25
-- 服务器版本: 5.5.47
-- PHP 版本: 5.5.30

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `db_research`
--

-- --------------------------------------------------------

--
-- 表的结构 `tb_cost`
--

CREATE TABLE IF NOT EXISTS `tb_cost` (
  `cid` int(50) NOT NULL AUTO_INCREMENT,
  `cstatus` int(11) NOT NULL COMMENT '审核状态',
  `uid` int(33) NOT NULL,
  `cname` varchar(56) NOT NULL COMMENT '依托项目名称',
  `cnumber` varchar(20) NOT NULL COMMENT '依托项目编号',
  `cmanname` varchar(50) NOT NULL COMMENT '报销人',
  `ccost` varchar(60) NOT NULL COMMENT '报销金额',
  `ctype` varchar(40) NOT NULL COMMENT '报销类型',
  `ctime` int(10) NOT NULL COMMENT '报销时间',
  `cintroduction` text NOT NULL,
  `cpicpath` varchar(50) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

--
-- 转存表中的数据 `tb_cost`
--

INSERT INTO `tb_cost` (`cid`, `cstatus`, `uid`, `cname`, `cnumber`, `cmanname`, `ccost`, `ctype`, `ctime`, `cintroduction`, `cpicpath`) VALUES
(1, 2, 1, '科研管理系统', '000001', '小黑', '3000', '出差', 2016, '哈哈哈哈哈哈哈哈哈哈哈哈哈哈', 'img/temp/20160601101415.jpg'),
(2, 2, 1, '私人微教务', '000002', '小黑', '2222', '出差', 2016, '而非你居然防护', 'img/temp/20160518232932.jpg'),
(5, 2, 1, '乡医宝典', '000003', '小蓝', '1000', '出差', 2016, '3333333', 'images/temp/'),
(6, 2, 1, '科研管理系统', '000001', '小白', '2000', '出差', 2015, '出差', 'img/temp/'),
(7, 1, 1, '科研管理系统', '000001', '小绿', '1000', '出差', 2016, '出差', 'img/temp/'),
(8, 2, 1, '乡医宝典', '000003', '小明', '200', '出差', 2016, '去北京出差', 'img/temp/'),
(9, 1, 1, '私人微教务', '000002', '小明', '300', '论文', 2014, '论文', 'img/temp/'),
(10, 1, 1, '科研管理系统', '000001', '小白', '400', '论文', 2011, '论文', 'img/temp/'),
(11, 1, 1, '科研管理系统', '000001', '小黑', '2000', '论文', 2016, '论文', 'img/temp/'),
(12, 1, 1, '乡医宝典', '000003', '小黄', '2000', '论文', 2009, '论文', 'img/temp/'),
(13, 1, 1, '私人微教务', '000002', '小绿', '300', '论文', 2016, '论文', 'img/temp/'),
(14, 1, 1, '易识别', '000006', '小蓝', '3000', '出差', 2016, '出差', 'img/temp/'),
(15, 1, 1, '易识别', '000006', '小蓝', '2000', '论文', 2016, '论文', 'img/temp/'),
(16, 1, 1, '私人微教务', '000002', '小白', '200', '出差', 2016, '出差', 'img/temp/'),
(17, 1, 1, '乡医宝典', '000003', '小白', '300', '论文', 2011, '论文', 'img/temp/'),
(18, 1, 1, '私人微教务', '000002', '小白', '2000', '论文', 2016, '论文', 'img/temp/'),
(19, 1, 1, '乡医宝典', '000003', '小白', '2000', '出差', 2013, '出差', 'img/temp/'),
(20, 1, 1, '科研管理系统', '000001', '小白', '3000', '论文', 2016, '论文', 'img/temp/'),
(26, 1, 1, '科研管理系统', '000001', '小白', '600', '出差', 2010, '出差', ''),
(27, 1, 1, '易识别', '000006', '小白', '500', '出差', 2017, '出差', 'img/temp/20160512144807.jpg'),
(28, 1, 1, '办公用品', '', '小白', '200', '耗材', 2016, '买了笔，本', 'img/temp/'),
(29, 2, 1, '最新项目', '000009', '某人', '10000', '出差', 2016, '无', 'img/temp/'),
(30, 2, 1, '', '000011', '杨帆', '1000', '出差', 2016, '出差', 'img/temp/'),
(31, 2, 1, '毕业论文设计', '000006', '张建华', '100', '出差', 2017, '是否可以呢', 'img/temp/'),
(32, 1, 1, '毕业论文设计', '000012', '张建华', '200', '论文', 2016, '阿尔法', 'img/temp/'),
(33, 2, 1, '办公室翻新', '000012', '李四', '500', '耗材', 2016, '', 'img/temp/'),
(34, 2, 1, '项目申报', '000014', '王七', '300', '出差', 2016, '', 'img/temp/'),
(35, 1, 69, '教学', '000011', 'yang', '200', '出差', 2018, '', 'img/temp/20160622111200.jpg'),
(36, 2, 69, '教学', '000011', '样', '300', '出差', 2018, '', 'img/temp/20160622111318.jpg'),
(37, 2, 1, '教学', '000011', '赵', '700', '出差', 2016, '', 'img/temp/20160622114709.jpg'),
(38, 2, 1, '教学', '000011', '赵', '500', '论文', 2016, '', 'img/temp/20160622114906.jpg'),
(39, 1, 1, '平时出差', '', '周', '600', '其他', 2016, '', 'img/temp/20160622115654.jpg'),
(40, 1, 1, '没有', '', '吴', '200', '耗材', 2017, '', 'img/temp/20160622120351.jpg'),
(41, 1, 1, '最新项目', '000009', '吴', '300', '论文', 2017, '', 'img/temp/20160622120721.png'),
(42, 2, 1, '项目24', '000026', '王', '3000', '出差', 2016, '', 'img/temp/20160622143459.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `tb_declare`
--

CREATE TABLE IF NOT EXISTS `tb_declare` (
  `did` int(40) NOT NULL AUTO_INCREMENT,
  `uid` int(33) NOT NULL,
  `dnumber` varchar(80) NOT NULL COMMENT '项目编号',
  `dproname` varchar(50) NOT NULL COMMENT '项目名称',
  `dtype` varchar(30) NOT NULL COMMENT '项目类型',
  `dmanname` varchar(40) NOT NULL COMMENT '项目负责人',
  `dmoney` bigint(40) NOT NULL COMMENT '项目经费',
  `dintroduction` text NOT NULL COMMENT '项目简介',
  `dpath` varchar(50) NOT NULL COMMENT '上传文档路径',
  `dbalance` int(20) NOT NULL COMMENT '余额',
  `dstatus` int(10) NOT NULL COMMENT '审核状态',
  `dtime` int(10) NOT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- 转存表中的数据 `tb_declare`
--

INSERT INTO `tb_declare` (`did`, `uid`, `dnumber`, `dproname`, `dtype`, `dmanname`, `dmoney`, `dintroduction`, `dpath`, `dbalance`, `dstatus`, `dtime`) VALUES
(1, 1, '000001', '科研管理系统', '教学团队', '啦啦啦', 10000, '', '20160527053547.doc', 2000, 2, 2016),
(2, 1, '000002', '私人微教务', '教学团队', '苗景超', 20000, '', '20160527053331.doc', 17778, 2, 2016),
(3, 1, '000003', '乡医宝典', '教学团队', '王诺楠', 10000, '', '0', 8800, 2, 2016),
(4, 1, '000004', '信息科学与工程学院', '教学团队', '王诺楠', 10000, '', 'declareUploaded/20160527152547.doc', 10000, 2, 2016),
(5, 0, '000005', '哈哈哈哈', '科研创新团队', '方法方法方法方法', 10000, '', '0', 10000, 2, 2016),
(6, 1, '000006', '易识别', '教学改革项目', '333', 10000, '', '0', 9900, 2, 2015),
(8, 1, '000008', '呃呃呃呃呃呃呃呃', '教学改革项目', '啦啦啦啦啦', 10000, '', 'declareUploaded/', 10000, 2, 2014),
(10, 1, '000009', '最新项目', '科研项目', '小白', 20000, '', 'declareUploaded/20160601083044.doc', 10000, 2, 2016),
(11, 1, '000010', '科研室装修', '科研项目', '未知', 0, '装修科研室', 'declareUploaded/', 0, 1, 2016),
(12, 1, '000011', '教学', '科研项目', '杨帆', 20000, '优秀啊', 'declareUploaded/20160622074434.jpg', 17500, 2, 2015),
(13, 1, '000012', '毕业论文设计', '科研创新团队', '张建华', 30000, '这是一个论文设计项目', 'declareUploaded/20160622080443.png', 29500, 2, 2016),
(14, 1, '000013', '办公室布置', '教学团队', '李四', 1500, '办公室翻新', 'declareUploaded/20160622081937.png', 1500, 2, 2016),
(15, 1, '000014', '项目申报', '教学团队', '项目申报', 3000, '项目申报项目申报', 'declareUploaded/20160622095314.jpg', 2700, 2, 2018),
(16, 1, '000015', '申报1', '教学改革项目', '李子', 2000, '申报1申报1申报1申报1', 'declareUploaded/20160622104136.jpg', 2000, 1, 2018),
(17, 1, '000016', '申报3', '科研项目', '李五', 6000, '', 'declareUploaded/20160622104821.jpg', 6000, 1, 2019),
(19, 1, '000017', '项目申报8', '科研项目', '李', 10000, 'Sa项目申报8项目申报8项目申报8', 'declareUploaded/20160622112016.jpg', 10000, 1, 2017),
(20, 1, '000018', '相依宝典', '科研项目', '王诺楠', 10000, '十六番略', 'declareUploaded/20160622112727.png', 10000, 2, 2017),
(21, 1, '000019', '申报11', '科研项目', '王', 100000, '申报11申报11申申报11报11申报11', 'declareUploaded/20160622114223.png', 100000, 1, 2016),
(22, 1, '000020', '项目12', '教学团队', '周', 5000, '项目12项目12项目12项目12', 'declareUploaded/20160622115142.jpg', 5000, 1, 2016),
(23, 1, '000021', '项目13', '科研项目', '吴', 4000, '项目13项目13项目13项目13', 'declareUploaded/20160622120212.jpg', 4000, 1, 2018),
(24, 1, '000022', '项目15', '科研项目', '吴', 10000, '项目15项目15项目15', 'declareUploaded/20160622124045.doc', 10000, 1, 2017),
(25, 1, '000023', '项目２３', '科研项目', '同学', 0, '项目２３项目２３项目２３', 'declareUploaded/20160622124939.doc', 0, 1, 2017),
(26, 1, '000024', '哈哈', '科研项目', '哈哈', 0, '哈哈哈哈哈', 'declareUploaded/20160622125049.doc', 0, 1, 2017),
(27, 1, '000025', '噢噢噢噢', '科研项目', '奇偶', 100000, '噢噢噢噢噢噢噢噢噢噢噢噢', 'declareUploaded/20160622125244.jpg', 100000, 2, 2016),
(28, 1, '000026', '项目24', '科研项目', '项目24', 30000, '项目24项目24', 'declareUploaded/20160622142954.doc', 27000, 2, 2016);

-- --------------------------------------------------------

--
-- 表的结构 `tb_dynamic`
--

CREATE TABLE IF NOT EXISTS `tb_dynamic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dtitle` varchar(30) NOT NULL COMMENT '动态主题',
  `dpath` varchar(100) NOT NULL COMMENT '图片路径',
  `dcontent` text NOT NULL COMMENT '动态内容',
  `dtime` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='动态发布表' AUTO_INCREMENT=18 ;

--
-- 转存表中的数据 `tb_dynamic`
--

INSERT INTO `tb_dynamic` (`id`, `dtitle`, `dpath`, `dcontent`, `dtime`) VALUES
(2, '在路上', 'images/uploads/20160605131958.jpg', '人生就该来一场<strong>糊涂</strong>之旅', '2016-06-05'),
(4, '好时光', 'images/uploads/20160605133515.jpg', '清晨有多美只有早起才知道 清晨有多美只有早起才知道清晨有多美只有早起才知道清晨有多美只有早起才知道清晨有多美只有早起才知道清晨有多美只有早起才知道清晨有多美只有早起才知道清晨有多美只有早起才知道清晨有多美只有早起才知道清晨有多美只有早起才知道清晨有多美只有早起才知道清晨有多美只有早起才知道', '2016-06-05'),
(5, '滑雪板', 'images/uploads/20160605133717.jpg', '滑雪爽不爽只有体验才知道', '2016-06-05'),
(6, '色彩小巷', 'images/uploads/20160605134213.png', '谜一样的自信来自谜一样的生活', '2016-06-05'),
(8, '不一样的烟火', 'images/uploads/20160605150655.jpg', '下雨天留客天天留我不留', '2016-06-05'),
(9, '随遇而安', 'images/uploads/20160605150946.jpg', '把美好生活留在笔下', '2016-06-05'),
(15, '优秀项目', 'images/uploads/20160622121732.jpg', '优秀项目优秀项目优秀', '2016-06-22'),
(16, '哈哈', 'images/uploads/20160622124743.jpg', '优秀的论文', '2016-06-22'),
(17, '优秀小论文', 'images/uploads/20160622142701.png', '这个论文很优秀啊', '2016-06-22');

-- --------------------------------------------------------

--
-- 表的结构 `tb_message`
--

CREATE TABLE IF NOT EXISTS `tb_message` (
  `mid` int(20) NOT NULL AUTO_INCREMENT,
  `uid` int(20) NOT NULL,
  `mtitle` varchar(50) NOT NULL,
  `mcontent` text NOT NULL,
  `mstatus` int(10) NOT NULL,
  `mtime` date NOT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `tb_message`
--

INSERT INTO `tb_message` (`mid`, `uid`, `mtitle`, `mcontent`, `mstatus`, `mtime`) VALUES
(1, 1, '意见', '意见内容', 1, '0000-00-00'),
(2, 1, '意见主题', '最新意见内容', 1, '0000-00-00'),
(3, 1, '意见主题是哈哈哈哈哈哈哈哈哈', '哈哈哈哈哈', 2, '2016-06-08'),
(4, 1, '意见主题 意见主题 意见主题 意见主题 ', '意见主题 意见主题 意见主题 意见主题 意见主题 意见主题 ', 1, '2016-06-08'),
(5, 1, '意见主题 意见主题 意见主题 意见主题 意见主题 意见主题 ', '意见主题 意见主题 意见主题 意见主题 意见主题 ', 1, '2016-06-08'),
(6, 1, '测试一下', '测试一下测试一下', 1, '2016-06-21'),
(7, 1, '意见很大啊', '为什么呢为什么呢为什么呢', 1, '2016-06-22'),
(8, 1, '意见1', '意见1意见1意见1意见1', 1, '2016-06-22'),
(9, 1, '哈哈哈', '哈啊你说啊', 1, '2016-06-22'),
(10, 1, '这个又问提', '问题问题', 1, '2016-06-22');

-- --------------------------------------------------------

--
-- 表的结构 `tb_tj_awards`
--

CREATE TABLE IF NOT EXISTS `tb_tj_awards` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '获奖id',
  `uid` int(6) NOT NULL COMMENT '用户外键',
  `date` varchar(15) NOT NULL COMMENT '统计日期',
  `prize` varchar(25) NOT NULL COMMENT '奖项',
  `pname` varchar(25) NOT NULL COMMENT '成果名',
  `level` varchar(20) NOT NULL,
  `pdate` date NOT NULL COMMENT '获奖日期',
  `number` varchar(30) NOT NULL COMMENT '证书编号',
  `author` varchar(20) NOT NULL COMMENT '获奖者',
  `ranking` varchar(5) NOT NULL COMMENT '本人排名',
  `source` text NOT NULL COMMENT '依托项目',
  `remarks` text NOT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `FK_ID` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='科研获奖统计' AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `tb_tj_awards`
--

INSERT INTO `tb_tj_awards` (`id`, `uid`, `date`, `prize`, `pname`, `level`, `pdate`, `number`, `author`, `ranking`, `source`, `remarks`) VALUES
(1, 1, '2016', '16年奖项', '16年奖项', '16年奖项', '0000-00-00', '16年奖项', '16年奖项', '16年奖项', '16年奖项', '16年奖项16年奖项'),
(2, 1, '2015', '15年奖项', '15年奖项', '15年奖项', '0000-00-00', '15年奖项', '15年奖项', '15年奖项', '15年奖项', '15年奖项'),
(4, 1, '2010', '统计奖项', '统计奖项', '一等奖', '2016-05-13', '统计奖项', '统计奖项', '第一', '统计奖项', '统计奖项'),
(6, 1, '2016', '创新先锋奖', '骆驼', '先锋奖', '2016-06-01', '20200191919', 'b509', '第一', '依托的项目', '备注一下'),
(7, 1, '2020', '优秀教师', '优秀教师', '一等奖', '2016-06-15', '024564', '王六', '第一', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `tb_tj_competition`
--

CREATE TABLE IF NOT EXISTS `tb_tj_competition` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `uid` int(6) NOT NULL COMMENT '用户外键',
  `date` varchar(15) NOT NULL,
  `wname` varchar(30) NOT NULL COMMENT '作品名称',
  `student` varchar(25) NOT NULL COMMENT '参赛学生',
  `sponsor` varchar(25) NOT NULL COMMENT '主办方',
  `teacher` varchar(20) NOT NULL COMMENT '指导老师',
  `level` varchar(20) NOT NULL COMMENT '获奖级别',
  `remarks` text NOT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `FK_ID2` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='学生竞赛情况统计表' AUTO_INCREMENT=21 ;

--
-- 转存表中的数据 `tb_tj_competition`
--

INSERT INTO `tb_tj_competition` (`id`, `uid`, `date`, `wname`, `student`, `sponsor`, `teacher`, `level`, `remarks`) VALUES
(3, 1, '2018', '修改测试通过', '修改测试通过', '修改测试通过', '修改测试通过', '修改测试通过', '修改测试通过修改测试通过修改测试通过'),
(4, 1, '2009', '09年作品', '09年作品2', '09年作品3', '09年作品4', '09年作品5', '09年作品6'),
(5, 1, '2010', '10年作品', '10年作品2', '10年作品3', '10年作品4', '10年作品5', '10年作品6'),
(6, 1, '2011', '11年作品', '11年作品2', '11年作品3', '11年作品4', '11年作品5', '11年作品6'),
(7, 1, '2012', '12年作品', '12年作品2', '12年作品3', '12年作品4', '12年作品5', '12年作品6'),
(8, 1, '2013', '13年作品', '13年作品2', '13年作品3', '13年作品4', '13年作品5', '13年作品6'),
(9, 1, '2014', '14年作品', '14年作品', '14年作品', '14年作品', '14年作品', '14年作品'),
(10, 1, '2015', '15年作品', '15年作品', '15年作品', '15年作品', '15年作品', '15年作品'),
(11, 1, '2015', '15年作品2', '15年作品2', '15年作品2', '15年作品2', '15年作品2', '15年作品2'),
(12, 1, '2015', '15年作品3', '15年作品3', '15年作品3', '15年作品3', '15年作品3', '15年作品3'),
(13, 1, '2015', '15年作品4', '15年作品4', '15年作品4', '15年作品4', '15年作品4', '15年作品4'),
(14, 1, '2015', '15年作品5', '15年作品5', '15年作品5', '15年作品5', '15年作品5', '15年作品5'),
(15, 1, '2015', '15年作品6', '15年作品6', '15年作品6', '15年作品6', '15年作品6', '15年作品6'),
(16, 1, '2015', '15年作品7', '15年作品7', '15年作品7', '15年作品7', '15年作品7', '15年作品7'),
(17, 1, '2015', '15年作品8', '15年作品8', '15年作品8', '15年作品8', '15年作品8', '15年作品8'),
(18, 1, '2015', '15年作品9', '15年作品9', '15年作品9', '15年作品9', '15年作品9', '15年作品9'),
(19, 1, '2015', '15年作品10', '15年作品10', '15年作品10', '15年作品10', '15年作品10', '15年作品10'),
(20, 1, '2015', '15年作品11', '15年作品11', '15年作品11', '15年作品11', '15年作品11', '15年作品11');

-- --------------------------------------------------------

--
-- 表的结构 `tb_tj_industry`
--

CREATE TABLE IF NOT EXISTS `tb_tj_industry` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `uid` int(6) NOT NULL,
  `date` varchar(15) NOT NULL,
  `wname` varchar(25) NOT NULL COMMENT '作品名',
  `uname` varchar(25) NOT NULL COMMENT '上传市场名',
  `link` varchar(200) NOT NULL COMMENT '上传市场链接',
  `introduction` text NOT NULL COMMENT '作品简介',
  `remarks` text NOT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `FK_ID3` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='作品产业化' AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `tb_tj_industry`
--

INSERT INTO `tb_tj_industry` (`id`, `uid`, `date`, `wname`, `uname`, `link`, `introduction`, `remarks`) VALUES
(1, 1, '2015', '产业化统计修改测试成功3', '产业化统计修改测试成功', '产业化统计修改测试成功', '产业化统计修改测试成功', '产业化统计修改测试成功'),
(2, 1, '2015', '15年统计', '15年统计', '15年统计', '15年统计', '15年统计'),
(3, 1, '2016', '16年作品', '16年作品', '12132312sdssdad', '16年作品', '16年作品');

-- --------------------------------------------------------

--
-- 表的结构 `tb_tj_propertyright`
--

CREATE TABLE IF NOT EXISTS `tb_tj_propertyright` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `uid` int(6) NOT NULL COMMENT '用户外键',
  `date` varchar(15) NOT NULL COMMENT '统计日期',
  `department` varchar(25) NOT NULL COMMENT '部门',
  `name` varchar(20) NOT NULL,
  `idcard` varchar(25) NOT NULL COMMENT '身份证号',
  `paycard` varchar(25) NOT NULL COMMENT '工资卡号',
  `cname` varchar(30) NOT NULL COMMENT '专利名',
  `type` varchar(15) NOT NULL COMMENT '种类',
  `address` varchar(5) NOT NULL COMMENT '是否署名本校',
  `remarks` text NOT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `FK_ID4` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='知识产权统计表' AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `tb_tj_propertyright`
--

INSERT INTO `tb_tj_propertyright` (`id`, `uid`, `date`, `department`, `name`, `idcard`, `paycard`, `cname`, `type`, `address`, `remarks`) VALUES
(2, 1, '2016', '信息科学与工程学院', '某人1', '专利修改测试成功', '专利修改测试成功', '专利修改测试成功', '发明专利', '是', '专利修改测试成功'),
(3, 1, '2016', '信息科学与工程学院', '某某人', '2132131231232131321', '123123132321131231', '新能源', '获软件著作权登记', '是', '备注一下'),
(4, 1, '2015', '信息科学与工程学院', '某某人', '2132131231232131321', '123123132321131231', '新能源2', '获软件著作权登记', '是', '是的撒大大');

-- --------------------------------------------------------

--
-- 表的结构 `tb_tj_theses`
--

CREATE TABLE IF NOT EXISTS `tb_tj_theses` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '论文id',
  `uid` int(6) NOT NULL COMMENT '用户外键',
  `date` varchar(15) NOT NULL,
  `name` varchar(30) NOT NULL COMMENT '论文名称',
  `sname` varchar(30) NOT NULL COMMENT '刊物',
  `period` varchar(20) NOT NULL COMMENT '年卷期',
  `author` varchar(20) NOT NULL,
  `status` varchar(6) NOT NULL,
  `level` varchar(20) NOT NULL,
  `source` text NOT NULL COMMENT '依托项目',
  `number` varchar(30) NOT NULL COMMENT '依托项目编号',
  `remarks` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ID5` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='论文统计' AUTO_INCREMENT=40 ;

--
-- 转存表中的数据 `tb_tj_theses`
--

INSERT INTO `tb_tj_theses` (`id`, `uid`, `date`, `name`, `sname`, `period`, `author`, `status`, `level`, `source`, `number`, `remarks`) VALUES
(5, 1, '2015', '论文修改测试ok', '论文修改测试ok', '论文修改测试ok', '论文修改测试ok', '已收录', '普通期刊', '论文修改测试ok', '论文修改测试ok', '论文修改测试ok'),
(6, 1, '2015', '论文5', '论文5', '论文5', '论文5', '已收录', 'SCI收录', '论文5', '论文5', '论文5'),
(7, 1, '2023', '论文4', '论文4', '论文4', '论文4', '已收录', 'SCI收录', '论文4', '论文4', '论文4'),
(8, 1, '2020', '论文6', '论文6', '论文6', '论文6', '已收录', 'SCI收录', '论文6', '论文6', '论文6'),
(9, 1, '2009', '123论文', '123论文', '123论文', '123论文', '已收录', 'SCI收录', '123论文', '123论文', '123论文'),
(10, 1, '2010', '12论文', '12论文', '12论文', '12论文', '已收录', 'SCI收录', '12论文', '12论文', '12论文'),
(11, 1, '2011', '89论文', '89论文', '89论文', '89论文', '已收录', 'SCI收录', '89论文', '89论文', '89论文'),
(12, 1, '2012', '23论文', '23论文', '23论文', '23论文', '已收录', 'SCI收录', '23论文', '23论文', '23论文'),
(13, 1, '2014', '33论文', '33论文', '33论文', '33论文', '已收录', 'SCI收录', '33论文', '33论文', '33论文'),
(14, 1, '2015', '44论文', '44论文', '44论文', '44论文', '已收录', 'SCI收录', '44论文', '44论文', '44论文'),
(15, 1, '2016', '16论文', '16论文', '16论文', '16论文', '已收录', 'SCI收录', '16论文', '16论文', '16论文'),
(16, 1, '2018', '18论文', '18论文', '18论文', '18论文', '已收录', 'SCI收录', '18论文', '18论文', '18论文'),
(17, 1, '2019', '19论文', '19论文', '19论文', '19论文', '已收录', 'SCI收录', '19论文', '19论文', '19论文'),
(18, 1, '2020', '20论文', '20论文', '20论文', '20论文', '已收录', 'SCI收录', '20论文', '20论文', '20论文'),
(19, 1, '2020', '20论文', '20论文', '20论文', '20论文', '已收录', 'SCI收录', '20论文', '20论文', '20论文'),
(20, 1, '2021', '21论文', '21论文', '21论文', '21论文', '已收录', 'SCI收录', '21论文', '21论文', '21论文'),
(21, 1, '2022', '22论文', '22论文', '22论文', '22论文', '已收录', 'SCI收录', '22论文', '22论文', '22论文'),
(22, 1, '2023', '23论文', '论文', '论文', '论文', '已收录', 'SCI收录', '论文', '论文', '论文'),
(23, 1, '2023', '24论文修改为23', '论文23', '论文23', '论文23', '已发表', '测试其他', '论文23', '12221223', '论文23'),
(24, 1, '2025', '25论文', '论文', '论文', '论文', '已收录', 'SCI收录', '论文', '1212', '论文'),
(26, 1, '2027', '赛题', '赛题', '赛题', '赛题', '已收录', 'SCI收录', '赛题', '赛题', '赛题'),
(27, 1, '2028', '一点钟方向', '一点钟方向', '一点钟方向', '一点钟方向', '已收录', 'SCI收录', '一点钟方向', '一点钟方向', '一点钟方向'),
(28, 1, '2027', '三五六九', '三五六九', '三五六九', '三五六九', '已收录', 'SCI收录', '三五六九', '三五六九', '三五六九'),
(29, 1, '2024', '黛绿山峰', '黛绿山峰', '黛绿山峰', '黛绿山峰', '已收录', 'SCI收录', '黛绿山峰', '黛绿山峰', '黛绿山峰'),
(30, 1, '2030', '俯瞰', '俯瞰', '俯瞰', '俯瞰', '已收录', 'SCI收录', '俯瞰', '俯瞰', '俯瞰'),
(31, 1, '2031', '瞬间石化', '瞬间石化', '瞬间石化', '瞬间石化', '已收录', 'SCI收录', '瞬间石化', '212121212', '瞬间石化'),
(32, 1, '2031', '31论文', '31论文', '31论文', '31论文', '已收录', 'SCI收录', '31论文', '32323232', '31论文'),
(33, 1, '2030', '30年论文', '30年论文', '30年论文', '30年论文', '已收录', 'SCI收录', '30年论文', '30年论文', '30年论文'),
(34, 2, '2016', '用户2的统计', '用户2的统计', '用户2的统计', '用户2的统计', '已收录', 'SCI收录', '用户2的统计', '用户2的统计', '用户2的统计'),
(35, 1, '2015', '测试项目', '测试项目', '测试项目', '测试项目', '已收录', 'SCI收录', '测试项目', '测试项目', '测试项目'),
(36, 1, '2016', '基于php的科研管理系统', '论文', '3', '未知', '已收录', '普通期刊', '论文依托项目', '20191919', '备注一下'),
(37, 1, '2016', '论文5', '论文5', '1', '论文5', '已收录', 'SCI收录', '论文5', '4', '论文5'),
(38, 1, '2015', '论文', '论文', '1', '某人', '已收录', 'SCI收录', '论文', '123213', '论文'),
(39, 1, '2017', '中国梦', '校报', '2016', '张三', '已发表', 'SCI收录', '校级评选', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `tb_tj_underpro`
--

CREATE TABLE IF NOT EXISTS `tb_tj_underpro` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '项目id',
  `uid` int(6) NOT NULL COMMENT '用户外键',
  `date` varchar(15) NOT NULL,
  `name` varchar(30) NOT NULL COMMENT '课题名称',
  `number` varchar(30) NOT NULL COMMENT '课题编号',
  `source` varchar(50) NOT NULL,
  `cycle` varchar(20) NOT NULL COMMENT '周期',
  `charge` varchar(20) NOT NULL COMMENT '负责人',
  `funds` varchar(10) NOT NULL COMMENT '经费',
  `remarks` text NOT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `FK_ID6` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- 转存表中的数据 `tb_tj_underpro`
--

INSERT INTO `tb_tj_underpro` (`id`, `uid`, `date`, `name`, `number`, `source`, `cycle`, `charge`, `funds`, `remarks`) VALUES
(1, 1, '2015', '承担项目修改测试成功2', '承担项目修改测试成功', '承担项目修改测试成功', '承担项目修改测试成功', '承担项目修改测试成功', '承担项目修改测试成功', '承担项目修改测试成功'),
(2, 1, '2014', '科研统计2', '科研统计2', '科研统计2', '科研统计2', '科研统计2', '科研统计2', '科研统计2'),
(3, 1, '2014', '课题3', '课题3', '课题3', '课题3', '课题3', '课题3', '课题3'),
(4, 1, '2016', '课题4', '课题4', '课题4', '课题4', '课题4', '课题4', '课题4'),
(6, 1, '2014', '课题5', '课题5', '课题5', '课题5', '某人1', '课题5', '课题5'),
(7, 1, '2010', '10年课题1', '10年课题1', '10年课题1', '10年课题1', '10年课题1', '10年课题1', '10年课题1'),
(8, 1, '2010', '10年课题2', '10年课题2', '10年课题2', '10年课题2', '10年课题2', '10年课题2', '10年课题2'),
(9, 1, '2010', '10年课题3', '10年课题3', '10年课题3', '10年课题3', '10年课题3', '10年课题3', '10年课题3'),
(10, 1, '2010', '10年课题4', '10年课题4', '10年课题4', '10年课题4', '10年课题4', '10年课题4', '10年课题4'),
(11, 1, '2010', '10年课题5', '10年课题5', '10年课题5', '10年课题5', '10年课题5', '10年课题5', '10年课题5'),
(12, 1, '2010', '10年课题6', '10年课题6', '10年课题6', '10年课题6', '10年课题6', '10年课题6', '10年课题6'),
(13, 1, '2010', '10年课题7', '10年课题7', '10年课题7', '10年课题7', '10年课题7', '10年课题7', '10年课题7'),
(14, 1, '2010', '10年课题8', '10年课题8', '10年课题8', '10年课题8', '10年课题8', '10年课题8', '10年课题8'),
(15, 1, '2010', '10年课题9', '10年课题9', '10年课题9', '10年课题9', '10年课题9', '10年课题9', '10年课题9'),
(16, 1, '2010', '10年课题10', '10年课题10', '10年课题10', '10年课题10', '10年课题10', '10年课题10', '10年课题10'),
(17, 1, '2010', '10年课题11', '10年课题11', '10年课题11', '10年课题11', '10年课题11', '10年课题11', '10年课题11'),
(18, 1, '2010', '10年课题12', '10年课题12', '10年课题12', '10年课题12', '10年课题12', '10年课题12', '10年课题12'),
(19, 1, '2015', '论文5', '123', '123', '123', '某人1', '12', '的负担复旦'),
(20, 1, '2015', '论文5', '123', '123', '123', '某人1', '12', '千万千万千万'),
(21, 1, '2015', '论文5', '123', '123', '123', '某人1', '12', '12121212'),
(22, 1, '2015', '1111', '111', '111', '1111', '某人1', '111', '111'),
(23, 1, '2015', '123', '123', '123', '123', '某人1', '123', '123'),
(24, 1, '2015', '1212', '1212', '1212', '1212', '1212', '1212', '1212'),
(25, 1, '2015', '1313', '1313', '1313', '1313', '1313', '1313', '1313'),
(26, 1, '2017', '课题10', '02210', '学校', '1年', '王五', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `user_admin`
--

CREATE TABLE IF NOT EXISTS `user_admin` (
  `uid` int(5) NOT NULL AUTO_INCREMENT COMMENT '管理员id',
  `username` varchar(25) NOT NULL COMMENT '账户',
  `password` varchar(60) NOT NULL COMMENT '密码',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='管理员表' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `user_admin`
--

INSERT INTO `user_admin` (`uid`, `username`, `password`) VALUES
(1, 'admin', 'e151b3c00ab7b1c0730fed639b8c4337');

-- --------------------------------------------------------

--
-- 表的结构 `user_list`
--

CREATE TABLE IF NOT EXISTS `user_list` (
  `uid` int(6) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` varchar(20) NOT NULL COMMENT '用户名',
  `password` varchar(50) NOT NULL COMMENT '密码',
  `name` varchar(20) NOT NULL COMMENT '用户真实姓名',
  `sex` varchar(2) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='用户表' AUTO_INCREMENT=76 ;

--
-- 转存表中的数据 `user_list`
--

INSERT INTO `user_list` (`uid`, `username`, `password`, `name`, `sex`) VALUES
(1, 'admin', 'e151b3c00ab7b1c0730fed639b8c4337', '罗素', '女'),
(2, 'admin2', '0fbaa593771fcd031a4c', '乔恩', '男'),
(3, 'admin3', '7e7bb3b769ac606a91055c034f67b2b9', '用户3', '男'),
(4, 'admin4', '7f67a4a2e8ad42e6f614fa60cede4a79', '用户4', '男'),
(5, 'admin5', '26a91342190d515231d7238b0c5438e1', '用户5', '男'),
(6, 'admin6', 'fb5860e42cdee45ad05c33227379db23', '用户6', '男'),
(37, 'admin5', 'c1a051054f97e81be3dc4f2c50e560d9', 'dfd', '男'),
(38, '123', '621b74aef22d7a45d96ac68245b859f6', '123', '男'),
(39, 'dfdff', '2e4a5af591418f3e561be3a2951d3fbe', 'afdf', '女'),
(67, 'Warial', 'e151b3c00ab7b1c0730fed639b8c4337', '王诺楠', '女'),
(68, 'xiaoming', '27b50e68155ac30f74780df7d67bf867', '小明', '男'),
(69, 'admin100', 'a8ca4cb052d35059d1bb35fc9ed3affd', '小杨', '女'),
(70, 'admin112', 'e5ebc0e5ffbb6b7e302f7be69af67137', '小芳', '女'),
(71, 'admin11', '219491f620cf50c06527658929dd3219', '吴', '女'),
(72, 'zhesiyonghuming', '6bf8485c6f8f4f1e30385363cd7540b7', '小红', '女'),
(73, 'sfdv', '772f1d55130441ebaac2e040731b2ca4', '校长', '女'),
(74, 'osposk', '86d4ec836fcc8661a95f7a6ac84513d8', '小里', '男'),
(75, 'admin11', '219491f620cf50c06527658929dd3219', '理睬', '男');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
