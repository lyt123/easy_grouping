/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50709
Source Host           : localhost:3306
Source Database       : easy_grouping

Target Server Type    : MYSQL
Target Server Version : 50709
File Encoding         : 65001

Date: 2017-09-14 11:24:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(255) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `time_start` int(10) unsigned NOT NULL DEFAULT '0',
  `time_continue` decimal(2,1) NOT NULL DEFAULT '0.0' COMMENT '小时数',
  `user_phone` char(15) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `content` varchar(2000) NOT NULL,
  `number_limit` smallint(6) NOT NULL DEFAULT '0',
  `is_public` tinyint(255) NOT NULL DEFAULT '1' COMMENT '1-是，2-否',
  `created_at` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of activity
-- ----------------------------
INSERT INTO `activity` VALUES ('47', '2157', 'dd', '1504097332', '4.0', '13719543700', '袂卓工作室', '组长汇报情况', '36', '1', '1504440801', '1504441021');
INSERT INTO `activity` VALUES ('48', '2157', '', '1504097332', '2.0', '13719543700', '袂卓工作室', '组长汇报情况', '30', '1', '1504498926', '0');
INSERT INTO `activity` VALUES ('86', '2157', '工作室例会', '1504095742', '2.5', '13719543705', '袂卓工作室', '组长汇报情况', '3', '1', '1504518382', '0');
INSERT INTO `activity` VALUES ('87', '2157', '工作室例会', '1504095742', '2.5', '13719543705', '袂卓工作室', '组长汇报情况', '3', '1', '1504523043', '0');
INSERT INTO `activity` VALUES ('88', '2157', '工作室例会', '1504095775', '5.5', '13719543705', '袂卓工作室', '组长汇报情况', '3', '1', '1504528987', '0');
INSERT INTO `activity` VALUES ('89', '2157', '工作室例会', '1504095775', '5.5', '13719543705', '袂卓工作室', '组长汇报情况', '3', '1', '1504529118', '0');
INSERT INTO `activity` VALUES ('90', '2157', '工作室例会', '1504095775', '5.5', '13719543705', '袂卓工作室', '组长汇报情况', '3', '1', '1504529119', '0');
INSERT INTO `activity` VALUES ('91', '2157', '工作室例会', '1504095775', '5.5', '13719543705', '袂卓工作室', '组长汇报情况', '3', '1', '1504529125', '0');
INSERT INTO `activity` VALUES ('92', '2157', '工作室例会', '1504095775', '5.5', '13719543705', '袂卓工作室', '组长汇报情况', '3', '1', '1504529126', '0');
INSERT INTO `activity` VALUES ('93', '2157', '工作室例会', '1504095775', '5.5', '13719543705', '袂卓工作室', '组长汇报情况', '3', '1', '1504529147', '0');
INSERT INTO `activity` VALUES ('94', '2157', '工作室例会', '1504095775', '5.5', '13719543705', '袂卓工作室', '组长汇报情况', '3', '1', '1504529167', '0');
INSERT INTO `activity` VALUES ('95', '2157', '工作室例会', '1504095775', '5.5', '13719543705', '袂卓工作室', '组长汇报情况', '3', '1', '1504529196', '0');
INSERT INTO `activity` VALUES ('96', '2157', '工作室例会', '1504095775', '5.5', '13719543705', '袂卓工作室', '组长汇报情况', '3', '1', '1504529197', '0');
INSERT INTO `activity` VALUES ('97', '2157', '工作室例会', '1504095775', '5.5', '13719543705', '袂卓工作室', '组长汇报情况', '3', '1', '1504529253', '0');
INSERT INTO `activity` VALUES ('98', '2157', '工作室例会', '1504095775', '5.5', '13719543705', '袂卓工作室', '组长汇报情况', '3', '1', '1504529263', '0');
INSERT INTO `activity` VALUES ('99', '2157', '工作室例会', '1504095775', '5.5', '13719543705', '袂卓工作室', '组长汇报情况', '3', '1', '1504529287', '0');
INSERT INTO `activity` VALUES ('100', '2157', '工作室例会', '1504095775', '5.5', '13719543705', '袂卓工作室', '组长汇报情况', '3', '1', '1504529388', '0');
INSERT INTO `activity` VALUES ('101', '2157', '工作室例会', '1504095775', '5.5', '13719543705', '袂卓工作室', '组长汇报情况', '3', '1', '1504529740', '0');
INSERT INTO `activity` VALUES ('102', '2157', '工作室例会', '1504095775', '5.5', '13719543705', '袂卓工作室', '组长汇报情况', '3', '1', '1504529788', '0');
INSERT INTO `activity` VALUES ('103', '2157', '工作室例会', '1504095775', '5.5', '13719543705', '袂卓工作室', '组长汇报情况', '3', '1', '1504530230', '0');
INSERT INTO `activity` VALUES ('104', '2157', '工作室1例会', '1504097332', '4.0', '13719543700', '袂卓工作室', '组长汇报情况', '36', '1', '1504530273', '0');
INSERT INTO `activity` VALUES ('105', '2157', '工作室例会', '1504095775', '5.5', '13719543705', '袂卓工作室', '组长汇报情况', '3', '1', '1504593713', '0');
INSERT INTO `activity` VALUES ('106', '2157', '工作室例会', '1504095775', '5.5', '13719543705', '袂卓工作室', '组长汇报情况', '3', '1', '1504593741', '0');
INSERT INTO `activity` VALUES ('107', '2157', '工作室例会', '1504095775', '5.5', '13719543705', '袂卓工作室', '组长汇报情况', '38', '1', '1504593961', '0');
INSERT INTO `activity` VALUES ('108', '2157', '工作室例会', '1504095775', '5.5', '13719543705', '袂卓工作室', '组长汇报情况', '3', '1', '1504594997', '0');
INSERT INTO `activity` VALUES ('109', '2157', '工作室例会', '1504095775', '5.5', '13719543705', '袂卓工作室', '组长汇报情况\ndsf', '3', '1', '1504595047', '0');
INSERT INTO `activity` VALUES ('110', '2157', '工作室例会', '1504095775', '5.5', '13719543705', '袂卓工作室', '组长汇报情况\ndsf', '3', '1', '1504595165', '0');
INSERT INTO `activity` VALUES ('111', '2157', '工作室例会', '1504095775', '5.5', '13719543705', '袂卓工作室', '组长汇报情况\ndsf', '3', '1', '1504595178', '0');
INSERT INTO `activity` VALUES ('112', '2157', '工作室例会', '1504095775', '5.5', '13719543705', '袂卓工作室', '组长汇报情况\ndsf', '3', '1', '1504595178', '0');
INSERT INTO `activity` VALUES ('113', '2157', '工作室例会', '1504095775', '5.5', '13719543705', '袂卓工作室', '组长汇报情况\ndsf0', '3', '1', '1504595373', '0');
INSERT INTO `activity` VALUES ('114', '2157', '工作室例会', '1504095775', '5.5', '13719543705', '袂卓工作室', '组长汇报情况', '3', '1', '1504595379', '0');
INSERT INTO `activity` VALUES ('115', '2157', '工作室例会', '1504095775', '5.5', '13719543705', '袂卓工作室', '没', '3', '1', '1504595436', '0');
INSERT INTO `activity` VALUES ('116', '2157', '工作室例会', '1504095775', '5.5', '13719543705', '袂卓工作室', '没袂卓工作室地方', '3', '1', '1504595505', '0');
INSERT INTO `activity` VALUES ('117', '2157', '工作室例会', '1504095775', '5.5', '13719543705', '袂卓工作室', '没袂卓工作室地方没袂卓工作室地', '3', '1', '1504595510', '0');
INSERT INTO `activity` VALUES ('118', '2157', '工作室例会', '1504095775', '5.5', '13719543705', '袂卓工作室', '没袂卓工作室地方没袂卓工作室地', '3', '1', '1504595511', '0');
INSERT INTO `activity` VALUES ('119', '2157', '工作室例会', '1504095775', '5.5', '13719543705', '袂卓工作室', '没袂卓工作室地方没袂卓工作室地', '3', '1', '1504595520', '0');
INSERT INTO `activity` VALUES ('120', '2157', '工作室例会', '1504095775', '5.5', '13719543705', '袂卓工作室', 'dsfadsfadsfadsf', '3', '1', '1504595755', '0');
INSERT INTO `activity` VALUES ('121', '2157', '工作室例会', '1504095775', '5.5', '13719543705', '袂卓工作室', 'dsfadsfadsfadsf', '3', '1', '1504595810', '0');
INSERT INTO `activity` VALUES ('122', '2157', '工作室例会', '1504095775', '5.5', '13719543705', '袂卓工作室', '没袂卓工作室地方没袂卓工作室地', '3', '1', '1504595821', '0');
INSERT INTO `activity` VALUES ('123', '2157', '工作室例会', '1504095775', '5.5', '13719543705', '袂卓工作室', '没袂卓工作室地方没袂卓工作室地', '3', '1', '1504595881', '0');
INSERT INTO `activity` VALUES ('124', '2157', '工作室例会', '1504095775', '5.5', '13719543705', '袂卓工作室', 'dsfadsfadsfadsf', '3', '1', '1504595887', '0');
INSERT INTO `activity` VALUES ('125', '2157', '工作室例会', '1504095775', '5.5', '13719543705', '袂卓工作室', 'dsfadsfadsfadsf', '3', '1', '1504595922', '0');
INSERT INTO `activity` VALUES ('126', '2157', '工作室例会', '1504095775', '5.5', '13719543705', '袂卓工作室', '没袂卓工作室地方没袂卓工作室地', '3', '1', '1504595926', '0');
INSERT INTO `activity` VALUES ('127', '2157', '工作室例会', '1504095775', '5.5', '13719543705', '袂卓工作室', '没袂卓工作室地方没袂卓工作室地', '3', '1', '1504595948', '0');
INSERT INTO `activity` VALUES ('128', '2157', '工作室例会', '1504095775', '5.5', '13719543705', '袂卓工作室', 'dsfadsfadsfadsf', '3', '1', '1504595953', '0');
INSERT INTO `activity` VALUES ('129', '2157', '工作室例会', '1504095775', '5.5', '13719543705', '袂卓工作室', 'dsfadsfadsfadsf', '3', '1', '1504596229', '0');
INSERT INTO `activity` VALUES ('130', '2157', '工作室例会', '1504095775', '5.5', '13719543705', '袂卓工作室', '的', '3', '1', '1504596241', '0');
INSERT INTO `activity` VALUES ('131', '2157', '工作室例会', '1504095775', '5.5', '13719543705', '袂卓工作室', '的', '3', '1', '1504596449', '0');
INSERT INTO `activity` VALUES ('132', '2157', '工作室例会', '1504095775', '5.5', '13719543705', 'dd', '的', '3', '1', '1504596483', '0');
INSERT INTO `activity` VALUES ('133', '2157', '工作室例会', '1504095775', '5.5', '13719543705', '的但', '的', '3', '1', '1504596497', '0');
INSERT INTO `activity` VALUES ('134', '2157', '工作室例会', '1504095775', '5.5', '13719543705', 'fsd', '的', '3', '1', '1504597237', '0');
INSERT INTO `activity` VALUES ('135', '2157', '工作室例会', '1504095775', '5.5', '13719543705', 'fsd', '的', '3', '1', '1504597440', '0');
INSERT INTO `activity` VALUES ('136', '2157', '工作室例会', '1504095775', '5.5', '13719543705', 'fsd', '的', '3', '1', '1504597507', '0');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(255) unsigned NOT NULL DEFAULT '0' COMMENT '这条评论所属类型，1-活动评论',
  `foreign_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '第三方表的id,好比活动id',
  `reply_id` int(11) unsigned NOT NULL DEFAULT '0',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `content` varchar(255) NOT NULL,
  `created_at` int(255) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('11', '1', '45', '0', '2157', '桂鸿傻逼', '1504439924');
INSERT INTO `comment` VALUES ('12', '1', '45', '11', '2158', '宇堂傻逼', '1504440026');
INSERT INTO `comment` VALUES ('13', '1', '47', '0', '2158', '宇堂傻逼', '1504440921');
INSERT INTO `comment` VALUES ('14', '1', '47', '13', '2157', 'guihong傻逼', '1504440987');
INSERT INTO `comment` VALUES ('15', '1', '47', '13', '2157', 'guihong傻逼', '1504598894');

-- ----------------------------
-- Table structure for diary
-- ----------------------------
DROP TABLE IF EXISTS `diary`;
CREATE TABLE `diary` (
  `id` int(11) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `user_introduction` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of diary
-- ----------------------------

-- ----------------------------
-- Table structure for logo
-- ----------------------------
DROP TABLE IF EXISTS `logo`;
CREATE TABLE `logo` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `image_path` varchar(255) NOT NULL DEFAULT '',
  `name` char(10) NOT NULL DEFAULT '',
  `is_used` tinyint(255) NOT NULL DEFAULT '2' COMMENT '是否使用，1-是，2-否',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of logo
-- ----------------------------
INSERT INTO `logo` VALUES ('1', 'upload/img/logo/IcM5kAAN.jpg', '聚餐', '2');
INSERT INTO `logo` VALUES ('2', 'upload/img/logo/X525T2jI.jpg', '聚餐', '2');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `notice_user_id` int(11) unsigned NOT NULL,
  `type` tinyint(255) unsigned NOT NULL DEFAULT '0' COMMENT '所属类型，好比1-参加活动提醒',
  `foreign_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '第三方表的id，好比参加活动表的id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of notice
