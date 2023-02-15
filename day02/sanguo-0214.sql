/*
 Navicat Premium Data Transfer

 Source Server         : 本地连接
 Source Server Type    : MySQL
 Source Server Version : 100607
 Source Host           : localhost:3306
 Source Schema         : sanguo

 Target Server Type    : MySQL
 Target Server Version : 100607
 File Encoding         : 65001

 Date: 14/02/2023 11:18:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for org
-- ----------------------------
DROP TABLE IF EXISTS `org`;
CREATE TABLE `org`  (
  `org_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '企业编号',
  `org_name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '企业名称',
  `uniform_social_credit_code_pic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '统一社会信用代码图片',
  `uniform_social_credit_code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '统一社会信用代码',
  `legal_person` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '法人',
  `legal_person_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '法人邮箱',
  `legal_person_phone` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '法人电话',
  `legal_person_id_code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '法人身份证号',
  `business_license` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '营业执照',
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '企业logo',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '企业类型',
  `industry` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '所属行业',
  `phone` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '公司电话',
  `website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '网址',
  `postcode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '单位邮编',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '公司地址',
  `profile` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '简介',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '企业邮箱',
  `business_term` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '营业期限',
  `business_scope` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '营业范围',
  `reg_capital` decimal(64, 6) NULL DEFAULT NULL COMMENT '注册资金',
  `actual_capital` decimal(64, 6) NULL DEFAULT NULL COMMENT '实缴资金',
  `personnel_size` int(8) NULL DEFAULT NULL COMMENT '人员规模',
  `company_time` datetime(0) NULL DEFAULT NULL COMMENT '成立时间',
  `contact_person_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '企业负责人姓名',
  `contact_person_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '企业负责人电话',
  `contact_person_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '负责人邮箱',
  `relation_person_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '主要联络人',
  `relation_person_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '主要联络人邮箱',
  `relation_person_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '主要联络人电话',
  `company_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '公司口令',
  `audit_status` tinyint(4) NULL DEFAULT 0 COMMENT '审核状态',
  `creator_id` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '创建人编号',
  `create_time` datetime(0) NULL DEFAULT current_timestamp() COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`org_id`) USING BTREE,
  UNIQUE INDEX `uk_creator_id`(`creator_id`) USING BTREE COMMENT '创建者唯一索引'
) ENGINE = InnoDB AUTO_INCREMENT = 8004 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '企业认证资料' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of org
-- ----------------------------
INSERT INTO `org` VALUES (8000, '魏国', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, 0, NULL, '2023-02-14 01:09:38', NULL);
INSERT INTO `org` VALUES (8001, '蜀国', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, 0, NULL, '2023-02-14 01:09:49', NULL);
INSERT INTO `org` VALUES (8002, '吴国', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, 0, NULL, '2023-02-14 01:09:56', NULL);
INSERT INTO `org` VALUES (8003, '民众', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, 0, NULL, '2023-02-14 01:29:30', '2023-02-14 01:31:25');

-- ----------------------------
-- Table structure for org_user
-- ----------------------------
DROP TABLE IF EXISTS `org_user`;
CREATE TABLE `org_user`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `org_id` bigint(11) NOT NULL COMMENT '组织编号',
  `uid` bigint(11) NOT NULL COMMENT '用户编号',
  `type` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `creator_id` bigint(20) NULL DEFAULT NULL COMMENT '创建人编号',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 82 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '企业用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of org_user
-- ----------------------------
INSERT INTO `org_user` VALUES (1, 8000, 8017, '君主', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (2, 8000, 8018, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (3, 8000, 8019, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (4, 8000, 8020, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (5, 8000, 8021, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (6, 8000, 8022, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (7, 8000, 8023, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (8, 8000, 8024, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (9, 8000, 8025, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (10, 8000, 8026, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (11, 8000, 8027, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (12, 8000, 8028, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (13, 8000, 8029, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (14, 8000, 8030, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (15, 8000, 8031, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (16, 8000, 8032, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (17, 8000, 8033, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (18, 8000, 8034, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (19, 8000, 8035, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (20, 8000, 8036, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (21, 8000, 8037, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (22, 8000, 8038, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (23, 8000, 8039, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (24, 8000, 8040, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (25, 8000, 8041, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (26, 8000, 8042, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (27, 8000, 8043, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (28, 8000, 8044, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (29, 8000, 8045, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (30, 8000, 8046, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (31, 8000, 8047, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (32, 8000, 8048, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (33, 8000, 8049, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (34, 8000, 8050, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (35, 8001, 8000, '君主', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (36, 8001, 8001, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (37, 8001, 8002, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (38, 8001, 8003, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (39, 8001, 8004, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (40, 8001, 8005, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (41, 8001, 8006, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (42, 8001, 8007, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (43, 8001, 8008, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (44, 8001, 8009, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (45, 8001, 8010, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (46, 8001, 8011, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (47, 8001, 8012, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (48, 8001, 8013, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (49, 8001, 8014, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (50, 8001, 8015, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (51, 8001, 8016, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (52, 8002, 8051, '君主', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (53, 8002, 8052, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (54, 8002, 8053, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (55, 8002, 8054, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (56, 8002, 8055, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (57, 8002, 8056, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (58, 8002, 8057, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (59, 8002, 8058, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (60, 8002, 8059, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (61, 8002, 8060, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (62, 8002, 8061, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (63, 8002, 8062, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (64, 8002, 8063, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (65, 8002, 8064, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (66, 8002, 8065, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (67, 8002, 8066, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (68, 8002, 8067, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (69, 8002, 8068, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');
INSERT INTO `org_user` VALUES (70, 8002, 8069, '将军', 1, '2023-02-14 01:11:21', '2023-02-14 01:12:33');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `uid` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `user_name` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '用户名, 唯一',
  `nick_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '用户昵称，不唯一',
  `real_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '真实姓名',
  `space_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '空间名称',
  `mobile` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '手机号码',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '邮箱',
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '密码',
  `avatar` varchar(800) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '用户头像',
  `sex` tinyint(4) NULL DEFAULT NULL COMMENT '性别',
  `status` tinyint(4) NULL DEFAULT 0 COMMENT '用户状态 0 启用 1 禁用',
  `id_code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '身份证号码',
  `id_img_a` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '身份证正面',
  `id_img_b` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '身份证反面',
  `id_auth_status` tinyint(4) NULL DEFAULT 0 COMMENT '认证状态 0未认证 1已认证',
  `bank_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '银行卡开户行',
  `bank_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '银行卡编号',
  `source` tinyint(4) NULL DEFAULT 0 COMMENT '来源类型, 0 注册 1 导入',
  `province` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '号码归属地 - 省份',
  `ip` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '注册IP',
  `city` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '号码归属地 - 城市',
  `profile` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '个人简介',
  `sign_status` tinyint(4) NULL DEFAULT 0 COMMENT '签名状态 0未签名 1已签名',
  `sign_img` varchar(800) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '签名图片',
  `agree_status` tinyint(4) NULL DEFAULT 0 COMMENT '签订合同状态 0未签订 1已签订',
  `agree_file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '签订合同文件名称',
  `photo` varchar(800) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '人像',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '地址',
  `creator_id` bigint(11) NULL DEFAULT NULL COMMENT '创建人编号，注册的为空',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `last_login_time` datetime(0) NULL DEFAULT NULL COMMENT '最后登陆时间',
  `theme` tinyint(4) NULL DEFAULT 0 COMMENT '主题 0自动切换 1浅色模式 2深色模式',
  PRIMARY KEY (`uid`) USING BTREE,
  UNIQUE INDEX `USER_NAME`(`user_name`) USING BTREE,
  UNIQUE INDEX `USER_MOBILE`(`mobile`) USING BTREE COMMENT '手机号唯一索引',
  UNIQUE INDEX `USER_EMAIL`(`email`) USING BTREE,
  UNIQUE INDEX `USER_SPACE_NAME`(`space_name`) USING BTREE COMMENT '空间唯一索引'
) ENGINE = InnoDB AUTO_INCREMENT = 8081 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '17700000001', '平台管理员', '平台管理员', 'U0001', '17700000001', '17700000001@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-07 08:17:56', '2023-02-06 10:00:00', '2022-12-13 08:53:53', 0);
INSERT INTO `user` VALUES (8000, '17780008000', '刘备', '玄德', 'U8000', '17780008000', '17780008000@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8001, '17780008001', '关羽', '云长', 'U8001', '17780008001', '17780008001@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8002, '17780008002', '张飞', '翼德', 'U8002', '17780008002', '17780008002@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8003, '17780008003', '诸葛亮', '孔明', 'U8003', '17780008003', '17780008003@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8004, '17780008004', '赵云', '子龙', 'U8004', '17780008004', '17780008004@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8005, '17780008005', '黄忠', '汉升', 'U8005', '17780008005', '17780008005@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8006, '17780008006', '马超', '孟起', 'U8006', '17780008006', '17780008006@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8007, '17780008007', '邓芝', '伯苗', 'U8007', '17780008007', '17780008007@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8008, '17780008008', '姜维', '伯约', 'U8008', '17780008008', '17780008008@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8009, '17780008009', '魏延', '文长', 'U8009', '17780008009', '17780008009@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8010, '17780008010', '孙乾', '公佑', 'U8010', '17780008010', '17780008010@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8011, '17780008011', '简雍', '宪和', 'U8011', '17780008011', '17780008011@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8012, '17780008012', '麋竺', '子仲', 'U8012', '17780008012', '17780008012@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8013, '17780008013', '糜芳', '子芳', 'U8013', '17780008013', '17780008013@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8014, '17780008014', '徐庶', '元直', 'U8014', '17780008014', '17780008014@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8015, '17780008015', '庞统', '士元', 'U8015', '17780008015', '17780008015@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8016, '17780008016', '廖化', '元简', 'U8016', '17780008016', '17780008016@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8017, '17780008017', '曹操', '孟德', 'U8017', '17780008017', '17780008017@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8018, '17780008018', '郭嘉', '奉孝', 'U8018', '17780008018', '17780008018@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8019, '17780008019', '典韦', '文满', 'U8019', '17780008019', '17780008019@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8020, '17780008020', '荀彧', '文若', 'U8020', '17780008020', '17780008020@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8021, '17780008021', '荀攸', '公达', 'U8021', '17780008021', '17780008021@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8022, '17780008022', '贾诩', '文和', 'U8022', '17780008022', '17780008022@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8023, '17780008023', '程昱', '仲德', 'U8023', '17780008023', '17780008023@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8024, '17780008024', '司马懿', '仲达', 'U8024', '17780008024', '17780008024@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8025, '17780008025', '许褚', '仲康', 'U8025', '17780008025', '17780008025@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8026, '17780008026', '夏侯霸', '仲权', 'U8026', '17780008026', '17780008026@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8027, '17780008027', '虞帆', '仲翔', 'U8027', '17780008027', '17780008027@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8028, '17780008028', '夏侯敦', '元让', 'U8028', '17780008028', '17780008028@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8029, '17780008029', '夏侯渊', '妙才', 'U8029', '17780008029', '17780008029@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8030, '17780008030', '张辽', '文远', 'U8030', '17780008030', '17780008030@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8031, '17780008031', '徐晃', '公明', 'U8031', '17780008031', '17780008031@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8032, '17780008032', '曹真', '子丹', 'U8032', '17780008032', '17780008032@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8033, '17780008033', '曹昂', '子休', 'U8033', '17780008033', '17780008033@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8034, '17780008034', '曹丕', '子桓', 'U8034', '17780008034', '17780008034@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8035, '17780008035', '曹彰', '子文', 'U8035', '17780008035', '17780008035@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8036, '17780008036', '曹植', '子建', 'U8036', '17780008036', '17780008036@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8037, '17780008037', '杨修', '德祖', 'U8037', '17780008037', '17780008037@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8038, '17780008038', '张郃', '隽义', 'U8038', '17780008038', '17780008038@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8039, '17780008039', '王朗', '景兴', 'U8039', '17780008039', '17780008039@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8040, '17780008040', '庞德', '令明', 'U8040', '17780008040', '17780008040@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8041, '17780008041', '于禁', '文则', 'U8041', '17780008041', '17780008041@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8042, '17780008042', '曹芳', '兰卿', 'U8042', '17780008042', '17780008042@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8043, '17780008043', '蒋干', '子翼', 'U8043', '17780008043', '17780008043@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8044, '17780008044', '蔡瑁', '德圭', 'U8044', '17780008044', '17780008044@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8045, '17780008045', '邓艾', '士载', 'U8045', '17780008045', '17780008045@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8046, '17780008046', '郭准', '伯济', 'U8046', '17780008046', '17780008046@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8047, '17780008047', '司马师', '子元', 'U8047', '17780008047', '17780008047@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8048, '17780008048', '司马昭', '子尚', 'U8048', '17780008048', '17780008048@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8049, '17780008049', '司马炎', '安世', 'U8049', '17780008049', '17780008049@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8050, '17780008050', '淳于琼', '仲简', 'U8050', '17780008050', '17780008050@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8051, '17780008051', '孙坚', '文台', 'U8051', '17780008051', '17780008051@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-07 08:17:56', '2023-02-06 10:00:00', '2022-12-13 08:53:53', 0);
INSERT INTO `user` VALUES (8052, '17780008052', '孙策', '伯符', 'U8052', '17780008052', '17780008052@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8053, '17780008053', '孙权', '仲谋', 'U8053', '17780008053', '17780008053@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8054, '17780008054', '陆逊', '伯言', 'U8054', '17780008054', '17780008054@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8055, '17780008055', '张昭', '子布', 'U8055', '17780008055', '17780008055@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8056, '17780008056', '诸葛谨', '子瑜', 'U8056', '17780008056', '17780008056@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8057, '17780008057', '周瑜', '公谨', 'U8057', '17780008057', '17780008057@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8058, '17780008058', '鲁肃', '子敬', 'U8058', '17780008058', '17780008058@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8059, '17780008059', '吕蒙', '子明', 'U8059', '17780008059', '17780008059@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8060, '17780008060', '太史慈', '子义', 'U8060', '17780008060', '17780008060@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8061, '17780008061', '甘宁', '兴霸', 'U8061', '17780008061', '17780008061@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8062, '17780008062', '韩当', '义公', 'U8062', '17780008062', '17780008062@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8063, '17780008063', '徐盛', '文向', 'U8063', '17780008063', '17780008063@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8064, '17780008064', '周泰', '幼平', 'U8064', '17780008064', '17780008064@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8065, '17780008065', '潘璋', '文圭', 'U8065', '17780008065', '17780008065@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8066, '17780008066', '丁奉', '承渊', 'U8066', '17780008066', '17780008066@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8067, '17780008067', '黄盖', '公覆', 'U8067', '17780008067', '17780008067@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8068, '17780008068', '程普', '德谋', 'U8068', '17780008068', '17780008068@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8069, '17780008069', '陆绩', '公绩', 'U8069', '17780008069', '17780008069@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8070, '17780008070', '貂蝉', '貂蝉', 'U8070', '17780008070', '17780008070@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8071, '17780008071', '甄宓', '甄宓', 'U8071', '17780008071', '17780008071@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8072, '17780008072', '小乔', '小乔', 'U8072', '17780008072', '17780008072@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8073, '17780008073', '大乔', '大乔', 'U8073', '17780008073', '17780008073@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8074, '17780008074', '孙尚香', '孙尚香', 'U8074', '17780008074', '17780008074@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8075, '17780008075', '蔡琰', '文姬', 'U8075', '17780008075', '17780008075@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8076, '17780008076', '祝融夫人', '祝融夫人', 'U8076', '17780008076', '17780008076@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8077, '17780008077', '步练师', '步练师', 'U8077', '17780008077', '17780008077@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8078, '17780008078', '黄月英', '黄月英', 'U8078', '17780008078', '17780008078@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8079, '17780008079', '辛宪英', '辛宪英', 'U8079', '17780008079', '17780008079@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);
INSERT INTO `user` VALUES (8080, '17780008080', '糜夫人', '糜夫人', 'U8080', '17780008080', '17780008080@qq.com', '$2a$12$0E/HfaKSs3xFVg0UPvQPaO9hhnRaXPabzaQ7n5BVlZHyn7W8NLPI.', '/user/avatar/default/default', 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, '', '', '', NULL, '2022-09-15 06:11:30', '2023-02-06 10:00:09', '2022-12-20 01:30:24', 0);

SET FOREIGN_KEY_CHECKS = 1;
