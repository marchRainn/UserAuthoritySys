/*
Navicat MySQL Data Transfer

Source Server         : mytext
Source Server Version : 80029
Source Host           : localhost:3306
Source Database       : xdb

Target Server Type    : MYSQL
Target Server Version : 80029
File Encoding         : 65001

Date: 2024-08-18 21:12:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `x_menu`
-- ----------------------------
DROP TABLE IF EXISTS `x_menu`;
CREATE TABLE `x_menu` (
  `menu_id` int NOT NULL AUTO_INCREMENT,
  `component` varchar(100) DEFAULT NULL,
  `path` varchar(100) DEFAULT NULL,
  `redirect` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `is_leaf` varchar(1) DEFAULT NULL,
  `hidden` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of x_menu
-- ----------------------------
INSERT INTO `x_menu` VALUES ('1', 'Layout', '/sys', '/sys/user', 'sysManage', '系统管理', 'userManage', '0', 'N', '0');
INSERT INTO `x_menu` VALUES ('2', 'sys/user', 'user', null, 'userList', '用户列表', 'user', '1', 'Y', '0');
INSERT INTO `x_menu` VALUES ('3', 'sys/role', 'role', null, 'roleList', '角色列表', 'roleManage', '1', 'Y', '0');
INSERT INTO `x_menu` VALUES ('4', 'Layout', '/test', '/test/test1', 'test', '功能测试', 'form', '0', 'N', '0');
INSERT INTO `x_menu` VALUES ('5', 'test/test1', 'test1', '', 'test1', '测试点一', 'form', '4', 'Y', '0');
INSERT INTO `x_menu` VALUES ('6', 'test/test2', 'test2', '', 'test2', '测试点二', 'form', '4', 'Y', '0');
INSERT INTO `x_menu` VALUES ('7', 'test/test3', 'test3', '', 'test3', '测试点三', 'form', '4', 'Y', '0');

-- ----------------------------
-- Table structure for `x_role`
-- ----------------------------
DROP TABLE IF EXISTS `x_role`;
CREATE TABLE `x_role` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) DEFAULT NULL,
  `role_desc` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of x_role
-- ----------------------------
INSERT INTO `x_role` VALUES ('1', 'admin', '超级管理员');
INSERT INTO `x_role` VALUES ('2', 'hr', '人事管理员');
INSERT INTO `x_role` VALUES ('3', 'normal', '普通员工');

-- ----------------------------
-- Table structure for `x_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `x_role_menu`;
CREATE TABLE `x_role_menu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_id` int DEFAULT NULL,
  `menu_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of x_role_menu
-- ----------------------------
INSERT INTO `x_role_menu` VALUES ('11', '1', '1');
INSERT INTO `x_role_menu` VALUES ('12', '1', '2');
INSERT INTO `x_role_menu` VALUES ('13', '1', '3');
INSERT INTO `x_role_menu` VALUES ('14', '1', '4');
INSERT INTO `x_role_menu` VALUES ('15', '1', '5');
INSERT INTO `x_role_menu` VALUES ('16', '1', '6');
INSERT INTO `x_role_menu` VALUES ('17', '1', '7');
INSERT INTO `x_role_menu` VALUES ('22', '3', '4');
INSERT INTO `x_role_menu` VALUES ('23', '3', '5');
INSERT INTO `x_role_menu` VALUES ('24', '3', '6');
INSERT INTO `x_role_menu` VALUES ('25', '3', '7');
INSERT INTO `x_role_menu` VALUES ('26', '2', '2');
INSERT INTO `x_role_menu` VALUES ('27', '2', '4');
INSERT INTO `x_role_menu` VALUES ('28', '2', '5');
INSERT INTO `x_role_menu` VALUES ('29', '2', '6');
INSERT INTO `x_role_menu` VALUES ('30', '2', '7');
INSERT INTO `x_role_menu` VALUES ('31', '2', '1');

-- ----------------------------
-- Table structure for `x_user`
-- ----------------------------
DROP TABLE IF EXISTS `x_user`;
CREATE TABLE `x_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `avatar` varchar(200) DEFAULT NULL,
  `deleted` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of x_user
-- ----------------------------
INSERT INTO `x_user` VALUES ('1', 'admin', '$2a$10$3ZDHAfyo/P7tSOabB8X.DuVM1DN92YWgSd46ecVY.5WUAQNef7iUC', 'super@aliyun.com', '18677778888', '1', 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif', '0');
INSERT INTO `x_user` VALUES ('2', 'zhangsan', '123456', 'zhangsan@gmail.com', '13966667777', '1', 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif', '0');
INSERT INTO `x_user` VALUES ('3', 'lisi', '$2a$10$3ZDHAfyo/P7tSOabB8X.DuVM1DN92YWgSd46ecVY.5WUAQNef7iUC', 'lisi@gmail.com', '13966667778', '1', 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif', '0');
INSERT INTO `x_user` VALUES ('4', 'wangwu', '$2a$10$3ZDHAfyo/P7tSOabB8X.DuVM1DN92YWgSd46ecVY.5WUAQNef7iUC', 'wangwu@gmail.com', '13966667772', '1', 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif', '0');
INSERT INTO `x_user` VALUES ('5', 'zhaoer', '$2a$10$3ZDHAfyo/P7tSOabB8X.DuVM1DN92YWgSd46ecVY.5WUAQNef7iUC', 'zhaoer@gmail.com', '13966667776', '1', 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif', '0');
INSERT INTO `x_user` VALUES ('6', 'songliu', '$2a$10$3ZDHAfyo/P7tSOabB8X.DuVM1DN92YWgSd46ecVY.5WUAQNef7iUC', 'songliu@gmail.com', '13966667771', '1', 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif', '0');
INSERT INTO `x_user` VALUES ('7', 'aaa', '$2a$10$3ZDHAfyo/P7tSOabB8X.DuVM1DN92YWgSd46ecVY.5WUAQNef7iUC', 'aaa@aliyun.com', '18899998888', '1', null, '1');
INSERT INTO `x_user` VALUES ('8', 'bbb', '666666', 'bbb@qq.com', '188888889999', '1', null, '1');
INSERT INTO `x_user` VALUES ('9', 'ccc', '$2a$10$3ZDHAfyo/P7tSOabB8X.DuVM1DN92YWgSd46ecVY.5WUAQNef7iUC', '1111@ali.com', '11111111', '1', null, '1');
INSERT INTO `x_user` VALUES ('10', 'xxx222', '$2a$10$dQ1n957Q3qP2D0lHBSqdEeRHym9kAauXgxnIqAv9KDhnsJOC0Kooi', '1122@qq.com', '111111122', '0', null, '1');
INSERT INTO `x_user` VALUES ('11', 'yyy', '$2a$10$hX03AhH9Yt//V.crSdqGP.nhj3EQi.cMwIEglT9Eqd.5KDkIGaCQC', '1111111@ali.com', '1111111', '1', null, '0');
INSERT INTO `x_user` VALUES ('12', 'xxx6', '$2a$10$LTtlLYIPtDelUtP01FhcSe9JZkNuJmeXf66YMJyZee.04Q1yzNoj.', 'xxx6@aliyun.com', '18677778886', '1', null, '1');
INSERT INTO `x_user` VALUES ('13', 'test', '$2a$10$jWewP9UNr.6AhrP2ofza1OaTDBq7nBL23C9zHnwBXh8Q/9Vd2zNSC', 'test@ali.com', '11111111111', '1', null, '0');
INSERT INTO `x_user` VALUES ('14', 'xxx', '$2a$10$QpmItVrXHa5YWTfH25yCEuTu69VFjJbcxBxMYQTWb8qVNBSp0laxq', 'xxx@ali.com', '1111111111111', '1', null, '1');
INSERT INTO `x_user` VALUES ('15', 'hr_zzz', '$2a$10$tZFjngb5cH7yYa2QPkeNzOCDs00NwSIysi0gX4saNfkJltvXH8Lfa', 'hrzzz@163.com', '13088886666', '1', null, '0');
INSERT INTO `x_user` VALUES ('16', '蜜雪冰城', '$2a$10$UDMiFWVgnFEe8CHVatk4RefCJXUgS3rQuqTRawUT5BVPw5x/dn5Si', 'mixue@163.com', '18888887777', '1', null, '0');
INSERT INTO `x_user` VALUES ('17', 'dobinb', '$2a$10$DivjgIraRf2YIqt8DmgdBuoGvvj39qEtvCT.PNhFpu6TzmCX3VoDS', 'do@163.com', '13833886688', '1', null, '0');
INSERT INTO `x_user` VALUES ('18', 'hr11', '$2a$10$SbsZclAtjBNbtWq6YlQgXeCZG6FOwdH.cAeHcvEd9PjshZTpDWj/u', 'hr1@126.com', '14088882222', '1', null, '0');
INSERT INTO `x_user` VALUES ('19', 'user1', '123456', 'use1@qq.com', '17893938888', '1', null, '1');
INSERT INTO `x_user` VALUES ('20', 'lili', '$2a$10$BTFcRAzcP89ZaH7XLXUVsOclZF47e75pKYbF2NxmVFQzZNZzpO0xi', 'lili@qq.com', '030387854', '1', null, '0');
INSERT INTO `x_user` VALUES ('21', 'user1', '$2a$10$uBBy6//DL3DCBhPV0L.NS.jxzREQceSQTqRHDAihq.4f3AEXkqqAK', 'user1@qq.com', '18766567879', '1', null, '0');

-- ----------------------------
-- Table structure for `x_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `x_user_role`;
CREATE TABLE `x_user_role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of x_user_role
-- ----------------------------
INSERT INTO `x_user_role` VALUES ('1', '1', '1');
INSERT INTO `x_user_role` VALUES ('2', '1', '3');
INSERT INTO `x_user_role` VALUES ('6', '3', '2');
INSERT INTO `x_user_role` VALUES ('7', '4', '2');
INSERT INTO `x_user_role` VALUES ('8', '4', '3');
INSERT INTO `x_user_role` VALUES ('12', '2', '3');
INSERT INTO `x_user_role` VALUES ('13', '2', '2');
INSERT INTO `x_user_role` VALUES ('14', '15', '2');
INSERT INTO `x_user_role` VALUES ('15', '16', '2');
INSERT INTO `x_user_role` VALUES ('16', '16', '3');
INSERT INTO `x_user_role` VALUES ('17', '17', '3');
INSERT INTO `x_user_role` VALUES ('19', '18', '2');
INSERT INTO `x_user_role` VALUES ('21', '20', '3');
INSERT INTO `x_user_role` VALUES ('23', '21', '3');