-- ----------------------------

-- ----------------------------
-- Table structure for picture
-- ----------------------------
DROP TABLE IF EXISTS `picture`;
CREATE TABLE `picture` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(255) unsigned NOT NULL DEFAULT '0' COMMENT '图片所属的类型，1-活动',
  `foreign_id` int(11) unsigned NOT NULL COMMENT '第三方表的id，好比活动id',
  `path` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=237 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of picture
-- ----------------------------
INSERT INTO `picture` VALUES ('119', '1', '65', 'upload/activity/2157/a9c1885ae883df60e340998de159addc.jpg');
INSERT INTO `picture` VALUES ('118', '1', '64', 'upload/activity/2157/e58a812aa2c8bd5c9f2ba403a2aa30b4.jpg');
INSERT INTO `picture` VALUES ('83', '1', '47', 'upload/activity/2157/5d2771a5fbed5188d87ea7114d064b94.jpg');
INSERT INTO `picture` VALUES ('84', '1', '47', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('85', '1', '48', 'upload/activity/2157/a9c1885ae883df60e340998de159addc.jpg');
INSERT INTO `picture` VALUES ('86', '1', '48', 'upload/activity/2157/e58a812aa2c8bd5c9f2ba403a2aa30b4.jpg');
INSERT INTO `picture` VALUES ('87', '1', '49', 'upload/activity/2157/a9c1885ae883df60e340998de159addc.jpg');
INSERT INTO `picture` VALUES ('88', '1', '49', 'upload/activity/2157/e58a812aa2c8bd5c9f2ba403a2aa30b4.jpg');
INSERT INTO `picture` VALUES ('89', '1', '50', 'upload/activity/2157/a9c1885ae883df60e340998de159addc.jpg');
INSERT INTO `picture` VALUES ('90', '1', '50', 'upload/activity/2157/e58a812aa2c8bd5c9f2ba403a2aa30b4.jpg');
INSERT INTO `picture` VALUES ('91', '1', '51', 'upload/activity/2157/a9c1885ae883df60e340998de159addc.jpg');
INSERT INTO `picture` VALUES ('92', '1', '51', 'upload/activity/2157/e58a812aa2c8bd5c9f2ba403a2aa30b4.jpg');
INSERT INTO `picture` VALUES ('93', '1', '52', 'upload/activity/2157/a9c1885ae883df60e340998de159addc.jpg');
INSERT INTO `picture` VALUES ('94', '1', '52', 'upload/activity/2157/e58a812aa2c8bd5c9f2ba403a2aa30b4.jpg');
INSERT INTO `picture` VALUES ('95', '1', '53', 'upload/activity/2157/a9c1885ae883df60e340998de159addc.jpg');
INSERT INTO `picture` VALUES ('96', '1', '53', 'upload/activity/2157/e58a812aa2c8bd5c9f2ba403a2aa30b4.jpg');
INSERT INTO `picture` VALUES ('97', '1', '54', 'upload/activity/2157/a9c1885ae883df60e340998de159addc.jpg');
INSERT INTO `picture` VALUES ('98', '1', '54', 'upload/activity/2157/e58a812aa2c8bd5c9f2ba403a2aa30b4.jpg');
INSERT INTO `picture` VALUES ('99', '1', '55', 'upload/activity/2157/a9c1885ae883df60e340998de159addc.jpg');
INSERT INTO `picture` VALUES ('100', '1', '55', 'upload/activity/2157/e58a812aa2c8bd5c9f2ba403a2aa30b4.jpg');
INSERT INTO `picture` VALUES ('101', '1', '56', 'upload/activity/2157/a9c1885ae883df60e340998de159addc.jpg');
INSERT INTO `picture` VALUES ('102', '1', '56', 'upload/activity/2157/e58a812aa2c8bd5c9f2ba403a2aa30b4.jpg');
INSERT INTO `picture` VALUES ('103', '1', '57', 'upload/activity/2157/a9c1885ae883df60e340998de159addc.jpg');
INSERT INTO `picture` VALUES ('104', '1', '57', 'upload/activity/2157/e58a812aa2c8bd5c9f2ba403a2aa30b4.jpg');
INSERT INTO `picture` VALUES ('105', '1', '58', 'upload/activity/2157/a9c1885ae883df60e340998de159addc.jpg');
INSERT INTO `picture` VALUES ('106', '1', '58', 'upload/activity/2157/e58a812aa2c8bd5c9f2ba403a2aa30b4.jpg');
INSERT INTO `picture` VALUES ('107', '1', '59', 'upload/activity/2157/a9c1885ae883df60e340998de159addc.jpg');
INSERT INTO `picture` VALUES ('108', '1', '59', 'upload/activity/2157/e58a812aa2c8bd5c9f2ba403a2aa30b4.jpg');
INSERT INTO `picture` VALUES ('109', '1', '60', 'upload/activity/2157/a9c1885ae883df60e340998de159addc.jpg');
INSERT INTO `picture` VALUES ('110', '1', '60', 'upload/activity/2157/e58a812aa2c8bd5c9f2ba403a2aa30b4.jpg');
INSERT INTO `picture` VALUES ('111', '1', '61', 'upload/activity/2157/a9c1885ae883df60e340998de159addc.jpg');
INSERT INTO `picture` VALUES ('112', '1', '61', 'upload/activity/2157/e58a812aa2c8bd5c9f2ba403a2aa30b4.jpg');
INSERT INTO `picture` VALUES ('113', '1', '62', 'upload/activity/2157/a9c1885ae883df60e340998de159addc.jpg');
INSERT INTO `picture` VALUES ('114', '1', '62', 'upload/activity/2157/e58a812aa2c8bd5c9f2ba403a2aa30b4.jpg');
INSERT INTO `picture` VALUES ('115', '1', '63', 'upload/activity/2157/a9c1885ae883df60e340998de159addc.jpg');
INSERT INTO `picture` VALUES ('116', '1', '63', 'upload/activity/2157/e58a812aa2c8bd5c9f2ba403a2aa30b4.jpg');
INSERT INTO `picture` VALUES ('117', '1', '64', 'upload/activity/2157/a9c1885ae883df60e340998de159addc.jpg');
INSERT INTO `picture` VALUES ('120', '1', '65', 'upload/activity/2157/e58a812aa2c8bd5c9f2ba403a2aa30b4.jpg');
INSERT INTO `picture` VALUES ('121', '1', '66', 'upload/activity/2157/a9c1885ae883df60e340998de159addc.jpg');
INSERT INTO `picture` VALUES ('122', '1', '66', 'upload/activity/2157/e58a812aa2c8bd5c9f2ba403a2aa30b4.jpg');
INSERT INTO `picture` VALUES ('123', '1', '67', 'upload/activity/2157/a9c1885ae883df60e340998de159addc.jpg');
INSERT INTO `picture` VALUES ('124', '1', '67', 'upload/activity/2157/e58a812aa2c8bd5c9f2ba403a2aa30b4.jpg');
INSERT INTO `picture` VALUES ('125', '1', '68', 'upload/activity/2157/a9c1885ae883df60e340998de159addc.jpg');
INSERT INTO `picture` VALUES ('126', '1', '68', 'upload/activity/2157/e58a812aa2c8bd5c9f2ba403a2aa30b4.jpg');
INSERT INTO `picture` VALUES ('127', '1', '69', 'upload/activity/2157/a9c1885ae883df60e340998de159addc.jpg');
INSERT INTO `picture` VALUES ('128', '1', '69', 'upload/activity/2157/e58a812aa2c8bd5c9f2ba403a2aa30b4.jpg');
INSERT INTO `picture` VALUES ('129', '1', '70', 'upload/activity/2157/a9c1885ae883df60e340998de159addc.jpg');
INSERT INTO `picture` VALUES ('130', '1', '70', 'upload/activity/2157/e58a812aa2c8bd5c9f2ba403a2aa30b4.jpg');
INSERT INTO `picture` VALUES ('131', '1', '71', 'upload/activity/2157/a9c1885ae883df60e340998de159addc.jpg');
INSERT INTO `picture` VALUES ('132', '1', '71', 'upload/activity/2157/e58a812aa2c8bd5c9f2ba403a2aa30b4.jpg');
INSERT INTO `picture` VALUES ('133', '1', '72', 'upload/activity/2157/a9c1885ae883df60e340998de159addc.jpg');
INSERT INTO `picture` VALUES ('134', '1', '72', 'upload/activity/2157/e58a812aa2c8bd5c9f2ba403a2aa30b4.jpg');
INSERT INTO `picture` VALUES ('135', '1', '73', 'upload/activity/2157/a9c1885ae883df60e340998de159addc.jpg');
INSERT INTO `picture` VALUES ('136', '1', '73', 'upload/activity/2157/e58a812aa2c8bd5c9f2ba403a2aa30b4.jpg');
INSERT INTO `picture` VALUES ('137', '1', '74', 'upload/activity/2157/a9c1885ae883df60e340998de159addc.jpg');
INSERT INTO `picture` VALUES ('138', '1', '74', 'upload/activity/2157/e58a812aa2c8bd5c9f2ba403a2aa30b4.jpg');
INSERT INTO `picture` VALUES ('139', '1', '75', 'upload/activity/2157/a9c1885ae883df60e340998de159addc.jpg');
INSERT INTO `picture` VALUES ('140', '1', '75', 'upload/activity/2157/e58a812aa2c8bd5c9f2ba403a2aa30b4.jpg');
INSERT INTO `picture` VALUES ('141', '1', '76', 'upload/activity/2157/a9c1885ae883df60e340998de159addc.jpg');
INSERT INTO `picture` VALUES ('142', '1', '76', 'upload/activity/2157/e58a812aa2c8bd5c9f2ba403a2aa30b4.jpg');
INSERT INTO `picture` VALUES ('143', '1', '77', 'upload/activity/2157/a9c1885ae883df60e340998de159addc.jpg');
INSERT INTO `picture` VALUES ('144', '1', '77', 'upload/activity/2157/e58a812aa2c8bd5c9f2ba403a2aa30b4.jpg');
INSERT INTO `picture` VALUES ('145', '1', '78', 'upload/activity/2157/a9c1885ae883df60e340998de159addc.jpg');
INSERT INTO `picture` VALUES ('146', '1', '78', 'upload/activity/2157/e58a812aa2c8bd5c9f2ba403a2aa30b4.jpg');
INSERT INTO `picture` VALUES ('147', '1', '79', 'upload/activity/2157/a9c1885ae883df60e340998de159addc.jpg');
INSERT INTO `picture` VALUES ('148', '1', '79', 'upload/activity/2157/e58a812aa2c8bd5c9f2ba403a2aa30b4.jpg');
INSERT INTO `picture` VALUES ('149', '1', '80', 'upload/activity/2157/a9c1885ae883df60e340998de159addc.jpg');
INSERT INTO `picture` VALUES ('150', '1', '80', 'upload/activity/2157/e58a812aa2c8bd5c9f2ba403a2aa30b4.jpg');
INSERT INTO `picture` VALUES ('151', '1', '81', 'upload/activity/2157/a9c1885ae883df60e340998de159addc.jpg');
INSERT INTO `picture` VALUES ('152', '1', '81', 'upload/activity/2157/e58a812aa2c8bd5c9f2ba403a2aa30b4.jpg');
INSERT INTO `picture` VALUES ('153', '1', '82', 'upload/activity/2157/a9c1885ae883df60e340998de159addc.jpg');
INSERT INTO `picture` VALUES ('154', '1', '82', 'upload/activity/2157/e58a812aa2c8bd5c9f2ba403a2aa30b4.jpg');
INSERT INTO `picture` VALUES ('155', '1', '83', 'upload/activity/2157/a9c1885ae883df60e340998de159addc.jpg');
INSERT INTO `picture` VALUES ('156', '1', '83', 'upload/activity/2157/e58a812aa2c8bd5c9f2ba403a2aa30b4.jpg');
INSERT INTO `picture` VALUES ('157', '1', '84', 'upload/activity/2157/a9c1885ae883df60e340998de159addc.jpg');
INSERT INTO `picture` VALUES ('158', '1', '84', 'upload/activity/2157/e58a812aa2c8bd5c9f2ba403a2aa30b4.jpg');
INSERT INTO `picture` VALUES ('159', '1', '85', 'upload/activity/2157/a9c1885ae883df60e340998de159addc.jpg');
INSERT INTO `picture` VALUES ('160', '1', '85', 'upload/activity/2157/e58a812aa2c8bd5c9f2ba403a2aa30b4.jpg');
INSERT INTO `picture` VALUES ('161', '1', '86', 'upload/activity/2157/a9c1885ae883df60e340998de159addc.jpg');
INSERT INTO `picture` VALUES ('162', '1', '86', 'upload/activity/2157/e58a812aa2c8bd5c9f2ba403a2aa30b4.jpg');
INSERT INTO `picture` VALUES ('163', '1', '87', 'upload/activity/2157/a9c1885ae883df60e340998de159addc.jpg');
INSERT INTO `picture` VALUES ('164', '1', '87', 'upload/activity/2157/e58a812aa2c8bd5c9f2ba403a2aa30b4.jpg');
INSERT INTO `picture` VALUES ('165', '1', '88', 'upload/activity/2157/a9c1885ae883df60e340998de159addc.jpg');
INSERT INTO `picture` VALUES ('166', '1', '88', 'upload/activity/2157/e58a812aa2c8bd5c9f2ba403a2aa30b4.jpg');
INSERT INTO `picture` VALUES ('167', '1', '102', 'upload/activity/2157/9124b6df0dc105b6ef45bca7b2dc72f1.jpg');
INSERT INTO `picture` VALUES ('168', '1', '102', 'upload/activity/2157/9124b6df0dc105b6ef45bca7b2dc72f1.jpg');
INSERT INTO `picture` VALUES ('169', '1', '103', 'upload/activity/2157/9124b6df0dc105b6ef45bca7b2dc72f1.jpg');
INSERT INTO `picture` VALUES ('170', '1', '103', 'upload/activity/2157/9124b6df0dc105b6ef45bca7b2dc72f1.jpg');
INSERT INTO `picture` VALUES ('174', '1', '104', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('173', '1', '104', 'upload/activity/2157/5d2771a5fbed5188d87ea7114d064b94.jpg');
INSERT INTO `picture` VALUES ('175', '1', '106', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('176', '1', '106', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('177', '1', '107', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('178', '1', '107', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('179', '1', '108', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('180', '1', '108', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('181', '1', '109', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('182', '1', '109', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('183', '1', '110', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('184', '1', '110', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('185', '1', '111', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('186', '1', '111', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('187', '1', '112', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('188', '1', '112', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('189', '1', '113', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('190', '1', '113', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('191', '1', '114', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('192', '1', '114', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('193', '1', '115', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('194', '1', '115', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('195', '1', '116', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('196', '1', '116', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('197', '1', '117', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('198', '1', '117', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('199', '1', '118', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('200', '1', '118', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('201', '1', '119', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('202', '1', '119', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('203', '1', '120', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('204', '1', '120', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('205', '1', '121', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('206', '1', '121', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('207', '1', '122', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('208', '1', '122', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('209', '1', '123', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('210', '1', '123', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('211', '1', '124', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('212', '1', '124', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('213', '1', '125', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('214', '1', '125', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('215', '1', '126', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('216', '1', '126', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('217', '1', '127', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('218', '1', '127', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('219', '1', '128', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('220', '1', '128', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('221', '1', '129', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('222', '1', '129', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('223', '1', '130', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('224', '1', '130', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('225', '1', '131', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('226', '1', '131', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('227', '1', '132', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('228', '1', '132', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('229', '1', '133', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('230', '1', '133', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('231', '1', '134', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('232', '1', '134', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('233', '1', '135', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('234', '1', '135', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('235', '1', '136', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');
INSERT INTO `picture` VALUES ('236', '1', '136', 'upload/activity/2157/cda957006acde7a9ae40b202e6a2aaa2.jpg');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` char(50) NOT NULL DEFAULT '',
  `head_path` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `sex` tinyint(255) NOT NULL DEFAULT '1' COMMENT '1-男，2-女',
  `password` char(65) DEFAULT '',
  `openid` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2161 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('2157', 'ivanlin', 'http://wx.qlogo.cn/mmopen/4VuEPXSukJtCBWN2pRzNVibicM4bPXLCnwrS9ffvUyMYFQ3f13S1GPqqbOnic3soKOJooU2dpkiboeUuwdkwia1LOvHKUfXXlkOibr/0', 'xxx', '1', null, null);
INSERT INTO `user` VALUES ('2158', 'Guoldon', 'http://wx.qlogo.cn/mmopen/4VuEPXSukJtCBWN2pRzNVibicM4bPXLCnwrS9ffvUyMYFQ3f13S1GPqqbOnic3soKOJooU2dpkiboeUuwdkwia1LOvHKUfXXlkOibr/0', 'xxxx', '1', null, null);
INSERT INTO `user` VALUES ('2159', '佚名', 'localhost\\laravel_project\\easy_grouping\\public\\upload\\img\\head_path\\default.jpg', 'a@a.com', '1', '$2y$10$5FexZaWx9isPNyDUzxmgK.lBtY5Jjq8zZbQZNYtjSrs80IOfea8Ju', '');
INSERT INTO `user` VALUES ('2160', 'ivana', 'localhost\\laravel_project\\easy_grouping\\public\\upload/img/head_path/Lr7x7woc.jpg', 'aa@a.com', '1', '$2y$10$xgLsrR42I4NXQXtVKPicf.d0w1sTpAKseYQNLA5eXvbsv3VZiv/v2', '');

-- ----------------------------
-- Table structure for user_activity
-- ----------------------------
DROP TABLE IF EXISTS `user_activity`;
CREATE TABLE `user_activity` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `activity_id` int(11) unsigned NOT NULL DEFAULT '0',
  `joiner_name` varchar(50) NOT NULL DEFAULT '',
  `joiner_phone` char(15) NOT NULL DEFAULT '',
  `joiner_company` varchar(100) NOT NULL DEFAULT '',
  `joiner_job` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user_activity
-- ----------------------------
INSERT INTO `user_activity` VALUES ('28', '2157', '107', 'guildon桂鸿', '158750646651122', '袂卓科技公司', 'web开发');
INSERT INTO `user_activity` VALUES ('29', '2157', '107', 'guildon桂鸿', '158750646651122', '袂卓科技公司', 'web开发');
INSERT INTO `user_activity` VALUES ('30', '2157', '107', 'guildon桂鸿', '15875064333', '袂卓科技公司', 'web开发');
INSERT INTO `user_activity` VALUES ('31', '2157', '107', 'guild', '15875064333', '袂卓科技公司', 'web开发');
INSERT INTO `user_activity` VALUES ('32', '2157', '107', '是飞机看看', '15875064333', '袂卓科技公司', 'web开发');
INSERT INTO `user_activity` VALUES ('33', '2157', '107', '', '15875064333', '袂卓科技公司', 'web开发');
INSERT INTO `user_activity` VALUES ('34', '2157', '107', '是飞机看看d', '15875064333', '袂卓科技公司', 'web开发');
INSERT INTO `user_activity` VALUES ('35', '2157', '107', '', '15875064333', '袂卓科技公司', 'web开发');
INSERT INTO `user_activity` VALUES ('36', '2157', '107', '', '15875064333', '袂卓科技公司', 'web开发');
INSERT INTO `user_activity` VALUES ('37', '2157', '107', '', '15875064333', '袂卓科技公司', 'web开发');
INSERT INTO `user_activity` VALUES ('38', '2157', '107', '', '15875064333', '袂卓科技公司', 'web开发');
INSERT INTO `user_activity` VALUES ('39', '2157', '107', '', '15875064333', '袂卓科技公司', 'web开发');
INSERT INTO `user_activity` VALUES ('40', '2157', '107', '', '15875064333', '袂卓科技公司', 'web开发');
INSERT INTO `user_activity` VALUES ('41', '2157', '107', '', '15875064333', '袂卓科技公司', 'web开发');
INSERT INTO `user_activity` VALUES ('42', '2157', '107', '', '15875064333', '袂卓科技公司', 'web开发');
INSERT INTO `user_activity` VALUES ('43', '2157', '107', '', '15875064333', '袂卓科技公司', 'web开发');
INSERT INTO `user_activity` VALUES ('44', '2157', '107', '', '15875064333', '袂卓科技公司', 'web开发');
INSERT INTO `user_activity` VALUES ('45', '2157', '107', '', '15875064333', '袂卓科技公司', 'web开发');
INSERT INTO `user_activity` VALUES ('46', '2157', '107', '', '15875064333', '袂卓科技公司', 'web开发');
INSERT INTO `user_activity` VALUES ('47', '2157', '107', '', '15875064333', '袂卓科技公司', 'web开发');
INSERT INTO `user_activity` VALUES ('48', '2157', '107', 'sdf', '15875064333', '袂卓科技公司', 'web开发');
INSERT INTO `user_activity` VALUES ('49', '2157', '107', '', '', '', '');
SET FOREIGN_KEY_CHECKS=1;
