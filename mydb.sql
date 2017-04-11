/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : mydb

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-04-11 16:40:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `address`
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `Aid` int(11) NOT NULL AUTO_INCREMENT,
  `Uid` int(11) NOT NULL,
  `AzipCode` varchar(10) NOT NULL,
  `Aphone` varchar(11) NOT NULL,
  `Aarea` varchar(50) NOT NULL,
  `Astreet` varchar(50) NOT NULL,
  `AaddressDetail` varchar(200) NOT NULL,
  `Areceiver` varchar(20) NOT NULL,
  PRIMARY KEY (`Aid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('1', '1', '010010', '13245645645', '北京市朝阳区', '大街', 'XXXX1号', 'ss');

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `adminid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  PRIMARY KEY (`adminid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', 'admin');

-- ----------------------------
-- Table structure for `book`
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `Bid` int(11) NOT NULL AUTO_INCREMENT,
  `Bname` varchar(200) NOT NULL,
  `Btype` varchar(100) NOT NULL,
  `Btype2` varchar(100) NOT NULL,
  `Bauthor` varchar(100) DEFAULT NULL,
  `BISBN` varchar(20) NOT NULL,
  `Brecommend` double NOT NULL,
  `Bpress` varchar(100) DEFAULT NULL,
  `BpubDate` varchar(50) DEFAULT NULL,
  `Bsum` int(11) NOT NULL,
  `BsellSum` int(11) DEFAULT '0',
  `Bedition` varchar(20) DEFAULT NULL,
  `BtotalPages` int(11) DEFAULT NULL,
  `Bcover` varchar(200) NOT NULL,
  `BbookSize` varchar(20) DEFAULT NULL,
  `Bprice` double NOT NULL,
  `Bcontent` text,
  `Bcatalog` text,
  PRIMARY KEY (`Bid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('2', 'HTML5权威指南', '计算机网络', '程序设计', '弗里曼 (Adam Freeman) ', '\'9787115338365', '5', '人民邮电出版社', '2014/1/1', '37', '3', ' 第1版 ', '834', '51XgM81bMgL.jpg', '16', '95.5', 'HTML5 权威指南》是系统学习网页设计的权威参考图书。本书分为五部分：一部分介绍学习本书的预备知识和HTML、CSS 和JavaScript 的最新进展；第二部分讨论HTML 元素，并详细说明了HTML5中新增和修改的元素；第三部分阐述CSS，涵盖了所有控制内容样式的CSS 选择器和属性，并辅以大量代码示例和图示；第四部分介绍DOM，剖析如何用JavaScript 操纵HTML 内容；第五部分讲解Ajax、多媒体和canvas 元素等HTML5 高级特性。', '第一部分　开篇　');
INSERT INTO `book` VALUES ('3', 'Java从入门到精通（第3版', '计算机网络', '程序设计', '明日科技', '\'9787302287568', '3', '', '', '19', '1', '', '0', '22862060-1_w_1.jpg', '', '42', '', '');
INSERT INTO `book` VALUES ('4', '边城', '小说传记', '热门小说', '沈从文', '\'9787543067028', '3', '', '', '40', '0', '', '16', '23311849-1_w_2.jpg', '8', '21', '', 'd');
INSERT INTO `book` VALUES ('5', 'STL源码剖析', '计算机网络', '程序设计', '侯捷', '\'9787560926995', '5', '华中科技大学出版社', '2015/12/1', '25', '0', ' 第1版 ', '493', '23807467-1_w_1.jpg', '8', '43.9', '本书所呈现的源码，使你踏上了基度山岛。源码之前了无秘密，你将看到vector的实现、list的实现、heap的实现、deque的实现、RedBlack tree的实现、hashtable的实现、set/map的实现；你将看到各种算法（排序、查找、排列组合、数据', '');
INSERT INTO `book` VALUES ('6', '偷影子的人', '小说传记', '科幻小说', '马克·李维', '\'9787540455958', '5', '湖南文艺出版社', '', '60', '0', '第一版', '320', '22788959-1_w_1.jpg', '16', '18.1', '　自出版以来，《影响力》就一直是最为畅销的图书。由于它的影响，劝说得以成为一门科学。无论你是普通人还是为某一产品或事业观点游说的人，这都是一本最基本的书，是你理解人们心理的基石。', '');
INSERT INTO `book` VALUES ('7', '不忘初心，方得始终', '青春文学', '爱情/情感', '凌茜　', '\'9787535466129', '5', '长江文艺出版社', '', '100', '0', '', '242', '23280073-1_w_1.jpg', '16', '28.6', '真正有气质的人，从不炫耀自己所拥有的一切，不告诉别人自己读过什么书，去过什么地方，有多少件衣裳，买过多少低调华丽的奢饰品，因为TA没有自卑感。', '作者序每个人，都有放下与离开的权利　 ');
INSERT INTO `book` VALUES ('8', '将建筑进行到底', '建筑', '建筑科学', '罗松', '\'9787111514213', '5', '机械工业出版社', '', '60', '0', '第一版', '283', '23809574-1_m_1.jpg', '16', '63.5', '本书以职场指南穿插小故事的形式，讲述了“建筑界的杜拉拉”——罗小姐，从懵懂的建筑系小女生，成长为职业女建筑师的心路历程以及对职场经验的提炼和总结。见识了各种职场变迁，也历经了各种磨练。在诙谐幽默的嬉笑怒骂中，她以对建', '');

-- ----------------------------
-- Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `Cid` int(11) NOT NULL AUTO_INCREMENT,
  `Bid` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Cpicture` varchar(500) DEFAULT NULL,
  `Ccomment` varchar(50) NOT NULL,
  `Ctime` varchar(200) NOT NULL,
  PRIMARY KEY (`Cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `Oid` int(11) NOT NULL AUTO_INCREMENT,
  `Bid` int(11) NOT NULL,
  `Bname` varchar(200) NOT NULL,
  `Uid` int(11) NOT NULL,
  `Uname` varchar(50) NOT NULL,
  `Aid` int(11) DEFAULT NULL,
  `Cid` int(11) DEFAULT NULL,
  `Oprice` double DEFAULT NULL,
  `Onum` int(11) NOT NULL,
  `OstartTime` datetime NOT NULL,
  `OpayTime` datetime DEFAULT NULL,
  `OendTime` datetime DEFAULT NULL,
  `Ostate` int(11) NOT NULL,
  `Opassportno` varchar(20) DEFAULT NULL,
  `Opassport` varchar(20) DEFAULT NULL,
  `Omessage` text,
  PRIMARY KEY (`Oid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', '2', 'HTML5权威指南', '1', 'sss', '1', '0', '95.5', '1', '2017-04-11 00:00:00', null, '2017-04-11 00:00:00', '4', null, null, '你好，请尽快发货！');
INSERT INTO `orders` VALUES ('2', '2', 'HTML5权威指南', '1', 'sss', '1', '0', '95.5', '1', '2017-04-11 00:00:00', null, '2017-04-11 00:00:00', '4', null, null, '');
INSERT INTO `orders` VALUES ('3', '3', 'Java从入门到精通（第3版', '1', 'sss', '1', '0', '42', '1', '2017-04-11 00:00:00', null, null, '0', null, null, '');
INSERT INTO `orders` VALUES ('4', '2', 'HTML5权威指南', '1', 'sss', '1', '0', '95.5', '1', '2017-04-11 00:00:00', null, null, '0', null, null, '');

-- ----------------------------
-- Table structure for `userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `Uid` int(11) NOT NULL AUTO_INCREMENT,
  `Uname` varchar(50) DEFAULT NULL,
  `Upassword` varchar(16) DEFAULT NULL,
  `Uaddress` varchar(200) DEFAULT NULL,
  `Usex` varchar(10) DEFAULT NULL,
  `Uphone` varchar(15) DEFAULT NULL,
  `Uemail` varchar(50) DEFAULT NULL,
  `Ucheck` varchar(100) NOT NULL,
  `Uanswer` varchar(50) NOT NULL,
  PRIMARY KEY (`Uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('1', 'sss', 'ss', 'sss', '男', '153260413456', 'sss@ss.com', '你母亲的名字？', 'ss');
