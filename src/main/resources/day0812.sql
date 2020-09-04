/*
Navicat MySQL Data Transfer

Source Server         : 1906JavaA
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : day0812

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2020-08-14 16:20:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_account`
-- ----------------------------
DROP TABLE IF EXISTS `tb_account`;
CREATE TABLE `tb_account` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `aname` varchar(255) DEFAULT NULL,
  `telphone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `rid` bigint(20) DEFAULT NULL,
  `infoid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_account
-- ----------------------------
INSERT INTO `tb_account` VALUES ('1', 'zhaoyishang', null, null, '202CB962AC59075B964B07152D234B70', '1', '1');
INSERT INTO `tb_account` VALUES ('2', 'tianerbai', null, null, '202CB962AC59075B964B07152D234B70', '1', '2');
INSERT INTO `tb_account` VALUES ('3', 'sunsanhui', null, null, '202CB962AC59075B964B07152D234B70', '1', '3');
INSERT INTO `tb_account` VALUES ('4', 'lisicui', null, null, '202CB962AC59075B964B07152D234B70', '1', '4');
INSERT INTO `tb_account` VALUES ('5', 'wuwulun', null, null, '202CB962AC59075B964B07152D234B70', '1', '5');
INSERT INTO `tb_account` VALUES ('6', 'zhouliupo', null, null, '202CB962AC59075B964B07152D234B70', '1', '6');
INSERT INTO `tb_account` VALUES ('7', 'zhengqimie', null, null, '202CB962AC59075B964B07152D234B70', '1', '7');
INSERT INTO `tb_account` VALUES ('8', 'wangbashuai', null, null, '202CB962AC59075B964B07152D234B70', '1', '8');
INSERT INTO `tb_account` VALUES ('9', 'maofeichuan', null, null, '202CB962AC59075B964B07152D234B70', '2', '1');
INSERT INTO `tb_account` VALUES ('10', 'lizengqiang', null, null, '202CB962AC59075B964B07152D234B70', '4', '2');
INSERT INTO `tb_account` VALUES ('11', 'libin', null, null, '202CB962AC59075B964B07152D234B70', '2', '3');
INSERT INTO `tb_account` VALUES ('12', 'lixiaolong', null, null, '202CB962AC59075B964B07152D234B70', '2', '4');
INSERT INTO `tb_account` VALUES ('13', 'magaohui', null, null, '202CB962AC59075B964B07152D234B70', '2', '5');
INSERT INTO `tb_account` VALUES ('14', 'wanghuiqian', null, null, '202CB962AC59075B964B07152D234B70', '2', '6');
INSERT INTO `tb_account` VALUES ('15', 'wangqingyou', null, null, '202CB962AC59075B964B07152D234B70', '3', '7');
INSERT INTO `tb_account` VALUES ('16', 'zhuopengpeng', null, null, '202CB962AC59075B964B07152D234B70', '2', '8');
INSERT INTO `tb_account` VALUES ('17', 'yudashuai', null, null, '202CB962AC59075B964B07152D234B70', '2', '9');
INSERT INTO `tb_account` VALUES ('18', 'zhangwuji', null, null, '202CB962AC59075B964B07152D234B70', null, '1');
INSERT INTO `tb_account` VALUES ('19', 'zhaomin', null, null, '202CB962AC59075B964B07152D234B70', null, '2');
INSERT INTO `tb_account` VALUES ('20', 'zhouzhiruo', null, null, '202CB962AC59075B964B07152D234B70', null, '3');
INSERT INTO `tb_account` VALUES ('21', 'guoxiang', null, null, '202CB962AC59075B964B07152D234B70', null, '4');

-- ----------------------------
-- Table structure for `tb_grade`
-- ----------------------------
DROP TABLE IF EXISTS `tb_grade`;
CREATE TABLE `tb_grade` (
  `gid` bigint(20) NOT NULL AUTO_INCREMENT,
  `gname` varchar(255) DEFAULT NULL,
  `tid` bigint(20) DEFAULT NULL,
  `rid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_grade
-- ----------------------------
INSERT INTO `tb_grade` VALUES ('1', '1908JavaA', '1', '2');
INSERT INTO `tb_grade` VALUES ('2', '1909JavaA', '3', '1');
INSERT INTO `tb_grade` VALUES ('3', '1911JavaA', '2', '4');
INSERT INTO `tb_grade` VALUES ('4', '2001JavaA', '4', '6');
INSERT INTO `tb_grade` VALUES ('5', '1911PhpA', '8', null);
INSERT INTO `tb_grade` VALUES ('6', '2001PhpA', '9', null);

-- ----------------------------
-- Table structure for `tb_power`
-- ----------------------------
DROP TABLE IF EXISTS `tb_power`;
CREATE TABLE `tb_power` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `pid` bigint(20) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `target` varchar(255) DEFAULT NULL,
  `isbutton` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_power
-- ----------------------------
INSERT INTO `tb_power` VALUES ('1', '乐柠教育管理系统', '0', null, null, 'rightFrame', '否');
INSERT INTO `tb_power` VALUES ('2', '系统管理模块', '1', null, 'csstree/img/diy/5.png', 'rightFrame', '否');
INSERT INTO `tb_power` VALUES ('3', '员工管理', '2', 'getUserAllList.do', null, 'rightFrame', '否');
INSERT INTO `tb_power` VALUES ('4', '部门管理', '2', null, null, 'rightFrame', '否');
INSERT INTO `tb_power` VALUES ('5', '角色管理', '2', 'getRoleList.do', null, 'rightFrame', '否');
INSERT INTO `tb_power` VALUES ('6', '学生管理模块', '1', null, null, 'rightFrame', '否');
INSERT INTO `tb_power` VALUES ('7', '学生管理', '6', 'getStudentList.do', null, 'rightFrame', '否');
INSERT INTO `tb_power` VALUES ('8', '班级管理', '6', 'getGradeList.do', null, 'rightFrame', '否');
INSERT INTO `tb_power` VALUES ('9', '教师管理模块', '1', null, null, 'rightFrame', '否');
INSERT INTO `tb_power` VALUES ('10', '教师管理', '9', null, null, 'rightFrame', '否');
INSERT INTO `tb_power` VALUES ('11', '辅导员管理', '9', null, null, 'rightFrame', '否');
INSERT INTO `tb_power` VALUES ('12', '考试模块', '1', null, null, 'rightFrame', '否');
INSERT INTO `tb_power` VALUES ('13', '我的考试', '12', null, null, 'rightFrame', '否');
INSERT INTO `tb_power` VALUES ('14', '考试查询', '12', null, null, 'rightFrame', '否');
INSERT INTO `tb_power` VALUES ('15', '历史试卷', '12', null, null, 'rightFrame', '否');
INSERT INTO `tb_power` VALUES ('16', '违纪管理模块', '1', null, null, 'rightFrame', '否');
INSERT INTO `tb_power` VALUES ('17', '选课管理模块', '1', null, null, 'rightFrame', '否');
INSERT INTO `tb_power` VALUES ('18', '资产管理', '1', null, null, 'rightFrame', '否');
INSERT INTO `tb_power` VALUES ('19', '教室管理', '18', null, null, 'rightFrame', '否');
INSERT INTO `tb_power` VALUES ('20', '教学管理模块', '1', null, null, 'rightFrame', '否');
INSERT INTO `tb_power` VALUES ('21', '教学周期管理', '20', null, null, 'rightFrame', '否');
INSERT INTO `tb_power` VALUES ('22', '系统按钮', '1', null, null, 'rightFrame', '是');
INSERT INTO `tb_power` VALUES ('23', '登录按钮', '22', 'getLogin.do', null, 'rightFrame', '是');
INSERT INTO `tb_power` VALUES ('24', '权限按钮', '22', 'getPowerJson.do', null, 'rightFrame', '是');
INSERT INTO `tb_power` VALUES ('25', '查看权限', '3', 'getUserPower.do', null, 'rightFrame', '是');
INSERT INTO `tb_power` VALUES ('26', '员工管理', '3', null, null, 'rightFrame', '是');
INSERT INTO `tb_power` VALUES ('27', '角色分配权限', '5', 'toRolePower.do', null, 'rightFrame', '是');
INSERT INTO `tb_power` VALUES ('28', '角色管理', '5', null, null, 'rightFrame', '是');
INSERT INTO `tb_power` VALUES ('29', '保存分配权限', '27', 'saveRolePower.do', null, 'rightFrame', '是');
INSERT INTO `tb_power` VALUES ('30', '学生管理', '7', null, null, 'rightFrame', '是');
INSERT INTO `tb_power` VALUES ('31', '选择班级', '7', 'toStudentGrade.do', null, 'rightFrame', '是');
INSERT INTO `tb_power` VALUES ('32', '保存选择班级', '31', 'saveStudentGrade.do', null, 'rightFrame', '是');
INSERT INTO `tb_power` VALUES ('33', '班级管理', '8', null, null, 'rightFrame', '是');
INSERT INTO `tb_power` VALUES ('34', '选择讲师', '8', 'toGradeTeacher.do', null, 'rightFrame', '是');
INSERT INTO `tb_power` VALUES ('35', '保存选择讲师', '34', 'saveGradeTeacher.do', null, 'rightFrame', '是');

-- ----------------------------
-- Table structure for `tb_role`
-- ----------------------------
DROP TABLE IF EXISTS `tb_role`;
CREATE TABLE `tb_role` (
  `rid` bigint(20) NOT NULL AUTO_INCREMENT,
  `rname` varchar(255) DEFAULT NULL,
  `rdesc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_role
-- ----------------------------
INSERT INTO `tb_role` VALUES ('1', '学生', null);
INSERT INTO `tb_role` VALUES ('2', '老师', null);
INSERT INTO `tb_role` VALUES ('3', '辅导员', null);
INSERT INTO `tb_role` VALUES ('4', '主任', null);
INSERT INTO `tb_role` VALUES ('5', '院办', null);
INSERT INTO `tb_role` VALUES ('6', '咨询员', null);
INSERT INTO `tb_role` VALUES ('7', '财务', null);
INSERT INTO `tb_role` VALUES ('8', '出纳', null);
INSERT INTO `tb_role` VALUES ('9', '教务', null);
INSERT INTO `tb_role` VALUES ('10', '院长', null);
INSERT INTO `tb_role` VALUES ('11', '副院长', null);

-- ----------------------------
-- Table structure for `tb_role_power`
-- ----------------------------
DROP TABLE IF EXISTS `tb_role_power`;
CREATE TABLE `tb_role_power` (
  `rid` bigint(20) NOT NULL DEFAULT '0',
  `id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_role_power
-- ----------------------------
INSERT INTO `tb_role_power` VALUES ('1', '1');
INSERT INTO `tb_role_power` VALUES ('1', '2');
INSERT INTO `tb_role_power` VALUES ('1', '3');
INSERT INTO `tb_role_power` VALUES ('1', '12');
INSERT INTO `tb_role_power` VALUES ('1', '13');
INSERT INTO `tb_role_power` VALUES ('1', '14');
INSERT INTO `tb_role_power` VALUES ('1', '15');
INSERT INTO `tb_role_power` VALUES ('1', '17');
INSERT INTO `tb_role_power` VALUES ('1', '20');
INSERT INTO `tb_role_power` VALUES ('1', '21');
INSERT INTO `tb_role_power` VALUES ('1', '26');
INSERT INTO `tb_role_power` VALUES ('2', '1');
INSERT INTO `tb_role_power` VALUES ('2', '6');
INSERT INTO `tb_role_power` VALUES ('2', '7');
INSERT INTO `tb_role_power` VALUES ('2', '8');
INSERT INTO `tb_role_power` VALUES ('2', '12');
INSERT INTO `tb_role_power` VALUES ('2', '14');
INSERT INTO `tb_role_power` VALUES ('2', '15');
INSERT INTO `tb_role_power` VALUES ('2', '16');
INSERT INTO `tb_role_power` VALUES ('2', '17');
INSERT INTO `tb_role_power` VALUES ('3', '1');
INSERT INTO `tb_role_power` VALUES ('3', '2');
INSERT INTO `tb_role_power` VALUES ('3', '3');
INSERT INTO `tb_role_power` VALUES ('3', '4');
INSERT INTO `tb_role_power` VALUES ('3', '5');
INSERT INTO `tb_role_power` VALUES ('3', '6');
INSERT INTO `tb_role_power` VALUES ('3', '7');
INSERT INTO `tb_role_power` VALUES ('3', '8');
INSERT INTO `tb_role_power` VALUES ('3', '9');
INSERT INTO `tb_role_power` VALUES ('3', '10');
INSERT INTO `tb_role_power` VALUES ('3', '11');
INSERT INTO `tb_role_power` VALUES ('3', '12');
INSERT INTO `tb_role_power` VALUES ('3', '13');
INSERT INTO `tb_role_power` VALUES ('3', '14');
INSERT INTO `tb_role_power` VALUES ('3', '15');
INSERT INTO `tb_role_power` VALUES ('3', '16');
INSERT INTO `tb_role_power` VALUES ('3', '17');
INSERT INTO `tb_role_power` VALUES ('3', '18');
INSERT INTO `tb_role_power` VALUES ('3', '19');
INSERT INTO `tb_role_power` VALUES ('3', '20');
INSERT INTO `tb_role_power` VALUES ('3', '21');
INSERT INTO `tb_role_power` VALUES ('3', '22');
INSERT INTO `tb_role_power` VALUES ('3', '23');
INSERT INTO `tb_role_power` VALUES ('3', '24');
INSERT INTO `tb_role_power` VALUES ('3', '25');
INSERT INTO `tb_role_power` VALUES ('3', '26');
INSERT INTO `tb_role_power` VALUES ('3', '27');
INSERT INTO `tb_role_power` VALUES ('3', '28');
INSERT INTO `tb_role_power` VALUES ('3', '29');
INSERT INTO `tb_role_power` VALUES ('3', '30');
INSERT INTO `tb_role_power` VALUES ('3', '31');
INSERT INTO `tb_role_power` VALUES ('3', '32');
INSERT INTO `tb_role_power` VALUES ('3', '33');
INSERT INTO `tb_role_power` VALUES ('3', '34');
INSERT INTO `tb_role_power` VALUES ('3', '35');
INSERT INTO `tb_role_power` VALUES ('4', '1');
INSERT INTO `tb_role_power` VALUES ('4', '2');
INSERT INTO `tb_role_power` VALUES ('4', '3');
INSERT INTO `tb_role_power` VALUES ('4', '4');
INSERT INTO `tb_role_power` VALUES ('4', '5');
INSERT INTO `tb_role_power` VALUES ('4', '6');
INSERT INTO `tb_role_power` VALUES ('4', '7');
INSERT INTO `tb_role_power` VALUES ('4', '8');
INSERT INTO `tb_role_power` VALUES ('4', '9');
INSERT INTO `tb_role_power` VALUES ('4', '10');
INSERT INTO `tb_role_power` VALUES ('4', '11');
INSERT INTO `tb_role_power` VALUES ('4', '12');
INSERT INTO `tb_role_power` VALUES ('4', '13');
INSERT INTO `tb_role_power` VALUES ('4', '14');
INSERT INTO `tb_role_power` VALUES ('4', '15');
INSERT INTO `tb_role_power` VALUES ('4', '16');
INSERT INTO `tb_role_power` VALUES ('4', '17');
INSERT INTO `tb_role_power` VALUES ('4', '18');
INSERT INTO `tb_role_power` VALUES ('4', '19');
INSERT INTO `tb_role_power` VALUES ('4', '20');
INSERT INTO `tb_role_power` VALUES ('4', '21');
INSERT INTO `tb_role_power` VALUES ('4', '22');
INSERT INTO `tb_role_power` VALUES ('4', '23');
INSERT INTO `tb_role_power` VALUES ('4', '24');
INSERT INTO `tb_role_power` VALUES ('4', '25');
INSERT INTO `tb_role_power` VALUES ('4', '26');
INSERT INTO `tb_role_power` VALUES ('4', '27');
INSERT INTO `tb_role_power` VALUES ('4', '28');
INSERT INTO `tb_role_power` VALUES ('4', '29');
INSERT INTO `tb_role_power` VALUES ('4', '30');
INSERT INTO `tb_role_power` VALUES ('4', '31');
INSERT INTO `tb_role_power` VALUES ('4', '32');
INSERT INTO `tb_role_power` VALUES ('4', '33');
INSERT INTO `tb_role_power` VALUES ('4', '34');
INSERT INTO `tb_role_power` VALUES ('4', '35');
INSERT INTO `tb_role_power` VALUES ('5', '1');
INSERT INTO `tb_role_power` VALUES ('5', '2');
INSERT INTO `tb_role_power` VALUES ('5', '3');
INSERT INTO `tb_role_power` VALUES ('5', '4');
INSERT INTO `tb_role_power` VALUES ('5', '5');
INSERT INTO `tb_role_power` VALUES ('5', '6');
INSERT INTO `tb_role_power` VALUES ('5', '7');
INSERT INTO `tb_role_power` VALUES ('5', '8');
INSERT INTO `tb_role_power` VALUES ('5', '9');
INSERT INTO `tb_role_power` VALUES ('5', '10');
INSERT INTO `tb_role_power` VALUES ('5', '11');
INSERT INTO `tb_role_power` VALUES ('5', '12');
INSERT INTO `tb_role_power` VALUES ('5', '13');
INSERT INTO `tb_role_power` VALUES ('5', '14');
INSERT INTO `tb_role_power` VALUES ('5', '15');
INSERT INTO `tb_role_power` VALUES ('5', '16');
INSERT INTO `tb_role_power` VALUES ('5', '17');
INSERT INTO `tb_role_power` VALUES ('5', '18');
INSERT INTO `tb_role_power` VALUES ('5', '19');
INSERT INTO `tb_role_power` VALUES ('5', '20');
INSERT INTO `tb_role_power` VALUES ('5', '21');
INSERT INTO `tb_role_power` VALUES ('10', '1');
INSERT INTO `tb_role_power` VALUES ('10', '2');
INSERT INTO `tb_role_power` VALUES ('10', '3');
INSERT INTO `tb_role_power` VALUES ('10', '4');
INSERT INTO `tb_role_power` VALUES ('10', '5');
INSERT INTO `tb_role_power` VALUES ('10', '6');
INSERT INTO `tb_role_power` VALUES ('10', '7');
INSERT INTO `tb_role_power` VALUES ('10', '8');
INSERT INTO `tb_role_power` VALUES ('10', '9');
INSERT INTO `tb_role_power` VALUES ('10', '10');
INSERT INTO `tb_role_power` VALUES ('10', '11');
INSERT INTO `tb_role_power` VALUES ('10', '12');
INSERT INTO `tb_role_power` VALUES ('10', '13');
INSERT INTO `tb_role_power` VALUES ('10', '14');
INSERT INTO `tb_role_power` VALUES ('10', '15');
INSERT INTO `tb_role_power` VALUES ('10', '16');
INSERT INTO `tb_role_power` VALUES ('10', '17');
INSERT INTO `tb_role_power` VALUES ('10', '18');
INSERT INTO `tb_role_power` VALUES ('10', '19');
INSERT INTO `tb_role_power` VALUES ('10', '20');
INSERT INTO `tb_role_power` VALUES ('10', '21');
INSERT INTO `tb_role_power` VALUES ('11', '1');
INSERT INTO `tb_role_power` VALUES ('11', '2');
INSERT INTO `tb_role_power` VALUES ('11', '3');
INSERT INTO `tb_role_power` VALUES ('11', '4');
INSERT INTO `tb_role_power` VALUES ('11', '5');
INSERT INTO `tb_role_power` VALUES ('11', '6');
INSERT INTO `tb_role_power` VALUES ('11', '7');
INSERT INTO `tb_role_power` VALUES ('11', '8');
INSERT INTO `tb_role_power` VALUES ('11', '9');
INSERT INTO `tb_role_power` VALUES ('11', '10');
INSERT INTO `tb_role_power` VALUES ('11', '11');
INSERT INTO `tb_role_power` VALUES ('11', '12');
INSERT INTO `tb_role_power` VALUES ('11', '13');
INSERT INTO `tb_role_power` VALUES ('11', '14');
INSERT INTO `tb_role_power` VALUES ('11', '15');
INSERT INTO `tb_role_power` VALUES ('11', '16');
INSERT INTO `tb_role_power` VALUES ('11', '17');
INSERT INTO `tb_role_power` VALUES ('11', '18');
INSERT INTO `tb_role_power` VALUES ('11', '19');
INSERT INTO `tb_role_power` VALUES ('11', '20');
INSERT INTO `tb_role_power` VALUES ('11', '21');

-- ----------------------------
-- Table structure for `tb_room`
-- ----------------------------
DROP TABLE IF EXISTS `tb_room`;
CREATE TABLE `tb_room` (
  `rid` bigint(20) NOT NULL AUTO_INCREMENT,
  `rname` varchar(255) DEFAULT NULL,
  `raddress` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_room
-- ----------------------------
INSERT INTO `tb_room` VALUES ('1', '1335308', '菏泽大博校区行政楼3层');
INSERT INTO `tb_room` VALUES ('2', '101', null);
INSERT INTO `tb_room` VALUES ('3', '103', null);
INSERT INTO `tb_room` VALUES ('4', '104', null);
INSERT INTO `tb_room` VALUES ('5', '108', null);
INSERT INTO `tb_room` VALUES ('6', '109', null);
INSERT INTO `tb_room` VALUES ('7', '204', null);

-- ----------------------------
-- Table structure for `tb_student`
-- ----------------------------
DROP TABLE IF EXISTS `tb_student`;
CREATE TABLE `tb_student` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sname` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_student
-- ----------------------------
INSERT INTO `tb_student` VALUES ('1', '赵一伤', null, '2020-08-05', null, '3');
INSERT INTO `tb_student` VALUES ('2', '田二败', null, null, null, '1');
INSERT INTO `tb_student` VALUES ('3', '孙三毁', '男', null, '15', '4');
INSERT INTO `tb_student` VALUES ('4', '李四摧', null, null, null, '5');
INSERT INTO `tb_student` VALUES ('5', '吴五伦', null, null, '19', '5');
INSERT INTO `tb_student` VALUES ('6', '周六破', '女', '2020-08-04', null, '2');
INSERT INTO `tb_student` VALUES ('7', '郑七灭', '保密', null, null, '1');
INSERT INTO `tb_student` VALUES ('8', '王八衰', null, '2020-08-21', null, '5');

-- ----------------------------
-- Table structure for `tb_teacher`
-- ----------------------------
DROP TABLE IF EXISTS `tb_teacher`;
CREATE TABLE `tb_teacher` (
  `tid` bigint(20) NOT NULL AUTO_INCREMENT,
  `tname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_teacher
-- ----------------------------
INSERT INTO `tb_teacher` VALUES ('1', '毛飞川');
INSERT INTO `tb_teacher` VALUES ('2', '李增强');
INSERT INTO `tb_teacher` VALUES ('3', '李彬');
INSERT INTO `tb_teacher` VALUES ('4', '李晓龙');
INSERT INTO `tb_teacher` VALUES ('5', '马高辉');
INSERT INTO `tb_teacher` VALUES ('6', '王惠仟');
INSERT INTO `tb_teacher` VALUES ('7', '王青友');
INSERT INTO `tb_teacher` VALUES ('8', '卓鹏鹏');
INSERT INTO `tb_teacher` VALUES ('9', '于大帅');

-- ----------------------------
-- Table structure for `tb_user`
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', '张无忌');
INSERT INTO `tb_user` VALUES ('2', '赵敏');
INSERT INTO `tb_user` VALUES ('3', '周芷若');
INSERT INTO `tb_user` VALUES ('4', '郭襄');

-- ----------------------------
-- View structure for `v_0813`
-- ----------------------------
DROP VIEW IF EXISTS `v_0813`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `v_0813` AS select `tb_power`.`id` AS `id`,`tb_power`.`name` AS `name`,`tb_power`.`pid` AS `pid`,`tb_power`.`url` AS `url`,`tb_power`.`icon` AS `icon`,`tb_power`.`target` AS `target` from `tb_power` ;

-- ----------------------------
-- View structure for `v_stu`
-- ----------------------------
DROP VIEW IF EXISTS `v_stu`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `v_stu` AS select `a`.`id` AS `id`,`a`.`sname` AS `sname`,`a`.`sex` AS `sex`,`a`.`birthday` AS `birthday`,`a`.`age` AS `age`,`a`.`gid` AS `gid`,`b`.`gname` AS `aa`,`b`.`tid` AS `tid` from (`tb_student` `a` left join `tb_grade` `b` on((`a`.`gid` = `b`.`gid`))) ;
