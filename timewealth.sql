/*
 Navicat Premium Data Transfer

 Source Server         : myDB
 Source Server Type    : MySQL
 Source Server Version : 50520
 Source Host           : localhost:3306
 Source Schema         : timewealth

 Target Server Type    : MySQL
 Target Server Version : 50520
 File Encoding         : 65001

 Date: 04/07/2020 04:19:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `cart_id` int(50) NOT NULL AUTO_INCREMENT,
  `good_id` int(50) NOT NULL,
  `user_id` int(50) NOT NULL,
  `num` int(50) NOT NULL,
  PRIMARY KEY (`cart_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES (1, 1, 17, 4);
INSERT INTO `cart` VALUES (2, 5, 17, 2);
INSERT INTO `cart` VALUES (3, 2, 17, 2);
INSERT INTO `cart` VALUES (4, 3, 17, 2);

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `good_id` int(20) NOT NULL AUTO_INCREMENT,
  `src1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` int(100) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `place` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`good_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 97 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, 'http://p4.shopimg.680.com/2020-4/14/32020041409502952859_10975578.png', 5000, '微信开发', '恒伟网络', '北京');
INSERT INTO `goods` VALUES (2, 'http://p4.shopimg.680.com/2020-4/14/32020041409500178427_10975578.png', 5000, 'App开发', '恒伟网络', '北京');
INSERT INTO `goods` VALUES (3, 'http://p4.shopimg.680.com/2020-4/14/32020041409485062379_10975578.png', 5000, '整站建设', '恒伟网络', '北京');
INSERT INTO `goods` VALUES (4, 'http://p4.shopimg.680.com/2020-4/13/32020041313505230335_2688979.png', 5000, '微信开发', '深米科技', '广东-深圳');
INSERT INTO `goods` VALUES (5, 'http://p4.shopimg.680.com/2020-4/13/32020041313490003537_2688979.png', 5000, 'App开发', '深米科技', '广东-深圳');
INSERT INTO `goods` VALUES (6, 'http://p4.shopimg.680.com/2020-4/13/32020041313482625184_2688979.png', 5000, '整站建设', '深米科技', '广东-深圳');
INSERT INTO `goods` VALUES (7, 'http://wk.p.680.com/fuwu_shoutu/2_64.jpg', 2000, '整站建设', '济南承盛科技', '山东-济南');
INSERT INTO `goods` VALUES (8, 'http://wk.p.680.com/fuwu_shoutu/34_11.jpg', 5000, '软件开发', '济南承盛科技', '山东-济南');
INSERT INTO `goods` VALUES (9, 'http://wk.p.680.com/fuwu_shoutu/2_64.jpg', 2000, '整站建设', '济南承盛科技', '山东-济南');
INSERT INTO `goods` VALUES (10, 'http://wk.p.680.com/fuwu_shoutu/34_11.jpg', 5000, '软件开发', '济南承盛科技', '山东-济南');
INSERT INTO `goods` VALUES (11, 'http://d10file.680.com/2020-5/18/32020051811103283227_11043385.png', 599, 'UI设计', '肆贰九设计空间', '河南-开封');
INSERT INTO `goods` VALUES (12, 'http://p4.shopimg.680.com/2020-4/30/32020043010543517667_10981569.png', 3000, '整站建设2', '匹思乐科技有限公司', '广东-茂名');
INSERT INTO `goods` VALUES (13, 'http://p4.shopimg.680.com/2020-4/30/32020043010535308228_10981569.png', 3000, '整站建设1', '匹思乐科技有限公司', '广东-茂名');
INSERT INTO `goods` VALUES (14, 'http://p4.shopimg.680.com/2020-4/30/32020043010531246548_10981569.jpg', 3000, '整站建设', '匹思乐科技有限公司', '广东-茂名');
INSERT INTO `goods` VALUES (15, 'http://p4.shopimg.680.com/2020-4/29/32020042918203912388_10960109.jpg', 2000, '小程序商城', '思维创造天津信息科技有限公司', '天津');
INSERT INTO `goods` VALUES (16, 'http://p4.shopimg.680.com/2020-4/29/32020042914375842237_11011227.png', 1000, '小猪智慧店铺', '成都智慧联创科技有限公司', '四川-成都');
INSERT INTO `goods` VALUES (17, 'http://p4.shopimg.680.com/2020-4/29/32020042909492802618_11011227.png', 1000, '人人商城软件二开，人人系统出售', '成都智慧联创科技有限公司', '四川-成都');
INSERT INTO `goods` VALUES (18, 'http://p4.shopimg.680.com/2020-4/29/32020042909451577528_11011227.png', 1000, '快鲸SCRM系统企业微信渠道码', '成都智慧联创科技有限公司', '四川-成都');
INSERT INTO `goods` VALUES (19, 'http://p4.shopimg.680.com/2020-4/29/32020042909405843923_11011227.png', 1000, '小猪O2O生活通 景区O2O,社区O2O，外卖O2O，跑腿系统', '成都智慧联创科技有限公司', '四川-成都');
INSERT INTO `goods` VALUES (20, 'http://p4.shopimg.680.com/2020-4/29/32020042909344208981_11011227.png', 1000, '微信公众号小程序定制开发程序开发', '成都智慧联创科技有限公司', '四川-成都');
INSERT INTO `goods` VALUES (21, 'http://p4.shopimg.680.com/2020-4/29/32020042909301580127_11011227.png', 1000, '在线教育直播，知识付费，招生营销', '成都智慧联创科技有限公司', '四川-成都');
INSERT INTO `goods` VALUES (22, 'http://p4.shopimg.680.com/2020-4/29/32020042909161694289_11011227.png', 1000, '在线知识付费', '成都智慧联创科技有限公司', '四川-成都');
INSERT INTO `goods` VALUES (23, 'http://p4.shopimg.680.com/2020-4/27/32020042711262995923_10984849.jpg', 500, '旅游手绘地图&旅游纪念品设计', '博漫插画设计', '天津');
INSERT INTO `goods` VALUES (24, 'http://p4.shopimg.680.com/2020-4/27/32020042711243368230_10984849.jpg', 1000, '游戏原画卡牌原画', '博漫插画设计', '天津');
INSERT INTO `goods` VALUES (25, 'http://p4.shopimg.680.com/2020-4/27/32020042711205744646_10984849.jpg', 200, '商业插画/儿童插画', '博漫插画设计', '天津');
INSERT INTO `goods` VALUES (26, 'http://p4.shopimg.680.com/2020-3/11/32020031109350476046_10978376.png', 5000, '软件开发', '咪唬科技', '广东-广州');
INSERT INTO `goods` VALUES (27, 'http://p4.shopimg.680.com/2020-3/11/32020031109205483232_10987512.png', 5000, '软件开发', '重庆金豚科技有限公司', '重庆');
INSERT INTO `goods` VALUES (28, 'http://p4.shopimg.680.com/2020-3/11/32020031109201416377_10987512.png', 2000, '微信开发', '重庆金豚科技有限公司', '重庆');
INSERT INTO `goods` VALUES (29, 'http://p4.shopimg.680.com/2020-3/11/32020031109181795423_10987512.jpg', 2000, '建站', '重庆金豚科技有限公司', '重庆');
INSERT INTO `goods` VALUES (30, 'http://p4.shopimg.680.com/2020-3/5/32020030509160108849_10987452.jpg', 500, '平面设计', '伟特鲁威', '浙江-嘉兴');
INSERT INTO `goods` VALUES (31, 'http://p4.shopimg.680.com/2020-1/6/32020010614332265493_9607833.png', 5000, '微信餐饮开发微信点餐/微信外卖/微信订餐/点餐开发/官网开发', '广东胜网科技有限公司', '广东-广州');
INSERT INTO `goods` VALUES (32, 'http://p4.shopimg.680.com/2020-1/9/32020010912121364980_9607833.jpg', 800, '胜网科技诚挚招商', '广东胜网科技有限公司', '广东-广州');
INSERT INTO `goods` VALUES (33, 'http://wk.p.680.com/fuwu_shoutu/4_65.jpg', 1000, '广告语', '光速创宇', '河北-衡水');
INSERT INTO `goods` VALUES (34, 'http://wk.p.680.com/fuwu_shoutu/35_396.jpg', 2000, '微信开发', '光速创宇', '河北-衡水');
INSERT INTO `goods` VALUES (35, 'http://wk.p.680.com/fuwu_shoutu/35_393.jpg', 5000, 'APP开发', '光速创宇', '河北-衡水');
INSERT INTO `goods` VALUES (36, 'http://wk.p.680.com/fuwu_shoutu/34_11.jpg', 5000, '软件开发', '光速创宇', '河北-衡水');
INSERT INTO `goods` VALUES (37, 'http://wk.p.680.com/fuwu_shoutu/2_64.jpg', 2000, '整站建设', '光速创宇', '河北-衡水');
INSERT INTO `goods` VALUES (38, 'http://wk.p.680.com/fuwu_shoutu/2_6.jpg', 200, 'UI设计', '光速创宇', '河北-衡水');
INSERT INTO `goods` VALUES (39, 'https://www.680.com/images/2016/nopic_fw.jpg', 2000, 'APP开发', '山东欣鲸网络科技有限公司', '上海');
INSERT INTO `goods` VALUES (40, 'https://www.680.com/images/2016/nopic_fw.jpg', 20000, 'IM即时通讯源码山东欣鲸网络科技', '山东欣鲸网络科技有限公司', '上海');
INSERT INTO `goods` VALUES (41, 'https://www.680.com/images/2016/nopic_fw.jpg', 8000, '手机答题APP', '山东欣鲸网络科技有限公司', '上海');
INSERT INTO `goods` VALUES (42, 'https://www.680.com/images/2016/nopic_fw.jpg', 10000, 'Python 人工智能', '万盟网络科技有限公司', '山东-烟台');
INSERT INTO `goods` VALUES (43, 'https://www.680.com/images/2016/nopic_fw.jpg', 100, '文案撰写/新闻稿/演讲稿/广告语/标书/PPT', '天津果糖互联网科技有限责任公司', '天津-');
INSERT INTO `goods` VALUES (44, 'https://www.680.com/images/2016/nopic_fw.jpg', 300, '音频制作/去噪修音', '天津果糖互联网科技有限责任公司', '天津');
INSERT INTO `goods` VALUES (45, 'https://www.680.com/images/2016/nopic_fw.jpg', 500, '视频制作/flash动画/ui动效设计', '天津果糖互联网科技有限责任公司', '天津');
INSERT INTO `goods` VALUES (46, 'https://www.680.com/images/2016/nopic_fw.jpg', 500, 'UI设计/动效设计/成套ui框架', '天津果糖互联网科技有限责任公司', '天津');
INSERT INTO `goods` VALUES (47, 'https://www.680.com/images/2016/nopic_fw.jpg', 3000, 'VI设计/物料/京津冀可制作送货及上门部署', '天津果糖互联网科技有限责任公司', '天津');
INSERT INTO `goods` VALUES (48, 'https://www.680.com/images/2016/nopic_fw.jpg', 300, 'LOGO设计/商标/字体/应用场景方案', '天津果糖互联网科技有限责任公司', '天津');
INSERT INTO `goods` VALUES (49, 'http://p4.shopimg.680.com/2020-4/14/32020041409502952859_10975578.png', 5000, '微信开发', '恒伟网络', '北京');
INSERT INTO `goods` VALUES (50, 'http://p4.shopimg.680.com/2020-4/14/32020041409500178427_10975578.png', 5000, 'App开发', '恒伟网络', '北京');
INSERT INTO `goods` VALUES (51, 'http://p4.shopimg.680.com/2020-4/14/32020041409485062379_10975578.png', 5000, '整站建设', '恒伟网络', '北京');
INSERT INTO `goods` VALUES (52, 'http://p4.shopimg.680.com/2020-4/13/32020041313505230335_2688979.png', 5000, '微信开发', '深米科技', '广东-深圳');
INSERT INTO `goods` VALUES (53, 'http://p4.shopimg.680.com/2020-4/13/32020041313490003537_2688979.png', 5000, 'App开发', '深米科技', '广东-深圳');
INSERT INTO `goods` VALUES (54, 'http://p4.shopimg.680.com/2020-4/13/32020041313482625184_2688979.png', 5000, '整站建设', '深米科技', '广东-深圳');
INSERT INTO `goods` VALUES (55, 'http://wk.p.680.com/fuwu_shoutu/2_64.jpg', 2000, '整站建设', '济南承盛科技', '山东-济南');
INSERT INTO `goods` VALUES (56, 'http://wk.p.680.com/fuwu_shoutu/34_11.jpg', 5000, '软件开发', '济南承盛科技', '山东-济南');
INSERT INTO `goods` VALUES (57, 'http://wk.p.680.com/fuwu_shoutu/2_64.jpg', 2000, '整站建设', '济南承盛科技', '山东-济南');
INSERT INTO `goods` VALUES (58, 'http://wk.p.680.com/fuwu_shoutu/34_11.jpg', 5000, '软件开发', '济南承盛科技', '山东-济南');
INSERT INTO `goods` VALUES (59, 'http://d10file.680.com/2020-5/18/32020051811103283227_11043385.png', 599, 'UI设计', '肆贰九设计空间', '河南-开封');
INSERT INTO `goods` VALUES (60, 'http://p4.shopimg.680.com/2020-4/30/32020043010543517667_10981569.png', 3000, '整站建设2', '匹思乐科技有限公司', '广东-茂名');
INSERT INTO `goods` VALUES (61, 'http://p4.shopimg.680.com/2020-4/30/32020043010535308228_10981569.png', 3000, '整站建设1', '匹思乐科技有限公司', '广东-茂名');
INSERT INTO `goods` VALUES (62, 'http://p4.shopimg.680.com/2020-4/30/32020043010531246548_10981569.jpg', 3000, '整站建设', '匹思乐科技有限公司', '广东-茂名');
INSERT INTO `goods` VALUES (63, 'http://p4.shopimg.680.com/2020-4/29/32020042918203912388_10960109.jpg', 2000, '小程序商城', '思维创造天津信息科技有限公司', '天津');
INSERT INTO `goods` VALUES (64, 'http://p4.shopimg.680.com/2020-4/29/32020042914375842237_11011227.png', 1000, '小猪智慧店铺', '成都智慧联创科技有限公司', '四川-成都');
INSERT INTO `goods` VALUES (65, 'http://p4.shopimg.680.com/2020-4/29/32020042909492802618_11011227.png', 1000, '人人商城软件二开，人人系统出售', '成都智慧联创科技有限公司', '四川-成都');
INSERT INTO `goods` VALUES (66, 'http://p4.shopimg.680.com/2020-4/29/32020042909451577528_11011227.png', 1000, '快鲸SCRM系统企业微信渠道码', '成都智慧联创科技有限公司', '四川-成都');
INSERT INTO `goods` VALUES (67, 'http://p4.shopimg.680.com/2020-4/29/32020042909405843923_11011227.png', 1000, '小猪O2O生活通 景区O2O,社区O2O，外卖O2O，跑腿系统', '成都智慧联创科技有限公司', '四川-成都');
INSERT INTO `goods` VALUES (68, 'http://p4.shopimg.680.com/2020-4/29/32020042909344208981_11011227.png', 1000, '微信公众号小程序定制开发程序开发', '成都智慧联创科技有限公司', '四川-成都');
INSERT INTO `goods` VALUES (69, 'http://p4.shopimg.680.com/2020-4/29/32020042909301580127_11011227.png', 1000, '在线教育直播，知识付费，招生营销', '成都智慧联创科技有限公司', '四川-成都');
INSERT INTO `goods` VALUES (70, 'http://p4.shopimg.680.com/2020-4/29/32020042909161694289_11011227.png', 1000, '在线知识付费', '成都智慧联创科技有限公司', '四川-成都');
INSERT INTO `goods` VALUES (71, 'http://p4.shopimg.680.com/2020-4/27/32020042711262995923_10984849.jpg', 500, '旅游手绘地图&旅游纪念品设计', '博漫插画设计', '天津');
INSERT INTO `goods` VALUES (72, 'http://p4.shopimg.680.com/2020-4/27/32020042711243368230_10984849.jpg', 1000, '游戏原画卡牌原画', '博漫插画设计', '天津');
INSERT INTO `goods` VALUES (73, 'http://p4.shopimg.680.com/2020-4/27/32020042711205744646_10984849.jpg', 200, '商业插画/儿童插画', '博漫插画设计', '天津');
INSERT INTO `goods` VALUES (74, 'http://p4.shopimg.680.com/2020-3/11/32020031109350476046_10978376.png', 5000, '软件开发', '咪唬科技', '广东-广州');
INSERT INTO `goods` VALUES (75, 'http://p4.shopimg.680.com/2020-3/11/32020031109205483232_10987512.png', 5000, '软件开发', '重庆金豚科技有限公司', '重庆');
INSERT INTO `goods` VALUES (76, 'http://p4.shopimg.680.com/2020-3/11/32020031109201416377_10987512.png', 2000, '微信开发', '重庆金豚科技有限公司', '重庆');
INSERT INTO `goods` VALUES (77, 'http://p4.shopimg.680.com/2020-3/11/32020031109181795423_10987512.jpg', 2000, '建站', '重庆金豚科技有限公司', '重庆');
INSERT INTO `goods` VALUES (78, 'http://p4.shopimg.680.com/2020-3/5/32020030509160108849_10987452.jpg', 500, '平面设计', '伟特鲁威', '浙江-嘉兴');
INSERT INTO `goods` VALUES (79, 'http://p4.shopimg.680.com/2020-1/6/32020010614332265493_9607833.png', 5000, '微信餐饮开发微信点餐/微信外卖/微信订餐/点餐开发/官网开发', '广东胜网科技有限公司', '广东-广州');
INSERT INTO `goods` VALUES (80, 'http://p4.shopimg.680.com/2020-1/9/32020010912121364980_9607833.jpg', 800, '胜网科技诚挚招商', '广东胜网科技有限公司', '广东-广州');
INSERT INTO `goods` VALUES (81, 'http://wk.p.680.com/fuwu_shoutu/4_65.jpg', 1000, '广告语', '光速创宇', '河北-衡水');
INSERT INTO `goods` VALUES (82, 'http://wk.p.680.com/fuwu_shoutu/35_396.jpg', 2000, '微信开发', '光速创宇', '河北-衡水');
INSERT INTO `goods` VALUES (83, 'http://wk.p.680.com/fuwu_shoutu/35_393.jpg', 5000, 'APP开发', '光速创宇', '河北-衡水');
INSERT INTO `goods` VALUES (84, 'http://wk.p.680.com/fuwu_shoutu/34_11.jpg', 5000, '软件开发', '光速创宇', '河北-衡水');
INSERT INTO `goods` VALUES (85, 'http://wk.p.680.com/fuwu_shoutu/2_64.jpg', 2000, '整站建设', '光速创宇', '河北-衡水');
INSERT INTO `goods` VALUES (86, 'http://wk.p.680.com/fuwu_shoutu/2_6.jpg', 200, 'UI设计', '光速创宇', '河北-衡水');
INSERT INTO `goods` VALUES (87, 'https://www.680.com/images/2016/nopic_fw.jpg', 2000, 'APP开发', '山东欣鲸网络科技有限公司', '上海');
INSERT INTO `goods` VALUES (88, 'https://www.680.com/images/2016/nopic_fw.jpg', 20000, 'IM即时通讯源码山东欣鲸网络科技', '山东欣鲸网络科技有限公司', '上海');
INSERT INTO `goods` VALUES (89, 'https://www.680.com/images/2016/nopic_fw.jpg', 8000, '手机答题APP', '山东欣鲸网络科技有限公司', '上海');
INSERT INTO `goods` VALUES (90, 'https://www.680.com/images/2016/nopic_fw.jpg', 10000, 'Python 人工智能', '万盟网络科技有限公司', '山东-烟台');
INSERT INTO `goods` VALUES (91, 'https://www.680.com/images/2016/nopic_fw.jpg', 100, '文案撰写/新闻稿/演讲稿/广告语/标书/PPT', '天津果糖互联网科技有限责任公司', '天津-');
INSERT INTO `goods` VALUES (92, 'https://www.680.com/images/2016/nopic_fw.jpg', 300, '音频制作/去噪修音', '天津果糖互联网科技有限责任公司', '天津');
INSERT INTO `goods` VALUES (93, 'https://www.680.com/images/2016/nopic_fw.jpg', 500, '视频制作/flash动画/ui动效设计', '天津果糖互联网科技有限责任公司', '天津');
INSERT INTO `goods` VALUES (94, 'https://www.680.com/images/2016/nopic_fw.jpg', 500, 'UI设计/动效设计/成套ui框架', '天津果糖互联网科技有限责任公司', '天津');
INSERT INTO `goods` VALUES (95, 'https://www.680.com/images/2016/nopic_fw.jpg', 3000, 'VI设计/物料/京津冀可制作送货及上门部署', '天津果糖互联网科技有限责任公司', '天津');
INSERT INTO `goods` VALUES (96, 'https://www.680.com/images/2016/nopic_fw.jpg', 300, 'LOGO设计/商标/字体/应用场景方案', '天津果糖互联网科技有限责任公司', '天津');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` int(50) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (8, 'lw', '13233333333', '123');
INSERT INTO `user` VALUES (9, 'zsw', '15513213123', '202cb');
INSERT INTO `user` VALUES (10, 'sag', '15143213123', '202cb');
INSERT INTO `user` VALUES (14, 'cjh', '13247536165', '202cb');
INSERT INTO `user` VALUES (15, 'zxc', '13242424442', '202cb962ac59075');
INSERT INTO `user` VALUES (16, 'xcv', '13255555555', '202cb962ac59075');
INSERT INTO `user` VALUES (17, 'zs', '13244445666', '202cb962ac59075');

SET FOREIGN_KEY_CHECKS = 1;
