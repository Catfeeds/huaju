/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50553
 Source Host           : localhost:3306
 Source Schema         : zhongjiaxin

 Target Server Type    : MySQL
 Target Server Version : 50553
 File Encoding         : 65001

 Date: 31/07/2018 00:04:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for hl_admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `hl_admin_menu`;
CREATE TABLE `hl_admin_menu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `uri` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hl_admin_menu
-- ----------------------------
INSERT INTO `hl_admin_menu` VALUES (1, 0, 1, '信息', 'fa-bar-chart', '/', NULL, '2018-04-26 02:01:15');
INSERT INTO `hl_admin_menu` VALUES (2, 0, 2, 'Admin', 'fa-tasks', '', NULL, NULL);
INSERT INTO `hl_admin_menu` VALUES (3, 2, 3, 'Users', 'fa-users', 'auth/users', NULL, NULL);
INSERT INTO `hl_admin_menu` VALUES (4, 2, 4, 'Roles', 'fa-user', 'auth/roles', NULL, NULL);
INSERT INTO `hl_admin_menu` VALUES (5, 2, 5, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL);
INSERT INTO `hl_admin_menu` VALUES (6, 2, 6, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL);
INSERT INTO `hl_admin_menu` VALUES (7, 2, 7, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL);
INSERT INTO `hl_admin_menu` VALUES (9, 0, 8, '文章', 'fa-book', NULL, '2018-04-21 17:37:13', '2018-04-23 14:28:27');
INSERT INTO `hl_admin_menu` VALUES (10, 9, 10, '分类', 'fa-book', 'article-category', '2018-04-21 17:38:09', '2018-04-23 14:28:27');
INSERT INTO `hl_admin_menu` VALUES (11, 0, 13, '设置', 'fa-wrench', NULL, '2018-04-22 17:37:47', '2018-04-23 14:28:27');
INSERT INTO `hl_admin_menu` VALUES (12, 11, 14, '站点信息', 'fa-wrench', '/config', '2018-04-22 17:38:18', '2018-04-23 14:28:27');
INSERT INTO `hl_admin_menu` VALUES (13, 9, 9, '文章', 'fa-book', 'article-iframe', '2018-04-23 06:48:29', '2018-05-20 00:16:20');
INSERT INTO `hl_admin_menu` VALUES (14, 0, 11, '图片', 'fa-image', NULL, '2018-04-23 13:55:09', '2018-04-23 14:28:27');
INSERT INTO `hl_admin_menu` VALUES (15, 14, 12, '广告图', 'fa-image', '/ads-position', '2018-04-23 13:55:53', '2018-04-23 14:28:27');
INSERT INTO `hl_admin_menu` VALUES (16, 11, 15, '头部导航', 'fa-wrench', 'nav?type=1', '2018-04-24 15:54:35', '2018-06-06 11:47:03');
INSERT INTO `hl_admin_menu` VALUES (17, 11, 16, '尾部导航', 'fa-wrench', 'nav?type=2', '2018-04-24 15:54:46', '2018-06-06 11:47:03');
INSERT INTO `hl_admin_menu` VALUES (18, 11, 17, '底部导航', 'fa-wrench', 'nav?type=4', '2018-04-25 14:28:46', '2018-06-06 11:47:03');
INSERT INTO `hl_admin_menu` VALUES (19, 0, 19, '申请预约', 'fa-joomla', 'apply', '2018-04-26 01:42:05', '2018-06-10 16:51:53');
INSERT INTO `hl_admin_menu` VALUES (20, 0, 20, '招聘申请', 'fa-joomla', 'recruitment-apply', '2018-04-26 01:42:27', '2018-06-06 11:47:03');
INSERT INTO `hl_admin_menu` VALUES (21, 11, 18, '首页banner导航', 'fa-wrench', 'nav?type=3', '2018-05-26 01:29:08', '2018-06-06 11:47:03');
INSERT INTO `hl_admin_menu` VALUES (22, 0, 21, '视频课程', 'fa-video-camera', NULL, '2018-06-06 11:47:00', '2018-06-06 11:47:03');
INSERT INTO `hl_admin_menu` VALUES (23, 22, 0, '分类', 'fa-bars', 'category?type=1', '2018-06-06 11:47:26', '2018-06-06 11:47:26');
INSERT INTO `hl_admin_menu` VALUES (24, 22, 0, '视频课程', 'fa-book', 'video', '2018-06-06 14:22:25', '2018-06-06 14:22:25');
INSERT INTO `hl_admin_menu` VALUES (25, 0, 0, '会员管理', 'fa-user', NULL, '2018-06-07 23:11:26', '2018-06-07 23:11:26');
INSERT INTO `hl_admin_menu` VALUES (26, 25, 0, '会员', 'fa-user', 'users', '2018-06-07 23:11:40', '2018-06-07 23:11:40');
INSERT INTO `hl_admin_menu` VALUES (27, 25, 0, 'vip购买记录', 'fa-shopping-bag', 'vip-order', '2018-06-08 01:53:38', '2018-06-08 01:53:38');
INSERT INTO `hl_admin_menu` VALUES (28, 22, 0, '课程购买记录', 'fa-shopping-bag', 'video-order', '2018-06-08 02:08:50', '2018-06-08 02:08:50');
INSERT INTO `hl_admin_menu` VALUES (29, 11, 0, '手机端导航', 'fa-wrench', 'nav?type=5', '2018-06-19 00:03:37', '2018-06-19 00:03:37');

-- ----------------------------
-- Table structure for hl_admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `hl_admin_operation_log`;
CREATE TABLE `hl_admin_operation_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `method` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `input` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `admin_operation_log_user_id_index`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6632 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hl_admin_operation_log
-- ----------------------------
INSERT INTO `hl_admin_operation_log` VALUES (6466, 1, 'admin', 'GET', '127.0.0.1', '[]', '2018-07-30 11:06:02', '2018-07-30 11:06:02');
INSERT INTO `hl_admin_operation_log` VALUES (6467, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 11:06:06', '2018-07-30 11:06:06');
INSERT INTO `hl_admin_operation_log` VALUES (6468, 1, 'admin/config-save', 'POST', '127.0.0.1', '{\"config_id\":{\"10\":\"\\u4e2d\\u5609\\u4fe1\\u9686\",\"15\":\"\\u4e2d\\u5609\\u4fe1\\u9686\",\"20\":\"\\u4e2d\\u5609\\u4fe1\\u9686\",\"25\":\"\\u7248\\u6743\\u6240\\u6709\\uff1a\\u4e2d\\u5609\\u4fe1\\u9686\",\"30\":\"Copyright\\u00a9 2008-2017 HuaZhen,lnc.All Rights Reserved.\",\"35\":\"\\u7ca4ICP\\u590716060296\\u53f7-1\",\"40\":\"400-6041-520\",\"45\":\"\\u5e7f\\u5dde\\u5e02\\u5929\\u6cb3\\u533a\\u5143\\u5c97\\u8def8\\u53f7\\u6167\\u901a\\u4ea7\\u4e1a\\u5e7f\\u573aA1\\u680b1323--1328\",\"55\":null,\"65\":null,\"70\":null,\"75\":\"299\",\"80\":\"\\u5e7f\\u5dde\\u5e02\\u5929\\u6cb3\\u533a\\u5143\\u5c97\\u8def8\\u53f7\\u6167\\u901a\\u4ea7\\u4e1a\\u5e7f\\u573aA1\\u680b1323--1328\\r\\n\\u60c5\\u611f\\u70ed\\u7ebf\\uff1a400-6041-520\\r\\n\\u516c\\u53f8\\u5b98\\u7f51\\uff1ahttp:\\/\\/duai520.com\",\"85\":null,\"90\":null,\"95\":null,\"100\":null},\"_token\":\"cNVrVTsaYyyxc3Ix9Wsef63eo4iAqWXT5Dz4ZXGJ\",\"_previous_\":\"http:\\/\\/zhongjiaxin.me\\/admin\"}', '2018-07-30 11:14:33', '2018-07-30 11:14:33');
INSERT INTO `hl_admin_operation_log` VALUES (6469, 1, 'admin/config', 'GET', '127.0.0.1', '[]', '2018-07-30 11:14:34', '2018-07-30 11:14:34');
INSERT INTO `hl_admin_operation_log` VALUES (6470, 1, 'admin/article-category', 'GET', '127.0.0.1', '[]', '2018-07-30 14:28:46', '2018-07-30 14:28:46');
INSERT INTO `hl_admin_operation_log` VALUES (6471, 1, 'admin', 'GET', '127.0.0.1', '[]', '2018-07-30 16:00:37', '2018-07-30 16:00:37');
INSERT INTO `hl_admin_operation_log` VALUES (6472, 1, 'admin/article-category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 16:08:07', '2018-07-30 16:08:07');
INSERT INTO `hl_admin_operation_log` VALUES (6473, 1, 'admin/article-category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 16:08:09', '2018-07-30 16:08:09');
INSERT INTO `hl_admin_operation_log` VALUES (6474, 1, 'admin/article-category', 'POST', '127.0.0.1', '{\"title\":\"\\u4ea7\\u54c1\\u7cfb\\u5217\",\"title2\":null,\"en_title\":\"Products\",\"template\":\"product\",\"url\":\"product\",\"parent_id\":\"0\",\"cat_desc\":null,\"content\":null,\"seo_title\":null,\"seo_keywords\":null,\"seo_description\":null,\"alt\":null,\"alt2\":null,\"_token\":\"5Kqi6RhDxsKsr4rhzDHEDtwbEuuhOLIZcW70BtZU\",\"_previous_\":\"http:\\/\\/zhongjiaxin.me\\/admin\\/article-category\"}', '2018-07-30 16:09:19', '2018-07-30 16:09:19');
INSERT INTO `hl_admin_operation_log` VALUES (6475, 1, 'admin/article-category', 'GET', '127.0.0.1', '[]', '2018-07-30 16:09:19', '2018-07-30 16:09:19');
INSERT INTO `hl_admin_operation_log` VALUES (6476, 1, 'admin/article-category/379/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 16:10:00', '2018-07-30 16:10:00');
INSERT INTO `hl_admin_operation_log` VALUES (6477, 1, 'admin/article-category/379', 'PUT', '127.0.0.1', '{\"title\":\"\\u4ea7\\u54c1\\u7cfb\\u5217\",\"title2\":null,\"en_title\":\"Products\",\"template\":\"product\",\"url\":\"product\",\"parent_id\":\"0\",\"cat_desc\":null,\"content\":null,\"seo_title\":null,\"seo_keywords\":null,\"seo_description\":null,\"alt\":null,\"alt2\":null,\"_token\":\"5Kqi6RhDxsKsr4rhzDHEDtwbEuuhOLIZcW70BtZU\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/zhongjiaxin.me\\/admin\\/article-category\"}', '2018-07-30 16:11:14', '2018-07-30 16:11:14');
INSERT INTO `hl_admin_operation_log` VALUES (6478, 1, 'admin/article-category', 'GET', '127.0.0.1', '[]', '2018-07-30 16:11:14', '2018-07-30 16:11:14');
INSERT INTO `hl_admin_operation_log` VALUES (6479, 1, 'admin/article-category', 'GET', '127.0.0.1', '[]', '2018-07-30 16:25:04', '2018-07-30 16:25:04');
INSERT INTO `hl_admin_operation_log` VALUES (6480, 1, 'admin/article-category/380/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 16:25:06', '2018-07-30 16:25:06');
INSERT INTO `hl_admin_operation_log` VALUES (6481, 1, 'admin/article-category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 16:25:10', '2018-07-30 16:25:10');
INSERT INTO `hl_admin_operation_log` VALUES (6482, 1, 'admin/article-iframe', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 16:25:54', '2018-07-30 16:25:54');
INSERT INTO `hl_admin_operation_log` VALUES (6483, 1, 'admin/article', 'GET', '127.0.0.1', '{\"no_header\":\"true\",\"no_sidebar\":\"true\",\"no_footer\":\"true\"}', '2018-07-30 16:25:55', '2018-07-30 16:25:55');
INSERT INTO `hl_admin_operation_log` VALUES (6484, 1, 'admin/article', 'GET', '127.0.0.1', '{\"no_header\":\"true\",\"no_sidebar\":\"true\",\"no_footer\":\"true\",\"cate_id\":\"380\"}', '2018-07-30 16:25:57', '2018-07-30 16:25:57');
INSERT INTO `hl_admin_operation_log` VALUES (6485, 1, 'admin/article/create', 'GET', '127.0.0.1', '{\"cate_id\":\"380\",\"_pjax\":\"#pjax-container\"}', '2018-07-30 16:25:58', '2018-07-30 16:25:58');
INSERT INTO `hl_admin_operation_log` VALUES (6486, 1, 'admin/article-iframe', 'GET', '127.0.0.1', '[]', '2018-07-30 17:58:41', '2018-07-30 17:58:41');
INSERT INTO `hl_admin_operation_log` VALUES (6487, 1, 'admin/article', 'GET', '127.0.0.1', '{\"no_header\":\"true\",\"no_sidebar\":\"true\",\"no_footer\":\"true\"}', '2018-07-30 17:58:41', '2018-07-30 17:58:41');
INSERT INTO `hl_admin_operation_log` VALUES (6488, 1, 'admin/article/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 17:58:43', '2018-07-30 17:58:43');
INSERT INTO `hl_admin_operation_log` VALUES (6489, 1, 'admin/article', 'POST', '127.0.0.1', '{\"title\":\"\\u6709\\u7ebfiPhone\\u8033\\u673a\",\"en_title\":null,\"title2\":null,\"cate_id\":\"380\",\"desc\":\"\\u9002\\u5408\\u521d\\u6b21\\u4f7f\\u7528\\u5165\\u8033\\u5f0f\\u8033\\u673a\\u7684\\u4eba\\u7fa4\\u3002\",\"desc2\":null,\"content\":null,\"alt\":null,\"alt2\":null,\"price\":\"98.00\",\"is_top\":\"on\",\"add_time\":\"2018-07-30 17:58:43\",\"seo_title\":null,\"seo_keywords\":null,\"seo_description\":null,\"video_text\":null,\"url\":\"https:\\/\\/www.jd.com\\/\",\"_token\":\"5Kqi6RhDxsKsr4rhzDHEDtwbEuuhOLIZcW70BtZU\",\"_previous_\":\"http:\\/\\/zhongjiaxin.me\\/admin\\/article?no_header=true&no_sidebar=true&no_footer=true\"}', '2018-07-30 17:59:34', '2018-07-30 17:59:34');
INSERT INTO `hl_admin_operation_log` VALUES (6490, 1, 'admin/article', 'GET', '127.0.0.1', '{\"cate_id\":\"380\"}', '2018-07-30 17:59:34', '2018-07-30 17:59:34');
INSERT INTO `hl_admin_operation_log` VALUES (6491, 1, 'admin/article/1254/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 18:03:31', '2018-07-30 18:03:31');
INSERT INTO `hl_admin_operation_log` VALUES (6492, 1, 'admin/article', 'GET', '127.0.0.1', '{\"cate_id\":\"380\",\"_pjax\":\"#pjax-container\"}', '2018-07-30 18:03:36', '2018-07-30 18:03:36');
INSERT INTO `hl_admin_operation_log` VALUES (6493, 1, 'admin/ads-position', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 18:05:07', '2018-07-30 18:05:07');
INSERT INTO `hl_admin_operation_log` VALUES (6494, 1, 'admin/ads-position/12,22,23,24', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"5Kqi6RhDxsKsr4rhzDHEDtwbEuuhOLIZcW70BtZU\"}', '2018-07-30 18:05:11', '2018-07-30 18:05:11');
INSERT INTO `hl_admin_operation_log` VALUES (6495, 1, 'admin/ads-position', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 18:05:11', '2018-07-30 18:05:11');
INSERT INTO `hl_admin_operation_log` VALUES (6496, 1, 'admin/ads-position/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 18:05:13', '2018-07-30 18:05:13');
INSERT INTO `hl_admin_operation_log` VALUES (6497, 1, 'admin/ads-position', 'POST', '127.0.0.1', '{\"title\":\"\\u9996\\u9875banner\",\"message\":\"\\u9996\\u9875banner\",\"width\":\"1920\",\"height\":\"1080\",\"_token\":\"5Kqi6RhDxsKsr4rhzDHEDtwbEuuhOLIZcW70BtZU\",\"_previous_\":\"http:\\/\\/zhongjiaxin.me\\/admin\\/ads-position\"}', '2018-07-30 18:05:37', '2018-07-30 18:05:37');
INSERT INTO `hl_admin_operation_log` VALUES (6498, 1, 'admin/ads-position', 'GET', '127.0.0.1', '[]', '2018-07-30 18:05:37', '2018-07-30 18:05:37');
INSERT INTO `hl_admin_operation_log` VALUES (6499, 1, 'admin/ads-position/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 18:05:42', '2018-07-30 18:05:42');
INSERT INTO `hl_admin_operation_log` VALUES (6500, 1, 'admin/ads-position', 'POST', '127.0.0.1', '{\"title\":\"\\u9996\\u9875\\u4ea7\\u54c1\\u5e7f\\u544a\\u56fe\",\"message\":\"\\u56fe\\u72471\\u5c3a\\u5bf8\\uff1a500*340\\r\\n\\u56fe\\u72472\\u5c3a\\u5bf8\\uff1a500*250\\r\\n\\u56fe\\u72473\\u5c3a\\u5bf8\\uff1a697*250\\r\\n\\u56fe\\u72474\\u5c3a\\u5bf8\\uff1a697*340\",\"width\":\"0\",\"height\":\"0\",\"_token\":\"5Kqi6RhDxsKsr4rhzDHEDtwbEuuhOLIZcW70BtZU\",\"_previous_\":\"http:\\/\\/zhongjiaxin.me\\/admin\\/ads-position\"}', '2018-07-30 18:07:25', '2018-07-30 18:07:25');
INSERT INTO `hl_admin_operation_log` VALUES (6501, 1, 'admin/ads-position', 'GET', '127.0.0.1', '[]', '2018-07-30 18:07:25', '2018-07-30 18:07:25');
INSERT INTO `hl_admin_operation_log` VALUES (6502, 1, 'admin/ads-image', 'GET', '127.0.0.1', '{\"cate_id\":\"26\",\"_pjax\":\"#pjax-container\"}', '2018-07-30 18:07:40', '2018-07-30 18:07:40');
INSERT INTO `hl_admin_operation_log` VALUES (6503, 1, 'admin/ads-image/create', 'GET', '127.0.0.1', '{\"cate_id\":\"26\",\"_pjax\":\"#pjax-container\"}', '2018-07-30 18:07:42', '2018-07-30 18:07:42');
INSERT INTO `hl_admin_operation_log` VALUES (6504, 1, 'admin/ads-image', 'POST', '127.0.0.1', '{\"title\":\"\\u6570\\u636e\\u7ebf\",\"desc\":\"\\u8ffd\\u6c42\\u81f3\\u7b80\\u4e00\\u4f53\\uff0c\\u6ca1\\u6709\\u591a\\u4f59\\u7684\\u88c5\\u9970\\uff0c\\u4f60\\u770b\\u5230\\u7684\\u6bcf\\u4e2a\\u70b9\\uff0c\\u6bcf\\u6839\\u7ebf\\u6761\\uff0c\\u6bcf\\u4e2a\\u90e8\\u4ef6\\u5bc6\\u4e0d\\u53ef\\u5206\\u3002\",\"cate_id\":\"26\",\"alt\":null,\"order\":\"0\",\"url\":null,\"_token\":\"5Kqi6RhDxsKsr4rhzDHEDtwbEuuhOLIZcW70BtZU\",\"_previous_\":\"http:\\/\\/zhongjiaxin.me\\/admin\\/ads-image?cate_id=26\"}', '2018-07-30 18:08:05', '2018-07-30 18:08:05');
INSERT INTO `hl_admin_operation_log` VALUES (6505, 1, 'admin/ads-image', 'GET', '127.0.0.1', '{\"cate_id\":\"26\"}', '2018-07-30 18:08:05', '2018-07-30 18:08:05');
INSERT INTO `hl_admin_operation_log` VALUES (6506, 1, 'admin/ads-image/create', 'GET', '127.0.0.1', '{\"cate_id\":\"26\",\"_pjax\":\"#pjax-container\"}', '2018-07-30 18:08:11', '2018-07-30 18:08:11');
INSERT INTO `hl_admin_operation_log` VALUES (6507, 1, 'admin/ads-image', 'POST', '127.0.0.1', '{\"title\":null,\"desc\":null,\"cate_id\":\"26\",\"alt\":null,\"order\":\"0\",\"url\":null,\"_token\":\"5Kqi6RhDxsKsr4rhzDHEDtwbEuuhOLIZcW70BtZU\",\"_previous_\":\"http:\\/\\/zhongjiaxin.me\\/admin\\/ads-image?cate_id=26\"}', '2018-07-30 18:08:18', '2018-07-30 18:08:18');
INSERT INTO `hl_admin_operation_log` VALUES (6508, 1, 'admin/ads-image', 'GET', '127.0.0.1', '{\"cate_id\":\"26\"}', '2018-07-30 18:08:18', '2018-07-30 18:08:18');
INSERT INTO `hl_admin_operation_log` VALUES (6509, 1, 'admin/ads-image/create', 'GET', '127.0.0.1', '{\"cate_id\":\"26\",\"_pjax\":\"#pjax-container\"}', '2018-07-30 18:08:19', '2018-07-30 18:08:19');
INSERT INTO `hl_admin_operation_log` VALUES (6510, 1, 'admin/ads-image', 'POST', '127.0.0.1', '{\"title\":null,\"desc\":null,\"cate_id\":\"26\",\"alt\":null,\"order\":\"0\",\"url\":null,\"_token\":\"5Kqi6RhDxsKsr4rhzDHEDtwbEuuhOLIZcW70BtZU\",\"_previous_\":\"http:\\/\\/zhongjiaxin.me\\/admin\\/ads-image?cate_id=26\"}', '2018-07-30 18:08:23', '2018-07-30 18:08:23');
INSERT INTO `hl_admin_operation_log` VALUES (6511, 1, 'admin/ads-image', 'GET', '127.0.0.1', '{\"cate_id\":\"26\"}', '2018-07-30 18:08:23', '2018-07-30 18:08:23');
INSERT INTO `hl_admin_operation_log` VALUES (6512, 1, 'admin/ads-image/create', 'GET', '127.0.0.1', '{\"cate_id\":\"26\",\"_pjax\":\"#pjax-container\"}', '2018-07-30 18:08:26', '2018-07-30 18:08:26');
INSERT INTO `hl_admin_operation_log` VALUES (6513, 1, 'admin/ads-image', 'POST', '127.0.0.1', '{\"title\":null,\"desc\":null,\"cate_id\":\"26\",\"alt\":null,\"order\":\"0\",\"url\":null,\"_token\":\"5Kqi6RhDxsKsr4rhzDHEDtwbEuuhOLIZcW70BtZU\",\"_previous_\":\"http:\\/\\/zhongjiaxin.me\\/admin\\/ads-image?cate_id=26\"}', '2018-07-30 18:08:30', '2018-07-30 18:08:30');
INSERT INTO `hl_admin_operation_log` VALUES (6514, 1, 'admin/ads-image', 'GET', '127.0.0.1', '{\"cate_id\":\"26\"}', '2018-07-30 18:08:30', '2018-07-30 18:08:30');
INSERT INTO `hl_admin_operation_log` VALUES (6515, 1, 'admin/ads-position', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 18:08:38', '2018-07-30 18:08:38');
INSERT INTO `hl_admin_operation_log` VALUES (6516, 1, 'admin/ads-position/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 18:08:39', '2018-07-30 18:08:39');
INSERT INTO `hl_admin_operation_log` VALUES (6517, 1, 'admin/ads-position', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 18:08:40', '2018-07-30 18:08:40');
INSERT INTO `hl_admin_operation_log` VALUES (6518, 1, 'admin/ads-image', 'GET', '127.0.0.1', '{\"cate_id\":\"25\",\"_pjax\":\"#pjax-container\"}', '2018-07-30 18:08:42', '2018-07-30 18:08:42');
INSERT INTO `hl_admin_operation_log` VALUES (6519, 1, 'admin/ads-image/create', 'GET', '127.0.0.1', '{\"cate_id\":\"25\",\"_pjax\":\"#pjax-container\"}', '2018-07-30 18:08:43', '2018-07-30 18:08:43');
INSERT INTO `hl_admin_operation_log` VALUES (6520, 1, 'admin/ads-image', 'POST', '127.0.0.1', '{\"title\":null,\"desc\":null,\"cate_id\":\"25\",\"alt\":null,\"order\":\"0\",\"url\":null,\"_token\":\"5Kqi6RhDxsKsr4rhzDHEDtwbEuuhOLIZcW70BtZU\",\"_previous_\":\"http:\\/\\/zhongjiaxin.me\\/admin\\/ads-image?cate_id=25\"}', '2018-07-30 18:08:49', '2018-07-30 18:08:49');
INSERT INTO `hl_admin_operation_log` VALUES (6521, 1, 'admin/ads-image', 'GET', '127.0.0.1', '{\"cate_id\":\"25\"}', '2018-07-30 18:08:49', '2018-07-30 18:08:49');
INSERT INTO `hl_admin_operation_log` VALUES (6522, 1, 'admin/ads-position', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 18:16:25', '2018-07-30 18:16:25');
INSERT INTO `hl_admin_operation_log` VALUES (6523, 1, 'admin/ads-position/26/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 18:17:02', '2018-07-30 18:17:02');
INSERT INTO `hl_admin_operation_log` VALUES (6524, 1, 'admin/ads-position/26', 'PUT', '127.0.0.1', '{\"title\":\"\\u9996\\u9875\\u4ea7\\u54c1\\u7cfb\\u5217\\u5e7f\\u544a\\u56fe\",\"message\":\"\\u56fe\\u72471\\u5c3a\\u5bf8\\uff1a500*340\\r\\n\\u56fe\\u72472\\u5c3a\\u5bf8\\uff1a500*250\\r\\n\\u56fe\\u72473\\u5c3a\\u5bf8\\uff1a697*250\\r\\n\\u56fe\\u72474\\u5c3a\\u5bf8\\uff1a697*340\",\"width\":\"0\",\"height\":\"0\",\"_token\":\"5Kqi6RhDxsKsr4rhzDHEDtwbEuuhOLIZcW70BtZU\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/zhongjiaxin.me\\/admin\\/ads-position\"}', '2018-07-30 18:17:07', '2018-07-30 18:17:07');
INSERT INTO `hl_admin_operation_log` VALUES (6525, 1, 'admin/ads-position', 'GET', '127.0.0.1', '[]', '2018-07-30 18:17:07', '2018-07-30 18:17:07');
INSERT INTO `hl_admin_operation_log` VALUES (6526, 1, 'admin/article-category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 18:17:39', '2018-07-30 18:17:39');
INSERT INTO `hl_admin_operation_log` VALUES (6527, 1, 'admin/ads-position', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 18:20:26', '2018-07-30 18:20:26');
INSERT INTO `hl_admin_operation_log` VALUES (6528, 1, 'admin/ads-image', 'GET', '127.0.0.1', '{\"cate_id\":\"26\",\"_pjax\":\"#pjax-container\"}', '2018-07-30 18:20:28', '2018-07-30 18:20:28');
INSERT INTO `hl_admin_operation_log` VALUES (6529, 1, 'admin/ads-image/41/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 18:20:29', '2018-07-30 18:20:29');
INSERT INTO `hl_admin_operation_log` VALUES (6530, 1, 'admin/ads-image', 'GET', '127.0.0.1', '{\"cate_id\":\"26\",\"_pjax\":\"#pjax-container\"}', '2018-07-30 18:20:32', '2018-07-30 18:20:32');
INSERT INTO `hl_admin_operation_log` VALUES (6531, 1, 'admin', 'GET', '127.0.0.1', '[]', '2018-07-30 18:33:43', '2018-07-30 18:33:43');
INSERT INTO `hl_admin_operation_log` VALUES (6532, 1, 'admin/ads-position', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 18:34:15', '2018-07-30 18:34:15');
INSERT INTO `hl_admin_operation_log` VALUES (6533, 1, 'admin/ads-image', 'GET', '127.0.0.1', '{\"cate_id\":\"26\",\"_pjax\":\"#pjax-container\"}', '2018-07-30 18:36:16', '2018-07-30 18:36:16');
INSERT INTO `hl_admin_operation_log` VALUES (6534, 1, 'admin/ads-image/44/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 18:36:35', '2018-07-30 18:36:35');
INSERT INTO `hl_admin_operation_log` VALUES (6535, 1, 'admin/ads-image/44', 'PUT', '127.0.0.1', '{\"title\":null,\"desc\":null,\"cate_id\":\"26\",\"alt\":null,\"order\":\"4\",\"url\":null,\"_token\":\"5Kqi6RhDxsKsr4rhzDHEDtwbEuuhOLIZcW70BtZU\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/zhongjiaxin.me\\/admin\\/ads-image?cate_id=26\"}', '2018-07-30 18:36:51', '2018-07-30 18:36:51');
INSERT INTO `hl_admin_operation_log` VALUES (6536, 1, 'admin/ads-image', 'GET', '127.0.0.1', '{\"cate_id\":\"26\"}', '2018-07-30 18:36:51', '2018-07-30 18:36:51');
INSERT INTO `hl_admin_operation_log` VALUES (6537, 1, 'admin/ads-image/41/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 18:36:56', '2018-07-30 18:36:56');
INSERT INTO `hl_admin_operation_log` VALUES (6538, 1, 'admin/ads-image/41', 'PUT', '127.0.0.1', '{\"title\":\"\\u6570\\u636e\\u7ebf\",\"desc\":\"\\u8ffd\\u6c42\\u81f3\\u7b80\\u4e00\\u4f53\\uff0c\\u6ca1\\u6709\\u591a\\u4f59\\u7684\\u88c5\\u9970\\uff0c\\u4f60\\u770b\\u5230\\u7684\\u6bcf\\u4e2a\\u70b9\\uff0c\\u6bcf\\u6839\\u7ebf\\u6761\\uff0c\\u6bcf\\u4e2a\\u90e8\\u4ef6\\u5bc6\\u4e0d\\u53ef\\u5206\\u3002\",\"cate_id\":\"26\",\"alt\":null,\"order\":\"4\",\"url\":null,\"_token\":\"5Kqi6RhDxsKsr4rhzDHEDtwbEuuhOLIZcW70BtZU\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/zhongjiaxin.me\\/admin\\/ads-image?cate_id=26\"}', '2018-07-30 18:36:58', '2018-07-30 18:36:58');
INSERT INTO `hl_admin_operation_log` VALUES (6539, 1, 'admin/ads-image', 'GET', '127.0.0.1', '{\"cate_id\":\"26\"}', '2018-07-30 18:36:59', '2018-07-30 18:36:59');
INSERT INTO `hl_admin_operation_log` VALUES (6540, 1, 'admin/ads-image', 'GET', '127.0.0.1', '{\"cate_id\":\"26\"}', '2018-07-30 18:37:44', '2018-07-30 18:37:44');
INSERT INTO `hl_admin_operation_log` VALUES (6541, 1, 'admin/ads-image/42/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 18:37:48', '2018-07-30 18:37:48');
INSERT INTO `hl_admin_operation_log` VALUES (6542, 1, 'admin/ads-image/42', 'PUT', '127.0.0.1', '{\"title\":null,\"desc\":null,\"cate_id\":\"26\",\"alt\":null,\"order\":\"3\",\"url\":null,\"_token\":\"5Kqi6RhDxsKsr4rhzDHEDtwbEuuhOLIZcW70BtZU\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/zhongjiaxin.me\\/admin\\/ads-image?cate_id=26\"}', '2018-07-30 18:37:50', '2018-07-30 18:37:50');
INSERT INTO `hl_admin_operation_log` VALUES (6543, 1, 'admin/ads-image', 'GET', '127.0.0.1', '{\"cate_id\":\"26\"}', '2018-07-30 18:37:50', '2018-07-30 18:37:50');
INSERT INTO `hl_admin_operation_log` VALUES (6544, 1, 'admin/ads-image/43/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 18:37:53', '2018-07-30 18:37:53');
INSERT INTO `hl_admin_operation_log` VALUES (6545, 1, 'admin/ads-image/43', 'PUT', '127.0.0.1', '{\"title\":null,\"desc\":null,\"cate_id\":\"26\",\"alt\":null,\"order\":\"2\",\"url\":null,\"_token\":\"5Kqi6RhDxsKsr4rhzDHEDtwbEuuhOLIZcW70BtZU\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/zhongjiaxin.me\\/admin\\/ads-image?cate_id=26\"}', '2018-07-30 18:37:55', '2018-07-30 18:37:55');
INSERT INTO `hl_admin_operation_log` VALUES (6546, 1, 'admin/ads-image', 'GET', '127.0.0.1', '{\"cate_id\":\"26\"}', '2018-07-30 18:37:55', '2018-07-30 18:37:55');
INSERT INTO `hl_admin_operation_log` VALUES (6547, 1, 'admin/ads-image/44/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 18:37:57', '2018-07-30 18:37:57');
INSERT INTO `hl_admin_operation_log` VALUES (6548, 1, 'admin/ads-image/44', 'PUT', '127.0.0.1', '{\"title\":null,\"desc\":null,\"cate_id\":\"26\",\"alt\":null,\"order\":\"1\",\"url\":null,\"_token\":\"5Kqi6RhDxsKsr4rhzDHEDtwbEuuhOLIZcW70BtZU\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/zhongjiaxin.me\\/admin\\/ads-image?cate_id=26\"}', '2018-07-30 18:37:59', '2018-07-30 18:37:59');
INSERT INTO `hl_admin_operation_log` VALUES (6549, 1, 'admin/ads-image', 'GET', '127.0.0.1', '{\"cate_id\":\"26\"}', '2018-07-30 18:37:59', '2018-07-30 18:37:59');
INSERT INTO `hl_admin_operation_log` VALUES (6550, 1, 'admin', 'GET', '127.0.0.1', '[]', '2018-07-30 20:13:45', '2018-07-30 20:13:45');
INSERT INTO `hl_admin_operation_log` VALUES (6551, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 20:13:52', '2018-07-30 20:13:52');
INSERT INTO `hl_admin_operation_log` VALUES (6552, 1, 'admin/article-iframe', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 20:13:56', '2018-07-30 20:13:56');
INSERT INTO `hl_admin_operation_log` VALUES (6553, 1, 'admin/article', 'GET', '127.0.0.1', '{\"no_header\":\"true\",\"no_sidebar\":\"true\",\"no_footer\":\"true\"}', '2018-07-30 20:13:56', '2018-07-30 20:13:56');
INSERT INTO `hl_admin_operation_log` VALUES (6554, 1, 'admin/article-iframe', 'GET', '127.0.0.1', '[]', '2018-07-30 21:32:44', '2018-07-30 21:32:44');
INSERT INTO `hl_admin_operation_log` VALUES (6555, 1, 'admin/article', 'GET', '127.0.0.1', '{\"no_header\":\"true\",\"no_sidebar\":\"true\",\"no_footer\":\"true\"}', '2018-07-30 21:32:44', '2018-07-30 21:32:44');
INSERT INTO `hl_admin_operation_log` VALUES (6556, 1, 'admin/more-image', 'GET', '127.0.0.1', '{\"cate_id\":\"1\",\"more_id\":\"1254\",\"_pjax\":\"#pjax-container\"}', '2018-07-30 21:32:46', '2018-07-30 21:32:46');
INSERT INTO `hl_admin_operation_log` VALUES (6557, 1, 'admin/more-image/create', 'GET', '127.0.0.1', '{\"cate_id\":\"1\",\"more_id\":\"1254\",\"_pjax\":\"#pjax-container\"}', '2018-07-30 21:33:10', '2018-07-30 21:33:10');
INSERT INTO `hl_admin_operation_log` VALUES (6558, 1, 'admin/more-image', 'POST', '127.0.0.1', '{\"cate_id\":\"1\",\"more_id\":\"1254\",\"title\":null,\"alt\":null,\"order\":\"0\",\"_token\":\"5Kqi6RhDxsKsr4rhzDHEDtwbEuuhOLIZcW70BtZU\",\"_previous_\":\"http:\\/\\/zhongjiaxin.me\\/admin\\/more-image?cate_id=1&more_id=1254\"}', '2018-07-30 21:33:32', '2018-07-30 21:33:32');
INSERT INTO `hl_admin_operation_log` VALUES (6559, 1, 'admin/more-image', 'GET', '127.0.0.1', '{\"cate_id\":\"1\",\"more_id\":\"1254\"}', '2018-07-30 21:33:32', '2018-07-30 21:33:32');
INSERT INTO `hl_admin_operation_log` VALUES (6560, 1, 'admin/more-image/create', 'GET', '127.0.0.1', '{\"cate_id\":\"1\",\"more_id\":\"1254\",\"_pjax\":\"#pjax-container\"}', '2018-07-30 21:33:36', '2018-07-30 21:33:36');
INSERT INTO `hl_admin_operation_log` VALUES (6561, 1, 'admin/more-image', 'POST', '127.0.0.1', '{\"cate_id\":\"1\",\"more_id\":\"1254\",\"title\":null,\"alt\":null,\"order\":\"0\",\"_token\":\"5Kqi6RhDxsKsr4rhzDHEDtwbEuuhOLIZcW70BtZU\",\"_previous_\":\"http:\\/\\/zhongjiaxin.me\\/admin\\/more-image?cate_id=1&more_id=1254\"}', '2018-07-30 21:33:42', '2018-07-30 21:33:42');
INSERT INTO `hl_admin_operation_log` VALUES (6562, 1, 'admin/more-image', 'GET', '127.0.0.1', '{\"cate_id\":\"1\",\"more_id\":\"1254\"}', '2018-07-30 21:33:43', '2018-07-30 21:33:43');
INSERT INTO `hl_admin_operation_log` VALUES (6563, 1, 'admin/more-image/create', 'GET', '127.0.0.1', '{\"cate_id\":\"1\",\"more_id\":\"1254\",\"_pjax\":\"#pjax-container\"}', '2018-07-30 21:38:40', '2018-07-30 21:38:40');
INSERT INTO `hl_admin_operation_log` VALUES (6564, 1, 'admin/more-image', 'GET', '127.0.0.1', '{\"cate_id\":\"1\",\"more_id\":\"1254\",\"_pjax\":\"#pjax-container\"}', '2018-07-30 21:38:41', '2018-07-30 21:38:41');
INSERT INTO `hl_admin_operation_log` VALUES (6565, 1, 'admin/more-image/create', 'GET', '127.0.0.1', '{\"cate_id\":\"1\",\"more_id\":\"1254\",\"_pjax\":\"#pjax-container\"}', '2018-07-30 21:38:43', '2018-07-30 21:38:43');
INSERT INTO `hl_admin_operation_log` VALUES (6566, 1, 'admin/more-image', 'GET', '127.0.0.1', '{\"cate_id\":\"1\",\"more_id\":\"1254\",\"_pjax\":\"#pjax-container\"}', '2018-07-30 21:38:44', '2018-07-30 21:38:44');
INSERT INTO `hl_admin_operation_log` VALUES (6567, 1, 'admin/article', 'GET', '127.0.0.1', '{\"no_header\":\"true\",\"no_sidebar\":\"true\",\"no_footer\":\"true\",\"cate_id\":\"380\"}', '2018-07-30 21:38:47', '2018-07-30 21:38:47');
INSERT INTO `hl_admin_operation_log` VALUES (6568, 1, 'admin/article/1254/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 21:38:49', '2018-07-30 21:38:49');
INSERT INTO `hl_admin_operation_log` VALUES (6569, 1, 'admin/article-iframe', 'GET', '127.0.0.1', '[]', '2018-07-30 21:38:57', '2018-07-30 21:38:57');
INSERT INTO `hl_admin_operation_log` VALUES (6570, 1, 'admin/article', 'GET', '127.0.0.1', '{\"no_header\":\"true\",\"no_sidebar\":\"true\",\"no_footer\":\"true\"}', '2018-07-30 21:38:57', '2018-07-30 21:38:57');
INSERT INTO `hl_admin_operation_log` VALUES (6571, 1, 'admin/article/1254/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 21:38:59', '2018-07-30 21:38:59');
INSERT INTO `hl_admin_operation_log` VALUES (6572, 1, 'admin/article/1254', 'PUT', '127.0.0.1', '{\"id\":\"1254\",\"title\":\"\\u6709\\u7ebfiPhone\\u8033\\u673a\",\"en_title\":null,\"title2\":null,\"cate_id\":\"380\",\"desc\":\"\\u9002\\u5408\\u521d\\u6b21\\u4f7f\\u7528\\u5165\\u8033\\u5f0f\\u8033\\u673a\\u7684\\u4eba\\u7fa4\\u3002\",\"desc2\":null,\"content\":\"<img src=\\\"\\/uploads\\/attached\\/image\\/20180730\\/20180730133911_75744.jpg\\\" alt=\\\"\\\" \\/><img src=\\\"\\/uploads\\/attached\\/image\\/20180730\\/20180730133911_53200.jpg\\\" alt=\\\"\\\" \\/><img src=\\\"\\/uploads\\/attached\\/image\\/20180730\\/20180730133911_46852.jpg\\\" alt=\\\"\\\" \\/><img src=\\\"\\/uploads\\/attached\\/image\\/20180730\\/20180730133911_42717.jpg\\\" alt=\\\"\\\" \\/><img src=\\\"\\/uploads\\/attached\\/image\\/20180730\\/20180730133911_84699.jpg\\\" alt=\\\"\\\" \\/><img src=\\\"\\/uploads\\/attached\\/image\\/20180730\\/20180730133911_23154.jpg\\\" alt=\\\"\\\" \\/><img src=\\\"\\/uploads\\/attached\\/image\\/20180730\\/20180730133912_46459.jpg\\\" alt=\\\"\\\" \\/><img src=\\\"\\/uploads\\/attached\\/image\\/20180730\\/20180730133912_13523.jpg\\\" alt=\\\"\\\" \\/><img src=\\\"\\/uploads\\/attached\\/image\\/20180730\\/20180730133912_23825.jpg\\\" alt=\\\"\\\" \\/><img src=\\\"\\/uploads\\/attached\\/image\\/20180730\\/20180730133912_84480.jpg\\\" alt=\\\"\\\" \\/>\",\"alt\":null,\"alt2\":null,\"price\":\"98.00\",\"is_top\":\"on\",\"add_time\":\"2018-07-30 17:58:43\",\"seo_title\":null,\"seo_keywords\":null,\"seo_description\":null,\"video_text\":null,\"url\":\"https:\\/\\/www.jd.com\\/\",\"_token\":\"5Kqi6RhDxsKsr4rhzDHEDtwbEuuhOLIZcW70BtZU\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/zhongjiaxin.me\\/admin\\/article?no_header=true&no_sidebar=true&no_footer=true\"}', '2018-07-30 21:39:18', '2018-07-30 21:39:18');
INSERT INTO `hl_admin_operation_log` VALUES (6573, 1, 'admin/article', 'GET', '127.0.0.1', '{\"cate_id\":\"380\"}', '2018-07-30 21:39:18', '2018-07-30 21:39:18');
INSERT INTO `hl_admin_operation_log` VALUES (6574, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 22:51:42', '2018-07-30 22:51:42');
INSERT INTO `hl_admin_operation_log` VALUES (6575, 1, 'admin/config-save', 'POST', '127.0.0.1', '{\"config_id\":{\"10\":\"\\u4e2d\\u5609\\u4fe1\\u9686\",\"15\":\"\\u4e2d\\u5609\\u4fe1\\u9686\",\"20\":\"\\u4e2d\\u5609\\u4fe1\\u9686\",\"25\":\"\\u00a9 2016  www.bjzhongjiatech.com \\u5317\\u4eac\\u4e2d\\u5609\\u4fe1\\u9686\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8 \\u7248\\u6743\\u6240\\u6709 All Rights Reserved\",\"40\":\"400-6041-520\",\"45\":\"\\u5e7f\\u5dde\\u5e02\\u5929\\u6cb3\\u533a\\u5143\\u5c97\\u8def8\\u53f7\\u6167\\u901a\\u4ea7\\u4e1a\\u5e7f\\u573aA1\\u680b1323--1328\",\"55\":\"\\u626b\\u4e00\\u626b\\u5173\\u6ce8\\u6211\\u4eec\",\"65\":\"Monica@e-fsc.jp\",\"70\":\"http:\\/\\/www.jd.com\\/\",\"75\":null,\"105\":\"\\u6280\\u672f\\u652f\\u6301\\uff1a\\u4e2d\\u5609\\u4fe1\\u9686\"},\"_token\":\"5Kqi6RhDxsKsr4rhzDHEDtwbEuuhOLIZcW70BtZU\",\"_previous_\":\"http:\\/\\/zhongjiaxin.me\\/admin\\/article-iframe\"}', '2018-07-30 22:52:25', '2018-07-30 22:52:25');
INSERT INTO `hl_admin_operation_log` VALUES (6576, 1, 'admin/config', 'GET', '127.0.0.1', '[]', '2018-07-30 22:52:25', '2018-07-30 22:52:25');
INSERT INTO `hl_admin_operation_log` VALUES (6577, 1, 'admin/config', 'GET', '127.0.0.1', '[]', '2018-07-30 22:53:43', '2018-07-30 22:53:43');
INSERT INTO `hl_admin_operation_log` VALUES (6578, 1, 'admin/config', 'GET', '127.0.0.1', '[]', '2018-07-30 22:53:47', '2018-07-30 22:53:47');
INSERT INTO `hl_admin_operation_log` VALUES (6579, 1, 'admin/config', 'GET', '127.0.0.1', '[]', '2018-07-30 22:54:05', '2018-07-30 22:54:05');
INSERT INTO `hl_admin_operation_log` VALUES (6580, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 22:54:18', '2018-07-30 22:54:18');
INSERT INTO `hl_admin_operation_log` VALUES (6581, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 22:54:19', '2018-07-30 22:54:19');
INSERT INTO `hl_admin_operation_log` VALUES (6582, 1, 'admin/config', 'GET', '127.0.0.1', '[]', '2018-07-30 22:54:38', '2018-07-30 22:54:38');
INSERT INTO `hl_admin_operation_log` VALUES (6583, 1, 'admin/config', 'GET', '127.0.0.1', '[]', '2018-07-30 22:55:11', '2018-07-30 22:55:11');
INSERT INTO `hl_admin_operation_log` VALUES (6584, 1, 'admin/config', 'GET', '127.0.0.1', '[]', '2018-07-30 22:55:26', '2018-07-30 22:55:26');
INSERT INTO `hl_admin_operation_log` VALUES (6585, 1, 'admin/config', 'GET', '127.0.0.1', '[]', '2018-07-30 22:59:37', '2018-07-30 22:59:37');
INSERT INTO `hl_admin_operation_log` VALUES (6586, 1, 'admin/config-save', 'POST', '127.0.0.1', '{\"config_id\":{\"10\":\"\\u4e2d\\u5609\\u4fe1\\u9686\",\"15\":\"\\u4e2d\\u5609\\u4fe1\\u9686\",\"20\":\"\\u4e2d\\u5609\\u4fe1\\u9686\",\"25\":\"\\u00a9 2016  www.bjzhongjiatech.com \\u5317\\u4eac\\u4e2d\\u5609\\u4fe1\\u9686\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8 \\u7248\\u6743\\u6240\\u6709 All Rights Reserved\",\"40\":\"400-6041-520\",\"45\":\"\\u5e7f\\u5dde\\u5e02\\u5929\\u6cb3\\u533a\\u5143\\u5c97\\u8def8\\u53f7\\u6167\\u901a\\u4ea7\\u4e1a\\u5e7f\\u573aA1\\u680b1323--1328\",\"55\":\"\\u626b\\u4e00\\u626b\\u5173\\u6ce8\\u6211\\u4eec\",\"60\":\"\\u6bdb\\u5c0f\\u59d0 1867xxxxxx\",\"65\":\"Monica@e-fsc.jp\",\"70\":\"http:\\/\\/www.jd.com\\/\",\"75\":null,\"105\":\"\\u6280\\u672f\\u652f\\u6301\\uff1a\\u4e2d\\u5609\\u4fe1\\u9686\",\"106\":\"\\u5317\\u4eac\\u4e2d\\u5609\\u4fe1\\u9686\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\\r\\nwww.bjzhongjiatech.com  \\u7248\\u6743\\u6240\\u6709 \\r\\nAll Rights Reserved  \\u6280\\u672f\\u652f\\u6301\\uff1a\\u4e2d\\u5609\\u4fe1\\u9686\"},\"_token\":\"5Kqi6RhDxsKsr4rhzDHEDtwbEuuhOLIZcW70BtZU\"}', '2018-07-30 22:59:55', '2018-07-30 22:59:55');
INSERT INTO `hl_admin_operation_log` VALUES (6587, 1, 'admin/config', 'GET', '127.0.0.1', '[]', '2018-07-30 22:59:56', '2018-07-30 22:59:56');
INSERT INTO `hl_admin_operation_log` VALUES (6588, 1, 'admin/article-category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 23:09:16', '2018-07-30 23:09:16');
INSERT INTO `hl_admin_operation_log` VALUES (6589, 1, 'admin/article-category/379/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 23:09:18', '2018-07-30 23:09:18');
INSERT INTO `hl_admin_operation_log` VALUES (6590, 1, 'admin/article-category/379', 'PUT', '127.0.0.1', '{\"title\":\"\\u4ea7\\u54c1\\u7cfb\\u5217\",\"title2\":null,\"en_title\":\"Products\",\"template\":\"product\",\"url\":\"product\",\"parent_id\":\"0\",\"cat_desc\":null,\"content\":null,\"seo_title\":null,\"seo_keywords\":null,\"seo_description\":null,\"alt\":null,\"alt2\":null,\"_token\":\"5Kqi6RhDxsKsr4rhzDHEDtwbEuuhOLIZcW70BtZU\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/zhongjiaxin.me\\/admin\\/article-category\"}', '2018-07-30 23:09:53', '2018-07-30 23:09:53');
INSERT INTO `hl_admin_operation_log` VALUES (6591, 1, 'admin/article-category', 'GET', '127.0.0.1', '[]', '2018-07-30 23:09:53', '2018-07-30 23:09:53');
INSERT INTO `hl_admin_operation_log` VALUES (6592, 1, 'admin/article-category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 23:17:40', '2018-07-30 23:17:40');
INSERT INTO `hl_admin_operation_log` VALUES (6593, 1, 'admin/article-category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 23:17:41', '2018-07-30 23:17:41');
INSERT INTO `hl_admin_operation_log` VALUES (6594, 1, 'admin/article-category', 'POST', '127.0.0.1', '{\"title\":\"\\u54c1\\u724c\\u52a8\\u6001\",\"title2\":null,\"en_title\":null,\"template\":\"news\",\"url\":null,\"parent_id\":\"0\",\"cat_desc\":null,\"content\":null,\"seo_title\":null,\"seo_keywords\":null,\"seo_description\":null,\"alt\":null,\"alt2\":null,\"_token\":\"5Kqi6RhDxsKsr4rhzDHEDtwbEuuhOLIZcW70BtZU\",\"_previous_\":\"http:\\/\\/zhongjiaxin.me\\/admin\\/article-category\"}', '2018-07-30 23:18:58', '2018-07-30 23:18:58');
INSERT INTO `hl_admin_operation_log` VALUES (6595, 1, 'admin/article-category', 'GET', '127.0.0.1', '[]', '2018-07-30 23:18:58', '2018-07-30 23:18:58');
INSERT INTO `hl_admin_operation_log` VALUES (6596, 1, 'admin/article-category', 'GET', '127.0.0.1', '[]', '2018-07-30 23:20:33', '2018-07-30 23:20:33');
INSERT INTO `hl_admin_operation_log` VALUES (6597, 1, 'admin/article-category/385/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 23:20:35', '2018-07-30 23:20:35');
INSERT INTO `hl_admin_operation_log` VALUES (6598, 1, 'admin/article-iframe', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 23:20:37', '2018-07-30 23:20:37');
INSERT INTO `hl_admin_operation_log` VALUES (6599, 1, 'admin/article', 'GET', '127.0.0.1', '{\"no_header\":\"true\",\"no_sidebar\":\"true\",\"no_footer\":\"true\"}', '2018-07-30 23:20:38', '2018-07-30 23:20:38');
INSERT INTO `hl_admin_operation_log` VALUES (6600, 1, 'admin/article', 'GET', '127.0.0.1', '{\"no_header\":\"true\",\"no_sidebar\":\"true\",\"no_footer\":\"true\",\"cate_id\":\"385\"}', '2018-07-30 23:20:40', '2018-07-30 23:20:40');
INSERT INTO `hl_admin_operation_log` VALUES (6601, 1, 'admin/article/create', 'GET', '127.0.0.1', '{\"cate_id\":\"385\",\"_pjax\":\"#pjax-container\"}', '2018-07-30 23:20:41', '2018-07-30 23:20:41');
INSERT INTO `hl_admin_operation_log` VALUES (6602, 1, 'admin/article', 'POST', '127.0.0.1', '{\"title\":\"\\u786e\\u8ba4\\u8fc7\\u773c\\u795e\\uff0c\\u8fd9\\u5c31\\u662f\\u6211\\u8981\\u627e\\u7684\\u6570\\u636e\\u7ebf\\uff01\",\"en_title\":null,\"title2\":null,\"cate_id\":\"385\",\"desc\":\"\\u8fd9\\u6b3e\\u6570\\u636e\\u7ebf\\u5916\\u90e8\\u91c7\\u7528PVC\\u6750\\u8d28\\uff0c\\u4e0d\\u7528\\u62c5\\u5fc3\\u7ebf\\u5934\\u7f20\\u7ed5\\uff0c\\u7a33\\u5b9a\\u8f93\\u51fa2.5A\\u7535\\u6d41\\uff0c\\u5145\\u6ee1\\u7535\\u540e\\u81ea\\u52a8\\u505c\\u7535\\uff0c\\u4e0d\\u7528...\",\"desc2\":null,\"content\":null,\"alt\":null,\"alt2\":null,\"price\":null,\"is_top\":\"off\",\"add_time\":\"2018-07-30 23:20:41\",\"seo_title\":null,\"seo_keywords\":null,\"seo_description\":null,\"video_text\":null,\"url\":null,\"_token\":\"5Kqi6RhDxsKsr4rhzDHEDtwbEuuhOLIZcW70BtZU\",\"_previous_\":\"http:\\/\\/zhongjiaxin.me\\/admin\\/article?no_header=true&no_sidebar=true&no_footer=true&cate_id=385\"}', '2018-07-30 23:21:21', '2018-07-30 23:21:21');
INSERT INTO `hl_admin_operation_log` VALUES (6603, 1, 'admin/article', 'GET', '127.0.0.1', '{\"cate_id\":\"385\"}', '2018-07-30 23:21:21', '2018-07-30 23:21:21');
INSERT INTO `hl_admin_operation_log` VALUES (6604, 1, 'admin/article/1255', 'PUT', '127.0.0.1', '{\"is_top\":\"on\",\"_token\":\"5Kqi6RhDxsKsr4rhzDHEDtwbEuuhOLIZcW70BtZU\",\"_method\":\"PUT\"}', '2018-07-30 23:21:23', '2018-07-30 23:21:23');
INSERT INTO `hl_admin_operation_log` VALUES (6605, 1, 'admin/article', 'GET', '127.0.0.1', '{\"cate_id\":null}', '2018-07-30 23:21:23', '2018-07-30 23:21:23');
INSERT INTO `hl_admin_operation_log` VALUES (6606, 1, 'admin/article/1255/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 23:23:18', '2018-07-30 23:23:18');
INSERT INTO `hl_admin_operation_log` VALUES (6607, 1, 'admin/article-iframe', 'GET', '127.0.0.1', '[]', '2018-07-30 23:35:42', '2018-07-30 23:35:42');
INSERT INTO `hl_admin_operation_log` VALUES (6608, 1, 'admin/article', 'GET', '127.0.0.1', '{\"no_header\":\"true\",\"no_sidebar\":\"true\",\"no_footer\":\"true\"}', '2018-07-30 23:35:43', '2018-07-30 23:35:43');
INSERT INTO `hl_admin_operation_log` VALUES (6609, 1, 'admin/article/1255/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 23:35:45', '2018-07-30 23:35:45');
INSERT INTO `hl_admin_operation_log` VALUES (6610, 1, 'admin/article/1255', 'PUT', '127.0.0.1', '{\"id\":\"1255\",\"title\":\"\\u786e\\u8ba4\\u8fc7\\u773c\\u795e\\uff0c\\u8fd9\\u5c31\\u662f\\u6211\\u8981\\u627e\\u7684\\u6570\\u636e\\u7ebf\\uff01\",\"en_title\":null,\"title2\":null,\"cate_id\":\"385\",\"desc\":\"\\u8fd9\\u6b3e\\u6570\\u636e\\u7ebf\\u5916\\u90e8\\u91c7\\u7528PVC\\u6750\\u8d28\\uff0c\\u4e0d\\u7528\\u62c5\\u5fc3\\u7ebf\\u5934\\u7f20\\u7ed5\\uff0c\\u7a33\\u5b9a\\u8f93\\u51fa2.5A\\u7535\\u6d41\\uff0c\\u5145\\u6ee1\\u7535\\u540e\\u81ea\\u52a8\\u505c\\u7535\\uff0c\\u4e0d\\u7528...\",\"desc2\":null,\"content\":null,\"alt\":null,\"alt2\":null,\"price\":\"0.00\",\"editor\":\"\\u4e2d\\u5609\",\"is_top\":\"on\",\"add_time\":\"2018-07-30 23:20:41\",\"seo_title\":null,\"seo_keywords\":null,\"seo_description\":null,\"video_text\":null,\"url\":null,\"_token\":\"5Kqi6RhDxsKsr4rhzDHEDtwbEuuhOLIZcW70BtZU\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/zhongjiaxin.me\\/admin\\/article?no_header=true&no_sidebar=true&no_footer=true\"}', '2018-07-30 23:35:49', '2018-07-30 23:35:49');
INSERT INTO `hl_admin_operation_log` VALUES (6611, 1, 'admin/article', 'GET', '127.0.0.1', '{\"cate_id\":\"385\"}', '2018-07-30 23:35:50', '2018-07-30 23:35:50');
INSERT INTO `hl_admin_operation_log` VALUES (6612, 1, 'admin/article/1255/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 23:36:16', '2018-07-30 23:36:16');
INSERT INTO `hl_admin_operation_log` VALUES (6613, 1, 'admin/article/1255', 'PUT', '127.0.0.1', '{\"id\":\"1255\",\"title\":\"\\u786e\\u8ba4\\u8fc7\\u773c\\u795e\\uff0c\\u8fd9\\u5c31\\u662f\\u6211\\u8981\\u627e\\u7684\\u6570\\u636e\\u7ebf\\uff01\",\"en_title\":null,\"title2\":null,\"cate_id\":\"385\",\"desc\":\"\\u8fd9\\u6b3e\\u6570\\u636e\\u7ebf\\u5916\\u90e8\\u91c7\\u7528PVC\\u6750\\u8d28\\uff0c\\u4e0d\\u7528\\u62c5\\u5fc3\\u7ebf\\u5934\\u7f20\\u7ed5\\uff0c\\u7a33\\u5b9a\\u8f93\\u51fa2.5A\\u7535\\u6d41\\uff0c\\u5145\\u6ee1\\u7535\\u540e\\u81ea\\u52a8\\u505c\\u7535\\uff0c\\u4e0d\\u7528...\",\"desc2\":null,\"content\":\"<p style=\\\"margin-top:0px;margin-bottom:0px;padding:30px 0px 0px;font-size:14px;color:#444444;line-height:30px;font-family:Arial, \\u5fae\\u8f6f\\u96c5\\u9ed1;white-space:normal;\\\">\\r\\n\\t\\u8fd9\\u6b3e\\u6570\\u636e\\u7ebf\\u5916\\u90e8\\u91c7\\u7528PVC\\u6750\\u8d28\\uff0c\\u4e0d\\u7528\\u62c5\\u5fc3\\u7ebf\\u5934\\u7f20\\u7ed5\\uff0c\\u7a33\\u5b9a\\u8f93\\u51fa2.5A\\u7535\\u6d41\\uff0c\\u5145\\u6ee1\\u7535\\u540e\\u81ea\\u52a8\\u505c\\u7535\\uff0c\\u4e0d\\u7528\\u62c5\\u5fc3\\u8fc7\\u5145\\u73b0\\u8c61\\u7684\\u53d1\\u751f\\u3002\\u6570\\u636e\\u7ebf\\u7684\\u524d\\u5934\\u505a\\u4e86\\u9636\\u68af\\u8bbe\\u8ba1\\uff0c\\u5145\\u7535\\u7684\\u65f6\\u5019\\u4e0d\\u7528\\u4fdd\\u62a4\\u5957\\u4e5f\\u80fd\\u76f4\\u63a5\\u63d2\\u5165\\uff0c\\u65b9\\u4fbf\\u597d\\u7528\\u3002<br \\/>\\r\\n\\u6570\\u636e\\u7ebf\\u7684\\u5185\\u90e8\\u6784\\u9020\\u662f22+28AWG\\u7684\\u94dc\\u82af\\uff0c\\u7535\\u6d41\\u963b\\u788d\\u5c11\\uff0c\\u5145\\u7535\\u624d\\u80fd\\u5feb\\uff0c\\u642d\\u8f7d\\u667a\\u80fd\\u82af\\u7247\\uff0c\\u56e0\\u4e3a\\u5e7f\\u6cdb\\u517c\\u5bb9\\u6240\\u4ee5\\u7a33\\u5b9a\\u5bbd\\u7535\\u538b\\u5145\\u7535\\uff0c\\u5b83\\u80fd\\u5728\\u4f60\\u63d2\\u5165\\u5f85\\u5145\\u7535\\u8bbe\\u5907\\u7684\\u4e00\\u77ac\\u95f4\\u667a\\u80fd\\u8bc6\\u522b\\u8bbe\\u522b\\uff0c\\u81ea\\u52a8\\u9002\\u5e94\\u8c03\\u8282\\u6d93\\u6d41\\u5145\\u7535\\uff0c\\u4e0d\\u7528\\u62c5\\u5fc3\\u5145\\u7535\\u7ebf\\u4f1a\\u7ed9\\u7535\\u6c60\\u5e26\\u6765\\u635f\\u4f24\\u3002\\r\\n<\\/p>\\r\\n<div class=\\\"pic\\\" style=\\\"padding-top:30px;text-align:center;color:#666666;font-family:Arial, \\u5fae\\u8f6f\\u96c5\\u9ed1;white-space:normal;\\\">\\r\\n\\t<img src=\\\"\\/uploads\\/attached\\/image\\/20180730\\/20180730153634_47700.jpg\\\" alt=\\\"\\\" \\/><br \\/>\\r\\n<\\/div>\\r\\n<p style=\\\"margin-top:0px;margin-bottom:0px;padding:30px 0px 0px;font-size:14px;color:#444444;line-height:30px;font-family:Arial, \\u5fae\\u8f6f\\u96c5\\u9ed1;white-space:normal;\\\">\\r\\n\\t\\u6709\\u4e00\\u6b21\\u6211\\u5728\\u5916\\u9762\\u4e70\\u4e86\\u6761\\u6570\\u636e\\u7ebf\\u56de\\u6765\\uff0c\\u7ed3\\u679c\\u56de\\u53bb\\u534a\\u5929\\u53d1\\u73b0\\u4e0d\\u80fd\\u4f20\\u8f93\\u6570\\u636e\\uff0c\\u5173\\u952e\\u65f6\\u5019\\u53ef\\u662f\\u8981\\u4e86\\u547d\\u3002\\u96c5\\u521b\\u7535\\u5b50\\u8fd9\\u6b3e\\u6570\\u636e\\u7ebf\\uff0c\\u667a\\u80fd\\u5145\\u7535\\u548c\\u4f20\\u8f93\\u4e8c\\u5408\\u4e00\\u529f\\u80fd\\uff0c\\u4e0d\\u7528\\u518d\\u62c5\\u5fc3\\u4f20\\u8f93\\u4e0d\\u4e86\\u6570\\u636e\\u3002<br \\/>\\r\\n\\u4e70\\u5230\\u4e00\\u6b3e\\u597d\\u7528\\u7684\\u6570\\u636e\\u7ebf\\u4e0d\\u7ecf\\u5386\\u70b9\\u6ce2\\u6298\\u90fd\\u4e0d\\u53eb\\u4eba\\u751f\\u3002\\u6211\\u5bf9\\u6570\\u636e\\u7ebf\\u7684\\u9700\\u6c42\\u6709\\u4e09\\u70b9\\uff0c\\u4e00\\u662f\\u5177\\u5907\\u539f\\u88c5\\u7684\\u5c5e\\u6027\\uff0c\\u4e0d\\u4ec5\\u53ef\\u4ee5\\u5145\\u7535\\u8fd8\\u80fd\\u4f20\\u8f93\\u6570\\u636e\\uff0c\\u7b2c\\u4e8c\\u662f\\u4e0d\\u4f24\\u624b\\u673a\\uff0c\\u4e0d\\u662f\\u6240\\u6709\\u7684\\u5145\\u7535\\u5b9d\\u90fd\\u662f\\u667a\\u80fd\\u9002\\u914d\\u7684\\uff0c\\u8fd9\\u65f6\\u5019\\u6709\\u4e00\\u6839\\u9760\\u8c31\\u7684\\u6570\\u636e\\u7ebf\\u5c31\\u80fd\\u7701\\u4e8b\\u5f88\\u591a\\uff0c\\u4ece\\u6839\\u6e90\\u4e0a\\u907f\\u514d\\u8fc7\\u51b2\\u7684\\u4f24\\u5bb3\\uff0c\\u7b2c\\u4e09\\u5c31\\u662f\\u989c\\u503c\\uff0c\\u73b0\\u5728\\u5e74\\u8f7b\\u4eba\\u90fd\\u559c\\u6b22\\u597d\\u770b\\u7684\\u7ebf\\uff0c\\u6240\\u4ee5\\u65f6\\u5c1a\\u7684\\u6570\\u636e\\u7ebf\\u4f1a\\u4eba\\u4eec\\u7684\\u9996\\u9009\\u3002\\r\\n<\\/p>\",\"alt\":null,\"alt2\":null,\"price\":\"0.00\",\"editor\":\"\\u4e2d\\u5609\",\"is_top\":\"on\",\"add_time\":\"2018-07-30 23:20:41\",\"seo_title\":null,\"seo_keywords\":null,\"seo_description\":null,\"video_text\":null,\"url\":null,\"_token\":\"5Kqi6RhDxsKsr4rhzDHEDtwbEuuhOLIZcW70BtZU\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/zhongjiaxin.me\\/admin\\/article?cate_id=385\"}', '2018-07-30 23:36:36', '2018-07-30 23:36:36');
INSERT INTO `hl_admin_operation_log` VALUES (6614, 1, 'admin/article', 'GET', '127.0.0.1', '{\"cate_id\":\"385\"}', '2018-07-30 23:36:36', '2018-07-30 23:36:36');
INSERT INTO `hl_admin_operation_log` VALUES (6615, 1, 'admin/article-category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 23:46:19', '2018-07-30 23:46:19');
INSERT INTO `hl_admin_operation_log` VALUES (6616, 1, 'admin/article-category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 23:46:20', '2018-07-30 23:46:20');
INSERT INTO `hl_admin_operation_log` VALUES (6617, 1, 'admin/article-category', 'POST', '127.0.0.1', '{\"title\":\"\\u54c1\\u724c\\u4ecb\\u7ecd\",\"title2\":null,\"en_title\":null,\"template\":null,\"url\":null,\"parent_id\":\"0\",\"cat_desc\":null,\"content\":null,\"seo_title\":null,\"seo_keywords\":null,\"seo_description\":null,\"alt\":null,\"alt2\":null,\"_token\":\"5Kqi6RhDxsKsr4rhzDHEDtwbEuuhOLIZcW70BtZU\",\"_previous_\":\"http:\\/\\/zhongjiaxin.me\\/admin\\/article-category\"}', '2018-07-30 23:50:03', '2018-07-30 23:50:03');
INSERT INTO `hl_admin_operation_log` VALUES (6618, 1, 'admin/article-category', 'GET', '127.0.0.1', '[]', '2018-07-30 23:50:04', '2018-07-30 23:50:04');
INSERT INTO `hl_admin_operation_log` VALUES (6619, 1, 'admin/article-category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 23:50:13', '2018-07-30 23:50:13');
INSERT INTO `hl_admin_operation_log` VALUES (6620, 1, 'admin/article-category', 'POST', '127.0.0.1', '{\"title\":\"\\u516c\\u53f8\\u76f8\\u518c\",\"title2\":null,\"en_title\":null,\"template\":\"photo\",\"url\":\"photo\",\"parent_id\":\"387\",\"cat_desc\":null,\"content\":null,\"seo_title\":null,\"seo_keywords\":null,\"seo_description\":null,\"alt\":null,\"alt2\":null,\"_token\":\"5Kqi6RhDxsKsr4rhzDHEDtwbEuuhOLIZcW70BtZU\",\"_previous_\":\"http:\\/\\/zhongjiaxin.me\\/admin\\/article-category\"}', '2018-07-30 23:50:26', '2018-07-30 23:50:26');
INSERT INTO `hl_admin_operation_log` VALUES (6621, 1, 'admin/article-category', 'GET', '127.0.0.1', '[]', '2018-07-30 23:50:27', '2018-07-30 23:50:27');
INSERT INTO `hl_admin_operation_log` VALUES (6622, 1, 'admin/article-iframe', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 23:50:29', '2018-07-30 23:50:29');
INSERT INTO `hl_admin_operation_log` VALUES (6623, 1, 'admin/article', 'GET', '127.0.0.1', '{\"no_header\":\"true\",\"no_sidebar\":\"true\",\"no_footer\":\"true\"}', '2018-07-30 23:50:29', '2018-07-30 23:50:29');
INSERT INTO `hl_admin_operation_log` VALUES (6624, 1, 'admin/article', 'GET', '127.0.0.1', '{\"no_header\":\"true\",\"no_sidebar\":\"true\",\"no_footer\":\"true\",\"cate_id\":\"388\"}', '2018-07-30 23:50:32', '2018-07-30 23:50:32');
INSERT INTO `hl_admin_operation_log` VALUES (6625, 1, 'admin/article/create', 'GET', '127.0.0.1', '{\"cate_id\":\"388\",\"_pjax\":\"#pjax-container\"}', '2018-07-30 23:50:33', '2018-07-30 23:50:33');
INSERT INTO `hl_admin_operation_log` VALUES (6626, 1, 'admin/article', 'POST', '127.0.0.1', '{\"title\":\"\\u4ea7\\u54c1\\u5c55\\u5385\",\"en_title\":null,\"title2\":null,\"cate_id\":\"388\",\"desc\":null,\"desc2\":null,\"content\":null,\"alt\":null,\"alt2\":null,\"price\":null,\"editor\":\"\\u4e2d\\u5609\",\"is_top\":\"off\",\"add_time\":\"2018-07-30 23:50:33\",\"seo_title\":null,\"seo_keywords\":null,\"seo_description\":null,\"video_text\":null,\"url\":null,\"_token\":\"5Kqi6RhDxsKsr4rhzDHEDtwbEuuhOLIZcW70BtZU\",\"_previous_\":\"http:\\/\\/zhongjiaxin.me\\/admin\\/article?no_header=true&no_sidebar=true&no_footer=true&cate_id=388\"}', '2018-07-30 23:51:44', '2018-07-30 23:51:44');
INSERT INTO `hl_admin_operation_log` VALUES (6627, 1, 'admin/article', 'GET', '127.0.0.1', '{\"cate_id\":\"388\"}', '2018-07-30 23:51:45', '2018-07-30 23:51:45');
INSERT INTO `hl_admin_operation_log` VALUES (6628, 1, 'admin/article-category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 23:51:57', '2018-07-30 23:51:57');
INSERT INTO `hl_admin_operation_log` VALUES (6629, 1, 'admin/article-category/388/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 23:51:59', '2018-07-30 23:51:59');
INSERT INTO `hl_admin_operation_log` VALUES (6630, 1, 'admin/article-category/388', 'PUT', '127.0.0.1', '{\"title\":\"\\u516c\\u53f8\\u76f8\\u518c\",\"title2\":null,\"en_title\":\"PHOTO\",\"template\":\"photo\",\"url\":\"photo\",\"parent_id\":\"387\",\"cat_desc\":null,\"content\":null,\"seo_title\":null,\"seo_keywords\":null,\"seo_description\":null,\"alt\":null,\"alt2\":null,\"_token\":\"5Kqi6RhDxsKsr4rhzDHEDtwbEuuhOLIZcW70BtZU\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/zhongjiaxin.me\\/admin\\/article-category\"}', '2018-07-30 23:52:02', '2018-07-30 23:52:02');
INSERT INTO `hl_admin_operation_log` VALUES (6631, 1, 'admin/article-category', 'GET', '127.0.0.1', '[]', '2018-07-30 23:52:03', '2018-07-30 23:52:03');

-- ----------------------------
-- Table structure for hl_admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `hl_admin_permissions`;
CREATE TABLE `hl_admin_permissions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `http_method` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `http_path` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_permissions_name_unique`(`name`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hl_admin_permissions
-- ----------------------------
INSERT INTO `hl_admin_permissions` VALUES (1, 'All permission', '*', '', '*', NULL, NULL);
INSERT INTO `hl_admin_permissions` VALUES (2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL);
INSERT INTO `hl_admin_permissions` VALUES (3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL);
INSERT INTO `hl_admin_permissions` VALUES (4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL);
INSERT INTO `hl_admin_permissions` VALUES (5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);
INSERT INTO `hl_admin_permissions` VALUES (6, 'YFT', 'YFT', '', 'article-category\r\narticle\r\narticle-save\r\nconfig\r\nconfig-save\r\nads-position\r\nads-image\r\nmore-image\r\nnav\r\nlink\r\napply\r\ncity\r\ndistrict', '2018-04-26 01:55:23', '2018-06-11 17:12:36');

-- ----------------------------
-- Table structure for hl_admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `hl_admin_role_menu`;
CREATE TABLE `hl_admin_role_menu`  (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  INDEX `admin_role_menu_role_id_menu_id_index`(`role_id`, `menu_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of hl_admin_role_menu
-- ----------------------------
INSERT INTO `hl_admin_role_menu` VALUES (1, 2, NULL, NULL);
INSERT INTO `hl_admin_role_menu` VALUES (2, 21, NULL, NULL);
INSERT INTO `hl_admin_role_menu` VALUES (1, 20, NULL, NULL);

-- ----------------------------
-- Table structure for hl_admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `hl_admin_role_permissions`;
CREATE TABLE `hl_admin_role_permissions`  (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  INDEX `admin_role_permissions_role_id_permission_id_index`(`role_id`, `permission_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of hl_admin_role_permissions
-- ----------------------------
INSERT INTO `hl_admin_role_permissions` VALUES (1, 1, NULL, NULL);
INSERT INTO `hl_admin_role_permissions` VALUES (2, 1, NULL, NULL);

-- ----------------------------
-- Table structure for hl_admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `hl_admin_role_users`;
CREATE TABLE `hl_admin_role_users`  (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  INDEX `admin_role_users_role_id_user_id_index`(`role_id`, `user_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of hl_admin_role_users
-- ----------------------------
INSERT INTO `hl_admin_role_users` VALUES (1, 1, NULL, NULL);
INSERT INTO `hl_admin_role_users` VALUES (2, 2, NULL, NULL);

-- ----------------------------
-- Table structure for hl_admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `hl_admin_roles`;
CREATE TABLE `hl_admin_roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_roles_name_unique`(`name`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hl_admin_roles
-- ----------------------------
INSERT INTO `hl_admin_roles` VALUES (1, 'Administrator', 'administrator', '2018-04-16 17:34:36', '2018-04-16 17:34:36');
INSERT INTO `hl_admin_roles` VALUES (2, 'admin2', 'admin2', '2018-04-26 01:53:23', '2018-06-11 17:14:48');

-- ----------------------------
-- Table structure for hl_admin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `hl_admin_user_permissions`;
CREATE TABLE `hl_admin_user_permissions`  (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  INDEX `admin_user_permissions_user_id_permission_id_index`(`user_id`, `permission_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for hl_admin_users
-- ----------------------------
DROP TABLE IF EXISTS `hl_admin_users`;
CREATE TABLE `hl_admin_users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(190) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_users_username_unique`(`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hl_admin_users
-- ----------------------------
INSERT INTO `hl_admin_users` VALUES (1, 'admin', '$2y$10$S.OCWM1I9Feqj1Fz3.YgyefihIpWvXP7j/N9BHM8yUeEKR68lJHOO', 'Administrator', NULL, 'Mb6KmkytK7smFc6dr0T2Zez2bqEsFmEFQiBXnBr3AGfm4mxt4NU2EY3N0mjD', '2018-04-16 17:34:36', '2018-04-26 01:51:27');
INSERT INTO `hl_admin_users` VALUES (2, 'huazhen', '$2y$10$Lod6.hBAXQ8ixOm52ngcduW6n3/F1plrFrI9h6v2b/kHma7f2smoG', '花镇', NULL, 'tNKd0w4vmRS03b13ts8VGUQkSUX4flWpxYgf3g8VuXwoqz1et4dy0uCCvTOT', '2018-04-26 01:52:17', '2018-05-28 09:53:47');

-- ----------------------------
-- Table structure for hl_ads_image
-- ----------------------------
DROP TABLE IF EXISTS `hl_ads_image`;
CREATE TABLE `hl_ads_image`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cate_id` int(11) NULL DEFAULT NULL COMMENT '所属广告位',
  `order` int(11) NULL DEFAULT 50 COMMENT '排序',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '链接',
  `alt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片alt',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '描述',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `position_id`(`cate_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 46 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hl_ads_image
-- ----------------------------
INSERT INTO `hl_ads_image` VALUES (23, 13, 0, 'uploads/images/20180519/5b003b8570a547.62868718.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `hl_ads_image` VALUES (24, 14, 0, 'uploads/images/20180520/5b00a7917ca9d9.73340134.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `hl_ads_image` VALUES (25, 14, 0, 'uploads/images/20180520/5b00a79737b0d5.09827468.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `hl_ads_image` VALUES (26, 14, 0, 'uploads/images/20180520/5b00a79bf20974.57250065.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `hl_ads_image` VALUES (27, 14, 0, 'uploads/images/20180520/5b00a7a0e33955.81072918.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `hl_ads_image` VALUES (28, 15, 0, 'uploads/images/20180520/5b00b6df4e0bf2.09510360.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `hl_ads_image` VALUES (29, 16, 0, 'uploads/images/20180520/5b00f1ce9750b1.78170546.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `hl_ads_image` VALUES (30, 17, 0, 'uploads/images/20180520/5b00f2b3ed00f6.77526530.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `hl_ads_image` VALUES (31, 18, 0, 'uploads/images/20180520/5b00f893779a96.79990639.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `hl_ads_image` VALUES (32, 19, 0, 'uploads/images/20180520/5b00fce43b83d5.35387675.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `hl_ads_image` VALUES (33, 20, 0, 'uploads/images/20180520/5b010d4a926a24.66077104.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `hl_ads_image` VALUES (34, 21, 0, 'uploads/images/20180520/5b011a0e2a6398.47797944.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `hl_ads_image` VALUES (36, 22, 0, 'uploads/images/20180527/5b0ab9d17b7205.12446095.jpg', NULL, NULL, '咨询详情底部', NULL);
INSERT INTO `hl_ads_image` VALUES (37, 23, 0, 'uploads/images/20180527/5b0abd2b6556b1.57691360.png', NULL, NULL, '咨询详情右侧广告', NULL);
INSERT INTO `hl_ads_image` VALUES (38, 24, 0, 'uploads/images/20180528/5b0af29ab7ffa7.63095615.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `hl_ads_image` VALUES (39, 12, 0, 'uploads/images/20180612/5b1f8983109c36.64294539.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `hl_ads_image` VALUES (40, 12, 0, 'uploads/images/20180612/5b1f21b209c078.56627104.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `hl_ads_image` VALUES (41, 26, 4, 'uploads/images/20180730/5b5ee385455a05.10381890.jpg', NULL, NULL, '数据线', '追求至简一体，没有多余的装饰，你看到的每个点，每根线条，每个部件密不可分。');
INSERT INTO `hl_ads_image` VALUES (42, 26, 3, 'uploads/images/20180730/5b5ee39286ec37.26600919.jpg', NULL, NULL, '数据线', '追求至简一体，没有多余的装饰，你看到的每个点，每根线条，每个部件密不可分。');
INSERT INTO `hl_ads_image` VALUES (43, 26, 2, 'uploads/images/20180730/5b5ee397438a61.56067850.jpg', NULL, NULL, '数据线', '追求至简一体，没有多余的装饰，你看到的每个点，每根线条，每个部件密不可分。');
INSERT INTO `hl_ads_image` VALUES (44, 26, 1, 'uploads/images/20180730/5b5ee39e748f78.80832572.jpg', NULL, NULL, '数据线', '追求至简一体，没有多余的装饰，你看到的每个点，每根线条，每个部件密不可分。');
INSERT INTO `hl_ads_image` VALUES (45, 25, 0, 'uploads/images/20180730/5b5ee3b199eed4.19276599.jpg', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for hl_ads_position
-- ----------------------------
DROP TABLE IF EXISTS `hl_ads_position`;
CREATE TABLE `hl_ads_position`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '广告图位置',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '位置名称',
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '位置说明',
  `width` int(10) NULL DEFAULT NULL COMMENT '图片宽度',
  `height` int(10) NULL DEFAULT NULL COMMENT '图片高度',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hl_ads_position
-- ----------------------------
INSERT INTO `hl_ads_position` VALUES (25, '首页banner', '首页banner', 1920, 1080);
INSERT INTO `hl_ads_position` VALUES (26, '首页产品系列广告图', '图片1尺寸：500*340\r\n图片2尺寸：500*250\r\n图片3尺寸：697*250\r\n图片4尺寸：697*340', 0, 0);

-- ----------------------------
-- Table structure for hl_apply
-- ----------------------------
DROP TABLE IF EXISTS `hl_apply`;
CREATE TABLE `hl_apply`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '申请加盟',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系方式',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '您的邮箱',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系地址',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_read` tinyint(1) NULL DEFAULT 0 COMMENT '0-未读，1-已读',
  `income` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '月收入',
  `fine_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最佳致电时间',
  `age` int(11) NULL DEFAULT NULL COMMENT '年龄',
  `sex` tinyint(1) NULL DEFAULT NULL COMMENT '性别',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for hl_article
-- ----------------------------
DROP TABLE IF EXISTS `hl_article`;
CREATE TABLE `hl_article`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章分类',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `en_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '英文名称',
  `title2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '副标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '描述',
  `seo_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT 'seo标题',
  `seo_keywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT 'seo关键字',
  `seo_description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'seo说明',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `alt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片alt',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `click` int(11) NULL DEFAULT 0 COMMENT '访问量',
  `cate_id` int(11) NULL DEFAULT NULL COMMENT '对应分类',
  `is_top` tinyint(4) NULL DEFAULT 0 COMMENT '首页推荐1-是0-否',
  `editor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编辑者',
  `add_time` timestamp NULL DEFAULT NULL COMMENT '创建日期',
  `problem` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '问题',
  `reply` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回答',
  `province` int(11) NULL DEFAULT NULL COMMENT '省',
  `city` int(11) NULL DEFAULT NULL COMMENT '市',
  `video` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '视频连接',
  `img2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `alt2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片alt',
  `desc2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '描述2',
  `tag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标签',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '连接',
  `video_text` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '视频连接(填写)',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '价格',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1257 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hl_article
-- ----------------------------
INSERT INTO `hl_article` VALUES (1254, '有线iPhone耳机', NULL, NULL, '<img src=\"/uploads/attached/image/20180730/20180730133911_75744.jpg\" alt=\"\" /><img src=\"/uploads/attached/image/20180730/20180730133911_53200.jpg\" alt=\"\" /><img src=\"/uploads/attached/image/20180730/20180730133911_46852.jpg\" alt=\"\" /><img src=\"/uploads/attached/image/20180730/20180730133911_42717.jpg\" alt=\"\" /><img src=\"/uploads/attached/image/20180730/20180730133911_84699.jpg\" alt=\"\" /><img src=\"/uploads/attached/image/20180730/20180730133911_23154.jpg\" alt=\"\" /><img src=\"/uploads/attached/image/20180730/20180730133912_46459.jpg\" alt=\"\" /><img src=\"/uploads/attached/image/20180730/20180730133912_13523.jpg\" alt=\"\" /><img src=\"/uploads/attached/image/20180730/20180730133912_23825.jpg\" alt=\"\" /><img src=\"/uploads/attached/image/20180730/20180730133912_84480.jpg\" alt=\"\" />', '适合初次使用入耳式耳机的人群。', NULL, NULL, NULL, 'uploads/article/20180730/5b5ee1861d2457.89112577.jpg', NULL, '2018-07-30 17:59:34', '2018-07-30 23:15:12', 37, 380, 1, NULL, '2018-07-30 17:58:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.jd.com/', NULL, 98.00);
INSERT INTO `hl_article` VALUES (1255, '确认过眼神，这就是我要找的数据线！', NULL, NULL, '<p style=\"margin-top:0px;margin-bottom:0px;padding:30px 0px 0px;font-size:14px;color:#444444;line-height:30px;font-family:Arial, 微软雅黑;white-space:normal;\">\r\n	这款数据线外部采用PVC材质，不用担心线头缠绕，稳定输出2.5A电流，充满电后自动停电，不用担心过充现象的发生。数据线的前头做了阶梯设计，充电的时候不用保护套也能直接插入，方便好用。<br />\r\n数据线的内部构造是22+28AWG的铜芯，电流阻碍少，充电才能快，搭载智能芯片，因为广泛兼容所以稳定宽电压充电，它能在你插入待充电设备的一瞬间智能识别设别，自动适应调节涓流充电，不用担心充电线会给电池带来损伤。\r\n</p>\r\n<div class=\"pic\" style=\"padding-top:30px;text-align:center;color:#666666;font-family:Arial, 微软雅黑;white-space:normal;\">\r\n	<img src=\"/uploads/attached/image/20180730/20180730153634_47700.jpg\" alt=\"\" /><br />\r\n</div>\r\n<p style=\"margin-top:0px;margin-bottom:0px;padding:30px 0px 0px;font-size:14px;color:#444444;line-height:30px;font-family:Arial, 微软雅黑;white-space:normal;\">\r\n	有一次我在外面买了条数据线回来，结果回去半天发现不能传输数据，关键时候可是要了命。雅创电子这款数据线，智能充电和传输二合一功能，不用再担心传输不了数据。<br />\r\n买到一款好用的数据线不经历点波折都不叫人生。我对数据线的需求有三点，一是具备原装的属性，不仅可以充电还能传输数据，第二是不伤手机，不是所有的充电宝都是智能适配的，这时候有一根靠谱的数据线就能省事很多，从根源上避免过冲的伤害，第三就是颜值，现在年轻人都喜欢好看的线，所以时尚的数据线会人们的首选。\r\n</p>', '这款数据线外部采用PVC材质，不用担心线头缠绕，稳定输出2.5A电流，充满电后自动停电，不用...', NULL, NULL, NULL, 'uploads/article/20180730/5b5f2cf114f081.55617477.jpg', NULL, '2018-07-30 23:21:21', '2018-07-30 23:43:09', 18, 385, 1, '中嘉', '2018-07-30 23:20:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00);
INSERT INTO `hl_article` VALUES (1256, '产品展厅', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/article/20180730/fb303f463ff9d59c0de322e9ea556a89.jpg', NULL, '2018-07-30 23:51:44', '2018-07-30 23:51:44', 0, 388, 0, '中嘉', '2018-07-30 23:50:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00);

-- ----------------------------
-- Table structure for hl_article_category
-- ----------------------------
DROP TABLE IF EXISTS `hl_article_category`;
CREATE TABLE `hl_article_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章分类',
  `parent_id` int(11) NULL DEFAULT NULL COMMENT '上级id',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `title2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称2',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `cat_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '描述',
  `seo_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT 'seo标题',
  `seo_keywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT 'seo关键字',
  `seo_description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'seo说明',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `alt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片alt',
  `template` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '模版',
  `order` int(11) NULL DEFAULT 0 COMMENT '排序',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'url标识',
  `en_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '英文名称',
  `video` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '视频连接',
  `img2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片2',
  `alt2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片2alt',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 389 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hl_article_category
-- ----------------------------
INSERT INTO `hl_article_category` VALUES (379, 0, '产品系列', NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/article/20180730/faf79b2c5d1df1abc92bac7d4ea88e07.jpg', NULL, 'product', 0, '2018-07-30 16:09:19', '2018-07-30 23:09:53', 'product', 'Products', NULL, 'uploads/article/20180730/3a505a0f910be2ff22ff545f5e566278.jpg', NULL);
INSERT INTO `hl_article_category` VALUES (380, 379, '充电线', NULL, NULL, '', '', '', NULL, NULL, NULL, 'product', 0, NULL, NULL, 'product-cdx', NULL, NULL, NULL, NULL);
INSERT INTO `hl_article_category` VALUES (381, 379, '耳机', NULL, NULL, '', '', '', NULL, NULL, NULL, 'product', 0, NULL, NULL, 'product-ej', NULL, NULL, NULL, NULL);
INSERT INTO `hl_article_category` VALUES (382, 379, '键盘', NULL, NULL, '', '', '', NULL, NULL, NULL, 'product', 0, NULL, NULL, 'product-jp', NULL, NULL, NULL, NULL);
INSERT INTO `hl_article_category` VALUES (383, 379, '充电宝', NULL, NULL, '', '', '', NULL, NULL, NULL, 'product', 0, NULL, NULL, 'product-cdb', NULL, NULL, NULL, NULL);
INSERT INTO `hl_article_category` VALUES (384, 0, '品牌动态', NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/article/20180730/3dc7de4299bd5c8baafb6c8ece747ac8.jpg', NULL, 'news', 0, '2018-07-30 23:18:58', '2018-07-30 23:18:58', NULL, NULL, NULL, 'uploads/article/20180730/6595d4f6896f54e235ce91490d9839e4.jpg', NULL);
INSERT INTO `hl_article_category` VALUES (385, 384, '公司新闻', NULL, NULL, '', '', '', NULL, NULL, NULL, 'news', 0, NULL, NULL, 'company_news', NULL, NULL, NULL, NULL);
INSERT INTO `hl_article_category` VALUES (386, 384, '行业资讯', NULL, NULL, '', '', '', NULL, NULL, NULL, 'news', 0, NULL, NULL, 'industry_information', NULL, NULL, NULL, NULL);
INSERT INTO `hl_article_category` VALUES (387, 0, '品牌介绍', NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/article/20180730/9a4e45e677808627ce80d200d501f4f8.jpg', NULL, NULL, 0, '2018-07-30 23:50:03', '2018-07-30 23:50:03', NULL, NULL, NULL, 'uploads/article/20180730/d02ffcdaf217dbab4b73b49e30a6ea8e.jpg', NULL);
INSERT INTO `hl_article_category` VALUES (388, 387, '公司相册', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'photo', 0, '2018-07-30 23:50:26', '2018-07-30 23:52:02', 'photo', 'PHOTO', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for hl_category
-- ----------------------------
DROP TABLE IF EXISTS `hl_category`;
CREATE TABLE `hl_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '分类',
  `parent_id` int(11) NULL DEFAULT NULL COMMENT '上级id',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `order` int(11) NULL DEFAULT 0 COMMENT '排序',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT 1 COMMENT '类型，1-视频',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 377 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hl_category
-- ----------------------------
INSERT INTO `hl_category` VALUES (372, 0, '情感修复', 1, '2018-06-06 11:47:47', '2018-06-06 11:48:15', 1);
INSERT INTO `hl_category` VALUES (373, 0, '魅力提升', 2, '2018-06-06 11:47:53', '2018-06-06 11:48:15', 1);
INSERT INTO `hl_category` VALUES (374, 0, '恋爱婚姻', 3, '2018-06-06 11:48:00', '2018-06-06 11:48:15', 1);
INSERT INTO `hl_category` VALUES (375, 0, '挽回爱情', 4, '2018-06-06 11:48:07', '2018-06-06 11:48:15', 1);
INSERT INTO `hl_category` VALUES (376, 0, '性商魅力', 5, '2018-06-06 11:48:14', '2018-06-06 11:48:15', 1);

-- ----------------------------
-- Table structure for hl_config
-- ----------------------------
DROP TABLE IF EXISTS `hl_config`;
CREATE TABLE `hl_config`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '系统配置',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数名称',
  `value` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '参数值',
  `group` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'base' COMMENT '分组',
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '填写类型',
  `order` int(11) NULL DEFAULT 50 COMMENT '排序，asc',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 107 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of hl_config
-- ----------------------------
INSERT INTO `hl_config` VALUES (1, 'logo', 'uploads/config/5b5f2629450189.78281196.png', 'base', 'img', 50, NULL, '2018-07-30 22:52:25');
INSERT INTO `hl_config` VALUES (10, 'site_name', '中嘉信隆', 'base', 'text', 50, NULL, '2018-07-30 11:14:33');
INSERT INTO `hl_config` VALUES (15, 'site_keywords', '中嘉信隆', 'base', 'text', 50, NULL, '2018-07-30 11:14:33');
INSERT INTO `hl_config` VALUES (20, 'site_description', '中嘉信隆', 'base', 'textarea', 50, NULL, '2018-07-30 11:14:33');
INSERT INTO `hl_config` VALUES (25, 'copyright', '© 2016  www.bjzhongjiatech.com 北京中嘉信隆科技有限公司 版权所有 All Rights Reserved', 'base', 'text', 50, NULL, '2018-07-30 11:14:33');
INSERT INTO `hl_config` VALUES (40, 'phone', '400-6041-520', 'base', 'text', 50, NULL, '2018-06-13 09:56:23');
INSERT INTO `hl_config` VALUES (45, 'address', '广州市天河区元岗路8号慧通产业广场A1栋1323--1328', 'base', 'text', 50, NULL, '2018-06-13 09:54:19');
INSERT INTO `hl_config` VALUES (50, 'ewm', 'uploads/config/5b5f262956cea3.46345083.jpg', 'base', 'img', 50, NULL, '2018-07-30 22:52:25');
INSERT INTO `hl_config` VALUES (55, 'ewm_text', '扫一扫关注我们', 'base', 'text', 50, NULL, '2018-06-14 19:12:49');
INSERT INTO `hl_config` VALUES (60, 'tel', '毛小姐 1867xxxxxx', 'base', 'text', 50, NULL, '2018-05-26 22:13:37');
INSERT INTO `hl_config` VALUES (65, 'mail', 'Monica@e-fsc.jp', 'base', 'text', 50, NULL, '2018-06-14 19:12:49');
INSERT INTO `hl_config` VALUES (70, 'jd_url', 'http://www.jd.com/', 'base', 'text', 50, NULL, NULL);
INSERT INTO `hl_config` VALUES (75, 'kefu_url', '', 'base', 'text', 50, NULL, NULL);
INSERT INTO `hl_config` VALUES (105, 'jishu', '技术支持：中嘉信隆', 'base', 'text', 50, NULL, NULL);
INSERT INTO `hl_config` VALUES (106, 'mobile_footer', '北京中嘉信隆科技有限公司\r\nwww.bjzhongjiatech.com  版权所有 \r\nAll Rights Reserved  技术支持：中嘉信隆', 'base', 'textarea', 50, NULL, '2018-07-30 22:59:56');

-- ----------------------------
-- Table structure for hl_link
-- ----------------------------
DROP TABLE IF EXISTS `hl_link`;
CREATE TABLE `hl_link`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '友情链接',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `order` int(11) NULL DEFAULT 0 COMMENT '排序',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'url',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hl_link
-- ----------------------------
INSERT INTO `hl_link` VALUES (2, '烘焙帮', 0, NULL, NULL, 'http://www.hongbeibang.com/');
INSERT INTO `hl_link` VALUES (3, '千聊直播', 0, NULL, NULL, 'http://www.mhgjhb.com/show-314-47-1.html');
INSERT INTO `hl_link` VALUES (4, '跟谁学', 0, NULL, NULL, 'http://www.mhgjhb.com/show-314-47-1.html');
INSERT INTO `hl_link` VALUES (5, '豆果美食', 0, NULL, NULL, 'http://www.mhgjhb.com/show-314-47-1.html');
INSERT INTO `hl_link` VALUES (6, '烘焙天地', 0, NULL, NULL, 'http://www.mhgjhb.com/show-314-47-1.html');
INSERT INTO `hl_link` VALUES (7, '梦幻烘焙', 0, NULL, NULL, 'http://www.mhgjhb.com/show-314-47-1.html');
INSERT INTO `hl_link` VALUES (8, '下厨房', 0, NULL, NULL, 'http://www.mhgjhb.com/show-314-47-1.html');
INSERT INTO `hl_link` VALUES (9, '广州教育宝', 0, NULL, NULL, 'http://gz.jiaoyubao.cn/');

-- ----------------------------
-- Table structure for hl_migrations
-- ----------------------------
DROP TABLE IF EXISTS `hl_migrations`;
CREATE TABLE `hl_migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hl_migrations
-- ----------------------------
INSERT INTO `hl_migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `hl_migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `hl_migrations` VALUES (3, '2016_01_04_173148_create_admin_tables', 1);

-- ----------------------------
-- Table structure for hl_more_image
-- ----------------------------
DROP TABLE IF EXISTS `hl_more_image`;
CREATE TABLE `hl_more_image`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cate_id` int(11) NULL DEFAULT NULL COMMENT '所属类型 1-文章,2-分类',
  `order` int(11) NULL DEFAULT 50 COMMENT '排序',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '链接',
  `alt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片alt',
  `more_id` int(11) NULL DEFAULT NULL COMMENT '对应id',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `position_id`(`cate_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 40 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hl_more_image
-- ----------------------------
INSERT INTO `hl_more_image` VALUES (23, 2, 0, 'uploads/images/20180425/1e630f5bddef2c1b0b32448b9d74829f.jpg', NULL, NULL, 22, NULL);
INSERT INTO `hl_more_image` VALUES (21, 2, 0, 'uploads/images/20180425/efe4c188814aa86ac8079edcf7d55c49.jpg', NULL, NULL, 22, NULL);
INSERT INTO `hl_more_image` VALUES (24, 2, 0, 'uploads/images/20180426/a720da024857cc5cb4c82e675e70b5e2.jpg', NULL, NULL, 34, NULL);
INSERT INTO `hl_more_image` VALUES (25, 1, 0, 'uploads/images/20180520/e017616ca001d9ccbadb50eb52b41e26.jpg', NULL, NULL, 46, NULL);
INSERT INTO `hl_more_image` VALUES (26, 1, 0, 'uploads/images/20180528/7edcebb6c2feba3a8be0ef0d4115d000.jpg', NULL, NULL, 1171, '冷爱参加广东省婚姻家庭咨询师协会第六次常务理事会扩大会议');
INSERT INTO `hl_more_image` VALUES (27, 2, 0, 'uploads/images/20180611/7a975c921106d401ac478a51bd0a6225.png', NULL, NULL, 374, NULL);
INSERT INTO `hl_more_image` VALUES (28, 2, 0, 'uploads/images/20180611/4b953cbebaa9dbb247992930e1f03ed4.png', NULL, NULL, 374, NULL);
INSERT INTO `hl_more_image` VALUES (29, 2, 0, 'uploads/images/20180611/39da754730e5d65e7b6b6fdd38fdf743.png', NULL, NULL, 374, NULL);
INSERT INTO `hl_more_image` VALUES (30, 2, 0, 'uploads/images/20180611/d3209433e0e848b6843a1905687b9853.png', NULL, NULL, 374, NULL);
INSERT INTO `hl_more_image` VALUES (31, 2, 0, 'uploads/images/20180611/5237b350e04053c923972f1f44235993.png', NULL, NULL, 374, NULL);
INSERT INTO `hl_more_image` VALUES (32, 2, 0, 'uploads/images/20180611/608219925428218f19894d4cdb6b4352.png', NULL, NULL, 374, NULL);
INSERT INTO `hl_more_image` VALUES (33, 2, 0, 'uploads/images/20180611/3cbb914ba7a0fa9089b78b6bb024c0fd.png', NULL, NULL, 374, NULL);
INSERT INTO `hl_more_image` VALUES (34, 2, 0, 'uploads/images/20180611/661436d4d05c4d9d6259c3e3b8446802.png', NULL, NULL, 375, '爱情风暴特训营佛山站');
INSERT INTO `hl_more_image` VALUES (35, 2, 0, 'uploads/images/20180611/9618a0ded8079f89b2297cb1355a2db4.png', NULL, NULL, 375, '爱情风暴特训营上海站');
INSERT INTO `hl_more_image` VALUES (36, 2, 0, 'uploads/images/20180611/6d0c608c7a4a52c0290febaaafc7ac3c.png', NULL, NULL, 375, '第一期情感导师实战班');
INSERT INTO `hl_more_image` VALUES (37, 2, 0, 'uploads/images/20180611/bf38f795f07dac7e13ddbd7d28e5337b.png', NULL, NULL, 375, '爱情风暴体验课北京站');
INSERT INTO `hl_more_image` VALUES (38, 1, 0, 'uploads/images/20180730/2b2f7a235991f2d99197f685291b4d84.jpg', NULL, NULL, 1254, NULL);
INSERT INTO `hl_more_image` VALUES (39, 1, 0, 'uploads/images/20180730/f5ab964a046d1bc43b97f5ecdff9448a.jpg', NULL, NULL, 1254, NULL);

-- ----------------------------
-- Table structure for hl_more_video
-- ----------------------------
DROP TABLE IF EXISTS `hl_more_video`;
CREATE TABLE `hl_more_video`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cate_id` int(11) NULL DEFAULT NULL COMMENT '所属类型 1-文章,2-分类',
  `order` int(11) NULL DEFAULT 50 COMMENT '排序',
  `video` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '视频连接',
  `more_id` int(11) NULL DEFAULT NULL COMMENT '对应id',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `position_id`(`cate_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hl_more_video
-- ----------------------------
INSERT INTO `hl_more_video` VALUES (23, 2, 0, 'uploads/images/20180425/1e630f5bddef2c1b0b32448b9d74829f.jpg', 22, NULL, NULL);
INSERT INTO `hl_more_video` VALUES (21, 2, 0, 'uploads/images/20180425/efe4c188814aa86ac8079edcf7d55c49.jpg', 22, NULL, NULL);
INSERT INTO `hl_more_video` VALUES (24, 2, 0, 'uploads/images/20180426/a720da024857cc5cb4c82e675e70b5e2.jpg', 34, NULL, NULL);
INSERT INTO `hl_more_video` VALUES (25, 1, 0, 'uploads/images/20180520/e017616ca001d9ccbadb50eb52b41e26.jpg', 46, NULL, NULL);
INSERT INTO `hl_more_video` VALUES (26, 1, 0, 'https://v.qq.com/iframe/player.html?vid=a0026bt5o7h&tiny=0&auto=0', 1171, 'uploads/images/20180528/af503b5794230a60dfb874ee1f1fa75e.jpg', '全球华人恋爱教学机构花镇登陆美国时代广场');

-- ----------------------------
-- Table structure for hl_nav
-- ----------------------------
DROP TABLE IF EXISTS `hl_nav`;
CREATE TABLE `hl_nav`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '导航',
  `parent_id` int(11) NULL DEFAULT NULL COMMENT '上级id',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `order` int(11) NULL DEFAULT 0 COMMENT '排序',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'url',
  `is_blank` tinyint(1) NULL DEFAULT 0 COMMENT '是否新窗口 0-否，1-是',
  `type` int(11) NULL DEFAULT 1 COMMENT '类型，1-头部，2-尾部,3-banner,4-底部',
  `ico` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 108 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hl_nav
-- ----------------------------
INSERT INTO `hl_nav` VALUES (53, 0, '笃爱首页', 1, '2018-05-20 20:08:07', '2018-06-04 15:43:57', '/', 0, 1, NULL);
INSERT INTO `hl_nav` VALUES (54, 0, '服务项目', 2, '2018-05-20 20:08:34', '2018-06-14 17:25:18', NULL, 0, 1, NULL);
INSERT INTO `hl_nav` VALUES (55, 0, '新闻资讯', 8, '2018-05-20 20:09:10', '2018-06-11 11:43:39', '/article', 0, 1, NULL);
INSERT INTO `hl_nav` VALUES (56, 0, '实力导师', 9, '2018-05-20 20:09:39', '2018-06-11 11:43:39', '/zjzx', 0, 1, NULL);
INSERT INTO `hl_nav` VALUES (57, 0, '学习课程', 10, '2018-05-20 20:10:06', '2018-06-11 11:43:39', '/video-list', 0, 1, NULL);
INSERT INTO `hl_nav` VALUES (58, 0, '品牌推广', 11, '2018-05-20 20:10:30', '2018-06-11 11:43:39', '/video', 0, 1, NULL);
INSERT INTO `hl_nav` VALUES (59, 54, '俘获男神', 7, '2018-05-20 20:10:52', '2018-06-04 15:43:57', '/fhns', 0, 1, NULL);
INSERT INTO `hl_nav` VALUES (60, 54, '婚姻修复', 3, '2018-05-20 20:11:19', '2018-06-04 15:43:57', '/hyxf', 0, 1, NULL);
INSERT INTO `hl_nav` VALUES (97, 0, '在线咨询', 3, '2018-05-20 20:11:19', '2018-06-11 11:43:43', '', 0, 2, NULL);
INSERT INTO `hl_nav` VALUES (93, 0, '笃爱介绍', 1, '2018-05-20 20:11:19', '2018-06-14 17:34:45', '/introduce', 0, 2, NULL);
INSERT INTO `hl_nav` VALUES (69, 54, '挽回恋情', 4, '2018-05-20 20:11:19', '2018-06-04 15:43:57', '/whlq', 0, 1, NULL);
INSERT INTO `hl_nav` VALUES (70, 54, '亲子教育', 6, '2018-05-20 20:11:19', '2018-06-04 15:43:57', '/qgzd', 0, 1, NULL);
INSERT INTO `hl_nav` VALUES (71, 54, '小三分离', 5, '2018-05-20 20:11:19', '2018-06-04 15:43:57', '/love3', 0, 1, NULL);
INSERT INTO `hl_nav` VALUES (76, 0, '笃爱服务项目', 1, '2018-05-20 20:11:19', '2018-06-01 12:47:55', NULL, 0, 3, NULL);
INSERT INTO `hl_nav` VALUES (77, 0, '俘获男神', 6, '2018-05-20 20:11:19', '2018-05-26 02:08:45', '/fhns', 0, 3, 'uploads/ico/20180526/1f0412ea7c1b11a54992a7b35a2f3d27.png');
INSERT INTO `hl_nav` VALUES (78, 0, '婚姻修复', 2, '2018-05-20 20:11:19', '2018-05-26 02:10:28', '/hyxf', 0, 3, 'uploads/ico/20180526/40ebda19616ff2eba7bd8e124aa3334d.png');
INSERT INTO `hl_nav` VALUES (79, 0, '挽回恋情', 3, '2018-05-20 20:11:19', '2018-05-26 02:10:35', '/whlq', 0, 3, 'uploads/ico/20180526/8baf6e0c7e03a34de2551af9c6b9e1fd.png');
INSERT INTO `hl_nav` VALUES (80, 0, '亲子教育', 5, '2018-05-20 20:11:19', '2018-05-26 02:10:42', '/qgzd', 0, 3, 'uploads/ico/20180526/a4c9c9739f65708652ab0987456e1a70.png');
INSERT INTO `hl_nav` VALUES (82, 0, '小三分离', 4, '2018-05-20 20:11:19', '2018-05-26 02:10:53', '/love3', 0, 3, 'uploads/ico/20180526/3d31d658ad981adc57997a6204cba280.png');
INSERT INTO `hl_nav` VALUES (84, 0, '婚姻修复', 1, '2018-05-20 20:11:19', '2018-06-01 12:48:28', '/hyxf', 0, 4, NULL);
INSERT INTO `hl_nav` VALUES (85, 0, '挽回恋情', 2, '2018-05-20 20:11:19', '2018-05-26 02:08:45', '/whlq', 0, 4, NULL);
INSERT INTO `hl_nav` VALUES (86, 0, '小三分离', 3, '2018-05-20 20:11:19', '2018-05-26 02:10:28', '/love3', 0, 4, NULL);
INSERT INTO `hl_nav` VALUES (87, 0, '亲子教育', 4, '2018-05-20 20:11:19', '2018-05-26 02:10:35', '/qgzd', 0, 4, NULL);
INSERT INTO `hl_nav` VALUES (88, 0, '俘获男神', 5, '2018-05-20 20:11:19', '2018-05-26 02:10:42', '/fhns', 0, 4, NULL);
INSERT INTO `hl_nav` VALUES (89, 0, '导师团队', 6, '2018-05-20 20:11:19', '2018-05-26 02:10:47', '/zjzx', 0, 4, NULL);
INSERT INTO `hl_nav` VALUES (98, 0, '笃爱资讯', 7, '2018-05-20 20:11:19', '2018-06-01 12:48:34', '/article', 0, 4, NULL);
INSERT INTO `hl_nav` VALUES (96, 0, '联系我们', 2, '2018-05-20 20:11:19', '2018-06-11 11:43:43', '/contact-us', 0, 2, NULL);
INSERT INTO `hl_nav` VALUES (99, 0, '新闻资讯', 6, '2018-05-20 20:09:10', '2018-06-19 00:10:28', '/article', 0, 5, 'uploads/ico/20180619/0278f872bb5d5a8e7c37e510f1cc140f.png');
INSERT INTO `hl_nav` VALUES (100, 0, '实力导师', 7, '2018-05-20 20:09:39', '2018-06-19 00:11:12', '/zjzx', 0, 5, 'uploads/ico/20180619/d6df366e4082d3b7b78f8a286af2e3ea.png');
INSERT INTO `hl_nav` VALUES (101, 0, '学习课程', 8, '2018-05-20 20:10:06', '2018-06-19 00:11:49', '/video-list', 0, 5, 'uploads/ico/20180619/5a38c1be9fc2d1bc2a295a34e0fe6e32.png');
INSERT INTO `hl_nav` VALUES (102, 0, '品牌推广', 9, '2018-05-20 20:10:30', '2018-06-19 00:12:14', '/video', 0, 5, 'uploads/ico/20180619/8556d152e1ac445f53ebee2f8062a2c7.png');
INSERT INTO `hl_nav` VALUES (103, 0, '俘获男神', 5, '2018-05-20 20:10:52', '2018-06-19 00:06:49', '/fhns', 0, 5, 'uploads/ico/20180619/ed32226bef2926c9d0a845f4652c04ba.png');
INSERT INTO `hl_nav` VALUES (104, 0, '婚姻修复', 1, '2018-05-20 20:11:19', '2018-06-19 00:06:20', '/hyxf', 0, 5, 'uploads/ico/20180619/2cd86696e37a863ea14306f1917079bd.png');
INSERT INTO `hl_nav` VALUES (105, 0, '挽回恋情', 2, '2018-05-20 20:11:19', '2018-06-19 00:06:28', '/whlq', 0, 5, 'uploads/ico/20180619/b026f7a7ed3becd99a3b995f44a05329.png');
INSERT INTO `hl_nav` VALUES (106, 0, '亲子教育', 4, '2018-05-20 20:11:19', '2018-06-19 00:06:44', '/qgzd', 0, 5, 'uploads/ico/20180619/ef5234932e7a10f72f06643734e5a4cb.png');
INSERT INTO `hl_nav` VALUES (107, 0, '小三分离', 3, '2018-05-20 20:11:19', '2018-06-19 00:06:35', '/love3', 0, 5, 'uploads/ico/20180619/621fa7e561b25e32638fbf3b2e825c3a.png');

-- ----------------------------
-- Table structure for hl_password_resets
-- ----------------------------
DROP TABLE IF EXISTS `hl_password_resets`;
CREATE TABLE `hl_password_resets`  (
  `email` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for hl_pay_log
-- ----------------------------
DROP TABLE IF EXISTS `hl_pay_log`;
CREATE TABLE `hl_pay_log`  (
  `pay_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '支付记录表',
  `order_id` int(11) NULL DEFAULT NULL COMMENT '对应订单',
  `type` tinyint(1) NULL DEFAULT NULL COMMENT '订单类型，1-课程视频',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '对应价格',
  `pay_status` tinyint(1) NULL DEFAULT 1 COMMENT '1-未支付，2-支付',
  `add_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `pay_time` timestamp NULL DEFAULT NULL COMMENT '支付时间',
  `pay_type` tinyint(1) NULL DEFAULT 1 COMMENT '支付类型，1-微信，2-支付宝',
  PRIMARY KEY (`pay_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for hl_recruitment_apply
-- ----------------------------
DROP TABLE IF EXISTS `hl_recruitment_apply`;
CREATE TABLE `hl_recruitment_apply`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT ' 招聘申请',
  `article_id` int(11) NULL DEFAULT NULL COMMENT '对应招聘',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `marriage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '婚姻',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `nation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '民族',
  `age` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '年龄',
  `political_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '政治面貌',
  `origin` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '籍 贯',
  `education_level` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文化程度',
  `graduated_school` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '毕业学校',
  `profession` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专业',
  `graduated_time` timestamp NULL DEFAULT NULL COMMENT '毕业时间',
  `foreign_language_level` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '外语水平',
  `position` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '应聘职位',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `resume_file` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上传简历',
  `resume` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '个人简历',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hl_recruitment_apply
-- ----------------------------
INSERT INTO `hl_recruitment_apply` VALUES (4, 29, '浩', '男', NULL, '809448797@qq.com', NULL, NULL, NULL, '汉', NULL, NULL, '维修', NULL, NULL, NULL, '13226468871', 'uploads/file/20180503/5ae9f0698d0135.75273761.jpg', NULL, '2018-05-03 01:07:53', '2018-05-03 01:07:53');

-- ----------------------------
-- Table structure for hl_region
-- ----------------------------
DROP TABLE IF EXISTS `hl_region`;
CREATE TABLE `hl_region`  (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(10) NULL DEFAULT NULL,
  `region_id` bigint(10) NULL DEFAULT NULL,
  `region_parent_id` bigint(10) NULL DEFAULT NULL,
  `region_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `region_type` int(11) NULL DEFAULT NULL COMMENT '1省 2市 3区',
  `zipcode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `quhao` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` bit(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11186 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '地区信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of hl_region
-- ----------------------------
INSERT INTO `hl_region` VALUES (7459, 0, 1, 0, '全部省份', 0, '0', NULL, NULL);
INSERT INTO `hl_region` VALUES (7460, 7459, 110000, 1, '北京', 1, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7461, 7460, 110100, 110000, '北京市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7462, 7461, 110101, 110100, '东城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7463, 7461, 110102, 110100, '西城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7464, 7461, 110103, 110100, '崇文区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7465, 7461, 110104, 110100, '宣武区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7466, 7461, 110105, 110100, '朝阳区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7467, 7461, 110106, 110100, '丰台区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7468, 7461, 110107, 110100, '石景山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7469, 7461, 110108, 110100, '海淀区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7470, 7461, 110109, 110100, '门头沟区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7471, 7461, 110111, 110100, '房山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7472, 7461, 110112, 110100, '通州区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7473, 7461, 110113, 110100, '顺义区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7474, 7461, 110114, 110100, '昌平区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7475, 7461, 110115, 110100, '大兴区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7476, 7461, 110116, 110100, '怀柔区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7477, 7461, 110117, 110100, '平谷区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7478, 7461, 110228, 110100, '密云县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7479, 7461, 110229, 110100, '延庆县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7480, 7461, 110230, 110100, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7481, 7459, 120000, 1, '天津', 1, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7482, 7481, 120100, 120000, '天津市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7483, 7482, 120101, 120100, '和平区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7484, 7482, 120102, 120100, '河东区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7485, 7482, 120103, 120100, '河西区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7486, 7482, 120104, 120100, '南开区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7487, 7482, 120105, 120100, '河北区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7488, 7482, 120106, 120100, '红桥区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7489, 7482, 120107, 120100, '塘沽区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7490, 7482, 120108, 120100, '汉沽区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7491, 7482, 120109, 120100, '大港区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7492, 7482, 120110, 120100, '东丽区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7493, 7482, 120111, 120100, '西青区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7494, 7482, 120112, 120100, '津南区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7495, 7482, 120113, 120100, '北辰区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7496, 7482, 120114, 120100, '武清区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7497, 7482, 120115, 120100, '宝坻区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7498, 7482, 120116, 120100, '滨海新区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7499, 7482, 120221, 120100, '宁河县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7500, 7482, 120223, 120100, '静海县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7501, 7482, 120225, 120100, '蓟县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7502, 7482, 120226, 120100, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7503, 7459, 130000, 1, '河北省', 1, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7504, 7503, 130100, 130000, '石家庄市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7505, 7504, 130102, 130100, '长安区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7506, 7504, 130103, 130100, '桥东区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7507, 7504, 130104, 130100, '桥西区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7508, 7504, 130105, 130100, '新华区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7509, 7504, 130107, 130100, '井陉矿区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7510, 7504, 130108, 130100, '裕华区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7511, 7504, 130121, 130100, '井陉县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7512, 7504, 130123, 130100, '正定县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7513, 7504, 130124, 130100, '栾城县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7514, 7504, 130125, 130100, '行唐县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7515, 7504, 130126, 130100, '灵寿县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7516, 7504, 130127, 130100, '高邑县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7517, 7504, 130128, 130100, '深泽县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7518, 7504, 130129, 130100, '赞皇县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7519, 7504, 130130, 130100, '无极县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7520, 7504, 130131, 130100, '平山县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7521, 7504, 130132, 130100, '元氏县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7522, 7504, 130133, 130100, '赵县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7523, 7504, 130181, 130100, '辛集市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7524, 7504, 130182, 130100, '藁城市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7525, 7504, 130183, 130100, '晋州市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7526, 7504, 130184, 130100, '新乐市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7527, 7504, 130185, 130100, '鹿泉市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7528, 7504, 130186, 130100, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7529, 7503, 130200, 130000, '唐山市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7530, 7529, 130202, 130200, '路南区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7531, 7529, 130203, 130200, '路北区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7532, 7529, 130204, 130200, '古冶区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7533, 7529, 130205, 130200, '开平区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7534, 7529, 130207, 130200, '丰南区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7535, 7529, 130208, 130200, '丰润区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7536, 7529, 130223, 130200, '滦县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7537, 7529, 130224, 130200, '滦南县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7538, 7529, 130225, 130200, '乐亭县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7539, 7529, 130227, 130200, '迁西县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7540, 7529, 130229, 130200, '玉田县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7541, 7529, 130230, 130200, '唐海县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7542, 7529, 130281, 130200, '遵化市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7543, 7529, 130283, 130200, '迁安市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7544, 7529, 130284, 130200, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7545, 7503, 130300, 130000, '秦皇岛市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7546, 7545, 130302, 130300, '海港区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7547, 7545, 130303, 130300, '山海关区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7548, 7545, 130304, 130300, '北戴河区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7549, 7545, 130321, 130300, '青龙满族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7550, 7545, 130322, 130300, '昌黎县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7551, 7545, 130323, 130300, '抚宁县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7552, 7545, 130324, 130300, '卢龙县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7553, 7545, 130398, 130300, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7554, 7545, 130399, 130300, '经济技术开发区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7555, 7503, 130400, 130000, '邯郸市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7556, 7555, 130402, 130400, '邯山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7557, 7555, 130403, 130400, '丛台区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7558, 7555, 130404, 130400, '复兴区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7559, 7555, 130406, 130400, '峰峰矿区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7560, 7555, 130421, 130400, '邯郸县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7561, 7555, 130423, 130400, '临漳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7562, 7555, 130424, 130400, '成安县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7563, 7555, 130425, 130400, '大名县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7564, 7555, 130426, 130400, '涉县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7565, 7555, 130427, 130400, '磁县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7566, 7555, 130428, 130400, '肥乡县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7567, 7555, 130429, 130400, '永年县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7568, 7555, 130430, 130400, '邱县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7569, 7555, 130431, 130400, '鸡泽县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7570, 7555, 130432, 130400, '广平县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7571, 7555, 130433, 130400, '馆陶县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7572, 7555, 130434, 130400, '魏县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7573, 7555, 130435, 130400, '曲周县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7574, 7555, 130481, 130400, '武安市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7575, 7555, 130482, 130400, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7576, 7503, 130500, 130000, '邢台市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7577, 7576, 130502, 130500, '桥东区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7578, 7576, 130503, 130500, '桥西区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7579, 7576, 130521, 130500, '邢台县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7580, 7576, 130522, 130500, '临城县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7581, 7576, 130523, 130500, '内丘县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7582, 7576, 130524, 130500, '柏乡县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7583, 7576, 130525, 130500, '隆尧县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7584, 7576, 130526, 130500, '任县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7585, 7576, 130527, 130500, '南和县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7586, 7576, 130528, 130500, '宁晋县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7587, 7576, 130529, 130500, '巨鹿县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7588, 7576, 130530, 130500, '新河县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7589, 7576, 130531, 130500, '广宗县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7590, 7576, 130532, 130500, '平乡县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7591, 7576, 130533, 130500, '威县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7592, 7576, 130534, 130500, '清河县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7593, 7576, 130535, 130500, '临西县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7594, 7576, 130581, 130500, '南宫市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7595, 7576, 130582, 130500, '沙河市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7596, 7576, 130583, 130500, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7597, 7503, 130600, 130000, '保定市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7598, 7597, 130602, 130600, '新市区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7599, 7597, 130603, 130600, '北市区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7600, 7597, 130604, 130600, '南市区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7601, 7597, 130621, 130600, '满城县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7602, 7597, 130622, 130600, '清苑县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7603, 7597, 130623, 130600, '涞水县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7604, 7597, 130624, 130600, '阜平县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7605, 7597, 130625, 130600, '徐水县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7606, 7597, 130626, 130600, '定兴县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7607, 7597, 130627, 130600, '唐县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7608, 7597, 130628, 130600, '高阳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7609, 7597, 130629, 130600, '容城县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7610, 7597, 130630, 130600, '涞源县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7611, 7597, 130631, 130600, '望都县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7612, 7597, 130632, 130600, '安新县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7613, 7597, 130633, 130600, '易县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7614, 7597, 130634, 130600, '曲阳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7615, 7597, 130635, 130600, '蠡县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7616, 7597, 130636, 130600, '顺平县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7617, 7597, 130637, 130600, '博野县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7618, 7597, 130638, 130600, '雄县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7619, 7597, 130681, 130600, '涿州市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7620, 7597, 130682, 130600, '定州市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7621, 7597, 130683, 130600, '安国市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7622, 7597, 130684, 130600, '高碑店市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7623, 7597, 130698, 130600, '高开区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7624, 7597, 130699, 130600, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7625, 7503, 130700, 130000, '张家口市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7626, 7625, 130702, 130700, '桥东区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7627, 7625, 130703, 130700, '桥西区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7628, 7625, 130705, 130700, '宣化区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7629, 7625, 130706, 130700, '下花园区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7630, 7625, 130721, 130700, '宣化县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7631, 7625, 130722, 130700, '张北县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7632, 7625, 130723, 130700, '康保县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7633, 7625, 130724, 130700, '沽源县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7634, 7625, 130725, 130700, '尚义县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7635, 7625, 130726, 130700, '蔚县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7636, 7625, 130727, 130700, '阳原县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7637, 7625, 130728, 130700, '怀安县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7638, 7625, 130729, 130700, '万全县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7639, 7625, 130730, 130700, '怀来县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7640, 7625, 130731, 130700, '涿鹿县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7641, 7625, 130732, 130700, '赤城县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7642, 7625, 130733, 130700, '崇礼县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7643, 7625, 130734, 130700, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7644, 7503, 130800, 130000, '承德市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7645, 7644, 130802, 130800, '双桥区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7646, 7644, 130803, 130800, '双滦区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7647, 7644, 130804, 130800, '鹰手营子矿区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7648, 7644, 130821, 130800, '承德县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7649, 7644, 130822, 130800, '兴隆县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7650, 7644, 130823, 130800, '平泉县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7651, 7644, 130824, 130800, '滦平县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7652, 7644, 130825, 130800, '隆化县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7653, 7644, 130826, 130800, '丰宁满族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7654, 7644, 130827, 130800, '宽城满族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7655, 7644, 130828, 130800, '围场满族蒙古族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7656, 7644, 130829, 130800, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7657, 7503, 130900, 130000, '沧州市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7658, 7657, 130902, 130900, '新华区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7659, 7657, 130903, 130900, '运河区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7660, 7657, 130921, 130900, '沧县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7661, 7657, 130922, 130900, '青县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7662, 7657, 130923, 130900, '东光县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7663, 7657, 130924, 130900, '海兴县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7664, 7657, 130925, 130900, '盐山县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7665, 7657, 130926, 130900, '肃宁县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7666, 7657, 130927, 130900, '南皮县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7667, 7657, 130928, 130900, '吴桥县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7668, 7657, 130929, 130900, '献县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7669, 7657, 130930, 130900, '孟村回族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7670, 7657, 130981, 130900, '泊头市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7671, 7657, 130982, 130900, '任丘市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7672, 7657, 130983, 130900, '黄骅市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7673, 7657, 130984, 130900, '河间市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7674, 7657, 130985, 130900, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7675, 7503, 131000, 130000, '廊坊市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7676, 7675, 131002, 131000, '安次区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7677, 7675, 131003, 131000, '广阳区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7678, 7675, 131022, 131000, '固安县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7679, 7675, 131023, 131000, '永清县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7680, 7675, 131024, 131000, '香河县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7681, 7675, 131025, 131000, '大城县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7682, 7675, 131026, 131000, '文安县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7683, 7675, 131028, 131000, '大厂回族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7684, 7675, 131051, 131000, '开发区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7685, 7675, 131052, 131000, '燕郊经济技术开发区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7686, 7675, 131081, 131000, '霸州市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7687, 7675, 131082, 131000, '三河市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7688, 7675, 131083, 131000, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7689, 7503, 131100, 130000, '衡水市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7690, 7689, 131102, 131100, '桃城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7691, 7689, 131121, 131100, '枣强县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7692, 7689, 131122, 131100, '武邑县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7693, 7689, 131123, 131100, '武强县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7694, 7689, 131124, 131100, '饶阳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7695, 7689, 131125, 131100, '安平县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7696, 7689, 131126, 131100, '故城县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7697, 7689, 131127, 131100, '景县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7698, 7689, 131128, 131100, '阜城县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7699, 7689, 131181, 131100, '冀州市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7700, 7689, 131182, 131100, '深州市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7701, 7689, 131183, 131100, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7702, 7459, 140000, 1, '山西省', 1, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7703, 7702, 140100, 140000, '太原市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7704, 7703, 140105, 140100, '小店区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7705, 7703, 140106, 140100, '迎泽区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7706, 7703, 140107, 140100, '杏花岭区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7707, 7703, 140108, 140100, '尖草坪区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7708, 7703, 140109, 140100, '万柏林区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7709, 7703, 140110, 140100, '晋源区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7710, 7703, 140121, 140100, '清徐县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7711, 7703, 140122, 140100, '阳曲县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7712, 7703, 140123, 140100, '娄烦县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7713, 7703, 140181, 140100, '古交市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7714, 7703, 140182, 140100, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7715, 7702, 140200, 140000, '大同市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7716, 7715, 140202, 140200, '城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7717, 7715, 140203, 140200, '矿区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7718, 7715, 140211, 140200, '南郊区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7719, 7715, 140212, 140200, '新荣区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7720, 7715, 140221, 140200, '阳高县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7721, 7715, 140222, 140200, '天镇县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7722, 7715, 140223, 140200, '广灵县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7723, 7715, 140224, 140200, '灵丘县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7724, 7715, 140225, 140200, '浑源县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7725, 7715, 140226, 140200, '左云县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7726, 7715, 140227, 140200, '大同县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7727, 7715, 140228, 140200, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7728, 7702, 140300, 140000, '阳泉市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7729, 7728, 140302, 140300, '城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7730, 7728, 140303, 140300, '矿区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7731, 7728, 140311, 140300, '郊区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7732, 7728, 140321, 140300, '平定县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7733, 7728, 140322, 140300, '盂县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7734, 7728, 140323, 140300, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7735, 7702, 140400, 140000, '长治市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7736, 7735, 140421, 140400, '长治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7737, 7735, 140423, 140400, '襄垣县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7738, 7735, 140424, 140400, '屯留县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7739, 7735, 140425, 140400, '平顺县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7740, 7735, 140426, 140400, '黎城县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7741, 7735, 140427, 140400, '壶关县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7742, 7735, 140428, 140400, '长子县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7743, 7735, 140429, 140400, '武乡县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7744, 7735, 140430, 140400, '沁县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7745, 7735, 140431, 140400, '沁源县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7746, 7735, 140481, 140400, '潞城市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7747, 7735, 140482, 140400, '城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7748, 7735, 140483, 140400, '郊区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7749, 7735, 140484, 140400, '高新区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7750, 7735, 140485, 140400, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7751, 7702, 140500, 140000, '晋城市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7752, 7751, 140502, 140500, '城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7753, 7751, 140521, 140500, '沁水县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7754, 7751, 140522, 140500, '阳城县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7755, 7751, 140524, 140500, '陵川县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7756, 7751, 140525, 140500, '泽州县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7757, 7751, 140581, 140500, '高平市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7758, 7751, 140582, 140500, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7759, 7702, 140600, 140000, '朔州市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7760, 7759, 140602, 140600, '朔城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7761, 7759, 140603, 140600, '平鲁区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7762, 7759, 140621, 140600, '山阴县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7763, 7759, 140622, 140600, '应县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7764, 7759, 140623, 140600, '右玉县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7765, 7759, 140624, 140600, '怀仁县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7766, 7759, 140625, 140600, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7767, 7702, 140700, 140000, '晋中市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7768, 7767, 140702, 140700, '榆次区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7769, 7767, 140721, 140700, '榆社县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7770, 7767, 140722, 140700, '左权县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7771, 7767, 140723, 140700, '和顺县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7772, 7767, 140724, 140700, '昔阳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7773, 7767, 140725, 140700, '寿阳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7774, 7767, 140726, 140700, '太谷县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7775, 7767, 140727, 140700, '祁县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7776, 7767, 140728, 140700, '平遥县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7777, 7767, 140729, 140700, '灵石县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7778, 7767, 140781, 140700, '介休市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7779, 7767, 140782, 140700, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7780, 7702, 140800, 140000, '运城市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7781, 7780, 140802, 140800, '盐湖区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7782, 7780, 140821, 140800, '临猗县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7783, 7780, 140822, 140800, '万荣县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7784, 7780, 140823, 140800, '闻喜县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7785, 7780, 140824, 140800, '稷山县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7786, 7780, 140825, 140800, '新绛县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7787, 7780, 140826, 140800, '绛县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7788, 7780, 140827, 140800, '垣曲县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7789, 7780, 140828, 140800, '夏县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7790, 7780, 140829, 140800, '平陆县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7791, 7780, 140830, 140800, '芮城县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7792, 7780, 140881, 140800, '永济市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7793, 7780, 140882, 140800, '河津市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7794, 7780, 140883, 140800, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7795, 7702, 140900, 140000, '忻州市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7796, 7795, 140902, 140900, '忻府区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7797, 7795, 140921, 140900, '定襄县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7798, 7795, 140922, 140900, '五台县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7799, 7795, 140923, 140900, '代县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7800, 7795, 140924, 140900, '繁峙县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7801, 7795, 140925, 140900, '宁武县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7802, 7795, 140926, 140900, '静乐县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7803, 7795, 140927, 140900, '神池县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7804, 7795, 140928, 140900, '五寨县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7805, 7795, 140929, 140900, '岢岚县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7806, 7795, 140930, 140900, '河曲县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7807, 7795, 140931, 140900, '保德县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7808, 7795, 140932, 140900, '偏关县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7809, 7795, 140981, 140900, '原平市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7810, 7795, 140982, 140900, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7811, 7702, 141000, 140000, '临汾市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7812, 7811, 141002, 141000, '尧都区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7813, 7811, 141021, 141000, '曲沃县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7814, 7811, 141022, 141000, '翼城县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7815, 7811, 141023, 141000, '襄汾县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7816, 7811, 141024, 141000, '洪洞县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7817, 7811, 141025, 141000, '古县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7818, 7811, 141026, 141000, '安泽县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7819, 7811, 141027, 141000, '浮山县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7820, 7811, 141028, 141000, '吉县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7821, 7811, 141029, 141000, '乡宁县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7822, 7811, 141030, 141000, '大宁县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7823, 7811, 141031, 141000, '隰县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7824, 7811, 141032, 141000, '永和县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7825, 7811, 141033, 141000, '蒲县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7826, 7811, 141034, 141000, '汾西县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7827, 7811, 141081, 141000, '侯马市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7828, 7811, 141082, 141000, '霍州市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7829, 7811, 141083, 141000, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7830, 7702, 141100, 140000, '吕梁市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7831, 7830, 141102, 141100, '离石区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7832, 7830, 141121, 141100, '文水县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7833, 7830, 141122, 141100, '交城县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7834, 7830, 141123, 141100, '兴县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7835, 7830, 141124, 141100, '临县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7836, 7830, 141125, 141100, '柳林县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7837, 7830, 141126, 141100, '石楼县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7838, 7830, 141127, 141100, '岚县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7839, 7830, 141128, 141100, '方山县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7840, 7830, 141129, 141100, '中阳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7841, 7830, 141130, 141100, '交口县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7842, 7830, 141181, 141100, '孝义市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7843, 7830, 141182, 141100, '汾阳市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7844, 7830, 141183, 141100, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7845, 7459, 150000, 1, '内蒙古自治区', 1, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7846, 7845, 150100, 150000, '呼和浩特市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7847, 7846, 150102, 150100, '新城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7848, 7846, 150103, 150100, '回民区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7849, 7846, 150104, 150100, '玉泉区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7850, 7846, 150105, 150100, '赛罕区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7851, 7846, 150121, 150100, '土默特左旗', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7852, 7846, 150122, 150100, '托克托县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7853, 7846, 150123, 150100, '和林格尔县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7854, 7846, 150124, 150100, '清水河县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7855, 7846, 150125, 150100, '武川县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7856, 7846, 150126, 150100, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7857, 7845, 150200, 150000, '包头市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7858, 7857, 150202, 150200, '东河区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7859, 7857, 150203, 150200, '昆都仑区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7860, 7857, 150204, 150200, '青山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7861, 7857, 150205, 150200, '石拐区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7862, 7857, 150206, 150200, '白云矿区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7863, 7857, 150207, 150200, '九原区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7864, 7857, 150221, 150200, '土默特右旗', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7865, 7857, 150222, 150200, '固阳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7866, 7857, 150223, 150200, '达尔罕茂明安联合旗', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7867, 7857, 150224, 150200, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7868, 7845, 150300, 150000, '乌海市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7869, 7868, 150302, 150300, '海勃湾区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7870, 7868, 150303, 150300, '海南区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7871, 7868, 150304, 150300, '乌达区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7872, 7868, 150305, 150300, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7873, 7845, 150400, 150000, '赤峰市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7874, 7873, 150402, 150400, '红山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7875, 7873, 150403, 150400, '元宝山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7876, 7873, 150404, 150400, '松山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7877, 7873, 150421, 150400, '阿鲁科尔沁旗', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7878, 7873, 150422, 150400, '巴林左旗', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7879, 7873, 150423, 150400, '巴林右旗', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7880, 7873, 150424, 150400, '林西县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7881, 7873, 150425, 150400, '克什克腾旗', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7882, 7873, 150426, 150400, '翁牛特旗', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7883, 7873, 150428, 150400, '喀喇沁旗', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7884, 7873, 150429, 150400, '宁城县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7885, 7873, 150430, 150400, '敖汉旗', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7886, 7873, 150431, 150400, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7887, 7845, 150500, 150000, '通辽市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7888, 7887, 150502, 150500, '科尔沁区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7889, 7887, 150521, 150500, '科尔沁左翼中旗', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7890, 7887, 150522, 150500, '科尔沁左翼后旗', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7891, 7887, 150523, 150500, '开鲁县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7892, 7887, 150524, 150500, '库伦旗', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7893, 7887, 150525, 150500, '奈曼旗', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7894, 7887, 150526, 150500, '扎鲁特旗', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7895, 7887, 150581, 150500, '霍林郭勒市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7896, 7887, 150582, 150500, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7897, 7845, 150600, 150000, '鄂尔多斯市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7898, 7897, 150602, 150600, '东胜区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7899, 7897, 150621, 150600, '达拉特旗', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7900, 7897, 150622, 150600, '准格尔旗', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7901, 7897, 150623, 150600, '鄂托克前旗', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7902, 7897, 150624, 150600, '鄂托克旗', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7903, 7897, 150625, 150600, '杭锦旗', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7904, 7897, 150626, 150600, '乌审旗', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7905, 7897, 150627, 150600, '伊金霍洛旗', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7906, 7897, 150628, 150600, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7907, 7845, 150700, 150000, '呼伦贝尔市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7908, 7907, 150702, 150700, '海拉尔区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7909, 7907, 150721, 150700, '阿荣旗', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7910, 7907, 150722, 150700, '莫力达瓦达斡尔族自治旗', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7911, 7907, 150723, 150700, '鄂伦春自治旗', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7912, 7907, 150724, 150700, '鄂温克族自治旗', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7913, 7907, 150725, 150700, '陈巴尔虎旗', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7914, 7907, 150726, 150700, '新巴尔虎左旗', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7915, 7907, 150727, 150700, '新巴尔虎右旗', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7916, 7907, 150781, 150700, '满洲里市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7917, 7907, 150782, 150700, '牙克石市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7918, 7907, 150783, 150700, '扎兰屯市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7919, 7907, 150784, 150700, '额尔古纳市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7920, 7907, 150785, 150700, '根河市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7921, 7907, 150786, 150700, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7922, 7845, 150800, 150000, '巴彦淖尔市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7923, 7922, 150802, 150800, '临河区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7924, 7922, 150821, 150800, '五原县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7925, 7922, 150822, 150800, '磴口县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7926, 7922, 150823, 150800, '乌拉特前旗', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7927, 7922, 150824, 150800, '乌拉特中旗', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7928, 7922, 150825, 150800, '乌拉特后旗', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7929, 7922, 150826, 150800, '杭锦后旗', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7930, 7922, 150827, 150800, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7931, 7845, 150900, 150000, '乌兰察布市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7932, 7931, 150902, 150900, '集宁区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7933, 7931, 150921, 150900, '卓资县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7934, 7931, 150922, 150900, '化德县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7935, 7931, 150923, 150900, '商都县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7936, 7931, 150924, 150900, '兴和县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7937, 7931, 150925, 150900, '凉城县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7938, 7931, 150926, 150900, '察哈尔右翼前旗', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7939, 7931, 150927, 150900, '察哈尔右翼中旗', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7940, 7931, 150928, 150900, '察哈尔右翼后旗', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7941, 7931, 150929, 150900, '四子王旗', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7942, 7931, 150981, 150900, '丰镇市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7943, 7931, 150982, 150900, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7944, 7845, 152200, 150000, '兴安盟', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7945, 7944, 152201, 152200, '乌兰浩特市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7946, 7944, 152202, 152200, '阿尔山市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7947, 7944, 152221, 152200, '科尔沁右翼前旗', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7948, 7944, 152222, 152200, '科尔沁右翼中旗', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7949, 7944, 152223, 152200, '扎赉特旗', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7950, 7944, 152224, 152200, '突泉县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7951, 7944, 152225, 152200, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7952, 7845, 152500, 150000, '锡林郭勒盟', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7953, 7952, 152501, 152500, '二连浩特市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7954, 7952, 152502, 152500, '锡林浩特市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7955, 7952, 152522, 152500, '阿巴嘎旗', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7956, 7952, 152523, 152500, '苏尼特左旗', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7957, 7952, 152524, 152500, '苏尼特右旗', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7958, 7952, 152525, 152500, '东乌珠穆沁旗', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7959, 7952, 152526, 152500, '西乌珠穆沁旗', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7960, 7952, 152527, 152500, '太仆寺旗', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7961, 7952, 152528, 152500, '镶黄旗', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7962, 7952, 152529, 152500, '正镶白旗', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7963, 7952, 152530, 152500, '正蓝旗', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7964, 7952, 152531, 152500, '多伦县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7965, 7952, 152532, 152500, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7966, 7845, 152900, 150000, '阿拉善盟', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7967, 7966, 152921, 152900, '阿拉善左旗', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7968, 7966, 152922, 152900, '阿拉善右旗', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7969, 7966, 152923, 152900, '额济纳旗', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7970, 7966, 152924, 152900, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7971, 7459, 210000, 1, '辽宁省', 1, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7972, 7971, 210100, 210000, '沈阳市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7973, 7972, 210102, 210100, '和平区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7974, 7972, 210103, 210100, '沈河区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7975, 7972, 210104, 210100, '大东区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7976, 7972, 210105, 210100, '皇姑区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7977, 7972, 210106, 210100, '铁西区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7978, 7972, 210111, 210100, '苏家屯区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7979, 7972, 210112, 210100, '东陵区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7980, 7972, 210113, 210100, '新城子区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7981, 7972, 210114, 210100, '于洪区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7982, 7972, 210122, 210100, '辽中县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7983, 7972, 210123, 210100, '康平县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7984, 7972, 210124, 210100, '法库县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7985, 7972, 210181, 210100, '新民市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7986, 7972, 210182, 210100, '浑南新区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7987, 7972, 210183, 210100, '张士开发区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7988, 7972, 210184, 210100, '沈北新区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7989, 7972, 210185, 210100, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7990, 7971, 210200, 210000, '大连市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7991, 7990, 210202, 210200, '中山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7992, 7990, 210203, 210200, '西岗区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7993, 7990, 210204, 210200, '沙河口区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7994, 7990, 210211, 210200, '甘井子区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7995, 7990, 210212, 210200, '旅顺口区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7996, 7990, 210213, 210200, '金州区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7997, 7990, 210224, 210200, '长海县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7998, 7990, 210251, 210200, '开发区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (7999, 7990, 210281, 210200, '瓦房店市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8000, 7990, 210282, 210200, '普兰店市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8001, 7990, 210283, 210200, '庄河市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8002, 7990, 210297, 210200, '岭前区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8003, 7990, 210298, 210200, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8004, 7971, 210300, 210000, '鞍山市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8005, 8004, 210302, 210300, '铁东区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8006, 8004, 210303, 210300, '铁西区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8007, 8004, 210304, 210300, '立山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8008, 8004, 210311, 210300, '千山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8009, 8004, 210321, 210300, '台安县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8010, 8004, 210323, 210300, '岫岩满族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8011, 8004, 210351, 210300, '高新区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8012, 8004, 210381, 210300, '海城市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8013, 8004, 210382, 210300, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8014, 7971, 210400, 210000, '抚顺市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8015, 8014, 210402, 210400, '新抚区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8016, 8014, 210403, 210400, '东洲区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8017, 8014, 210404, 210400, '望花区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8018, 8014, 210411, 210400, '顺城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8019, 8014, 210421, 210400, '抚顺县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8020, 8014, 210422, 210400, '新宾满族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8021, 8014, 210423, 210400, '清原满族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8022, 8014, 210424, 210400, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8023, 7971, 210500, 210000, '本溪市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8024, 8023, 210502, 210500, '平山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8025, 8023, 210503, 210500, '溪湖区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8026, 8023, 210504, 210500, '明山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8027, 8023, 210505, 210500, '南芬区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8028, 8023, 210521, 210500, '本溪满族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8029, 8023, 210522, 210500, '桓仁满族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8030, 8023, 210523, 210500, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8031, 7971, 210600, 210000, '丹东市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8032, 8031, 210602, 210600, '元宝区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8033, 8031, 210603, 210600, '振兴区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8034, 8031, 210604, 210600, '振安区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8035, 8031, 210624, 210600, '宽甸满族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8036, 8031, 210681, 210600, '东港市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8037, 8031, 210682, 210600, '凤城市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8038, 8031, 210683, 210600, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8039, 7971, 210700, 210000, '锦州市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8040, 8039, 210702, 210700, '古塔区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8041, 8039, 210703, 210700, '凌河区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8042, 8039, 210711, 210700, '太和区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8043, 8039, 210726, 210700, '黑山县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8044, 8039, 210727, 210700, '义县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8045, 8039, 210781, 210700, '凌海市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8046, 8039, 210782, 210700, '北镇市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8047, 8039, 210783, 210700, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8048, 7971, 210800, 210000, '营口市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8049, 8048, 210802, 210800, '站前区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8050, 8048, 210803, 210800, '西市区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8051, 8048, 210804, 210800, '鲅鱼圈区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8052, 8048, 210811, 210800, '老边区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8053, 8048, 210881, 210800, '盖州市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8054, 8048, 210882, 210800, '大石桥市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8055, 8048, 210883, 210800, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8056, 7971, 210900, 210000, '阜新市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8057, 8056, 210902, 210900, '海州区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8058, 8056, 210903, 210900, '新邱区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8059, 8056, 210904, 210900, '太平区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8060, 8056, 210905, 210900, '清河门区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8061, 8056, 210911, 210900, '细河区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8062, 8056, 210921, 210900, '阜新蒙古族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8063, 8056, 210922, 210900, '彰武县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8064, 8056, 210923, 210900, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8065, 7971, 211000, 210000, '辽阳市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8066, 8065, 211002, 211000, '白塔区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8067, 8065, 211003, 211000, '文圣区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8068, 8065, 211004, 211000, '宏伟区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8069, 8065, 211005, 211000, '弓长岭区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8070, 8065, 211011, 211000, '太子河区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8071, 8065, 211021, 211000, '辽阳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8072, 8065, 211081, 211000, '灯塔市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8073, 8065, 211082, 211000, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8074, 7971, 211100, 210000, '盘锦市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8075, 8074, 211102, 211100, '双台子区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8076, 8074, 211103, 211100, '兴隆台区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8077, 8074, 211121, 211100, '大洼县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8078, 8074, 211122, 211100, '盘山县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8079, 8074, 211123, 211100, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8080, 7971, 211200, 210000, '铁岭市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8081, 8080, 211202, 211200, '银州区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8082, 8080, 211204, 211200, '清河区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8083, 8080, 211221, 211200, '铁岭县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8084, 8080, 211223, 211200, '西丰县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8085, 8080, 211224, 211200, '昌图县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8086, 8080, 211281, 211200, '调兵山市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8087, 8080, 211282, 211200, '开原市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8088, 8080, 211283, 211200, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8089, 7971, 211300, 210000, '朝阳市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8090, 8089, 211302, 211300, '双塔区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8091, 8089, 211303, 211300, '龙城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8092, 8089, 211321, 211300, '朝阳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8093, 8089, 211322, 211300, '建平县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8094, 8089, 211324, 211300, '喀喇沁左翼蒙古族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8095, 8089, 211381, 211300, '北票市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8096, 8089, 211382, 211300, '凌源市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8097, 8089, 211383, 211300, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8098, 7971, 211400, 210000, '葫芦岛市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8099, 8098, 211402, 211400, '连山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8100, 8098, 211403, 211400, '龙港区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8101, 8098, 211404, 211400, '南票区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8102, 8098, 211421, 211400, '绥中县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8103, 8098, 211422, 211400, '建昌县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8104, 8098, 211481, 211400, '兴城市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8105, 8098, 211482, 211400, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8106, 7459, 220000, 1, '吉林省', 1, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8107, 8106, 220100, 220000, '长春市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8108, 8107, 220102, 220100, '南关区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8109, 8107, 220103, 220100, '宽城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8110, 8107, 220104, 220100, '朝阳区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8111, 8107, 220105, 220100, '二道区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8112, 8107, 220106, 220100, '绿园区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8113, 8107, 220112, 220100, '双阳区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8114, 8107, 220122, 220100, '农安县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8115, 8107, 220181, 220100, '九台市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8116, 8107, 220182, 220100, '榆树市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8117, 8107, 220183, 220100, '德惠市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8118, 8107, 220184, 220100, '高新技术产业开发区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8119, 8107, 220185, 220100, '汽车产业开发区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8120, 8107, 220186, 220100, '经济技术开发区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8121, 8107, 220187, 220100, '净月旅游开发区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8122, 8107, 220188, 220100, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8123, 8106, 220200, 220000, '吉林市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8124, 8123, 220202, 220200, '昌邑区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8125, 8123, 220203, 220200, '龙潭区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8126, 8123, 220204, 220200, '船营区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8127, 8123, 220211, 220200, '丰满区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8128, 8123, 220221, 220200, '永吉县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8129, 8123, 220281, 220200, '蛟河市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8130, 8123, 220282, 220200, '桦甸市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8131, 8123, 220283, 220200, '舒兰市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8132, 8123, 220284, 220200, '磐石市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8133, 8123, 220285, 220200, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8134, 8106, 220300, 220000, '四平市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8135, 8134, 220302, 220300, '铁西区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8136, 8134, 220303, 220300, '铁东区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8137, 8134, 220322, 220300, '梨树县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8138, 8134, 220323, 220300, '伊通满族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8139, 8134, 220381, 220300, '公主岭市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8140, 8134, 220382, 220300, '双辽市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8141, 8134, 220383, 220300, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8142, 8106, 220400, 220000, '辽源市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8143, 8142, 220402, 220400, '龙山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8144, 8142, 220403, 220400, '西安区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8145, 8142, 220421, 220400, '东丰县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8146, 8142, 220422, 220400, '东辽县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8147, 8142, 220423, 220400, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8148, 8106, 220500, 220000, '通化市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8149, 8148, 220502, 220500, '东昌区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8150, 8148, 220503, 220500, '二道江区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8151, 8148, 220521, 220500, '通化县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8152, 8148, 220523, 220500, '辉南县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8153, 8148, 220524, 220500, '柳河县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8154, 8148, 220581, 220500, '梅河口市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8155, 8148, 220582, 220500, '集安市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8156, 8148, 220583, 220500, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8157, 8106, 220600, 220000, '白山市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8158, 8157, 220602, 220600, '八道江区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8159, 8157, 220621, 220600, '抚松县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8160, 8157, 220622, 220600, '靖宇县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8161, 8157, 220623, 220600, '长白朝鲜族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8162, 8157, 220625, 220600, '江源县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8163, 8157, 220681, 220600, '临江市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8164, 8157, 220682, 220600, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8165, 8106, 220700, 220000, '松原市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8166, 8165, 220702, 220700, '宁江区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8167, 8165, 220721, 220700, '前郭尔罗斯蒙古族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8168, 8165, 220722, 220700, '长岭县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8169, 8165, 220723, 220700, '乾安县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8170, 8165, 220724, 220700, '扶余县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8171, 8165, 220725, 220700, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8172, 8106, 220800, 220000, '白城市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8173, 8172, 220802, 220800, '洮北区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8174, 8172, 220821, 220800, '镇赉县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8175, 8172, 220822, 220800, '通榆县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8176, 8172, 220881, 220800, '洮南市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8177, 8172, 220882, 220800, '大安市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8178, 8172, 220883, 220800, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8179, 8106, 222400, 220000, '延边朝鲜族自治州', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8180, 8179, 222401, 222400, '延吉市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8181, 8179, 222402, 222400, '图们市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8182, 8179, 222403, 222400, '敦化市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8183, 8179, 222404, 222400, '珲春市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8184, 8179, 222405, 222400, '龙井市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8185, 8179, 222406, 222400, '和龙市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8186, 8179, 222424, 222400, '汪清县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8187, 8179, 222426, 222400, '安图县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8188, 8179, 222427, 222400, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8189, 7459, 230000, 1, '黑龙江省', 1, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8190, 8189, 230100, 230000, '哈尔滨市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8191, 8190, 230102, 230100, '道里区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8192, 8190, 230103, 230100, '南岗区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8193, 8190, 230104, 230100, '道外区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8194, 8190, 230106, 230100, '香坊区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8195, 8190, 230107, 230100, '动力区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8196, 8190, 230108, 230100, '平房区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8197, 8190, 230109, 230100, '松北区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8198, 8190, 230111, 230100, '呼兰区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8199, 8190, 230123, 230100, '依兰县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8200, 8190, 230124, 230100, '方正县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8201, 8190, 230125, 230100, '宾县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8202, 8190, 230126, 230100, '巴彦县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8203, 8190, 230127, 230100, '木兰县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8204, 8190, 230128, 230100, '通河县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8205, 8190, 230129, 230100, '延寿县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8206, 8190, 230181, 230100, '阿城市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8207, 8190, 230182, 230100, '双城市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8208, 8190, 230183, 230100, '尚志市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8209, 8190, 230184, 230100, '五常市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8210, 8190, 230185, 230100, '阿城市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8211, 8190, 230186, 230100, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8212, 8189, 230200, 230000, '齐齐哈尔市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8213, 8212, 230202, 230200, '龙沙区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8214, 8212, 230203, 230200, '建华区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8215, 8212, 230204, 230200, '铁锋区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8216, 8212, 230205, 230200, '昂昂溪区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8217, 8212, 230206, 230200, '富拉尔基区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8218, 8212, 230207, 230200, '碾子山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8219, 8212, 230208, 230200, '梅里斯达斡尔族区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8220, 8212, 230221, 230200, '龙江县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8221, 8212, 230223, 230200, '依安县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8222, 8212, 230224, 230200, '泰来县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8223, 8212, 230225, 230200, '甘南县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8224, 8212, 230227, 230200, '富裕县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8225, 8212, 230229, 230200, '克山县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8226, 8212, 230230, 230200, '克东县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8227, 8212, 230231, 230200, '拜泉县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8228, 8212, 230281, 230200, '讷河市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8229, 8212, 230282, 230200, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8230, 8189, 230300, 230000, '鸡西市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8231, 8230, 230302, 230300, '鸡冠区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8232, 8230, 230303, 230300, '恒山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8233, 8230, 230304, 230300, '滴道区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8234, 8230, 230305, 230300, '梨树区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8235, 8230, 230306, 230300, '城子河区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8236, 8230, 230307, 230300, '麻山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8237, 8230, 230321, 230300, '鸡东县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8238, 8230, 230381, 230300, '虎林市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8239, 8230, 230382, 230300, '密山市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8240, 8230, 230383, 230300, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8241, 8189, 230400, 230000, '鹤岗市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8242, 8241, 230402, 230400, '向阳区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8243, 8241, 230403, 230400, '工农区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8244, 8241, 230404, 230400, '南山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8245, 8241, 230405, 230400, '兴安区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8246, 8241, 230406, 230400, '东山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8247, 8241, 230407, 230400, '兴山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8248, 8241, 230421, 230400, '萝北县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8249, 8241, 230422, 230400, '绥滨县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8250, 8241, 230423, 230400, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8251, 8189, 230500, 230000, '双鸭山市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8252, 8251, 230502, 230500, '尖山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8253, 8251, 230503, 230500, '岭东区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8254, 8251, 230505, 230500, '四方台区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8255, 8251, 230506, 230500, '宝山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8256, 8251, 230521, 230500, '集贤县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8257, 8251, 230522, 230500, '友谊县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8258, 8251, 230523, 230500, '宝清县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8259, 8251, 230524, 230500, '饶河县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8260, 8251, 230525, 230500, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8261, 8189, 230600, 230000, '大庆市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8262, 8261, 230602, 230600, '萨尔图区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8263, 8261, 230603, 230600, '龙凤区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8264, 8261, 230604, 230600, '让胡路区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8265, 8261, 230605, 230600, '红岗区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8266, 8261, 230606, 230600, '大同区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8267, 8261, 230621, 230600, '肇州县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8268, 8261, 230622, 230600, '肇源县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8269, 8261, 230623, 230600, '林甸县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8270, 8261, 230624, 230600, '杜尔伯特蒙古族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8271, 8261, 230625, 230600, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8272, 8189, 230700, 230000, '伊春市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8273, 8272, 230702, 230700, '伊春区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8274, 8272, 230703, 230700, '南岔区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8275, 8272, 230704, 230700, '友好区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8276, 8272, 230705, 230700, '西林区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8277, 8272, 230706, 230700, '翠峦区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8278, 8272, 230707, 230700, '新青区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8279, 8272, 230708, 230700, '美溪区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8280, 8272, 230709, 230700, '金山屯区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8281, 8272, 230710, 230700, '五营区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8282, 8272, 230711, 230700, '乌马河区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8283, 8272, 230712, 230700, '汤旺河区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8284, 8272, 230713, 230700, '带岭区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8285, 8272, 230714, 230700, '乌伊岭区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8286, 8272, 230715, 230700, '红星区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8287, 8272, 230716, 230700, '上甘岭区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8288, 8272, 230722, 230700, '嘉荫县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8289, 8272, 230781, 230700, '铁力市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8290, 8272, 230782, 230700, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8291, 8189, 230800, 230000, '佳木斯市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8292, 8291, 230802, 230800, '永红区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8293, 8291, 230803, 230800, '向阳区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8294, 8291, 230804, 230800, '前进区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8295, 8291, 230805, 230800, '东风区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8296, 8291, 230811, 230800, '郊区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8297, 8291, 230822, 230800, '桦南县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8298, 8291, 230826, 230800, '桦川县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8299, 8291, 230828, 230800, '汤原县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8300, 8291, 230833, 230800, '抚远县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8301, 8291, 230881, 230800, '同江市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8302, 8291, 230882, 230800, '富锦市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8303, 8291, 230883, 230800, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8304, 8189, 230900, 230000, '七台河市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8305, 8304, 230902, 230900, '新兴区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8306, 8304, 230903, 230900, '桃山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8307, 8304, 230904, 230900, '茄子河区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8308, 8304, 230921, 230900, '勃利县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8309, 8304, 230922, 230900, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8310, 8189, 231000, 230000, '牡丹江市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8311, 8310, 231002, 231000, '东安区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8312, 8310, 231003, 231000, '阳明区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8313, 8310, 231004, 231000, '爱民区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8314, 8310, 231005, 231000, '西安区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8315, 8310, 231024, 231000, '东宁县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8316, 8310, 231025, 231000, '林口县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8317, 8310, 231081, 231000, '绥芬河市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8318, 8310, 231083, 231000, '海林市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8319, 8310, 231084, 231000, '宁安市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8320, 8310, 231085, 231000, '穆棱市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8321, 8310, 231086, 231000, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8322, 8189, 231100, 230000, '黑河市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8323, 8322, 231102, 231100, '爱辉区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8324, 8322, 231121, 231100, '嫩江县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8325, 8322, 231123, 231100, '逊克县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8326, 8322, 231124, 231100, '孙吴县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8327, 8322, 231181, 231100, '北安市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8328, 8322, 231182, 231100, '五大连池市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8329, 8322, 231183, 231100, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8330, 8189, 231200, 230000, '绥化市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8331, 8330, 231202, 231200, '北林区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8332, 8330, 231221, 231200, '望奎县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8333, 8330, 231222, 231200, '兰西县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8334, 8330, 231223, 231200, '青冈县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8335, 8330, 231224, 231200, '庆安县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8336, 8330, 231225, 231200, '明水县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8337, 8330, 231226, 231200, '绥棱县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8338, 8330, 231281, 231200, '安达市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8339, 8330, 231282, 231200, '肇东市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8340, 8330, 231283, 231200, '海伦市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8341, 8330, 231284, 231200, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8342, 8189, 232700, 230000, '大兴安岭地区', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8343, 8342, 232721, 232700, '呼玛县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8344, 8342, 232722, 232700, '塔河县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8345, 8342, 232723, 232700, '漠河县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8346, 8342, 232724, 232700, '加格达奇区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8347, 8342, 232725, 232700, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8348, 7459, 310000, 1, '上海', 1, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8349, 8348, 310100, 310000, '上海市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8350, 8349, 310101, 310100, '黄浦区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8351, 8349, 310103, 310100, '卢湾区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8352, 8349, 310104, 310100, '徐汇区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8353, 8349, 310105, 310100, '长宁区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8354, 8349, 310106, 310100, '静安区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8355, 8349, 310107, 310100, '普陀区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8356, 8349, 310108, 310100, '闸北区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8357, 8349, 310109, 310100, '虹口区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8358, 8349, 310110, 310100, '杨浦区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8359, 8349, 310112, 310100, '闵行区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8360, 8349, 310113, 310100, '宝山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8361, 8349, 310114, 310100, '嘉定区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8362, 8349, 310115, 310100, '浦东新区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8363, 8349, 310116, 310100, '金山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8364, 8349, 310117, 310100, '松江区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8365, 8349, 310118, 310100, '青浦区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8366, 8349, 310119, 310100, '南汇区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8367, 8349, 310120, 310100, '奉贤区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8368, 8349, 310152, 310100, '川沙区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8369, 8349, 310230, 310100, '崇明县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8370, 8349, 310231, 310100, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8371, 7459, 320000, 1, '江苏省', 1, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8372, 8371, 320100, 320000, '南京市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8373, 8372, 320102, 320100, '玄武区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8374, 8372, 320103, 320100, '白下区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8375, 8372, 320104, 320100, '秦淮区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8376, 8372, 320105, 320100, '建邺区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8377, 8372, 320106, 320100, '鼓楼区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8378, 8372, 320107, 320100, '下关区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8379, 8372, 320111, 320100, '浦口区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8380, 8372, 320113, 320100, '栖霞区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8381, 8372, 320114, 320100, '雨花台区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8382, 8372, 320115, 320100, '江宁区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8383, 8372, 320116, 320100, '六合区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8384, 8372, 320124, 320100, '溧水县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8385, 8372, 320125, 320100, '高淳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8386, 8372, 320126, 320100, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8387, 8371, 320200, 320000, '无锡市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8388, 8387, 320202, 320200, '崇安区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8389, 8387, 320203, 320200, '南长区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8390, 8387, 320204, 320200, '北塘区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8391, 8387, 320205, 320200, '锡山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8392, 8387, 320206, 320200, '惠山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8393, 8387, 320211, 320200, '滨湖区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8394, 8387, 320281, 320200, '江阴市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8395, 8387, 320282, 320200, '宜兴市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8396, 8387, 320296, 320200, '新区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8397, 8387, 320297, 320200, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8398, 8371, 320300, 320000, '徐州市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8399, 8398, 320302, 320300, '鼓楼区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8400, 8398, 320303, 320300, '云龙区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8401, 8398, 320304, 320300, '九里区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8402, 8398, 320305, 320300, '贾汪区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8403, 8398, 320311, 320300, '泉山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8404, 8398, 320321, 320300, '丰县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8405, 8398, 320322, 320300, '沛县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8406, 8398, 320323, 320300, '铜山县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8407, 8398, 320324, 320300, '睢宁县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8408, 8398, 320381, 320300, '新沂市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8409, 8398, 320382, 320300, '邳州市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8410, 8398, 320383, 320300, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8411, 8371, 320400, 320000, '常州市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8412, 8411, 320402, 320400, '天宁区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8413, 8411, 320404, 320400, '钟楼区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8414, 8411, 320405, 320400, '戚墅堰区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8415, 8411, 320411, 320400, '新北区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8416, 8411, 320412, 320400, '武进区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8417, 8411, 320481, 320400, '溧阳市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8418, 8411, 320482, 320400, '金坛市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8419, 8411, 320483, 320400, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8420, 8371, 320500, 320000, '苏州市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8421, 8420, 320502, 320500, '沧浪区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8422, 8420, 320503, 320500, '平江区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8423, 8420, 320504, 320500, '金阊区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8424, 8420, 320505, 320500, '虎丘区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8425, 8420, 320506, 320500, '吴中区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8426, 8420, 320507, 320500, '相城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8427, 8420, 320581, 320500, '常熟市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8428, 8420, 320582, 320500, '张家港市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8429, 8420, 320583, 320500, '昆山市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8430, 8420, 320584, 320500, '吴江市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8431, 8420, 320585, 320500, '太仓市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8432, 8420, 320594, 320500, '新区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8433, 8420, 320595, 320500, '园区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8434, 8420, 320596, 320500, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8435, 8371, 320600, 320000, '南通市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8436, 8435, 320602, 320600, '崇川区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8437, 8435, 320611, 320600, '港闸区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8438, 8435, 320612, 320600, '通州区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8439, 8435, 320621, 320600, '海安县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8440, 8435, 320623, 320600, '如东县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8441, 8435, 320681, 320600, '启东市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8442, 8435, 320682, 320600, '如皋市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8443, 8435, 320683, 320600, '通州市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8444, 8435, 320684, 320600, '海门市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8445, 8435, 320693, 320600, '开发区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8446, 8435, 320694, 320600, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8447, 8371, 320700, 320000, '连云港市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8448, 8447, 320703, 320700, '连云区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8449, 8447, 320705, 320700, '新浦区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8450, 8447, 320706, 320700, '海州区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8451, 8447, 320721, 320700, '赣榆县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8452, 8447, 320722, 320700, '东海县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8453, 8447, 320723, 320700, '灌云县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8454, 8447, 320724, 320700, '灌南县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8455, 8447, 320725, 320700, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8456, 8371, 320800, 320000, '淮安市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8457, 8456, 320802, 320800, '清河区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8458, 8456, 320803, 320800, '楚州区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8459, 8456, 320804, 320800, '淮阴区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8460, 8456, 320811, 320800, '清浦区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8461, 8456, 320826, 320800, '涟水县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8462, 8456, 320829, 320800, '洪泽县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8463, 8456, 320830, 320800, '盱眙县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8464, 8456, 320831, 320800, '金湖县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8465, 8456, 320832, 320800, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8466, 8371, 320900, 320000, '盐城市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8467, 8466, 320902, 320900, '亭湖区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8468, 8466, 320903, 320900, '盐都区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8469, 8466, 320921, 320900, '响水县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8470, 8466, 320922, 320900, '滨海县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8471, 8466, 320923, 320900, '阜宁县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8472, 8466, 320924, 320900, '射阳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8473, 8466, 320925, 320900, '建湖县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8474, 8466, 320981, 320900, '东台市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8475, 8466, 320982, 320900, '大丰市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8476, 8466, 320983, 320900, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8477, 8371, 321000, 320000, '扬州市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8478, 8477, 321002, 321000, '广陵区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8479, 8477, 321003, 321000, '邗江区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8480, 8477, 321011, 321000, '维扬区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8481, 8477, 321023, 321000, '宝应县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8482, 8477, 321081, 321000, '仪征市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8483, 8477, 321084, 321000, '高邮市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8484, 8477, 321088, 321000, '江都市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8485, 8477, 321092, 321000, '经济开发区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8486, 8477, 321093, 321000, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8487, 8371, 321100, 320000, '镇江市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8488, 8487, 321102, 321100, '京口区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8489, 8487, 321111, 321100, '润州区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8490, 8487, 321112, 321100, '丹徒区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8491, 8487, 321181, 321100, '丹阳市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8492, 8487, 321182, 321100, '扬中市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8493, 8487, 321183, 321100, '句容市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8494, 8487, 321184, 321100, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8495, 8371, 321200, 320000, '泰州市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8496, 8495, 321202, 321200, '海陵区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8497, 8495, 321203, 321200, '高港区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8498, 8495, 321281, 321200, '兴化市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8499, 8495, 321282, 321200, '靖江市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8500, 8495, 321283, 321200, '泰兴市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8501, 8495, 321284, 321200, '姜堰市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8502, 8495, 321285, 321200, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8503, 8371, 321300, 320000, '宿迁市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8504, 8503, 321302, 321300, '宿城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8505, 8503, 321311, 321300, '宿豫区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8506, 8503, 321322, 321300, '沭阳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8507, 8503, 321323, 321300, '泗阳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8508, 8503, 321324, 321300, '泗洪县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8509, 8503, 321325, 321300, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8510, 7459, 330000, 1, '浙江省', 1, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8511, 8510, 330100, 330000, '杭州市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8512, 8511, 330102, 330100, '上城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8513, 8511, 330103, 330100, '下城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8514, 8511, 330104, 330100, '江干区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8515, 8511, 330105, 330100, '拱墅区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8516, 8511, 330106, 330100, '西湖区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8517, 8511, 330108, 330100, '滨江区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8518, 8511, 330109, 330100, '萧山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8519, 8511, 330110, 330100, '余杭区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8520, 8511, 330122, 330100, '桐庐县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8521, 8511, 330127, 330100, '淳安县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8522, 8511, 330182, 330100, '建德市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8523, 8511, 330183, 330100, '富阳市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8524, 8511, 330185, 330100, '临安市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8525, 8511, 330186, 330100, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8526, 8510, 330200, 330000, '宁波市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8527, 8526, 330203, 330200, '海曙区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8528, 8526, 330204, 330200, '江东区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8529, 8526, 330205, 330200, '江北区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8530, 8526, 330206, 330200, '北仑区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8531, 8526, 330211, 330200, '镇海区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8532, 8526, 330212, 330200, '鄞州区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8533, 8526, 330225, 330200, '象山县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8534, 8526, 330226, 330200, '宁海县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8535, 8526, 330281, 330200, '余姚市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8536, 8526, 330282, 330200, '慈溪市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8537, 8526, 330283, 330200, '奉化市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8538, 8526, 330284, 330200, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8539, 8510, 330300, 330000, '温州市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8540, 8539, 330302, 330300, '鹿城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8541, 8539, 330303, 330300, '龙湾区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8542, 8539, 330304, 330300, '瓯海区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8543, 8539, 330322, 330300, '洞头县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8544, 8539, 330324, 330300, '永嘉县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8545, 8539, 330326, 330300, '平阳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8546, 8539, 330327, 330300, '苍南县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8547, 8539, 330328, 330300, '文成县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8548, 8539, 330329, 330300, '泰顺县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8549, 8539, 330381, 330300, '瑞安市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8550, 8539, 330382, 330300, '乐清市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8551, 8539, 330383, 330300, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8552, 8510, 330400, 330000, '嘉兴市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8553, 8552, 330402, 330400, '南湖区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8554, 8552, 330411, 330400, '秀洲区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8555, 8552, 330421, 330400, '嘉善县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8556, 8552, 330424, 330400, '海盐县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8557, 8552, 330481, 330400, '海宁市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8558, 8552, 330482, 330400, '平湖市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8559, 8552, 330483, 330400, '桐乡市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8560, 8552, 330484, 330400, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8561, 8510, 330500, 330000, '湖州市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8562, 8561, 330502, 330500, '吴兴区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8563, 8561, 330503, 330500, '南浔区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8564, 8561, 330521, 330500, '德清县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8565, 8561, 330522, 330500, '长兴县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8566, 8561, 330523, 330500, '安吉县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8567, 8561, 330524, 330500, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8568, 8510, 330600, 330000, '绍兴市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8569, 8568, 330602, 330600, '越城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8570, 8568, 330621, 330600, '绍兴县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8571, 8568, 330624, 330600, '新昌县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8572, 8568, 330681, 330600, '诸暨市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8573, 8568, 330682, 330600, '上虞市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8574, 8568, 330683, 330600, '嵊州市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8575, 8568, 330684, 330600, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8576, 8510, 330700, 330000, '金华市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8577, 8576, 330702, 330700, '婺城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8578, 8576, 330703, 330700, '金东区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8579, 8576, 330723, 330700, '武义县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8580, 8576, 330726, 330700, '浦江县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8581, 8576, 330727, 330700, '磐安县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8582, 8576, 330781, 330700, '兰溪市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8583, 8576, 330782, 330700, '义乌市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8584, 8576, 330783, 330700, '东阳市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8585, 8576, 330784, 330700, '永康市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8586, 8576, 330785, 330700, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8587, 8510, 330800, 330000, '衢州市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8588, 8587, 330802, 330800, '柯城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8589, 8587, 330803, 330800, '衢江区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8590, 8587, 330822, 330800, '常山县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8591, 8587, 330824, 330800, '开化县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8592, 8587, 330825, 330800, '龙游县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8593, 8587, 330881, 330800, '江山市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8594, 8587, 330882, 330800, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8595, 8510, 330900, 330000, '舟山市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8596, 8595, 330902, 330900, '定海区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8597, 8595, 330903, 330900, '普陀区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8598, 8595, 330921, 330900, '岱山县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8599, 8595, 330922, 330900, '嵊泗县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8600, 8595, 330923, 330900, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8601, 8510, 331000, 330000, '台州市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8602, 8601, 331002, 331000, '椒江区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8603, 8601, 331003, 331000, '黄岩区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8604, 8601, 331004, 331000, '路桥区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8605, 8601, 331021, 331000, '玉环县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8606, 8601, 331022, 331000, '三门县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8607, 8601, 331023, 331000, '天台县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8608, 8601, 331024, 331000, '仙居县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8609, 8601, 331081, 331000, '温岭市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8610, 8601, 331082, 331000, '临海市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8611, 8601, 331083, 331000, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8612, 8510, 331100, 330000, '丽水市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8613, 8612, 331102, 331100, '莲都区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8614, 8612, 331121, 331100, '青田县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8615, 8612, 331122, 331100, '缙云县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8616, 8612, 331123, 331100, '遂昌县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8617, 8612, 331124, 331100, '松阳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8618, 8612, 331125, 331100, '云和县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8619, 8612, 331126, 331100, '庆元县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8620, 8612, 331127, 331100, '景宁畲族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8621, 8612, 331181, 331100, '龙泉市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8622, 8612, 331182, 331100, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8623, 7459, 340000, 1, '安徽省', 1, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8624, 8623, 340100, 340000, '合肥市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8625, 8624, 340102, 340100, '瑶海区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8626, 8624, 340103, 340100, '庐阳区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8627, 8624, 340104, 340100, '蜀山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8628, 8624, 340111, 340100, '包河区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8629, 8624, 340121, 340100, '长丰县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8630, 8624, 340122, 340100, '肥东县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8631, 8624, 340123, 340100, '肥西县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8632, 8624, 340151, 340100, '高新区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8633, 8624, 340191, 340100, '中区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8634, 8624, 340192, 340100, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8635, 8623, 340200, 340000, '芜湖市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8636, 8635, 340202, 340200, '镜湖区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8637, 8635, 340203, 340200, '弋江区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8638, 8635, 340207, 340200, '鸠江区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8639, 8635, 340208, 340200, '三山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8640, 8635, 340221, 340200, '芜湖县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8641, 8635, 340222, 340200, '繁昌县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8642, 8635, 340223, 340200, '南陵县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8643, 8635, 340224, 340200, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8644, 8623, 340300, 340000, '蚌埠市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8645, 8644, 340302, 340300, '龙子湖区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8646, 8644, 340303, 340300, '蚌山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8647, 8644, 340304, 340300, '禹会区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8648, 8644, 340311, 340300, '淮上区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8649, 8644, 340321, 340300, '怀远县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8650, 8644, 340322, 340300, '五河县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8651, 8644, 340323, 340300, '固镇县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8652, 8644, 340324, 340300, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8653, 8623, 340400, 340000, '淮南市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8654, 8653, 340402, 340400, '大通区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8655, 8653, 340403, 340400, '田家庵区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8656, 8653, 340404, 340400, '谢家集区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8657, 8653, 340405, 340400, '八公山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8658, 8653, 340406, 340400, '潘集区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8659, 8653, 340421, 340400, '凤台县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8660, 8653, 340422, 340400, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8661, 8623, 340500, 340000, '马鞍山市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8662, 8661, 340502, 340500, '金家庄区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8663, 8661, 340503, 340500, '花山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8664, 8661, 340504, 340500, '雨山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8665, 8661, 340521, 340500, '当涂县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8666, 8661, 340522, 340500, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8667, 8623, 340600, 340000, '淮北市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8668, 8667, 340602, 340600, '杜集区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8669, 8667, 340603, 340600, '相山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8670, 8667, 340604, 340600, '烈山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8671, 8667, 340621, 340600, '濉溪县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8672, 8667, 340622, 340600, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8673, 8623, 340700, 340000, '铜陵市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8674, 8673, 340702, 340700, '铜官山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8675, 8673, 340703, 340700, '狮子山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8676, 8673, 340711, 340700, '郊区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8677, 8673, 340721, 340700, '铜陵县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8678, 8673, 340722, 340700, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8679, 8623, 340800, 340000, '安庆市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8680, 8679, 340802, 340800, '迎江区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8681, 8679, 340803, 340800, '大观区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8682, 8679, 340811, 340800, '宜秀区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8683, 8679, 340822, 340800, '怀宁县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8684, 8679, 340823, 340800, '枞阳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8685, 8679, 340824, 340800, '潜山县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8686, 8679, 340825, 340800, '太湖县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8687, 8679, 340826, 340800, '宿松县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8688, 8679, 340827, 340800, '望江县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8689, 8679, 340828, 340800, '岳西县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8690, 8679, 340881, 340800, '桐城市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8691, 8679, 340882, 340800, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8692, 8623, 341000, 340000, '黄山市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8693, 8692, 341002, 341000, '屯溪区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8694, 8692, 341003, 341000, '黄山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8695, 8692, 341004, 341000, '徽州区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8696, 8692, 341021, 341000, '歙县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8697, 8692, 341022, 341000, '休宁县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8698, 8692, 341023, 341000, '黟县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8699, 8692, 341024, 341000, '祁门县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8700, 8692, 341025, 341000, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8701, 8623, 341100, 340000, '滁州市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8702, 8701, 341102, 341100, '琅琊区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8703, 8701, 341103, 341100, '南谯区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8704, 8701, 341122, 341100, '来安县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8705, 8701, 341124, 341100, '全椒县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8706, 8701, 341125, 341100, '定远县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8707, 8701, 341126, 341100, '凤阳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8708, 8701, 341181, 341100, '天长市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8709, 8701, 341182, 341100, '明光市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8710, 8701, 341183, 341100, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8711, 8623, 341200, 340000, '阜阳市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8712, 8711, 341202, 341200, '颍州区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8713, 8711, 341203, 341200, '颍东区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8714, 8711, 341204, 341200, '颍泉区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8715, 8711, 341221, 341200, '临泉县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8716, 8711, 341222, 341200, '太和县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8717, 8711, 341225, 341200, '阜南县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8718, 8711, 341226, 341200, '颍上县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8719, 8711, 341282, 341200, '界首市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8720, 8711, 341283, 341200, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8721, 8623, 341300, 340000, '宿州市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8722, 8721, 341302, 341300, '埇桥区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8723, 8721, 341321, 341300, '砀山县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8724, 8721, 341322, 341300, '萧县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8725, 8721, 341323, 341300, '灵璧县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8726, 8721, 341324, 341300, '泗县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8727, 8721, 341325, 341300, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8728, 8623, 341400, 340000, '巢湖市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8729, 8728, 341402, 341400, '居巢区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8730, 8728, 341421, 341400, '庐江县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8731, 8728, 341422, 341400, '无为县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8732, 8728, 341423, 341400, '含山县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8733, 8728, 341424, 341400, '和县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8734, 8728, 341425, 341400, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8735, 8623, 341500, 340000, '六安市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8736, 8735, 341502, 341500, '金安区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8737, 8735, 341503, 341500, '裕安区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8738, 8735, 341521, 341500, '寿县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8739, 8735, 341522, 341500, '霍邱县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8740, 8735, 341523, 341500, '舒城县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8741, 8735, 341524, 341500, '金寨县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8742, 8735, 341525, 341500, '霍山县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8743, 8735, 341526, 341500, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8744, 8623, 341600, 340000, '亳州市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8745, 8744, 341602, 341600, '谯城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8746, 8744, 341621, 341600, '涡阳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8747, 8744, 341622, 341600, '蒙城县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8748, 8744, 341623, 341600, '利辛县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8749, 8744, 341624, 341600, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8750, 8623, 341700, 340000, '池州市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8751, 8750, 341702, 341700, '贵池区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8752, 8750, 341721, 341700, '东至县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8753, 8750, 341722, 341700, '石台县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8754, 8750, 341723, 341700, '青阳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8755, 8750, 341724, 341700, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8756, 8623, 341800, 340000, '宣城市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8757, 8756, 341802, 341800, '宣州区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8758, 8756, 341821, 341800, '郎溪县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8759, 8756, 341822, 341800, '广德县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8760, 8756, 341823, 341800, '泾县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8761, 8756, 341824, 341800, '绩溪县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8762, 8756, 341825, 341800, '旌德县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8763, 8756, 341881, 341800, '宁国市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8764, 8756, 341882, 341800, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8765, 7459, 350000, 1, '福建省', 1, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8766, 8765, 350100, 350000, '福州市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8767, 8766, 350102, 350100, '鼓楼区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8768, 8766, 350103, 350100, '台江区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8769, 8766, 350104, 350100, '仓山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8770, 8766, 350105, 350100, '马尾区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8771, 8766, 350111, 350100, '晋安区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8772, 8766, 350121, 350100, '闽侯县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8773, 8766, 350122, 350100, '连江县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8774, 8766, 350123, 350100, '罗源县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8775, 8766, 350124, 350100, '闽清县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8776, 8766, 350125, 350100, '永泰县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8777, 8766, 350128, 350100, '平潭县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8778, 8766, 350181, 350100, '福清市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8779, 8766, 350182, 350100, '长乐市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8780, 8766, 350183, 350100, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8781, 8765, 350200, 350000, '厦门市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8782, 8781, 350203, 350200, '思明区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8783, 8781, 350205, 350200, '海沧区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8784, 8781, 350206, 350200, '湖里区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8785, 8781, 350211, 350200, '集美区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8786, 8781, 350212, 350200, '同安区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8787, 8781, 350213, 350200, '翔安区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8788, 8781, 350214, 350200, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8789, 8765, 350300, 350000, '莆田市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8790, 8789, 350302, 350300, '城厢区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8791, 8789, 350303, 350300, '涵江区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8792, 8789, 350304, 350300, '荔城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8793, 8789, 350305, 350300, '秀屿区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8794, 8789, 350322, 350300, '仙游县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8795, 8789, 350323, 350300, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8796, 8765, 350400, 350000, '三明市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8797, 8796, 350402, 350400, '梅列区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8798, 8796, 350403, 350400, '三元区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8799, 8796, 350421, 350400, '明溪县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8800, 8796, 350423, 350400, '清流县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8801, 8796, 350424, 350400, '宁化县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8802, 8796, 350425, 350400, '大田县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8803, 8796, 350426, 350400, '尤溪县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8804, 8796, 350427, 350400, '沙县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8805, 8796, 350428, 350400, '将乐县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8806, 8796, 350429, 350400, '泰宁县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8807, 8796, 350430, 350400, '建宁县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8808, 8796, 350481, 350400, '永安市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8809, 8796, 350482, 350400, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8810, 8765, 350500, 350000, '泉州市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8811, 8810, 350502, 350500, '鲤城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8812, 8810, 350503, 350500, '丰泽区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8813, 8810, 350504, 350500, '洛江区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8814, 8810, 350505, 350500, '泉港区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8815, 8810, 350521, 350500, '惠安县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8816, 8810, 350524, 350500, '安溪县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8817, 8810, 350525, 350500, '永春县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8818, 8810, 350526, 350500, '德化县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8819, 8810, 350527, 350500, '金门县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8820, 8810, 350581, 350500, '石狮市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8821, 8810, 350582, 350500, '晋江市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8822, 8810, 350583, 350500, '南安市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8823, 8810, 350584, 350500, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8824, 8765, 350600, 350000, '漳州市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8825, 8824, 350602, 350600, '芗城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8826, 8824, 350603, 350600, '龙文区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8827, 8824, 350622, 350600, '云霄县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8828, 8824, 350623, 350600, '漳浦县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8829, 8824, 350624, 350600, '诏安县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8830, 8824, 350625, 350600, '长泰县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8831, 8824, 350626, 350600, '东山县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8832, 8824, 350627, 350600, '南靖县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8833, 8824, 350628, 350600, '平和县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8834, 8824, 350629, 350600, '华安县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8835, 8824, 350681, 350600, '龙海市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8836, 8824, 350682, 350600, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8837, 8765, 350700, 350000, '南平市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8838, 8837, 350702, 350700, '延平区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8839, 8837, 350721, 350700, '顺昌县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8840, 8837, 350722, 350700, '浦城县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8841, 8837, 350723, 350700, '光泽县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8842, 8837, 350724, 350700, '松溪县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8843, 8837, 350725, 350700, '政和县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8844, 8837, 350781, 350700, '邵武市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8845, 8837, 350782, 350700, '武夷山市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8846, 8837, 350783, 350700, '建瓯市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8847, 8837, 350784, 350700, '建阳市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8848, 8837, 350785, 350700, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8849, 8765, 350800, 350000, '龙岩市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8850, 8849, 350802, 350800, '新罗区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8851, 8849, 350821, 350800, '长汀县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8852, 8849, 350822, 350800, '永定县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8853, 8849, 350823, 350800, '上杭县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8854, 8849, 350824, 350800, '武平县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8855, 8849, 350825, 350800, '连城县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8856, 8849, 350881, 350800, '漳平市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8857, 8849, 350882, 350800, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8858, 8765, 350900, 350000, '宁德市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8859, 8858, 350902, 350900, '蕉城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8860, 8858, 350921, 350900, '霞浦县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8861, 8858, 350922, 350900, '古田县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8862, 8858, 350923, 350900, '屏南县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8863, 8858, 350924, 350900, '寿宁县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8864, 8858, 350925, 350900, '周宁县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8865, 8858, 350926, 350900, '柘荣县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8866, 8858, 350981, 350900, '福安市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8867, 8858, 350982, 350900, '福鼎市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8868, 8858, 350983, 350900, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8869, 7459, 360000, 1, '江西省', 1, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8870, 8869, 360100, 360000, '南昌市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8871, 8870, 360102, 360100, '东湖区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8872, 8870, 360103, 360100, '西湖区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8873, 8870, 360104, 360100, '青云谱区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8874, 8870, 360105, 360100, '湾里区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8875, 8870, 360111, 360100, '青山湖区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8876, 8870, 360121, 360100, '南昌县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8877, 8870, 360122, 360100, '新建县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8878, 8870, 360123, 360100, '安义县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8879, 8870, 360124, 360100, '进贤县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8880, 8870, 360125, 360100, '红谷滩新区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8881, 8870, 360126, 360100, '经济技术开发区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8882, 8870, 360127, 360100, '昌北区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8883, 8870, 360128, 360100, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8884, 8869, 360200, 360000, '景德镇市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8885, 8884, 360202, 360200, '昌江区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8886, 8884, 360203, 360200, '珠山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8887, 8884, 360222, 360200, '浮梁县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8888, 8884, 360281, 360200, '乐平市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8889, 8884, 360282, 360200, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8890, 8869, 360300, 360000, '萍乡市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8891, 8890, 360302, 360300, '安源区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8892, 8890, 360313, 360300, '湘东区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8893, 8890, 360321, 360300, '莲花县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8894, 8890, 360322, 360300, '上栗县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8895, 8890, 360323, 360300, '芦溪县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8896, 8890, 360324, 360300, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8897, 8869, 360400, 360000, '九江市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8898, 8897, 360402, 360400, '庐山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8899, 8897, 360403, 360400, '浔阳区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8900, 8897, 360421, 360400, '九江县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8901, 8897, 360423, 360400, '武宁县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8902, 8897, 360424, 360400, '修水县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8903, 8897, 360425, 360400, '永修县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8904, 8897, 360426, 360400, '德安县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8905, 8897, 360427, 360400, '星子县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8906, 8897, 360428, 360400, '都昌县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8907, 8897, 360429, 360400, '湖口县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8908, 8897, 360430, 360400, '彭泽县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8909, 8897, 360481, 360400, '瑞昌市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8910, 8897, 360482, 360400, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8911, 8869, 360500, 360000, '新余市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8912, 8911, 360502, 360500, '渝水区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8913, 8911, 360521, 360500, '分宜县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8914, 8911, 360522, 360500, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8915, 8869, 360600, 360000, '鹰潭市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8916, 8915, 360602, 360600, '月湖区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8917, 8915, 360622, 360600, '余江县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8918, 8915, 360681, 360600, '贵溪市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8919, 8915, 360682, 360600, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8920, 8869, 360700, 360000, '赣州市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8921, 8920, 360702, 360700, '章贡区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8922, 8920, 360721, 360700, '赣县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8923, 8920, 360722, 360700, '信丰县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8924, 8920, 360723, 360700, '大余县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8925, 8920, 360724, 360700, '上犹县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8926, 8920, 360725, 360700, '崇义县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8927, 8920, 360726, 360700, '安远县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8928, 8920, 360727, 360700, '龙南县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8929, 8920, 360728, 360700, '定南县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8930, 8920, 360729, 360700, '全南县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8931, 8920, 360730, 360700, '宁都县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8932, 8920, 360731, 360700, '于都县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8933, 8920, 360732, 360700, '兴国县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8934, 8920, 360733, 360700, '会昌县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8935, 8920, 360734, 360700, '寻乌县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8936, 8920, 360735, 360700, '石城县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8937, 8920, 360751, 360700, '黄金区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8938, 8920, 360781, 360700, '瑞金市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8939, 8920, 360782, 360700, '南康市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8940, 8920, 360783, 360700, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8941, 8869, 360800, 360000, '吉安市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8942, 8941, 360802, 360800, '吉州区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8943, 8941, 360803, 360800, '青原区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8944, 8941, 360821, 360800, '吉安县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8945, 8941, 360822, 360800, '吉水县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8946, 8941, 360823, 360800, '峡江县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8947, 8941, 360824, 360800, '新干县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8948, 8941, 360825, 360800, '永丰县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8949, 8941, 360826, 360800, '泰和县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8950, 8941, 360827, 360800, '遂川县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8951, 8941, 360828, 360800, '万安县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8952, 8941, 360829, 360800, '安福县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8953, 8941, 360830, 360800, '永新县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8954, 8941, 360881, 360800, '井冈山市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8955, 8941, 360882, 360800, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8956, 8869, 360900, 360000, '宜春市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8957, 8956, 360902, 360900, '袁州区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8958, 8956, 360921, 360900, '奉新县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8959, 8956, 360922, 360900, '万载县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8960, 8956, 360923, 360900, '上高县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8961, 8956, 360924, 360900, '宜丰县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8962, 8956, 360925, 360900, '靖安县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8963, 8956, 360926, 360900, '铜鼓县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8964, 8956, 360981, 360900, '丰城市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8965, 8956, 360982, 360900, '樟树市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8966, 8956, 360983, 360900, '高安市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8967, 8956, 360984, 360900, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8968, 8869, 361000, 360000, '抚州市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8969, 8968, 361002, 361000, '临川区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8970, 8968, 361021, 361000, '南城县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8971, 8968, 361022, 361000, '黎川县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8972, 8968, 361023, 361000, '南丰县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8973, 8968, 361024, 361000, '崇仁县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8974, 8968, 361025, 361000, '乐安县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8975, 8968, 361026, 361000, '宜黄县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8976, 8968, 361027, 361000, '金溪县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8977, 8968, 361028, 361000, '资溪县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8978, 8968, 361029, 361000, '东乡县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8979, 8968, 361030, 361000, '广昌县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8980, 8968, 361031, 361000, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8981, 8869, 361100, 360000, '上饶市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8982, 8981, 361102, 361100, '信州区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8983, 8981, 361121, 361100, '上饶县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8984, 8981, 361122, 361100, '广丰县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8985, 8981, 361123, 361100, '玉山县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8986, 8981, 361124, 361100, '铅山县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8987, 8981, 361125, 361100, '横峰县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8988, 8981, 361126, 361100, '弋阳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8989, 8981, 361127, 361100, '余干县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8990, 8981, 361128, 361100, '鄱阳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8991, 8981, 361129, 361100, '万年县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8992, 8981, 361130, 361100, '婺源县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8993, 8981, 361181, 361100, '德兴市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8994, 8981, 361182, 361100, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8995, 7459, 370000, 1, '山东省', 1, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8996, 8995, 370100, 370000, '济南市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8997, 8996, 370102, 370100, '历下区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8998, 8996, 370103, 370100, '市中区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (8999, 8996, 370104, 370100, '槐荫区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9000, 8996, 370105, 370100, '天桥区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9001, 8996, 370112, 370100, '历城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9002, 8996, 370113, 370100, '长清区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9003, 8996, 370124, 370100, '平阴县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9004, 8996, 370125, 370100, '济阳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9005, 8996, 370126, 370100, '商河县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9006, 8996, 370181, 370100, '章丘市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9007, 8996, 370182, 370100, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9008, 8995, 370200, 370000, '青岛市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9009, 9008, 370202, 370200, '市南区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9010, 9008, 370203, 370200, '市北区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9011, 9008, 370205, 370200, '四方区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9012, 9008, 370211, 370200, '黄岛区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9013, 9008, 370212, 370200, '崂山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9014, 9008, 370213, 370200, '李沧区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9015, 9008, 370214, 370200, '城阳区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9016, 9008, 370251, 370200, '开发区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9017, 9008, 370281, 370200, '胶州市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9018, 9008, 370282, 370200, '即墨市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9019, 9008, 370283, 370200, '平度市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9020, 9008, 370284, 370200, '胶南市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9021, 9008, 370285, 370200, '莱西市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9022, 9008, 370286, 370200, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9023, 8995, 370300, 370000, '淄博市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9024, 9023, 370302, 370300, '淄川区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9025, 9023, 370303, 370300, '张店区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9026, 9023, 370304, 370300, '博山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9027, 9023, 370305, 370300, '临淄区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9028, 9023, 370306, 370300, '周村区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9029, 9023, 370321, 370300, '桓台县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9030, 9023, 370322, 370300, '高青县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9031, 9023, 370323, 370300, '沂源县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9032, 9023, 370324, 370300, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9033, 8995, 370400, 370000, '枣庄市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9034, 9033, 370402, 370400, '市中区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9035, 9033, 370403, 370400, '薛城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9036, 9033, 370404, 370400, '峄城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9037, 9033, 370405, 370400, '台儿庄区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9038, 9033, 370406, 370400, '山亭区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9039, 9033, 370481, 370400, '滕州市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9040, 9033, 370482, 370400, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9041, 8995, 370500, 370000, '东营市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9042, 9041, 370502, 370500, '东营区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9043, 9041, 370503, 370500, '河口区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9044, 9041, 370521, 370500, '垦利县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9045, 9041, 370522, 370500, '利津县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9046, 9041, 370523, 370500, '广饶县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9047, 9041, 370589, 370500, '西城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9048, 9041, 370590, 370500, '东城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9049, 9041, 370591, 370500, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9050, 8995, 370600, 370000, '烟台市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9051, 9050, 370602, 370600, '芝罘区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9052, 9050, 370611, 370600, '福山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9053, 9050, 370612, 370600, '牟平区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9054, 9050, 370613, 370600, '莱山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9055, 9050, 370634, 370600, '长岛县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9056, 9050, 370681, 370600, '龙口市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9057, 9050, 370682, 370600, '莱阳市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9058, 9050, 370683, 370600, '莱州市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9059, 9050, 370684, 370600, '蓬莱市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9060, 9050, 370685, 370600, '招远市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9061, 9050, 370686, 370600, '栖霞市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9062, 9050, 370687, 370600, '海阳市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9063, 9050, 370688, 370600, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9064, 8995, 370700, 370000, '潍坊市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9065, 9064, 370702, 370700, '潍城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9066, 9064, 370703, 370700, '寒亭区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9067, 9064, 370704, 370700, '坊子区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9068, 9064, 370705, 370700, '奎文区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9069, 9064, 370724, 370700, '临朐县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9070, 9064, 370725, 370700, '昌乐县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9071, 9064, 370751, 370700, '开发区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9072, 9064, 370781, 370700, '青州市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9073, 9064, 370782, 370700, '诸城市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9074, 9064, 370783, 370700, '寿光市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9075, 9064, 370784, 370700, '安丘市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9076, 9064, 370785, 370700, '高密市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9077, 9064, 370786, 370700, '昌邑市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9078, 9064, 370787, 370700, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9079, 8995, 370800, 370000, '济宁市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9080, 9079, 370802, 370800, '市中区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9081, 9079, 370811, 370800, '任城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9082, 9079, 370826, 370800, '微山县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9083, 9079, 370827, 370800, '鱼台县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9084, 9079, 370828, 370800, '金乡县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9085, 9079, 370829, 370800, '嘉祥县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9086, 9079, 370830, 370800, '汶上县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9087, 9079, 370831, 370800, '泗水县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9088, 9079, 370832, 370800, '梁山县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9089, 9079, 370881, 370800, '曲阜市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9090, 9079, 370882, 370800, '兖州市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9091, 9079, 370883, 370800, '邹城市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9092, 9079, 370884, 370800, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9093, 8995, 370900, 370000, '泰安市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9094, 9093, 370902, 370900, '泰山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9095, 9093, 370903, 370900, '岱岳区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9096, 9093, 370921, 370900, '宁阳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9097, 9093, 370923, 370900, '东平县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9098, 9093, 370982, 370900, '新泰市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9099, 9093, 370983, 370900, '肥城市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9100, 9093, 370984, 370900, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9101, 8995, 371000, 370000, '威海市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9102, 9101, 371002, 371000, '环翠区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9103, 9101, 371081, 371000, '文登市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9104, 9101, 371082, 371000, '荣成市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9105, 9101, 371083, 371000, '乳山市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9106, 9101, 371084, 371000, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9107, 8995, 371100, 370000, '日照市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9108, 9107, 371102, 371100, '东港区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9109, 9107, 371103, 371100, '岚山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9110, 9107, 371121, 371100, '五莲县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9111, 9107, 371122, 371100, '莒县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9112, 9107, 371123, 371100, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9113, 8995, 371200, 370000, '莱芜市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9114, 9113, 371202, 371200, '莱城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9115, 9113, 371203, 371200, '钢城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9116, 9113, 371204, 371200, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9117, 8995, 371300, 370000, '临沂市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9118, 9117, 371302, 371300, '兰山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9119, 9117, 371311, 371300, '罗庄区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9120, 9117, 371312, 371300, '河东区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9121, 9117, 371321, 371300, '沂南县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9122, 9117, 371322, 371300, '郯城县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9123, 9117, 371323, 371300, '沂水县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9124, 9117, 371324, 371300, '苍山县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9125, 9117, 371325, 371300, '费县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9126, 9117, 371326, 371300, '平邑县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9127, 9117, 371327, 371300, '莒南县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9128, 9117, 371328, 371300, '蒙阴县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9129, 9117, 371329, 371300, '临沭县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9130, 9117, 371330, 371300, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9131, 8995, 371400, 370000, '德州市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9132, 9131, 371402, 371400, '德城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9133, 9131, 371421, 371400, '陵县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9134, 9131, 371422, 371400, '宁津县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9135, 9131, 371423, 371400, '庆云县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9136, 9131, 371424, 371400, '临邑县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9137, 9131, 371425, 371400, '齐河县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9138, 9131, 371426, 371400, '平原县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9139, 9131, 371427, 371400, '夏津县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9140, 9131, 371428, 371400, '武城县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9141, 9131, 371451, 371400, '开发区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9142, 9131, 371481, 371400, '乐陵市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9143, 9131, 371482, 371400, '禹城市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9144, 9131, 371483, 371400, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9145, 8995, 371500, 370000, '聊城市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9146, 9145, 371502, 371500, '东昌府区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9147, 9145, 371521, 371500, '阳谷县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9148, 9145, 371522, 371500, '莘县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9149, 9145, 371523, 371500, '茌平县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9150, 9145, 371524, 371500, '东阿县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9151, 9145, 371525, 371500, '冠县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9152, 9145, 371526, 371500, '高唐县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9153, 9145, 371581, 371500, '临清市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9154, 9145, 371582, 371500, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9155, 8995, 371600, 370000, '滨州市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9156, 9155, 371602, 371600, '滨城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9157, 9155, 371621, 371600, '惠民县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9158, 9155, 371622, 371600, '阳信县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9159, 9155, 371623, 371600, '无棣县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9160, 9155, 371624, 371600, '沾化县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9161, 9155, 371625, 371600, '博兴县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9162, 9155, 371626, 371600, '邹平县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9163, 9155, 371627, 371600, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9164, 8995, 371700, 370000, '菏泽市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9165, 9164, 371702, 371700, '牡丹区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9166, 9164, 371721, 371700, '曹县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9167, 9164, 371722, 371700, '单县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9168, 9164, 371723, 371700, '成武县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9169, 9164, 371724, 371700, '巨野县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9170, 9164, 371725, 371700, '郓城县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9171, 9164, 371726, 371700, '鄄城县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9172, 9164, 371727, 371700, '定陶县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9173, 9164, 371728, 371700, '东明县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9174, 9164, 371729, 371700, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9175, 7459, 410000, 1, '河南省', 1, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9176, 9175, 410100, 410000, '郑州市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9177, 9176, 410102, 410100, '中原区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9178, 9176, 410103, 410100, '二七区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9179, 9176, 410104, 410100, '管城回族区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9180, 9176, 410105, 410100, '金水区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9181, 9176, 410106, 410100, '上街区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9182, 9176, 410108, 410100, '惠济区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9183, 9176, 410122, 410100, '中牟县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9184, 9176, 410181, 410100, '巩义市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9185, 9176, 410182, 410100, '荥阳市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9186, 9176, 410183, 410100, '新密市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9187, 9176, 410184, 410100, '新郑市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9188, 9176, 410185, 410100, '登封市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9189, 9176, 410186, 410100, '郑东新区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9190, 9176, 410187, 410100, '高新区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9191, 9176, 410188, 410100, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9192, 9175, 410200, 410000, '开封市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9193, 9192, 410202, 410200, '龙亭区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9194, 9192, 410203, 410200, '顺河回族区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9195, 9192, 410204, 410200, '鼓楼区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9196, 9192, 410205, 410200, '禹王台区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9197, 9192, 410211, 410200, '金明区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9198, 9192, 410221, 410200, '杞县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9199, 9192, 410222, 410200, '通许县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9200, 9192, 410223, 410200, '尉氏县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9201, 9192, 410224, 410200, '开封县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9202, 9192, 410225, 410200, '兰考县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9203, 9192, 410226, 410200, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9204, 9175, 410300, 410000, '洛阳市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9205, 9204, 410302, 410300, '老城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9206, 9204, 410303, 410300, '西工区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9207, 9204, 410304, 410300, '廛河回族区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9208, 9204, 410305, 410300, '涧西区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9209, 9204, 410306, 410300, '吉利区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9210, 9204, 410307, 410300, '洛龙区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9211, 9204, 410322, 410300, '孟津县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9212, 9204, 410323, 410300, '新安县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9213, 9204, 410324, 410300, '栾川县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9214, 9204, 410325, 410300, '嵩县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9215, 9204, 410326, 410300, '汝阳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9216, 9204, 410327, 410300, '宜阳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9217, 9204, 410328, 410300, '洛宁县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9218, 9204, 410329, 410300, '伊川县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9219, 9204, 410381, 410300, '偃师市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9220, 9175, 410400, 410000, '平顶山市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9221, 9220, 410402, 410400, '新华区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9222, 9220, 410403, 410400, '卫东区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9223, 9220, 410404, 410400, '石龙区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9224, 9220, 410411, 410400, '湛河区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9225, 9220, 410421, 410400, '宝丰县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9226, 9220, 410422, 410400, '叶县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9227, 9220, 410423, 410400, '鲁山县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9228, 9220, 410425, 410400, '郏县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9229, 9220, 410481, 410400, '舞钢市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9230, 9220, 410482, 410400, '汝州市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9231, 9220, 410483, 410400, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9232, 9175, 410500, 410000, '安阳市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9233, 9232, 410502, 410500, '文峰区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9234, 9232, 410503, 410500, '北关区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9235, 9232, 410505, 410500, '殷都区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9236, 9232, 410506, 410500, '龙安区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9237, 9232, 410522, 410500, '安阳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9238, 9232, 410523, 410500, '汤阴县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9239, 9232, 410526, 410500, '滑县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9240, 9232, 410527, 410500, '内黄县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9241, 9232, 410581, 410500, '林州市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9242, 9232, 410582, 410500, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9243, 9175, 410600, 410000, '鹤壁市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9244, 9243, 410602, 410600, '鹤山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9245, 9243, 410603, 410600, '山城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9246, 9243, 410611, 410600, '淇滨区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9247, 9243, 410621, 410600, '浚县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9248, 9243, 410622, 410600, '淇县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9249, 9243, 410623, 410600, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9250, 9175, 410700, 410000, '新乡市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9251, 9250, 410702, 410700, '红旗区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9252, 9250, 410703, 410700, '卫滨区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9253, 9250, 410704, 410700, '凤泉区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9254, 9250, 410711, 410700, '牧野区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9255, 9250, 410721, 410700, '新乡县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9256, 9250, 410724, 410700, '获嘉县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9257, 9250, 410725, 410700, '原阳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9258, 9250, 410726, 410700, '延津县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9259, 9250, 410727, 410700, '封丘县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9260, 9250, 410728, 410700, '长垣县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9261, 9250, 410781, 410700, '卫辉市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9262, 9250, 410782, 410700, '辉县市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9263, 9250, 410783, 410700, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9264, 9175, 410800, 410000, '焦作市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9265, 9264, 410802, 410800, '解放区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9266, 9264, 410803, 410800, '中站区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9267, 9264, 410804, 410800, '马村区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9268, 9264, 410811, 410800, '山阳区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9269, 9264, 410821, 410800, '修武县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9270, 9264, 410822, 410800, '博爱县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9271, 9264, 410823, 410800, '武陟县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9272, 9264, 410825, 410800, '温县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9273, 9175, 410881, 410000, '济源市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9274, 9264, 410882, 410800, '沁阳市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9275, 9264, 410883, 410800, '孟州市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9276, 9264, 410884, 410800, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9277, 9175, 410900, 410000, '濮阳市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9278, 9277, 410902, 410900, '华龙区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9279, 9277, 410922, 410900, '清丰县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9280, 9277, 410923, 410900, '南乐县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9281, 9277, 410926, 410900, '范县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9282, 9277, 410927, 410900, '台前县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9283, 9277, 410928, 410900, '濮阳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9284, 9277, 410929, 410900, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9285, 9175, 411000, 410000, '许昌市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9286, 9285, 411002, 411000, '魏都区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9287, 9285, 411023, 411000, '许昌县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9288, 9285, 411024, 411000, '鄢陵县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9289, 9285, 411025, 411000, '襄城县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9290, 9285, 411081, 411000, '禹州市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9291, 9285, 411082, 411000, '长葛市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9292, 9285, 411083, 411000, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9293, 9175, 411100, 410000, '漯河市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9294, 9293, 411102, 411100, '源汇区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9295, 9293, 411103, 411100, '郾城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9296, 9293, 411104, 411100, '召陵区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9297, 9293, 411121, 411100, '舞阳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9298, 9293, 411122, 411100, '临颍县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9299, 9293, 411123, 411100, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9300, 9175, 411200, 410000, '三门峡市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9301, 9300, 411202, 411200, '湖滨区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9302, 9300, 411221, 411200, '渑池县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9303, 9300, 411222, 411200, '陕县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9304, 9300, 411224, 411200, '卢氏县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9305, 9300, 411281, 411200, '义马市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9306, 9300, 411282, 411200, '灵宝市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9307, 9300, 411283, 411200, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9308, 9175, 411300, 410000, '南阳市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9309, 9308, 411302, 411300, '宛城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9310, 9308, 411303, 411300, '卧龙区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9311, 9308, 411321, 411300, '南召县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9312, 9308, 411322, 411300, '方城县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9313, 9308, 411323, 411300, '西峡县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9314, 9308, 411324, 411300, '镇平县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9315, 9308, 411325, 411300, '内乡县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9316, 9308, 411326, 411300, '淅川县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9317, 9308, 411327, 411300, '社旗县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9318, 9308, 411328, 411300, '唐河县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9319, 9308, 411329, 411300, '新野县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9320, 9308, 411330, 411300, '桐柏县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9321, 9308, 411381, 411300, '邓州市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9322, 9308, 411382, 411300, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9323, 9175, 411400, 410000, '商丘市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9324, 9323, 411402, 411400, '梁园区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9325, 9323, 411403, 411400, '睢阳区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9326, 9323, 411421, 411400, '民权县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9327, 9323, 411422, 411400, '睢县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9328, 9323, 411423, 411400, '宁陵县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9329, 9323, 411424, 411400, '柘城县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9330, 9323, 411425, 411400, '虞城县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9331, 9323, 411426, 411400, '夏邑县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9332, 9323, 411481, 411400, '永城市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9333, 9323, 411482, 411400, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9334, 9175, 411500, 410000, '信阳市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9335, 9334, 411502, 411500, '浉河区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9336, 9334, 411503, 411500, '平桥区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9337, 9334, 411521, 411500, '罗山县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9338, 9334, 411522, 411500, '光山县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9339, 9334, 411523, 411500, '新县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9340, 9334, 411524, 411500, '商城县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9341, 9334, 411525, 411500, '固始县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9342, 9334, 411526, 411500, '潢川县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9343, 9334, 411527, 411500, '淮滨县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9344, 9334, 411528, 411500, '息县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9345, 9334, 411529, 411500, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9346, 9175, 411600, 410000, '周口市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9347, 9346, 411602, 411600, '川汇区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9348, 9346, 411621, 411600, '扶沟县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9349, 9346, 411622, 411600, '西华县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9350, 9346, 411623, 411600, '商水县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9351, 9346, 411624, 411600, '沈丘县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9352, 9346, 411625, 411600, '郸城县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9353, 9346, 411626, 411600, '淮阳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9354, 9346, 411627, 411600, '太康县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9355, 9346, 411628, 411600, '鹿邑县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9356, 9346, 411681, 411600, '项城市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9357, 9346, 411682, 411600, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9358, 9175, 411700, 410000, '驻马店市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9359, 9358, 411702, 411700, '驿城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9360, 9358, 411721, 411700, '西平县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9361, 9358, 411722, 411700, '上蔡县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9362, 9358, 411723, 411700, '平舆县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9363, 9358, 411724, 411700, '正阳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9364, 9358, 411725, 411700, '确山县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9365, 9358, 411726, 411700, '泌阳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9366, 9358, 411727, 411700, '汝南县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9367, 9358, 411728, 411700, '遂平县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9368, 9358, 411729, 411700, '新蔡县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9369, 9358, 411730, 411700, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9370, 7459, 420000, 1, '湖北省', 1, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9371, 9370, 420100, 420000, '武汉市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9372, 9371, 420102, 420100, '江岸区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9373, 9371, 420103, 420100, '江汉区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9374, 9371, 420104, 420100, '硚口区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9375, 9371, 420105, 420100, '汉阳区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9376, 9371, 420106, 420100, '武昌区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9377, 9371, 420107, 420100, '青山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9378, 9371, 420111, 420100, '洪山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9379, 9371, 420112, 420100, '东西湖区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9380, 9371, 420113, 420100, '汉南区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9381, 9371, 420114, 420100, '蔡甸区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9382, 9371, 420115, 420100, '江夏区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9383, 9371, 420116, 420100, '黄陂区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9384, 9371, 420117, 420100, '新洲区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9385, 9371, 420118, 420100, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9386, 9370, 420200, 420000, '黄石市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9387, 9386, 420202, 420200, '黄石港区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9388, 9386, 420203, 420200, '西塞山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9389, 9386, 420204, 420200, '下陆区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9390, 9386, 420205, 420200, '铁山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9391, 9386, 420222, 420200, '阳新县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9392, 9386, 420281, 420200, '大冶市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9393, 9386, 420282, 420200, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9394, 9370, 420300, 420000, '十堰市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9395, 9394, 420302, 420300, '茅箭区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9396, 9394, 420303, 420300, '张湾区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9397, 9394, 420321, 420300, '郧县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9398, 9394, 420322, 420300, '郧西县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9399, 9394, 420323, 420300, '竹山县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9400, 9394, 420324, 420300, '竹溪县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9401, 9394, 420325, 420300, '房县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9402, 9394, 420381, 420300, '丹江口市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9403, 9394, 420382, 420300, '城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9404, 9394, 420383, 420300, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9405, 9370, 420500, 420000, '宜昌市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9406, 9405, 420502, 420500, '西陵区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9407, 9405, 420503, 420500, '伍家岗区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9408, 9405, 420504, 420500, '点军区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9409, 9405, 420505, 420500, '猇亭区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9410, 9405, 420506, 420500, '夷陵区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9411, 9405, 420525, 420500, '远安县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9412, 9405, 420526, 420500, '兴山县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9413, 9405, 420527, 420500, '秭归县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9414, 9405, 420528, 420500, '长阳土家族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9415, 9405, 420529, 420500, '五峰土家族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9416, 9405, 420551, 420500, '葛洲坝区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9417, 9405, 420552, 420500, '开发区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9418, 9405, 420581, 420500, '宜都市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9419, 9405, 420582, 420500, '当阳市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9420, 9405, 420583, 420500, '枝江市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9421, 9405, 420584, 420500, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9422, 9370, 420600, 420000, '襄阳市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9423, 9422, 420602, 420600, '襄城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9424, 9422, 420606, 420600, '樊城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9425, 9422, 420607, 420600, '襄州区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9426, 9422, 420624, 420600, '南漳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9427, 9422, 420625, 420600, '谷城县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9428, 9422, 420626, 420600, '保康县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9429, 9422, 420682, 420600, '老河口市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9430, 9422, 420683, 420600, '枣阳市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9431, 9422, 420684, 420600, '宜城市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9432, 9422, 420685, 420600, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9433, 9370, 420700, 420000, '鄂州市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9434, 9433, 420702, 420700, '梁子湖区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9435, 9433, 420703, 420700, '华容区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9436, 9433, 420704, 420700, '鄂城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9437, 9433, 420705, 420700, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9438, 9370, 420800, 420000, '荆门市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9439, 9438, 420802, 420800, '东宝区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9440, 9438, 420804, 420800, '掇刀区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9441, 9438, 420821, 420800, '京山县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9442, 9438, 420822, 420800, '沙洋县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9443, 9438, 420881, 420800, '钟祥市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9444, 9438, 420882, 420800, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9445, 9370, 420900, 420000, '孝感市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9446, 9445, 420902, 420900, '孝南区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9447, 9445, 420921, 420900, '孝昌县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9448, 9445, 420922, 420900, '大悟县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9449, 9445, 420923, 420900, '云梦县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9450, 9445, 420981, 420900, '应城市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9451, 9445, 420982, 420900, '安陆市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9452, 9445, 420984, 420900, '汉川市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9453, 9445, 420985, 420900, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9454, 9370, 421000, 420000, '荆州市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9455, 9454, 421002, 421000, '沙市区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9456, 9454, 421003, 421000, '荆州区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9457, 9454, 421022, 421000, '公安县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9458, 9454, 421023, 421000, '监利县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9459, 9454, 421024, 421000, '江陵县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9460, 9454, 421081, 421000, '石首市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9461, 9454, 421083, 421000, '洪湖市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9462, 9454, 421087, 421000, '松滋市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9463, 9454, 421088, 421000, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9464, 9370, 421100, 420000, '黄冈市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9465, 9464, 421102, 421100, '黄州区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9466, 9464, 421121, 421100, '团风县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9467, 9464, 421122, 421100, '红安县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9468, 9464, 421123, 421100, '罗田县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9469, 9464, 421124, 421100, '英山县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9470, 9464, 421125, 421100, '浠水县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9471, 9464, 421126, 421100, '蕲春县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9472, 9464, 421127, 421100, '黄梅县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9473, 9464, 421181, 421100, '麻城市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9474, 9464, 421182, 421100, '武穴市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9475, 9464, 421183, 421100, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9476, 9370, 421200, 420000, '咸宁市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9477, 9476, 421202, 421200, '咸安区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9478, 9476, 421221, 421200, '嘉鱼县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9479, 9476, 421222, 421200, '通城县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9480, 9476, 421223, 421200, '崇阳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9481, 9476, 421224, 421200, '通山县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9482, 9476, 421281, 421200, '赤壁市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9483, 9476, 421282, 421200, '温泉城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9484, 9476, 421283, 421200, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9485, 9370, 421300, 420000, '随州市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9486, 9485, 421302, 421300, '曾都区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9487, 9485, 421321, 421300, '随县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9488, 9485, 421381, 421300, '广水市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9489, 9485, 421382, 421300, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9490, 9370, 422800, 420000, '恩施土家族苗族自治州', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9491, 9490, 422801, 422800, '恩施市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9492, 9490, 422802, 422800, '利川市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9493, 9490, 422822, 422800, '建始县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9494, 9490, 422823, 422800, '巴东县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9495, 9490, 422825, 422800, '宣恩县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9496, 9490, 422826, 422800, '咸丰县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9497, 9490, 422827, 422800, '来凤县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9498, 9490, 422828, 422800, '鹤峰县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9499, 9490, 422829, 422800, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9500, 9370, 429004, 420000, '仙桃市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9501, 9370, 429005, 420000, '潜江市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9502, 9370, 429006, 420000, '天门市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9503, 9370, 429021, 420000, '神农架林区', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9504, 7459, 430000, 1, '湖南省', 1, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9505, 9504, 430100, 430000, '长沙市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9506, 9505, 430102, 430100, '芙蓉区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9507, 9505, 430103, 430100, '天心区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9508, 9505, 430104, 430100, '岳麓区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9509, 9505, 430105, 430100, '开福区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9510, 9505, 430111, 430100, '雨花区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9511, 9505, 430121, 430100, '长沙县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9512, 9505, 430122, 430100, '望城县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9513, 9505, 430124, 430100, '宁乡县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9514, 9505, 430181, 430100, '浏阳市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9515, 9505, 430182, 430100, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9516, 9504, 430200, 430000, '株洲市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9517, 9516, 430202, 430200, '荷塘区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9518, 9516, 430203, 430200, '芦淞区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9519, 9516, 430204, 430200, '石峰区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9520, 9516, 430211, 430200, '天元区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9521, 9516, 430221, 430200, '株洲县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9522, 9516, 430223, 430200, '攸县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9523, 9516, 430224, 430200, '茶陵县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9524, 9516, 430225, 430200, '炎陵县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9525, 9516, 430281, 430200, '醴陵市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9526, 9516, 430282, 430200, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9527, 9504, 430300, 430000, '湘潭市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9528, 9527, 430302, 430300, '雨湖区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9529, 9527, 430304, 430300, '岳塘区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9530, 9527, 430321, 430300, '湘潭县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9531, 9527, 430381, 430300, '湘乡市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9532, 9527, 430382, 430300, '韶山市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9533, 9527, 430383, 430300, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9534, 9504, 430400, 430000, '衡阳市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9535, 9534, 430405, 430400, '珠晖区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9536, 9534, 430406, 430400, '雁峰区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9537, 9534, 430407, 430400, '石鼓区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9538, 9534, 430408, 430400, '蒸湘区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9539, 9534, 430412, 430400, '南岳区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9540, 9534, 430421, 430400, '衡阳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9541, 9534, 430422, 430400, '衡南县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9542, 9534, 430423, 430400, '衡山县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9543, 9534, 430424, 430400, '衡东县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9544, 9534, 430426, 430400, '祁东县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9545, 9534, 430481, 430400, '耒阳市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9546, 9534, 430482, 430400, '常宁市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9547, 9534, 430483, 430400, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9548, 9504, 430500, 430000, '邵阳市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9549, 9548, 430502, 430500, '双清区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9550, 9548, 430503, 430500, '大祥区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9551, 9548, 430511, 430500, '北塔区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9552, 9548, 430521, 430500, '邵东县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9553, 9548, 430522, 430500, '新邵县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9554, 9548, 430523, 430500, '邵阳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9555, 9548, 430524, 430500, '隆回县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9556, 9548, 430525, 430500, '洞口县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9557, 9548, 430527, 430500, '绥宁县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9558, 9548, 430528, 430500, '新宁县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9559, 9548, 430529, 430500, '城步苗族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9560, 9548, 430581, 430500, '武冈市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9561, 9548, 430582, 430500, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9562, 9504, 430600, 430000, '岳阳市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9563, 9562, 430602, 430600, '岳阳楼区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9564, 9562, 430603, 430600, '云溪区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9565, 9562, 430611, 430600, '君山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9566, 9562, 430621, 430600, '岳阳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9567, 9562, 430623, 430600, '华容县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9568, 9562, 430624, 430600, '湘阴县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9569, 9562, 430626, 430600, '平江县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9570, 9562, 430681, 430600, '汨罗市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9571, 9562, 430682, 430600, '临湘市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9572, 9562, 430683, 430600, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9573, 9504, 430700, 430000, '常德市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9574, 9573, 430702, 430700, '武陵区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9575, 9573, 430703, 430700, '鼎城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9576, 9573, 430721, 430700, '安乡县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9577, 9573, 430722, 430700, '汉寿县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9578, 9573, 430723, 430700, '澧县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9579, 9573, 430724, 430700, '临澧县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9580, 9573, 430725, 430700, '桃源县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9581, 9573, 430726, 430700, '石门县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9582, 9573, 430781, 430700, '津市市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9583, 9573, 430782, 430700, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9584, 9504, 430800, 430000, '张家界市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9585, 9584, 430802, 430800, '永定区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9586, 9584, 430811, 430800, '武陵源区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9587, 9584, 430821, 430800, '慈利县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9588, 9584, 430822, 430800, '桑植县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9589, 9584, 430823, 430800, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9590, 9504, 430900, 430000, '益阳市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9591, 9590, 430902, 430900, '资阳区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9592, 9590, 430903, 430900, '赫山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9593, 9590, 430921, 430900, '南县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9594, 9590, 430922, 430900, '桃江县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9595, 9590, 430923, 430900, '安化县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9596, 9590, 430981, 430900, '沅江市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9597, 9590, 430982, 430900, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9598, 9504, 431000, 430000, '郴州市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9599, 9598, 431002, 431000, '北湖区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9600, 9598, 431003, 431000, '苏仙区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9601, 9598, 431021, 431000, '桂阳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9602, 9598, 431022, 431000, '宜章县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9603, 9598, 431023, 431000, '永兴县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9604, 9598, 431024, 431000, '嘉禾县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9605, 9598, 431025, 431000, '临武县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9606, 9598, 431026, 431000, '汝城县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9607, 9598, 431027, 431000, '桂东县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9608, 9598, 431028, 431000, '安仁县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9609, 9598, 431081, 431000, '资兴市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9610, 9598, 431082, 431000, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9611, 9504, 431100, 430000, '永州市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9612, 9611, 431102, 431100, '零陵区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9613, 9611, 431103, 431100, '冷水滩区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9614, 9611, 431121, 431100, '祁阳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9615, 9611, 431122, 431100, '东安县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9616, 9611, 431123, 431100, '双牌县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9617, 9611, 431124, 431100, '道县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9618, 9611, 431125, 431100, '江永县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9619, 9611, 431126, 431100, '宁远县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9620, 9611, 431127, 431100, '蓝山县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9621, 9611, 431128, 431100, '新田县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9622, 9611, 431129, 431100, '江华瑶族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9623, 9611, 431130, 431100, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9624, 9504, 431200, 430000, '怀化市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9625, 9624, 431202, 431200, '鹤城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9626, 9624, 431221, 431200, '中方县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9627, 9624, 431222, 431200, '沅陵县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9628, 9624, 431223, 431200, '辰溪县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9629, 9624, 431224, 431200, '溆浦县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9630, 9624, 431225, 431200, '会同县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9631, 9624, 431226, 431200, '麻阳苗族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9632, 9624, 431227, 431200, '新晃侗族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9633, 9624, 431228, 431200, '芷江侗族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9634, 9624, 431229, 431200, '靖州苗族侗族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9635, 9624, 431230, 431200, '通道侗族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9636, 9624, 431281, 431200, '洪江市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9637, 9624, 431282, 431200, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9638, 9504, 431300, 430000, '娄底市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9639, 9638, 431302, 431300, '娄星区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9640, 9638, 431321, 431300, '双峰县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9641, 9638, 431322, 431300, '新化县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9642, 9638, 431381, 431300, '冷水江市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9643, 9638, 431382, 431300, '涟源市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9644, 9638, 431383, 431300, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9645, 9504, 433100, 430000, '湘西土家族苗族自治州', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9646, 9645, 433101, 433100, '吉首市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9647, 9645, 433122, 433100, '泸溪县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9648, 9645, 433123, 433100, '凤凰县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9649, 9645, 433124, 433100, '花垣县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9650, 9645, 433125, 433100, '保靖县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9651, 9645, 433126, 433100, '古丈县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9652, 9645, 433127, 433100, '永顺县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9653, 9645, 433130, 433100, '龙山县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9654, 9645, 433131, 433100, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9655, 7459, 440000, 1, '广东省', 1, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9656, 9655, 440100, 440000, '广州市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9657, 9656, 440103, 440100, '荔湾区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9658, 9656, 440104, 440100, '越秀区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9659, 9656, 440105, 440100, '海珠区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9660, 9656, 440106, 440100, '天河区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9661, 9656, 440111, 440100, '白云区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9662, 9656, 440112, 440100, '黄埔区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9663, 9656, 440113, 440100, '番禺区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9664, 9656, 440114, 440100, '花都区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9665, 9656, 440115, 440100, '南沙区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9666, 9656, 440116, 440100, '萝岗区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9667, 9656, 440183, 440100, '增城市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9668, 9656, 440184, 440100, '从化市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9669, 9656, 440188, 440100, '东山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9670, 9656, 440189, 440100, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9671, 9655, 440200, 440000, '韶关市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9672, 9671, 440203, 440200, '武江区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9673, 9671, 440204, 440200, '浈江区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9674, 9671, 440205, 440200, '曲江区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9675, 9671, 440222, 440200, '始兴县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9676, 9671, 440224, 440200, '仁化县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9677, 9671, 440229, 440200, '翁源县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9678, 9671, 440232, 440200, '乳源瑶族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9679, 9671, 440233, 440200, '新丰县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9680, 9671, 440281, 440200, '乐昌市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9681, 9671, 440282, 440200, '南雄市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9682, 9671, 440283, 440200, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9683, 9655, 440300, 440000, '深圳市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9684, 9683, 440303, 440300, '罗湖区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9685, 9683, 440304, 440300, '福田区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9686, 9683, 440305, 440300, '南山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9687, 9683, 440306, 440300, '宝安区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9688, 9683, 440307, 440300, '龙岗区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9689, 9683, 440308, 440300, '盐田区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9690, 9683, 440309, 440300, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9691, 9655, 440400, 440000, '珠海市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9692, 9691, 440402, 440400, '香洲区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9693, 9691, 440403, 440400, '斗门区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9694, 9691, 440404, 440400, '金湾区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9695, 9691, 440486, 440400, '金唐区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9696, 9691, 440487, 440400, '南湾区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9697, 9691, 440488, 440400, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9698, 9655, 440500, 440000, '汕头市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9699, 9698, 440507, 440500, '龙湖区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9700, 9698, 440511, 440500, '金平区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9701, 9698, 440512, 440500, '濠江区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9702, 9698, 440513, 440500, '潮阳区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9703, 9698, 440514, 440500, '潮南区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9704, 9698, 440515, 440500, '澄海区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9705, 9698, 440523, 440500, '南澳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9706, 9698, 440524, 440500, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9707, 9655, 440600, 440000, '佛山市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9708, 9707, 440604, 440600, '禅城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9709, 9707, 440605, 440600, '南海区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9710, 9707, 440606, 440600, '顺德区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9711, 9707, 440607, 440600, '三水区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9712, 9707, 440608, 440600, '高明区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9713, 9707, 440609, 440600, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9714, 9655, 440700, 440000, '江门市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9715, 9714, 440703, 440700, '蓬江区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9716, 9714, 440704, 440700, '江海区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9717, 9714, 440705, 440700, '新会区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9718, 9714, 440781, 440700, '台山市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9719, 9714, 440783, 440700, '开平市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9720, 9714, 440784, 440700, '鹤山市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9721, 9714, 440785, 440700, '恩平市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9722, 9714, 440786, 440700, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9723, 9655, 440800, 440000, '湛江市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9724, 9723, 440802, 440800, '赤坎区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9725, 9723, 440803, 440800, '霞山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9726, 9723, 440804, 440800, '坡头区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9727, 9723, 440811, 440800, '麻章区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9728, 9723, 440823, 440800, '遂溪县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9729, 9723, 440825, 440800, '徐闻县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9730, 9723, 440881, 440800, '廉江市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9731, 9723, 440882, 440800, '雷州市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9732, 9723, 440883, 440800, '吴川市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9733, 9723, 440884, 440800, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9734, 9655, 440900, 440000, '茂名市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9735, 9734, 440902, 440900, '茂南区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9736, 9734, 440903, 440900, '茂港区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9737, 9734, 440923, 440900, '电白县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9738, 9734, 440981, 440900, '高州市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9739, 9734, 440982, 440900, '化州市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9740, 9734, 440983, 440900, '信宜市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9741, 9734, 440984, 440900, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9742, 9655, 441200, 440000, '肇庆市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9743, 9742, 441202, 441200, '端州区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9744, 9742, 441203, 441200, '鼎湖区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9745, 9742, 441223, 441200, '广宁县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9746, 9742, 441224, 441200, '怀集县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9747, 9742, 441225, 441200, '封开县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9748, 9742, 441226, 441200, '德庆县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9749, 9742, 441283, 441200, '高要市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9750, 9742, 441284, 441200, '四会市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9751, 9742, 441285, 441200, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9752, 9655, 441300, 440000, '惠州市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9753, 9752, 441302, 441300, '惠城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9754, 9752, 441303, 441300, '惠阳区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9755, 9752, 441322, 441300, '博罗县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9756, 9752, 441323, 441300, '惠东县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9757, 9752, 441324, 441300, '龙门县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9758, 9752, 441325, 441300, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9759, 9655, 441400, 440000, '梅州市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9760, 9759, 441402, 441400, '梅江区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9761, 9759, 441421, 441400, '梅县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9762, 9759, 441422, 441400, '大埔县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9763, 9759, 441423, 441400, '丰顺县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9764, 9759, 441424, 441400, '五华县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9765, 9759, 441426, 441400, '平远县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9766, 9759, 441427, 441400, '蕉岭县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9767, 9759, 441481, 441400, '兴宁市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9768, 9759, 441482, 441400, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9769, 9655, 441500, 440000, '汕尾市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9770, 9769, 441502, 441500, '城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9771, 9769, 441521, 441500, '海丰县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9772, 9769, 441523, 441500, '陆河县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9773, 9769, 441581, 441500, '陆丰市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9774, 9769, 441582, 441500, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9775, 9655, 441600, 440000, '河源市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9776, 9775, 441602, 441600, '源城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9777, 9775, 441621, 441600, '紫金县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9778, 9775, 441622, 441600, '龙川县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9779, 9775, 441623, 441600, '连平县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9780, 9775, 441624, 441600, '和平县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9781, 9775, 441625, 441600, '东源县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9782, 9775, 441626, 441600, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9783, 9655, 441700, 440000, '阳江市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9784, 9783, 441702, 441700, '江城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9785, 9783, 441721, 441700, '阳西县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9786, 9783, 441723, 441700, '阳东县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9787, 9783, 441781, 441700, '阳春市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9788, 9783, 441782, 441700, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9789, 9655, 441800, 440000, '清远市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9790, 9789, 441802, 441800, '清城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9791, 9789, 441821, 441800, '佛冈县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9792, 9789, 441823, 441800, '阳山县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9793, 9789, 441825, 441800, '连山壮族瑶族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9794, 9789, 441826, 441800, '连南瑶族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9795, 9789, 441827, 441800, '清新县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9796, 9789, 441881, 441800, '英德市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9797, 9789, 441882, 441800, '连州市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9798, 9789, 441883, 441800, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9799, 9655, 441900, 440000, '东莞市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9800, 9655, 442000, 440000, '中山市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9801, 9655, 445100, 440000, '潮州市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9802, 9801, 445102, 445100, '湘桥区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9803, 9801, 445121, 445100, '潮安县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9804, 9801, 445122, 445100, '饶平县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9805, 9801, 445185, 445100, '枫溪区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9806, 9801, 445186, 445100, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9807, 9655, 445200, 440000, '揭阳市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9808, 9807, 445202, 445200, '榕城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9809, 9807, 445221, 445200, '揭东县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9810, 9807, 445222, 445200, '揭西县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9811, 9807, 445224, 445200, '惠来县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9812, 9807, 445281, 445200, '普宁市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9813, 9807, 445284, 445200, '东山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9814, 9807, 445285, 445200, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9815, 9655, 445300, 440000, '云浮市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9816, 9815, 445302, 445300, '云城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9817, 9815, 445321, 445300, '新兴县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9818, 9815, 445322, 445300, '郁南县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9819, 9815, 445323, 445300, '云安县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9820, 9815, 445381, 445300, '罗定市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9821, 9815, 445382, 445300, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9822, 7459, 450000, 1, '广西壮族自治区', 1, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9823, 9822, 450100, 450000, '南宁市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9824, 9823, 450102, 450100, '兴宁区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9825, 9823, 450103, 450100, '青秀区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9826, 9823, 450105, 450100, '江南区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9827, 9823, 450107, 450100, '西乡塘区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9828, 9823, 450108, 450100, '良庆区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9829, 9823, 450109, 450100, '邕宁区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9830, 9823, 450122, 450100, '武鸣县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9831, 9823, 450123, 450100, '隆安县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9832, 9823, 450124, 450100, '马山县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9833, 9823, 450125, 450100, '上林县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9834, 9823, 450126, 450100, '宾阳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9835, 9823, 450127, 450100, '横县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9836, 9823, 450128, 450100, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9837, 9822, 450200, 450000, '柳州市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9838, 9837, 450202, 450200, '城中区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9839, 9837, 450203, 450200, '鱼峰区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9840, 9837, 450204, 450200, '柳南区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9841, 9837, 450205, 450200, '柳北区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9842, 9837, 450221, 450200, '柳江县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9843, 9837, 450222, 450200, '柳城县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9844, 9837, 450223, 450200, '鹿寨县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9845, 9837, 450224, 450200, '融安县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9846, 9837, 450225, 450200, '融水苗族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9847, 9837, 450226, 450200, '三江侗族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9848, 9837, 450227, 450200, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9849, 9822, 450300, 450000, '桂林市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9850, 9849, 450302, 450300, '秀峰区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9851, 9849, 450303, 450300, '叠彩区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9852, 9849, 450304, 450300, '象山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9853, 9849, 450305, 450300, '七星区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9854, 9849, 450311, 450300, '雁山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9855, 9849, 450321, 450300, '阳朔县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9856, 9849, 450322, 450300, '临桂县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9857, 9849, 450323, 450300, '灵川县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9858, 9849, 450324, 450300, '全州县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9859, 9849, 450325, 450300, '兴安县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9860, 9849, 450326, 450300, '永福县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9861, 9849, 450327, 450300, '灌阳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9862, 9849, 450328, 450300, '龙胜各族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9863, 9849, 450329, 450300, '资源县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9864, 9849, 450330, 450300, '平乐县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9865, 9849, 450331, 450300, '荔浦县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9866, 9849, 450332, 450300, '恭城瑶族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9867, 9849, 450333, 450300, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9868, 9822, 450400, 450000, '梧州市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9869, 9868, 450403, 450400, '万秀区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9870, 9868, 450404, 450400, '蝶山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9871, 9868, 450405, 450400, '长洲区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9872, 9868, 450421, 450400, '苍梧县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9873, 9868, 450422, 450400, '藤县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9874, 9868, 450423, 450400, '蒙山县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9875, 9868, 450481, 450400, '岑溪市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9876, 9868, 450482, 450400, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9877, 9822, 450500, 450000, '北海市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9878, 9877, 450502, 450500, '海城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9879, 9877, 450503, 450500, '银海区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9880, 9877, 450512, 450500, '铁山港区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9881, 9877, 450521, 450500, '合浦县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9882, 9877, 450522, 450500, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9883, 9822, 450600, 450000, '防城港市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9884, 9883, 450602, 450600, '港口区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9885, 9883, 450603, 450600, '防城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9886, 9883, 450621, 450600, '上思县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9887, 9883, 450681, 450600, '东兴市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9888, 9883, 450682, 450600, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9889, 9822, 450700, 450000, '钦州市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9890, 9889, 450702, 450700, '钦南区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9891, 9889, 450703, 450700, '钦北区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9892, 9889, 450721, 450700, '灵山县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9893, 9889, 450722, 450700, '浦北县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9894, 9889, 450723, 450700, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9895, 9822, 450800, 450000, '贵港市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9896, 9895, 450802, 450800, '港北区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9897, 9895, 450803, 450800, '港南区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9898, 9895, 450804, 450800, '覃塘区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9899, 9895, 450821, 450800, '平南县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9900, 9895, 450881, 450800, '桂平市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9901, 9895, 450882, 450800, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9902, 9822, 450900, 450000, '玉林市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9903, 9902, 450902, 450900, '玉州区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9904, 9902, 450921, 450900, '容县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9905, 9902, 450922, 450900, '陆川县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9906, 9902, 450923, 450900, '博白县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9907, 9902, 450924, 450900, '兴业县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9908, 9902, 450981, 450900, '北流市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9909, 9902, 450982, 450900, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9910, 9822, 451000, 450000, '百色市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9911, 9910, 451002, 451000, '右江区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9912, 9910, 451021, 451000, '田阳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9913, 9910, 451022, 451000, '田东县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9914, 9910, 451023, 451000, '平果县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9915, 9910, 451024, 451000, '德保县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9916, 9910, 451025, 451000, '靖西县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9917, 9910, 451026, 451000, '那坡县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9918, 9910, 451027, 451000, '凌云县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9919, 9910, 451028, 451000, '乐业县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9920, 9910, 451029, 451000, '田林县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9921, 9910, 451030, 451000, '西林县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9922, 9910, 451031, 451000, '隆林各族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9923, 9910, 451032, 451000, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9924, 9822, 451100, 450000, '贺州市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9925, 9924, 451102, 451100, '八步区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9926, 9924, 451121, 451100, '昭平县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9927, 9924, 451122, 451100, '钟山县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9928, 9924, 451123, 451100, '富川瑶族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9929, 9924, 451124, 451100, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9930, 9822, 451200, 450000, '河池市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9931, 9930, 451202, 451200, '金城江区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9932, 9930, 451221, 451200, '南丹县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9933, 9930, 451222, 451200, '天峨县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9934, 9930, 451223, 451200, '凤山县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9935, 9930, 451224, 451200, '东兰县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9936, 9930, 451225, 451200, '罗城仫佬族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9937, 9930, 451226, 451200, '环江毛南族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9938, 9930, 451227, 451200, '巴马瑶族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9939, 9930, 451228, 451200, '都安瑶族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9940, 9930, 451229, 451200, '大化瑶族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9941, 9930, 451281, 451200, '宜州市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9942, 9930, 451282, 451200, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9943, 9822, 451300, 450000, '来宾市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9944, 9943, 451302, 451300, '兴宾区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9945, 9943, 451321, 451300, '忻城县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9946, 9943, 451322, 451300, '象州县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9947, 9943, 451323, 451300, '武宣县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9948, 9943, 451324, 451300, '金秀瑶族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9949, 9943, 451381, 451300, '合山市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9950, 9943, 451382, 451300, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9951, 9822, 451400, 450000, '崇左市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9952, 9951, 451402, 451400, '江州区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9953, 9951, 451421, 451400, '扶绥县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9954, 9951, 451422, 451400, '宁明县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9955, 9951, 451423, 451400, '龙州县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9956, 9951, 451424, 451400, '大新县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9957, 9951, 451425, 451400, '天等县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9958, 9951, 451481, 451400, '凭祥市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9959, 9951, 451482, 451400, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9960, 7459, 460000, 1, '海南省', 1, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9961, 9960, 460100, 460000, '海口市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9962, 9961, 460105, 460100, '秀英区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9963, 9961, 460106, 460100, '龙华区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9964, 9961, 460107, 460100, '琼山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9965, 9961, 460108, 460100, '美兰区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9966, 9961, 460109, 460100, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9967, 9960, 460200, 460000, '三亚市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9968, 9960, 469001, 460000, '五指山市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9969, 9960, 469002, 460000, '琼海市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9970, 9960, 469003, 460000, '儋州市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9971, 9960, 469005, 460000, '文昌市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9972, 9960, 469006, 460000, '万宁市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9973, 9960, 469007, 460000, '东方市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9974, 9960, 469025, 460000, '定安县', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9975, 9960, 469026, 460000, '屯昌县', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9976, 9960, 469027, 460000, '澄迈县', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9977, 9960, 469028, 460000, '临高县', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9978, 9960, 469030, 460000, '白沙黎族自治县', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9979, 9960, 469031, 460000, '昌江黎族自治县', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9980, 9960, 469033, 460000, '乐东黎族自治县', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9981, 9960, 469034, 460000, '陵水黎族自治县', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9982, 9960, 469035, 460000, '保亭黎族苗族自治县', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9983, 9960, 469036, 460000, '琼中黎族苗族自治县', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9984, 9960, 469037, 460000, '西沙群岛', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9985, 9960, 469038, 460000, '南沙群岛', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9986, 9960, 469039, 460000, '中沙群岛的岛礁及其海域', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9987, 9204, 471004, 410300, '高新区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9988, 9204, 471005, 410300, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9989, 7459, 500000, 1, '重庆', 1, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9990, 9989, 500100, 500000, '重庆市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9991, 9990, 500101, 500100, '万州区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9992, 9990, 500102, 500100, '涪陵区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9993, 9990, 500103, 500100, '渝中区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9994, 9990, 500104, 500100, '大渡口区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9995, 9990, 500105, 500100, '江北区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9996, 9990, 500106, 500100, '沙坪坝区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9997, 9990, 500107, 500100, '九龙坡区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9998, 9990, 500108, 500100, '南岸区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (9999, 9990, 500109, 500100, '北碚区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10000, 9990, 500110, 500100, '万盛区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10001, 9990, 500111, 500100, '双桥区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10002, 9990, 500112, 500100, '渝北区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10003, 9990, 500113, 500100, '巴南区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10004, 9990, 500114, 500100, '黔江区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10005, 9990, 500115, 500100, '长寿区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10006, 9990, 500222, 500100, '綦江县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10007, 9990, 500223, 500100, '潼南县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10008, 9990, 500224, 500100, '铜梁县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10009, 9990, 500225, 500100, '大足县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10010, 9990, 500226, 500100, '荣昌县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10011, 9990, 500227, 500100, '璧山县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10012, 9990, 500228, 500100, '梁平县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10013, 9990, 500229, 500100, '城口县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10014, 9990, 500230, 500100, '丰都县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10015, 9990, 500231, 500100, '垫江县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10016, 9990, 500232, 500100, '武隆县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10017, 9990, 500233, 500100, '忠县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10018, 9990, 500234, 500100, '开县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10019, 9990, 500235, 500100, '云阳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10020, 9990, 500236, 500100, '奉节县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10021, 9990, 500237, 500100, '巫山县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10022, 9990, 500238, 500100, '巫溪县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10023, 9990, 500240, 500100, '石柱土家族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10024, 9990, 500241, 500100, '秀山土家族苗族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10025, 9990, 500242, 500100, '酉阳土家族苗族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10026, 9990, 500243, 500100, '彭水苗族土家族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10027, 9990, 500381, 500100, '江津区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10028, 9990, 500382, 500100, '合川区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10029, 9990, 500383, 500100, '永川区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10030, 9990, 500384, 500100, '南川区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10031, 9990, 500385, 500100, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10032, 7459, 510000, 1, '四川省', 1, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10033, 10032, 510100, 510000, '成都市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10034, 10033, 510104, 510100, '锦江区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10035, 10033, 510105, 510100, '青羊区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10036, 10033, 510106, 510100, '金牛区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10037, 10033, 510107, 510100, '武侯区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10038, 10033, 510108, 510100, '成华区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10039, 10033, 510112, 510100, '龙泉驿区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10040, 10033, 510113, 510100, '青白江区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10041, 10033, 510114, 510100, '新都区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10042, 10033, 510115, 510100, '温江区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10043, 10033, 510121, 510100, '金堂县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10044, 10033, 510122, 510100, '双流县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10045, 10033, 510124, 510100, '郫县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10046, 10033, 510129, 510100, '大邑县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10047, 10033, 510131, 510100, '蒲江县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10048, 10033, 510132, 510100, '新津县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10049, 10033, 510181, 510100, '都江堰市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10050, 10033, 510182, 510100, '彭州市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10051, 10033, 510183, 510100, '邛崃市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10052, 10033, 510184, 510100, '崇州市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10053, 10033, 510185, 510100, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10054, 10032, 510300, 510000, '自贡市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10055, 10054, 510302, 510300, '自流井区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10056, 10054, 510303, 510300, '贡井区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10057, 10054, 510304, 510300, '大安区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10058, 10054, 510311, 510300, '沿滩区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10059, 10054, 510321, 510300, '荣县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10060, 10054, 510322, 510300, '富顺县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10061, 10054, 510323, 510300, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10062, 10032, 510400, 510000, '攀枝花市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10063, 10062, 510402, 510400, '东区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10064, 10062, 510403, 510400, '西区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10065, 10062, 510411, 510400, '仁和区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10066, 10062, 510421, 510400, '米易县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10067, 10062, 510422, 510400, '盐边县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10068, 10062, 510423, 510400, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10069, 10032, 510500, 510000, '泸州市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10070, 10069, 510502, 510500, '江阳区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10071, 10069, 510503, 510500, '纳溪区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10072, 10069, 510504, 510500, '龙马潭区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10073, 10069, 510521, 510500, '泸县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10074, 10069, 510522, 510500, '合江县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10075, 10069, 510524, 510500, '叙永县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10076, 10069, 510525, 510500, '古蔺县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10077, 10069, 510526, 510500, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10078, 10032, 510600, 510000, '德阳市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10079, 10078, 510603, 510600, '旌阳区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10080, 10078, 510623, 510600, '中江县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10081, 10078, 510626, 510600, '罗江县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10082, 10078, 510681, 510600, '广汉市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10083, 10078, 510682, 510600, '什邡市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10084, 10078, 510683, 510600, '绵竹市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10085, 10078, 510684, 510600, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10086, 10032, 510700, 510000, '绵阳市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10087, 10086, 510703, 510700, '涪城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10088, 10086, 510704, 510700, '游仙区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10089, 10086, 510722, 510700, '三台县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10090, 10086, 510723, 510700, '盐亭县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10091, 10086, 510724, 510700, '安县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10092, 10086, 510725, 510700, '梓潼县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10093, 10086, 510726, 510700, '北川羌族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10094, 10086, 510727, 510700, '平武县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10095, 10086, 510751, 510700, '高新区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10096, 10086, 510781, 510700, '江油市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10097, 10086, 510782, 510700, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10098, 10032, 510800, 510000, '广元市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10099, 10098, 510802, 510800, '利州区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10100, 10098, 510811, 510800, '元坝区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10101, 10098, 510812, 510800, '朝天区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10102, 10098, 510821, 510800, '旺苍县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10103, 10098, 510822, 510800, '青川县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10104, 10098, 510823, 510800, '剑阁县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10105, 10098, 510824, 510800, '苍溪县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10106, 10098, 510825, 510800, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10107, 10032, 510900, 510000, '遂宁市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10108, 10107, 510903, 510900, '船山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10109, 10107, 510904, 510900, '安居区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10110, 10107, 510921, 510900, '蓬溪县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10111, 10107, 510922, 510900, '射洪县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10112, 10107, 510923, 510900, '大英县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10113, 10107, 510924, 510900, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10114, 10032, 511000, 510000, '内江市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10115, 10114, 511002, 511000, '市中区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10116, 10114, 511011, 511000, '东兴区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10117, 10114, 511024, 511000, '威远县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10118, 10114, 511025, 511000, '资中县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10119, 10114, 511028, 511000, '隆昌县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10120, 10114, 511029, 511000, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10121, 10032, 511100, 510000, '乐山市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10122, 10121, 511102, 511100, '市中区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10123, 10121, 511111, 511100, '沙湾区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10124, 10121, 511112, 511100, '五通桥区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10125, 10121, 511113, 511100, '金口河区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10126, 10121, 511123, 511100, '犍为县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10127, 10121, 511124, 511100, '井研县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10128, 10121, 511126, 511100, '夹江县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10129, 10121, 511129, 511100, '沐川县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10130, 10121, 511132, 511100, '峨边彝族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10131, 10121, 511133, 511100, '马边彝族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10132, 10121, 511181, 511100, '峨眉山市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10133, 10121, 511182, 511100, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10134, 10032, 511300, 510000, '南充市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10135, 10134, 511302, 511300, '顺庆区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10136, 10134, 511303, 511300, '高坪区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10137, 10134, 511304, 511300, '嘉陵区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10138, 10134, 511321, 511300, '南部县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10139, 10134, 511322, 511300, '营山县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10140, 10134, 511323, 511300, '蓬安县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10141, 10134, 511324, 511300, '仪陇县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10142, 10134, 511325, 511300, '西充县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10143, 10134, 511381, 511300, '阆中市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10144, 10134, 511382, 511300, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10145, 10032, 511400, 510000, '眉山市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10146, 10145, 511402, 511400, '东坡区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10147, 10145, 511421, 511400, '仁寿县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10148, 10145, 511422, 511400, '彭山县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10149, 10145, 511423, 511400, '洪雅县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10150, 10145, 511424, 511400, '丹棱县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10151, 10145, 511425, 511400, '青神县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10152, 10145, 511426, 511400, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10153, 10032, 511500, 510000, '宜宾市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10154, 10153, 511502, 511500, '翠屏区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10155, 10153, 511521, 511500, '宜宾县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10156, 10153, 511522, 511500, '南溪县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10157, 10153, 511523, 511500, '江安县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10158, 10153, 511524, 511500, '长宁县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10159, 10153, 511525, 511500, '高县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10160, 10153, 511526, 511500, '珙县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10161, 10153, 511527, 511500, '筠连县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10162, 10153, 511528, 511500, '兴文县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10163, 10153, 511529, 511500, '屏山县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10164, 10153, 511530, 511500, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10165, 10032, 511600, 510000, '广安市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10166, 10165, 511602, 511600, '广安区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10167, 10165, 511621, 511600, '岳池县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10168, 10165, 511622, 511600, '武胜县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10169, 10165, 511623, 511600, '邻水县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10170, 10165, 511681, 511600, '华蓥市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10171, 10165, 511682, 511600, '市辖区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10172, 10165, 511683, 511600, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10173, 10032, 511700, 510000, '达州市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10174, 10173, 511702, 511700, '通川区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10175, 10173, 511721, 511700, '达县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10176, 10173, 511722, 511700, '宣汉县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10177, 10173, 511723, 511700, '开江县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10178, 10173, 511724, 511700, '大竹县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10179, 10173, 511725, 511700, '渠县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10180, 10173, 511781, 511700, '万源市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10181, 10173, 511782, 511700, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10182, 10032, 511800, 510000, '雅安市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10183, 10182, 511802, 511800, '雨城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10184, 10182, 511821, 511800, '名山县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10185, 10182, 511822, 511800, '荥经县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10186, 10182, 511823, 511800, '汉源县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10187, 10182, 511824, 511800, '石棉县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10188, 10182, 511825, 511800, '天全县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10189, 10182, 511826, 511800, '芦山县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10190, 10182, 511827, 511800, '宝兴县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10191, 10182, 511828, 511800, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10192, 10032, 511900, 510000, '巴中市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10193, 10192, 511902, 511900, '巴州区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10194, 10192, 511921, 511900, '通江县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10195, 10192, 511922, 511900, '南江县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10196, 10192, 511923, 511900, '平昌县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10197, 10192, 511924, 511900, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10198, 10032, 512000, 510000, '资阳市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10199, 10198, 512002, 512000, '雁江区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10200, 10198, 512021, 512000, '安岳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10201, 10198, 512022, 512000, '乐至县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10202, 10198, 512081, 512000, '简阳市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10203, 10198, 512082, 512000, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10204, 10032, 513200, 510000, '阿坝藏族羌族自治州', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10205, 10204, 513221, 513200, '汶川县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10206, 10204, 513222, 513200, '理县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10207, 10204, 513223, 513200, '茂县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10208, 10204, 513224, 513200, '松潘县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10209, 10204, 513225, 513200, '九寨沟县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10210, 10204, 513226, 513200, '金川县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10211, 10204, 513227, 513200, '小金县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10212, 10204, 513228, 513200, '黑水县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10213, 10204, 513229, 513200, '马尔康县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10214, 10204, 513230, 513200, '壤塘县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10215, 10204, 513231, 513200, '阿坝县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10216, 10204, 513232, 513200, '若尔盖县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10217, 10204, 513233, 513200, '红原县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10218, 10204, 513234, 513200, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10219, 10032, 513300, 510000, '甘孜藏族自治州', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10220, 10219, 513321, 513300, '康定县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10221, 10219, 513322, 513300, '泸定县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10222, 10219, 513323, 513300, '丹巴县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10223, 10219, 513324, 513300, '九龙县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10224, 10219, 513325, 513300, '雅江县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10225, 10219, 513326, 513300, '道孚县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10226, 10219, 513327, 513300, '炉霍县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10227, 10219, 513328, 513300, '甘孜县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10228, 10219, 513329, 513300, '新龙县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10229, 10219, 513330, 513300, '德格县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10230, 10219, 513331, 513300, '白玉县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10231, 10219, 513332, 513300, '石渠县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10232, 10219, 513333, 513300, '色达县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10233, 10219, 513334, 513300, '理塘县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10234, 10219, 513335, 513300, '巴塘县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10235, 10219, 513336, 513300, '乡城县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10236, 10219, 513337, 513300, '稻城县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10237, 10219, 513338, 513300, '得荣县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10238, 10219, 513339, 513300, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10239, 10032, 513400, 510000, '凉山彝族自治州', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10240, 10239, 513401, 513400, '西昌市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10241, 10239, 513422, 513400, '木里藏族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10242, 10239, 513423, 513400, '盐源县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10243, 10239, 513424, 513400, '德昌县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10244, 10239, 513425, 513400, '会理县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10245, 10239, 513426, 513400, '会东县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10246, 10239, 513427, 513400, '宁南县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10247, 10239, 513428, 513400, '普格县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10248, 10239, 513429, 513400, '布拖县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10249, 10239, 513430, 513400, '金阳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10250, 10239, 513431, 513400, '昭觉县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10251, 10239, 513432, 513400, '喜德县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10252, 10239, 513433, 513400, '冕宁县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10253, 10239, 513434, 513400, '越西县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10254, 10239, 513435, 513400, '甘洛县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10255, 10239, 513436, 513400, '美姑县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10256, 10239, 513437, 513400, '雷波县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10257, 10239, 513438, 513400, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10258, 7459, 520000, 1, '贵州省', 1, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10259, 10258, 520100, 520000, '贵阳市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10260, 10259, 520102, 520100, '南明区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10261, 10259, 520103, 520100, '云岩区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10262, 10259, 520111, 520100, '花溪区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10263, 10259, 520112, 520100, '乌当区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10264, 10259, 520113, 520100, '白云区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10265, 10259, 520114, 520100, '小河区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10266, 10259, 520121, 520100, '开阳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10267, 10259, 520122, 520100, '息烽县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10268, 10259, 520123, 520100, '修文县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10269, 10259, 520151, 520100, '金阳开发区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10270, 10259, 520181, 520100, '清镇市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10271, 10259, 520182, 520100, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10272, 10258, 520200, 520000, '六盘水市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10273, 10272, 520201, 520200, '钟山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10274, 10272, 520203, 520200, '六枝特区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10275, 10272, 520221, 520200, '水城县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10276, 10272, 520222, 520200, '盘县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10277, 10272, 520223, 520200, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10278, 10258, 520300, 520000, '遵义市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10279, 10278, 520302, 520300, '红花岗区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10280, 10278, 520303, 520300, '汇川区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10281, 10278, 520321, 520300, '遵义县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10282, 10278, 520322, 520300, '桐梓县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10283, 10278, 520323, 520300, '绥阳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10284, 10278, 520324, 520300, '正安县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10285, 10278, 520325, 520300, '道真仡佬族苗族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10286, 10278, 520326, 520300, '务川仡佬族苗族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10287, 10278, 520327, 520300, '凤冈县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10288, 10278, 520328, 520300, '湄潭县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10289, 10278, 520329, 520300, '余庆县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10290, 10278, 520330, 520300, '习水县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10291, 10278, 520381, 520300, '赤水市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10292, 10278, 520382, 520300, '仁怀市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10293, 10278, 520383, 520300, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10294, 10258, 520400, 520000, '安顺市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10295, 10294, 520402, 520400, '西秀区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10296, 10294, 520421, 520400, '平坝县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10297, 10294, 520422, 520400, '普定县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10298, 10294, 520423, 520400, '镇宁布依族苗族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10299, 10294, 520424, 520400, '关岭布依族苗族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10300, 10294, 520425, 520400, '紫云苗族布依族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10301, 10294, 520426, 520400, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10302, 10258, 522200, 520000, '铜仁地区', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10303, 10302, 522201, 522200, '铜仁市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10304, 10302, 522222, 522200, '江口县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10305, 10302, 522223, 522200, '玉屏侗族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10306, 10302, 522224, 522200, '石阡县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10307, 10302, 522225, 522200, '思南县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10308, 10302, 522226, 522200, '印江土家族苗族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10309, 10302, 522227, 522200, '德江县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10310, 10302, 522228, 522200, '沿河土家族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10311, 10302, 522229, 522200, '松桃苗族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10312, 10302, 522230, 522200, '万山特区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10313, 10302, 522231, 522200, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10314, 10258, 522300, 520000, '黔西南布依族苗族自治州', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10315, 10314, 522301, 522300, '兴义市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10316, 10314, 522322, 522300, '兴仁县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10317, 10314, 522323, 522300, '普安县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10318, 10314, 522324, 522300, '晴隆县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10319, 10314, 522325, 522300, '贞丰县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10320, 10314, 522326, 522300, '望谟县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10321, 10314, 522327, 522300, '册亨县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10322, 10314, 522328, 522300, '安龙县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10323, 10314, 522329, 522300, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10324, 10258, 522400, 520000, '毕节地区', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10325, 10324, 522401, 522400, '毕节市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10326, 10324, 522422, 522400, '大方县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10327, 10324, 522423, 522400, '黔西县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10328, 10324, 522424, 522400, '金沙县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10329, 10324, 522425, 522400, '织金县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10330, 10324, 522426, 522400, '纳雍县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10331, 10324, 522427, 522400, '威宁彝族回族苗族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10332, 10324, 522428, 522400, '赫章县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10333, 10324, 522429, 522400, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10334, 10258, 522600, 520000, '黔东南苗族侗族自治州', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10335, 10334, 522601, 522600, '凯里市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10336, 10334, 522622, 522600, '黄平县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10337, 10334, 522623, 522600, '施秉县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10338, 10334, 522624, 522600, '三穗县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10339, 10334, 522625, 522600, '镇远县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10340, 10334, 522626, 522600, '岑巩县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10341, 10334, 522627, 522600, '天柱县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10342, 10334, 522628, 522600, '锦屏县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10343, 10334, 522629, 522600, '剑河县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10344, 10334, 522630, 522600, '台江县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10345, 10334, 522631, 522600, '黎平县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10346, 10334, 522632, 522600, '榕江县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10347, 10334, 522633, 522600, '从江县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10348, 10334, 522634, 522600, '雷山县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10349, 10334, 522635, 522600, '麻江县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10350, 10334, 522636, 522600, '丹寨县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10351, 10334, 522637, 522600, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10352, 10258, 522700, 520000, '黔南布依族苗族自治州', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10353, 10352, 522701, 522700, '都匀市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10354, 10352, 522702, 522700, '福泉市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10355, 10352, 522722, 522700, '荔波县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10356, 10352, 522723, 522700, '贵定县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10357, 10352, 522725, 522700, '瓮安县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10358, 10352, 522726, 522700, '独山县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10359, 10352, 522727, 522700, '平塘县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10360, 10352, 522728, 522700, '罗甸县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10361, 10352, 522729, 522700, '长顺县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10362, 10352, 522730, 522700, '龙里县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10363, 10352, 522731, 522700, '惠水县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10364, 10352, 522732, 522700, '三都水族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10365, 10352, 522733, 522700, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10366, 7459, 530000, 1, '云南省', 1, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10367, 10366, 530100, 530000, '昆明市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10368, 10367, 530102, 530100, '五华区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10369, 10367, 530103, 530100, '盘龙区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10370, 10367, 530111, 530100, '官渡区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10371, 10367, 530112, 530100, '西山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10372, 10367, 530113, 530100, '东川区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10373, 10367, 530121, 530100, '呈贡县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10374, 10367, 530122, 530100, '晋宁县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10375, 10367, 530124, 530100, '富民县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10376, 10367, 530125, 530100, '宜良县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10377, 10367, 530126, 530100, '石林彝族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10378, 10367, 530127, 530100, '嵩明县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10379, 10367, 530128, 530100, '禄劝彝族苗族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10380, 10367, 530129, 530100, '寻甸回族彝族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10381, 10367, 530181, 530100, '安宁市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10382, 10367, 530182, 530100, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10383, 10366, 530300, 530000, '曲靖市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10384, 10383, 530302, 530300, '麒麟区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10385, 10383, 530321, 530300, '马龙县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10386, 10383, 530322, 530300, '陆良县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10387, 10383, 530323, 530300, '师宗县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10388, 10383, 530324, 530300, '罗平县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10389, 10383, 530325, 530300, '富源县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10390, 10383, 530326, 530300, '会泽县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10391, 10383, 530328, 530300, '沾益县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10392, 10383, 530381, 530300, '宣威市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10393, 10383, 530382, 530300, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10394, 10366, 530400, 530000, '玉溪市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10395, 10394, 530402, 530400, '红塔区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10396, 10394, 530421, 530400, '江川县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10397, 10394, 530422, 530400, '澄江县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10398, 10394, 530423, 530400, '通海县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10399, 10394, 530424, 530400, '华宁县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10400, 10394, 530425, 530400, '易门县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10401, 10394, 530426, 530400, '峨山彝族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10402, 10394, 530427, 530400, '新平彝族傣族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10403, 10394, 530428, 530400, '元江哈尼族彝族傣族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10404, 10394, 530429, 530400, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10405, 10366, 530500, 530000, '保山市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10406, 10405, 530502, 530500, '隆阳区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10407, 10405, 530521, 530500, '施甸县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10408, 10405, 530522, 530500, '腾冲县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10409, 10405, 530523, 530500, '龙陵县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10410, 10405, 530524, 530500, '昌宁县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10411, 10405, 530525, 530500, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10412, 10366, 530600, 530000, '昭通市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10413, 10412, 530602, 530600, '昭阳区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10414, 10412, 530621, 530600, '鲁甸县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10415, 10412, 530622, 530600, '巧家县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10416, 10412, 530623, 530600, '盐津县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10417, 10412, 530624, 530600, '大关县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10418, 10412, 530625, 530600, '永善县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10419, 10412, 530626, 530600, '绥江县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10420, 10412, 530627, 530600, '镇雄县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10421, 10412, 530628, 530600, '彝良县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10422, 10412, 530629, 530600, '威信县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10423, 10412, 530630, 530600, '水富县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10424, 10412, 530631, 530600, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10425, 10366, 530700, 530000, '丽江市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10426, 10425, 530702, 530700, '古城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10427, 10425, 530721, 530700, '玉龙纳西族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10428, 10425, 530722, 530700, '永胜县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10429, 10425, 530723, 530700, '华坪县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10430, 10425, 530724, 530700, '宁蒗彝族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10431, 10425, 530725, 530700, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10432, 10366, 530800, 530000, '普洱市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10433, 10432, 530802, 530800, '思茅区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10434, 10432, 530821, 530800, '宁洱哈尼族彝族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10435, 10432, 530822, 530800, '墨江哈尼族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10436, 10432, 530823, 530800, '景东彝族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10437, 10432, 530824, 530800, '景谷傣族彝族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10438, 10432, 530825, 530800, '镇沅彝族哈尼族拉祜族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10439, 10432, 530826, 530800, '江城哈尼族彝族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10440, 10432, 530827, 530800, '孟连傣族拉祜族佤族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10441, 10432, 530828, 530800, '澜沧拉祜族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10442, 10432, 530829, 530800, '西盟佤族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10443, 10432, 530830, 530800, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10444, 10366, 530900, 530000, '临沧市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10445, 10444, 530902, 530900, '临翔区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10446, 10444, 530921, 530900, '凤庆县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10447, 10444, 530922, 530900, '云县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10448, 10444, 530923, 530900, '永德县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10449, 10444, 530924, 530900, '镇康县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10450, 10444, 530925, 530900, '双江拉祜族佤族布朗族傣族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10451, 10444, 530926, 530900, '耿马傣族佤族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10452, 10444, 530927, 530900, '沧源佤族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10453, 10444, 530928, 530900, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10454, 10366, 532300, 530000, '楚雄彝族自治州', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10455, 10454, 532301, 532300, '楚雄市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10456, 10454, 532322, 532300, '双柏县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10457, 10454, 532323, 532300, '牟定县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10458, 10454, 532324, 532300, '南华县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10459, 10454, 532325, 532300, '姚安县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10460, 10454, 532326, 532300, '大姚县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10461, 10454, 532327, 532300, '永仁县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10462, 10454, 532328, 532300, '元谋县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10463, 10454, 532329, 532300, '武定县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10464, 10454, 532331, 532300, '禄丰县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10465, 10454, 532332, 532300, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10466, 10366, 532500, 530000, '红河哈尼族彝族自治州', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10467, 10466, 532501, 532500, '个旧市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10468, 10466, 532502, 532500, '开远市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10469, 10466, 532522, 532500, '蒙自县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10470, 10466, 532523, 532500, '屏边苗族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10471, 10466, 532524, 532500, '建水县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10472, 10466, 532525, 532500, '石屏县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10473, 10466, 532526, 532500, '弥勒县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10474, 10466, 532527, 532500, '泸西县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10475, 10466, 532528, 532500, '元阳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10476, 10466, 532529, 532500, '红河县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10477, 10466, 532530, 532500, '金平苗族瑶族傣族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10478, 10466, 532531, 532500, '绿春县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10479, 10466, 532532, 532500, '河口瑶族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10480, 10466, 532533, 532500, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10481, 10366, 532600, 530000, '文山壮族苗族自治州', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10482, 10481, 532621, 532600, '文山县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10483, 10481, 532622, 532600, '砚山县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10484, 10481, 532623, 532600, '西畴县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10485, 10481, 532624, 532600, '麻栗坡县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10486, 10481, 532625, 532600, '马关县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10487, 10481, 532626, 532600, '丘北县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10488, 10481, 532627, 532600, '广南县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10489, 10481, 532628, 532600, '富宁县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10490, 10481, 532629, 532600, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10491, 10366, 532800, 530000, '西双版纳傣族自治州', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10492, 10491, 532801, 532800, '景洪市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10493, 10491, 532822, 532800, '勐海县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10494, 10491, 532823, 532800, '勐腊县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10495, 10491, 532824, 532800, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10496, 10366, 532900, 530000, '大理白族自治州', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10497, 10496, 532901, 532900, '大理市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10498, 10496, 532922, 532900, '漾濞彝族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10499, 10496, 532923, 532900, '祥云县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10500, 10496, 532924, 532900, '宾川县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10501, 10496, 532925, 532900, '弥渡县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10502, 10496, 532926, 532900, '南涧彝族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10503, 10496, 532927, 532900, '巍山彝族回族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10504, 10496, 532928, 532900, '永平县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10505, 10496, 532929, 532900, '云龙县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10506, 10496, 532930, 532900, '洱源县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10507, 10496, 532931, 532900, '剑川县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10508, 10496, 532932, 532900, '鹤庆县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10509, 10496, 532933, 532900, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10510, 10366, 533100, 530000, '德宏傣族景颇族自治州', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10511, 10510, 533102, 533100, '瑞丽市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10512, 10510, 533103, 533100, '潞西市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10513, 10510, 533122, 533100, '梁河县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10514, 10510, 533123, 533100, '盈江县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10515, 10510, 533124, 533100, '陇川县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10516, 10510, 533125, 533100, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10517, 10366, 533300, 530000, '怒江傈僳族自治州', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10518, 10517, 533321, 533300, '泸水县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10519, 10517, 533323, 533300, '福贡县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10520, 10517, 533324, 533300, '贡山独龙族怒族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10521, 10517, 533325, 533300, '兰坪白族普米族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10522, 10517, 533326, 533300, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10523, 10366, 533400, 530000, '迪庆藏族自治州', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10524, 10523, 533421, 533400, '香格里拉县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10525, 10523, 533422, 533400, '德钦县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10526, 10523, 533423, 533400, '维西傈僳族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10527, 10523, 533424, 533400, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10528, 7459, 540000, 1, '西藏自治区', 1, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10529, 10528, 540100, 540000, '拉萨市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10530, 10529, 540102, 540100, '城关区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10531, 10529, 540121, 540100, '林周县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10532, 10529, 540122, 540100, '当雄县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10533, 10529, 540123, 540100, '尼木县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10534, 10529, 540124, 540100, '曲水县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10535, 10529, 540125, 540100, '堆龙德庆县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10536, 10529, 540126, 540100, '达孜县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10537, 10529, 540127, 540100, '墨竹工卡县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10538, 10529, 540128, 540100, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10539, 10528, 542100, 540000, '昌都地区', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10540, 10539, 542121, 542100, '昌都县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10541, 10539, 542122, 542100, '江达县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10542, 10539, 542123, 542100, '贡觉县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10543, 10539, 542124, 542100, '类乌齐县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10544, 10539, 542125, 542100, '丁青县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10545, 10539, 542126, 542100, '察雅县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10546, 10539, 542127, 542100, '八宿县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10547, 10539, 542128, 542100, '左贡县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10548, 10539, 542129, 542100, '芒康县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10549, 10539, 542132, 542100, '洛隆县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10550, 10539, 542133, 542100, '边坝县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10551, 10539, 542134, 542100, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10552, 10528, 542200, 540000, '山南地区', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10553, 10552, 542221, 542200, '乃东县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10554, 10552, 542222, 542200, '扎囊县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10555, 10552, 542223, 542200, '贡嘎县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10556, 10552, 542224, 542200, '桑日县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10557, 10552, 542225, 542200, '琼结县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10558, 10552, 542226, 542200, '曲松县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10559, 10552, 542227, 542200, '措美县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10560, 10552, 542228, 542200, '洛扎县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10561, 10552, 542229, 542200, '加查县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10562, 10552, 542231, 542200, '隆子县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10563, 10552, 542232, 542200, '错那县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10564, 10552, 542233, 542200, '浪卡子县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10565, 10552, 542234, 542200, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10566, 10528, 542300, 540000, '日喀则地区', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10567, 10566, 542301, 542300, '日喀则市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10568, 10566, 542322, 542300, '南木林县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10569, 10566, 542323, 542300, '江孜县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10570, 10566, 542324, 542300, '定日县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10571, 10566, 542325, 542300, '萨迦县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10572, 10566, 542326, 542300, '拉孜县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10573, 10566, 542327, 542300, '昂仁县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10574, 10566, 542328, 542300, '谢通门县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10575, 10566, 542329, 542300, '白朗县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10576, 10566, 542330, 542300, '仁布县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10577, 10566, 542331, 542300, '康马县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10578, 10566, 542332, 542300, '定结县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10579, 10566, 542333, 542300, '仲巴县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10580, 10566, 542334, 542300, '亚东县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10581, 10566, 542335, 542300, '吉隆县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10582, 10566, 542336, 542300, '聂拉木县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10583, 10566, 542337, 542300, '萨嘎县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10584, 10566, 542338, 542300, '岗巴县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10585, 10566, 542339, 542300, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10586, 10528, 542400, 540000, '那曲地区', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10587, 10586, 542421, 542400, '那曲县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10588, 10586, 542422, 542400, '嘉黎县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10589, 10586, 542423, 542400, '比如县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10590, 10586, 542424, 542400, '聂荣县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10591, 10586, 542425, 542400, '安多县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10592, 10586, 542426, 542400, '申扎县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10593, 10586, 542427, 542400, '索县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10594, 10586, 542428, 542400, '班戈县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10595, 10586, 542429, 542400, '巴青县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10596, 10586, 542430, 542400, '尼玛县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10597, 10586, 542431, 542400, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10598, 10528, 542500, 540000, '阿里地区', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10599, 10598, 542521, 542500, '普兰县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10600, 10598, 542522, 542500, '札达县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10601, 10598, 542523, 542500, '噶尔县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10602, 10598, 542524, 542500, '日土县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10603, 10598, 542525, 542500, '革吉县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10604, 10598, 542526, 542500, '改则县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10605, 10598, 542527, 542500, '措勤县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10606, 10598, 542528, 542500, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10607, 10528, 542600, 540000, '林芝地区', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10608, 10607, 542621, 542600, '林芝县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10609, 10607, 542622, 542600, '工布江达县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10610, 10607, 542623, 542600, '米林县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10611, 10607, 542624, 542600, '墨脱县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10612, 10607, 542625, 542600, '波密县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10613, 10607, 542626, 542600, '察隅县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10614, 10607, 542627, 542600, '朗县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10615, 10607, 542628, 542600, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10616, 7459, 610000, 1, '陕西省', 1, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10617, 10616, 610100, 610000, '西安市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10618, 10617, 610102, 610100, '新城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10619, 10617, 610103, 610100, '碑林区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10620, 10617, 610104, 610100, '莲湖区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10621, 10617, 610111, 610100, '灞桥区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10622, 10617, 610112, 610100, '未央区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10623, 10617, 610113, 610100, '雁塔区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10624, 10617, 610114, 610100, '阎良区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10625, 10617, 610115, 610100, '临潼区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10626, 10617, 610116, 610100, '长安区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10627, 10617, 610122, 610100, '蓝田县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10628, 10617, 610124, 610100, '周至县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10629, 10617, 610125, 610100, '户县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10630, 10617, 610126, 610100, '高陵县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10631, 10617, 610127, 610100, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10632, 10616, 610200, 610000, '铜川市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10633, 10632, 610202, 610200, '王益区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10634, 10632, 610203, 610200, '印台区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10635, 10632, 610204, 610200, '耀州区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10636, 10632, 610222, 610200, '宜君县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10637, 10632, 610223, 610200, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10638, 10616, 610300, 610000, '宝鸡市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10639, 10638, 610302, 610300, '渭滨区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10640, 10638, 610303, 610300, '金台区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10641, 10638, 610304, 610300, '陈仓区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10642, 10638, 610322, 610300, '凤翔县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10643, 10638, 610323, 610300, '岐山县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10644, 10638, 610324, 610300, '扶风县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10645, 10638, 610326, 610300, '眉县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10646, 10638, 610327, 610300, '陇县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10647, 10638, 610328, 610300, '千阳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10648, 10638, 610329, 610300, '麟游县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10649, 10638, 610330, 610300, '凤县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10650, 10638, 610331, 610300, '太白县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10651, 10638, 610332, 610300, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10652, 10616, 610400, 610000, '咸阳市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10653, 10652, 610402, 610400, '秦都区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10654, 10652, 610403, 610400, '杨凌区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10655, 10652, 610404, 610400, '渭城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10656, 10652, 610422, 610400, '三原县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10657, 10652, 610423, 610400, '泾阳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10658, 10652, 610424, 610400, '乾县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10659, 10652, 610425, 610400, '礼泉县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10660, 10652, 610426, 610400, '永寿县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10661, 10652, 610427, 610400, '彬县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10662, 10652, 610428, 610400, '长武县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10663, 10652, 610429, 610400, '旬邑县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10664, 10652, 610430, 610400, '淳化县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10665, 10652, 610431, 610400, '武功县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10666, 10652, 610481, 610400, '兴平市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10667, 10652, 610482, 610400, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10668, 10616, 610500, 610000, '渭南市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10669, 10668, 610502, 610500, '临渭区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10670, 10668, 610521, 610500, '华县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10671, 10668, 610522, 610500, '潼关县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10672, 10668, 610523, 610500, '大荔县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10673, 10668, 610524, 610500, '合阳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10674, 10668, 610525, 610500, '澄城县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10675, 10668, 610526, 610500, '蒲城县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10676, 10668, 610527, 610500, '白水县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10677, 10668, 610528, 610500, '富平县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10678, 10668, 610581, 610500, '韩城市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10679, 10668, 610582, 610500, '华阴市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10680, 10668, 610583, 610500, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10681, 10616, 610600, 610000, '延安市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10682, 10681, 610602, 610600, '宝塔区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10683, 10681, 610621, 610600, '延长县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10684, 10681, 610622, 610600, '延川县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10685, 10681, 610623, 610600, '子长县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10686, 10681, 610624, 610600, '安塞县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10687, 10681, 610625, 610600, '志丹县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10688, 10681, 610626, 610600, '吴起县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10689, 10681, 610627, 610600, '甘泉县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10690, 10681, 610628, 610600, '富县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10691, 10681, 610629, 610600, '洛川县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10692, 10681, 610630, 610600, '宜川县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10693, 10681, 610631, 610600, '黄龙县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10694, 10681, 610632, 610600, '黄陵县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10695, 10681, 610633, 610600, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10696, 10616, 610700, 610000, '汉中市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10697, 10696, 610702, 610700, '汉台区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10698, 10696, 610721, 610700, '南郑县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10699, 10696, 610722, 610700, '城固县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10700, 10696, 610723, 610700, '洋县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10701, 10696, 610724, 610700, '西乡县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10702, 10696, 610725, 610700, '勉县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10703, 10696, 610726, 610700, '宁强县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10704, 10696, 610727, 610700, '略阳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10705, 10696, 610728, 610700, '镇巴县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10706, 10696, 610729, 610700, '留坝县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10707, 10696, 610730, 610700, '佛坪县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10708, 10696, 610731, 610700, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10709, 10616, 610800, 610000, '榆林市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10710, 10709, 610802, 610800, '榆阳区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10711, 10709, 610821, 610800, '神木县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10712, 10709, 610822, 610800, '府谷县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10713, 10709, 610823, 610800, '横山县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10714, 10709, 610824, 610800, '靖边县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10715, 10709, 610825, 610800, '定边县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10716, 10709, 610826, 610800, '绥德县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10717, 10709, 610827, 610800, '米脂县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10718, 10709, 610828, 610800, '佳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10719, 10709, 610829, 610800, '吴堡县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10720, 10709, 610830, 610800, '清涧县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10721, 10709, 610831, 610800, '子洲县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10722, 10709, 610832, 610800, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10723, 10616, 610900, 610000, '安康市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10724, 10723, 610902, 610900, '汉滨区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10725, 10723, 610921, 610900, '汉阴县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10726, 10723, 610922, 610900, '石泉县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10727, 10723, 610923, 610900, '宁陕县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10728, 10723, 610924, 610900, '紫阳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10729, 10723, 610925, 610900, '岚皋县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10730, 10723, 610926, 610900, '平利县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10731, 10723, 610927, 610900, '镇坪县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10732, 10723, 610928, 610900, '旬阳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10733, 10723, 610929, 610900, '白河县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10734, 10723, 610930, 610900, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10735, 10616, 611000, 610000, '商洛市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10736, 10735, 611002, 611000, '商州区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10737, 10735, 611021, 611000, '洛南县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10738, 10735, 611022, 611000, '丹凤县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10739, 10735, 611023, 611000, '商南县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10740, 10735, 611024, 611000, '山阳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10741, 10735, 611025, 611000, '镇安县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10742, 10735, 611026, 611000, '柞水县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10743, 10735, 611027, 611000, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10744, 7459, 620000, 1, '甘肃省', 1, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10745, 10744, 620100, 620000, '兰州市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10746, 10745, 620102, 620100, '城关区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10747, 10745, 620103, 620100, '七里河区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10748, 10745, 620104, 620100, '西固区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10749, 10745, 620105, 620100, '安宁区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10750, 10745, 620111, 620100, '红古区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10751, 10745, 620121, 620100, '永登县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10752, 10745, 620122, 620100, '皋兰县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10753, 10745, 620123, 620100, '榆中县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10754, 10745, 620124, 620100, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10755, 10744, 620200, 620000, '嘉峪关市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10756, 10744, 620300, 620000, '金昌市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10757, 10756, 620302, 620300, '金川区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10758, 10756, 620321, 620300, '永昌县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10759, 10756, 620322, 620300, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10760, 10744, 620400, 620000, '白银市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10761, 10760, 620402, 620400, '白银区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10762, 10760, 620403, 620400, '平川区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10763, 10760, 620421, 620400, '靖远县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10764, 10760, 620422, 620400, '会宁县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10765, 10760, 620423, 620400, '景泰县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10766, 10760, 620424, 620400, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10767, 10744, 620500, 620000, '天水市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10768, 10767, 620502, 620500, '秦州区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10769, 10767, 620503, 620500, '麦积区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10770, 10767, 620521, 620500, '清水县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10771, 10767, 620522, 620500, '秦安县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10772, 10767, 620523, 620500, '甘谷县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10773, 10767, 620524, 620500, '武山县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10774, 10767, 620525, 620500, '张家川回族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10775, 10767, 620526, 620500, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10776, 10744, 620600, 620000, '武威市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10777, 10776, 620602, 620600, '凉州区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10778, 10776, 620621, 620600, '民勤县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10779, 10776, 620622, 620600, '古浪县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10780, 10776, 620623, 620600, '天祝藏族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10781, 10776, 620624, 620600, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10782, 10744, 620700, 620000, '张掖市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10783, 10782, 620702, 620700, '甘州区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10784, 10782, 620721, 620700, '肃南裕固族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10785, 10782, 620722, 620700, '民乐县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10786, 10782, 620723, 620700, '临泽县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10787, 10782, 620724, 620700, '高台县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10788, 10782, 620725, 620700, '山丹县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10789, 10782, 620726, 620700, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10790, 10744, 620800, 620000, '平凉市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10791, 10790, 620802, 620800, '崆峒区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10792, 10790, 620821, 620800, '泾川县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10793, 10790, 620822, 620800, '灵台县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10794, 10790, 620823, 620800, '崇信县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10795, 10790, 620824, 620800, '华亭县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10796, 10790, 620825, 620800, '庄浪县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10797, 10790, 620826, 620800, '静宁县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10798, 10790, 620827, 620800, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10799, 10744, 620900, 620000, '酒泉市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10800, 10799, 620902, 620900, '肃州区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10801, 10799, 620921, 620900, '金塔县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10802, 10799, 620922, 620900, '安西县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10803, 10799, 620923, 620900, '肃北蒙古族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10804, 10799, 620924, 620900, '阿克塞哈萨克族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10805, 10799, 620981, 620900, '玉门市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10806, 10799, 620982, 620900, '敦煌市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10807, 10799, 620983, 620900, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10808, 10744, 621000, 620000, '庆阳市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10809, 10808, 621002, 621000, '西峰区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10810, 10808, 621021, 621000, '庆城县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10811, 10808, 621022, 621000, '环县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10812, 10808, 621023, 621000, '华池县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10813, 10808, 621024, 621000, '合水县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10814, 10808, 621025, 621000, '正宁县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10815, 10808, 621026, 621000, '宁县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10816, 10808, 621027, 621000, '镇原县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10817, 10808, 621028, 621000, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10818, 10744, 621100, 620000, '定西市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10819, 10818, 621102, 621100, '安定区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10820, 10818, 621121, 621100, '通渭县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10821, 10818, 621122, 621100, '陇西县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10822, 10818, 621123, 621100, '渭源县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10823, 10818, 621124, 621100, '临洮县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10824, 10818, 621125, 621100, '漳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10825, 10818, 621126, 621100, '岷县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10826, 10818, 621127, 621100, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10827, 10744, 621200, 620000, '陇南市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10828, 10827, 621202, 621200, '武都区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10829, 10827, 621221, 621200, '成县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10830, 10827, 621222, 621200, '文县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10831, 10827, 621223, 621200, '宕昌县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10832, 10827, 621224, 621200, '康县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10833, 10827, 621225, 621200, '西和县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10834, 10827, 621226, 621200, '礼县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10835, 10827, 621227, 621200, '徽县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10836, 10827, 621228, 621200, '两当县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10837, 10827, 621229, 621200, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10838, 10744, 622900, 620000, '临夏回族自治州', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10839, 10838, 622901, 622900, '临夏市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10840, 10838, 622921, 622900, '临夏县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10841, 10838, 622922, 622900, '康乐县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10842, 10838, 622923, 622900, '永靖县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10843, 10838, 622924, 622900, '广河县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10844, 10838, 622925, 622900, '和政县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10845, 10838, 622926, 622900, '东乡族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10846, 10838, 622927, 622900, '积石山保安族东乡族撒拉族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10847, 10838, 622928, 622900, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10848, 10744, 623000, 620000, '甘南藏族自治州', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10849, 10848, 623001, 623000, '合作市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10850, 10848, 623021, 623000, '临潭县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10851, 10848, 623022, 623000, '卓尼县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10852, 10848, 623023, 623000, '舟曲县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10853, 10848, 623024, 623000, '迭部县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10854, 10848, 623025, 623000, '玛曲县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10855, 10848, 623026, 623000, '碌曲县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10856, 10848, 623027, 623000, '夏河县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10857, 10848, 623028, 623000, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10858, 7459, 630000, 1, '青海省', 1, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10859, 10858, 630100, 630000, '西宁市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10860, 10859, 630102, 630100, '城东区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10861, 10859, 630103, 630100, '城中区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10862, 10859, 630104, 630100, '城西区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10863, 10859, 630105, 630100, '城北区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10864, 10859, 630121, 630100, '大通回族土族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10865, 10859, 630122, 630100, '湟中县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10866, 10859, 630123, 630100, '湟源县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10867, 10859, 630124, 630100, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10868, 10858, 632100, 630000, '海东地区', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10869, 10868, 632121, 632100, '平安县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10870, 10868, 632122, 632100, '民和回族土族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10871, 10868, 632123, 632100, '乐都县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10872, 10868, 632126, 632100, '互助土族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10873, 10868, 632127, 632100, '化隆回族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10874, 10868, 632128, 632100, '循化撒拉族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10875, 10868, 632129, 632100, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10876, 10858, 632200, 630000, '海北藏族自治州', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10877, 10876, 632221, 632200, '门源回族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10878, 10876, 632222, 632200, '祁连县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10879, 10876, 632223, 632200, '海晏县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10880, 10876, 632224, 632200, '刚察县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10881, 10876, 632225, 632200, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10882, 10858, 632300, 630000, '黄南藏族自治州', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10883, 10882, 632321, 632300, '同仁县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10884, 10882, 632322, 632300, '尖扎县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10885, 10882, 632323, 632300, '泽库县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10886, 10882, 632324, 632300, '河南蒙古族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10887, 10882, 632325, 632300, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10888, 10858, 632500, 630000, '海南藏族自治州', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10889, 10888, 632521, 632500, '共和县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10890, 10888, 632522, 632500, '同德县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10891, 10888, 632523, 632500, '贵德县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10892, 10888, 632524, 632500, '兴海县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10893, 10888, 632525, 632500, '贵南县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10894, 10888, 632526, 632500, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10895, 10858, 632600, 630000, '果洛藏族自治州', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10896, 10895, 632621, 632600, '玛沁县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10897, 10895, 632622, 632600, '班玛县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10898, 10895, 632623, 632600, '甘德县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10899, 10895, 632624, 632600, '达日县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10900, 10895, 632625, 632600, '久治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10901, 10895, 632626, 632600, '玛多县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10902, 10895, 632627, 632600, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10903, 10858, 632700, 630000, '玉树藏族自治州', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10904, 10903, 632721, 632700, '玉树县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10905, 10903, 632722, 632700, '杂多县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10906, 10903, 632723, 632700, '称多县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10907, 10903, 632724, 632700, '治多县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10908, 10903, 632725, 632700, '囊谦县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10909, 10903, 632726, 632700, '曲麻莱县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10910, 10903, 632727, 632700, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10911, 10858, 632800, 630000, '海西蒙古族藏族自治州', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10912, 10911, 632801, 632800, '格尔木市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10913, 10911, 632802, 632800, '德令哈市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10914, 10911, 632821, 632800, '乌兰县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10915, 10911, 632822, 632800, '都兰县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10916, 10911, 632823, 632800, '天峻县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10917, 10911, 632824, 632800, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10918, 7459, 640000, 1, '宁夏回族自治区', 1, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10919, 10918, 640100, 640000, '银川市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10920, 10919, 640104, 640100, '兴庆区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10921, 10919, 640105, 640100, '西夏区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10922, 10919, 640106, 640100, '金凤区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10923, 10919, 640121, 640100, '永宁县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10924, 10919, 640122, 640100, '贺兰县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10925, 10919, 640181, 640100, '灵武市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10926, 10919, 640182, 640100, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10927, 10918, 640200, 640000, '石嘴山市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10928, 10927, 640202, 640200, '大武口区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10929, 10927, 640205, 640200, '惠农区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10930, 10927, 640221, 640200, '平罗县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10931, 10927, 640222, 640200, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10932, 10918, 640300, 640000, '吴忠市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10933, 10932, 640302, 640300, '利通区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10934, 10932, 640303, 640300, '红寺堡区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10935, 10932, 640323, 640300, '盐池县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10936, 10932, 640324, 640300, '同心县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10937, 10932, 640381, 640300, '青铜峡市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10938, 10932, 640382, 640300, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10939, 10918, 640400, 640000, '固原市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10940, 10939, 640402, 640400, '原州区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10941, 10939, 640422, 640400, '西吉县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10942, 10939, 640423, 640400, '隆德县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10943, 10939, 640424, 640400, '泾源县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10944, 10939, 640425, 640400, '彭阳县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10945, 10939, 640426, 640400, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10946, 10918, 640500, 640000, '中卫市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10947, 10946, 640502, 640500, '沙坡头区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10948, 10946, 640521, 640500, '中宁县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10949, 10946, 640522, 640500, '海原县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10950, 10946, 640523, 640500, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10951, 7459, 650000, 1, '新疆维吾尔自治区', 1, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10952, 10951, 650100, 650000, '乌鲁木齐市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10953, 10952, 650102, 650100, '天山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10954, 10952, 650103, 650100, '沙依巴克区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10955, 10952, 650104, 650100, '新市区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10956, 10952, 650105, 650100, '水磨沟区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10957, 10952, 650106, 650100, '头屯河区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10958, 10952, 650107, 650100, '达坂城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10959, 10952, 650108, 650100, '东山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10960, 10952, 650109, 650100, '米东区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10961, 10952, 650121, 650100, '乌鲁木齐县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10962, 10952, 650122, 650100, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10963, 10951, 650200, 650000, '克拉玛依市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10964, 10963, 650202, 650200, '独山子区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10965, 10963, 650203, 650200, '克拉玛依区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10966, 10963, 650204, 650200, '白碱滩区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10967, 10963, 650205, 650200, '乌尔禾区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10968, 10963, 650206, 650200, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10969, 10951, 652100, 650000, '吐鲁番地区', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10970, 10969, 652101, 652100, '吐鲁番市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10971, 10969, 652122, 652100, '鄯善县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10972, 10969, 652123, 652100, '托克逊县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10973, 10969, 652124, 652100, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10974, 10951, 652200, 650000, '哈密地区', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10975, 10974, 652201, 652200, '哈密市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10976, 10974, 652222, 652200, '巴里坤哈萨克自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10977, 10974, 652223, 652200, '伊吾县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10978, 10974, 652224, 652200, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10979, 10951, 652300, 650000, '昌吉回族自治州', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10980, 10979, 652301, 652300, '昌吉市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10981, 10979, 652302, 652300, '阜康市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10982, 10979, 652303, 652300, '米泉市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10983, 10979, 652323, 652300, '呼图壁县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10984, 10979, 652324, 652300, '玛纳斯县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10985, 10979, 652325, 652300, '奇台县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10986, 10979, 652327, 652300, '吉木萨尔县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10987, 10979, 652328, 652300, '木垒哈萨克自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10988, 10979, 652329, 652300, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10989, 10951, 652700, 650000, '博尔塔拉蒙古自治州', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10990, 10989, 652701, 652700, '博乐市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10991, 10989, 652722, 652700, '精河县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10992, 10989, 652723, 652700, '温泉县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10993, 10989, 652724, 652700, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10994, 10951, 652800, 650000, '巴音郭楞蒙古自治州', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10995, 10994, 652801, 652800, '库尔勒市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10996, 10994, 652822, 652800, '轮台县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10997, 10994, 652823, 652800, '尉犁县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10998, 10994, 652824, 652800, '若羌县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (10999, 10994, 652825, 652800, '且末县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11000, 10994, 652826, 652800, '焉耆回族自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11001, 10994, 652827, 652800, '和静县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11002, 10994, 652828, 652800, '和硕县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11003, 10994, 652829, 652800, '博湖县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11004, 10994, 652830, 652800, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11005, 10951, 652900, 650000, '阿克苏地区', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11006, 11005, 652901, 652900, '阿克苏市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11007, 11005, 652922, 652900, '温宿县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11008, 11005, 652923, 652900, '库车县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11009, 11005, 652924, 652900, '沙雅县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11010, 11005, 652925, 652900, '新和县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11011, 11005, 652926, 652900, '拜城县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11012, 11005, 652927, 652900, '乌什县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11013, 11005, 652928, 652900, '阿瓦提县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11014, 11005, 652929, 652900, '柯坪县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11015, 11005, 652930, 652900, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11016, 10951, 653000, 650000, '克孜勒苏柯尔克孜自治州', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11017, 11016, 653001, 653000, '阿图什市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11018, 11016, 653022, 653000, '阿克陶县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11019, 11016, 653023, 653000, '阿合奇县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11020, 11016, 653024, 653000, '乌恰县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11021, 11016, 653025, 653000, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11022, 10951, 653100, 650000, '喀什地区', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11023, 11022, 653101, 653100, '喀什市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11024, 11022, 653121, 653100, '疏附县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11025, 11022, 653122, 653100, '疏勒县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11026, 11022, 653123, 653100, '英吉沙县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11027, 11022, 653124, 653100, '泽普县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11028, 11022, 653125, 653100, '莎车县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11029, 11022, 653126, 653100, '叶城县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11030, 11022, 653127, 653100, '麦盖提县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11031, 11022, 653128, 653100, '岳普湖县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11032, 11022, 653129, 653100, '伽师县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11033, 11022, 653130, 653100, '巴楚县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11034, 11022, 653131, 653100, '塔什库尔干塔吉克自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11035, 11022, 653132, 653100, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11036, 10951, 653200, 650000, '和田地区', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11037, 11036, 653201, 653200, '和田市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11038, 11036, 653221, 653200, '和田县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11039, 11036, 653222, 653200, '墨玉县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11040, 11036, 653223, 653200, '皮山县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11041, 11036, 653224, 653200, '洛浦县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11042, 11036, 653225, 653200, '策勒县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11043, 11036, 653226, 653200, '于田县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11044, 11036, 653227, 653200, '民丰县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11045, 11036, 653228, 653200, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11046, 10951, 654000, 650000, '伊犁哈萨克自治州', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11047, 11046, 654002, 654000, '伊宁市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11048, 11046, 654003, 654000, '奎屯市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11049, 11046, 654021, 654000, '伊宁县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11050, 11046, 654022, 654000, '察布查尔锡伯自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11051, 11046, 654023, 654000, '霍城县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11052, 11046, 654024, 654000, '巩留县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11053, 11046, 654025, 654000, '新源县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11054, 11046, 654026, 654000, '昭苏县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11055, 11046, 654027, 654000, '特克斯县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11056, 11046, 654028, 654000, '尼勒克县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11057, 11046, 654029, 654000, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11058, 10951, 654200, 650000, '塔城地区', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11059, 11058, 654201, 654200, '塔城市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11060, 11058, 654202, 654200, '乌苏市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11061, 11058, 654221, 654200, '额敏县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11062, 11058, 654223, 654200, '沙湾县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11063, 11058, 654224, 654200, '托里县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11064, 11058, 654225, 654200, '裕民县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11065, 11058, 654226, 654200, '和布克赛尔蒙古自治县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11066, 11058, 654227, 654200, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11067, 10951, 654300, 650000, '阿勒泰地区', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11068, 11067, 654301, 654300, '阿勒泰市', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11069, 11067, 654321, 654300, '布尔津县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11070, 11067, 654322, 654300, '富蕴县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11071, 11067, 654323, 654300, '福海县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11072, 11067, 654324, 654300, '哈巴河县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11073, 11067, 654325, 654300, '青河县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11074, 11067, 654326, 654300, '吉木乃县', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11075, 11067, 654327, 654300, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11076, 10951, 659001, 650000, '石河子市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11077, 10951, 659002, 650000, '阿拉尔市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11078, 10951, 659003, 650000, '图木舒克市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11079, 10951, 659004, 650000, '五家渠市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11080, 7459, 710000, 1, '台湾省', 1, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11081, 11080, 710100, 710000, '台北市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11082, 11081, 710101, 710100, '中正区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11083, 11081, 710102, 710100, '大同区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11084, 11081, 710103, 710100, '中山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11085, 11081, 710104, 710100, '松山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11086, 11081, 710105, 710100, '大安区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11087, 11081, 710106, 710100, '万华区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11088, 11081, 710107, 710100, '信义区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11089, 11081, 710108, 710100, '士林区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11090, 11081, 710109, 710100, '北投区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11091, 11081, 710110, 710100, '内湖区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11092, 11081, 710111, 710100, '南港区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11093, 11081, 710112, 710100, '文山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11094, 11081, 710113, 710100, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11095, 11080, 710200, 710000, '高雄市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11096, 11095, 710201, 710200, '新兴区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11097, 11095, 710202, 710200, '前金区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11098, 11095, 710203, 710200, '芩雅区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11099, 11095, 710204, 710200, '盐埕区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11100, 11095, 710205, 710200, '鼓山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11101, 11095, 710206, 710200, '旗津区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11102, 11095, 710207, 710200, '前镇区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11103, 11095, 710208, 710200, '三民区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11104, 11095, 710209, 710200, '左营区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11105, 11095, 710210, 710200, '楠梓区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11106, 11095, 710211, 710200, '小港区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11107, 11095, 710212, 710200, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11108, 11080, 710300, 710000, '台南市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11109, 11108, 710301, 710300, '中西区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11110, 11108, 710302, 710300, '东区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11111, 11108, 710303, 710300, '南区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11112, 11108, 710304, 710300, '北区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11113, 11108, 710305, 710300, '安平区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11114, 11108, 710306, 710300, '安南区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11115, 11108, 710307, 710300, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11116, 11080, 710400, 710000, '台中市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11117, 11116, 710401, 710400, '中区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11118, 11116, 710402, 710400, '东区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11119, 11116, 710403, 710400, '南区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11120, 11116, 710404, 710400, '西区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11121, 11116, 710405, 710400, '北区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11122, 11116, 710406, 710400, '北屯区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11123, 11116, 710407, 710400, '西屯区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11124, 11116, 710408, 710400, '南屯区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11125, 11116, 710409, 710400, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11126, 11080, 710500, 710000, '金门县', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11127, 11080, 710600, 710000, '南投县', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11128, 11080, 710700, 710000, '基隆市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11129, 11128, 710701, 710700, '仁爱区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11130, 11128, 710702, 710700, '信义区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11131, 11128, 710703, 710700, '中正区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11132, 11128, 710704, 710700, '中山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11133, 11128, 710705, 710700, '安乐区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11134, 11128, 710706, 710700, '暖暖区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11135, 11128, 710707, 710700, '七堵区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11136, 11128, 710708, 710700, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11137, 11080, 710800, 710000, '新竹市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11138, 11137, 710801, 710800, '东区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11139, 11137, 710802, 710800, '北区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11140, 11137, 710803, 710800, '香山区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11141, 11137, 710804, 710800, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11142, 11080, 710900, 710000, '嘉义市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11143, 11142, 710901, 710900, '东区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11144, 11142, 710902, 710900, '西区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11145, 11142, 710903, 710900, '其它区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11146, 11080, 711100, 710000, '新北市', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11147, 11080, 711200, 710000, '宜兰县', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11148, 11080, 711300, 710000, '新竹县', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11149, 11080, 711400, 710000, '桃园县', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11150, 11080, 711500, 710000, '苗栗县', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11151, 11080, 711600, 710000, '台中县', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11152, 11080, 711700, 710000, '彰化县', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11153, 11080, 711900, 710000, '嘉义县', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11154, 11080, 712100, 710000, '云林县', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11155, 11080, 712200, 710000, '台南县', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11156, 11080, 712300, 710000, '高雄县', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11157, 11080, 712400, 710000, '屏东县', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11158, 11080, 712500, 710000, '台东县', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11159, 11080, 712600, 710000, '花莲县', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11160, 11080, 712700, 710000, '澎湖县', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11161, 7459, 810000, 1, '香港特别行政区', 1, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11162, 11161, 810100, 810000, '香港岛', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11163, 11162, 810101, 810100, '中西区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11164, 11162, 810102, 810100, '湾仔', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11165, 11162, 810103, 810100, '东区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11166, 11162, 810104, 810100, '南区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11167, 11161, 810200, 810000, '九龙', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11168, 11167, 810201, 810200, '九龙城区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11169, 11167, 810202, 810200, '油尖旺区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11170, 11167, 810203, 810200, '深水埗区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11171, 11167, 810204, 810200, '黄大仙区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11172, 11167, 810205, 810200, '观塘区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11173, 11161, 810300, 810000, '新界', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11174, 11173, 810301, 810300, '北区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11175, 11173, 810302, 810300, '大埔区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11176, 11173, 810303, 810300, '沙田区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11177, 11173, 810304, 810300, '西贡区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11178, 11173, 810305, 810300, '元朗区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11179, 11173, 810306, 810300, '屯门区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11180, 11173, 810307, 810300, '荃湾区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11181, 11173, 810308, 810300, '葵青区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11182, 11173, 810309, 810300, '离岛区', 3, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11183, 7459, 820000, 1, '澳门特别行政区', 1, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11184, 11183, 820100, 820000, '澳门半岛', 2, NULL, NULL, NULL);
INSERT INTO `hl_region` VALUES (11185, 11183, 820200, 820000, '离岛', 2, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for hl_sms_captcha
-- ----------------------------
DROP TABLE IF EXISTS `hl_sms_captcha`;
CREATE TABLE `hl_sms_captcha`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '短信验证码记录',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `ip` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ip',
  `add_time` int(11) NULL DEFAULT NULL COMMENT '发送时间',
  `captcha` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '验证码',
  `status` tinyint(1) NULL DEFAULT 1 COMMENT '状态1-未使用，2-使用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hl_sms_captcha
-- ----------------------------
INSERT INTO `hl_sms_captcha` VALUES (1, '13226468871', '127.0.0.1', 1528219808, '5428', 2);
INSERT INTO `hl_sms_captcha` VALUES (2, '13226468871', '127.0.0.1', 1528212074, '8165', 1);
INSERT INTO `hl_sms_captcha` VALUES (3, '13226468871', '127.0.0.1', 1528212141, '2443', 1);
INSERT INTO `hl_sms_captcha` VALUES (4, '13226468871', '127.0.0.1', 1528224207, '3909', 2);
INSERT INTO `hl_sms_captcha` VALUES (5, '13226468872', '127.0.0.1', 1528377567, '5629', 2);
INSERT INTO `hl_sms_captcha` VALUES (6, '13226468872', '127.0.0.1', 1528379091, '8262', 2);
INSERT INTO `hl_sms_captcha` VALUES (7, '13226468873', '127.0.0.1', 1529606493, '6255', 2);

-- ----------------------------
-- Table structure for hl_users
-- ----------------------------
DROP TABLE IF EXISTS `hl_users`;
CREATE TABLE `hl_users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `grade` tinyint(1) NULL DEFAULT 1 COMMENT '会员等级，1-普通，2-vip',
  `grade_start` timestamp NULL DEFAULT NULL COMMENT 'vip开始时间',
  `grade_end` timestamp NULL DEFAULT NULL COMMENT 'vip结束时间',
  `pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT 'resources/home/images/pic.png' COMMENT '头像',
  `wx_openid` int(11) NULL DEFAULT NULL COMMENT '微信openid',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`phone`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hl_users
-- ----------------------------
INSERT INTO `hl_users` VALUES (6, '啊啊啊', '13226468872', '$2y$10$H2Je2GYzktn7EeFMUYbOV.kKp3pZLU5C8qHGzyChYJF1h.tW0CNWK', 'zFJaQc3ZYiz1xGjMPAW5WnklUcRuKZ01Pcm81WdVRHCxt6p5tVFKn2EgvwKo', '2018-06-06 01:46:25', '2018-06-08 02:04:18', 2, '2018-06-08 01:27:20', '2022-12-10 01:27:20', 'uploads/user/20180607/5b193fe32b0927.35128746.png', NULL);
INSERT INTO `hl_users` VALUES (7, 'aaa', '13226468871', '', NULL, '2018-06-08 01:34:34', '2018-06-08 01:35:27', 1, NULL, NULL, 'uploads/user/20180608/5b196cdfe38d59.18661043.jpg', NULL);
INSERT INTO `hl_users` VALUES (8, '13226468873', '13226468873', '$2y$10$J1ooVV/V0nn2J9ddEC8CYOAV8OW8kxgq3VgDjYfjm8MDTUElybpOm', 'MAUgsw9cXBjfLwweGRDKH4tiMdfrGgjMu78jV99ASmK2IGAeOy47JfjRbMfs', '2018-06-22 02:43:28', '2018-06-22 02:43:28', 1, NULL, NULL, 'resources/home/images/pic.png', NULL);

-- ----------------------------
-- Table structure for hl_video
-- ----------------------------
DROP TABLE IF EXISTS `hl_video`;
CREATE TABLE `hl_video`  (
  `video_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '视频主表',
  `cate_id` int(11) NULL DEFAULT NULL COMMENT '分类',
  `type` tinyint(1) NULL DEFAULT 1 COMMENT '类别,1-视频，2-音频',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `seo_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT 'seo标题',
  `seo_keywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT 'seo关键字',
  `seo_description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'seo说明',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `alt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片alt',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `number` int(11) NULL DEFAULT 0 COMMENT '观看人数',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `price` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '价格',
  `is_fee` tinyint(1) NULL DEFAULT 2 COMMENT '免费观看，1-全部收费，2-vip免费，3-会员免费',
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '描述',
  `old_price` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '价格',
  PRIMARY KEY (`video_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hl_video
-- ----------------------------
INSERT INTO `hl_video` VALUES (1, 372, 2, '2018-06-06 14:34:44', '2018-06-07 22:56:54', NULL, NULL, NULL, 'uploads/video/20180606/5b178084a4a182.95589538.jpg', NULL, '爱情三重奏', 0, '<img src=\"/uploads/attached/image/20180606/20180606063313_64166.png\" alt=\"\" />', 299.00, 1, '陪你懂爱、会爱、拥有爱。', 329.00);
INSERT INTO `hl_video` VALUES (3, 372, 1, '2018-06-06 23:43:57', '2018-06-22 01:19:24', NULL, NULL, NULL, 'uploads/video/20180606/5b18013d0b0de0.73378825.jpg', NULL, '冷爱断桥理论：没有挽回不了的爱情', 2, '<img src=\"/uploads/attached/image/20180606/20180606154342_96667.jpg\" alt=\"\" />', 199.00, 1, '没有挽回不了的爱情', 300.00);

-- ----------------------------
-- Table structure for hl_video_course
-- ----------------------------
DROP TABLE IF EXISTS `hl_video_course`;
CREATE TABLE `hl_video_course`  (
  `course_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '视频课程',
  `video` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '视频链接',
  `try_video` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '试看的视频',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `video_id` int(11) NULL DEFAULT NULL COMMENT '对应的课程',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `video_text` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `try_video_text` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`course_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hl_video_course
-- ----------------------------
INSERT INTO `hl_video_course` VALUES (1, 'uploads/video/20180606/preview-d69b5b26f6ed17e-1514952950-5a4c58f69e295.mp4', 'uploads/video/20180606/preview-d69b5b26f6ed17e-1514952950-5a4c58f69e295.mp4', '第一节:吸引力的核心', 1, '2018-06-06 16:05:17', '2018-06-06 16:05:17', NULL, NULL);
INSERT INTO `hl_video_course` VALUES (2, 'uploads/file/20180703/5b3a66b038c586.07154140.mp4', 'uploads/file/20180703/5b3a64aebfc861.34622391.mp4', '第一节:情感修复必经之路：情绪的循环', 3, '2018-06-06 23:45:16', '2018-07-03 01:53:52', 'uploads/file/20180703/5b3a66b038c586.07154140.mp4', 'uploads/file/20180703/5b3a64aebfc861.34622391.mp4');

-- ----------------------------
-- Table structure for hl_video_order
-- ----------------------------
DROP TABLE IF EXISTS `hl_video_order`;
CREATE TABLE `hl_video_order`  (
  `order_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '视频课程订单购买',
  `video_id` int(11) NULL DEFAULT NULL COMMENT '对应的课程',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL COMMENT '对应会员',
  `status` tinyint(1) NULL DEFAULT 1 COMMENT '订单状态1-未付款，2-付款',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '支付价格',
  `order_no` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单号',
  `pay_time` timestamp NULL DEFAULT NULL COMMENT '支付时间',
  `pay_type` tinyint(1) NULL DEFAULT NULL COMMENT '支付类型，1-微信，2-支付宝',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hl_video_order
-- ----------------------------
INSERT INTO `hl_video_order` VALUES (5, 3, '2018-06-07 22:42:28', '2018-06-07 22:42:28', 6, 2, 199.00, '20180607224228729971', NULL, NULL);

-- ----------------------------
-- Table structure for hl_vip_order
-- ----------------------------
DROP TABLE IF EXISTS `hl_vip_order`;
CREATE TABLE `hl_vip_order`  (
  `order_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'vip购买订单',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL COMMENT '对应会员',
  `status` tinyint(1) NULL DEFAULT 1 COMMENT '订单状态1-未付款，2-付款',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '支付价格',
  `order_no` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单号',
  `pay_time` timestamp NULL DEFAULT NULL COMMENT '支付时间',
  `pay_type` tinyint(1) NULL DEFAULT NULL COMMENT '支付类型，1-微信，2-支付宝',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
