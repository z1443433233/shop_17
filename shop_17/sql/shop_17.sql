/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : localhost:3306
 Source Schema         : shop_17

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 18/12/2019 20:39:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for shop
-- ----------------------------
DROP TABLE IF EXISTS `shop`;
CREATE TABLE `shop`  (
  `shop_id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_kind_id` int(11) NOT NULL,
  PRIMARY KEY (`shop_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 65 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop
-- ----------------------------
INSERT INTO `shop` VALUES (1, 1);
INSERT INTO `shop` VALUES (2, 1);
INSERT INTO `shop` VALUES (3, 1);
INSERT INTO `shop` VALUES (4, 1);
INSERT INTO `shop` VALUES (5, 1);
INSERT INTO `shop` VALUES (6, 1);
INSERT INTO `shop` VALUES (7, 1);
INSERT INTO `shop` VALUES (8, 1);
INSERT INTO `shop` VALUES (9, 2);
INSERT INTO `shop` VALUES (10, 2);
INSERT INTO `shop` VALUES (11, 2);
INSERT INTO `shop` VALUES (12, 2);
INSERT INTO `shop` VALUES (13, 2);
INSERT INTO `shop` VALUES (14, 2);
INSERT INTO `shop` VALUES (15, 2);
INSERT INTO `shop` VALUES (16, 2);
INSERT INTO `shop` VALUES (17, 3);
INSERT INTO `shop` VALUES (18, 3);
INSERT INTO `shop` VALUES (19, 3);
INSERT INTO `shop` VALUES (20, 3);
INSERT INTO `shop` VALUES (21, 3);
INSERT INTO `shop` VALUES (22, 3);
INSERT INTO `shop` VALUES (23, 3);
INSERT INTO `shop` VALUES (24, 3);
INSERT INTO `shop` VALUES (25, 4);
INSERT INTO `shop` VALUES (26, 4);
INSERT INTO `shop` VALUES (27, 4);
INSERT INTO `shop` VALUES (28, 4);
INSERT INTO `shop` VALUES (29, 4);
INSERT INTO `shop` VALUES (30, 4);
INSERT INTO `shop` VALUES (31, 4);
INSERT INTO `shop` VALUES (32, 4);
INSERT INTO `shop` VALUES (33, 5);
INSERT INTO `shop` VALUES (34, 5);
INSERT INTO `shop` VALUES (35, 5);
INSERT INTO `shop` VALUES (36, 5);
INSERT INTO `shop` VALUES (37, 5);
INSERT INTO `shop` VALUES (38, 5);
INSERT INTO `shop` VALUES (39, 5);
INSERT INTO `shop` VALUES (40, 5);
INSERT INTO `shop` VALUES (41, 6);
INSERT INTO `shop` VALUES (42, 6);
INSERT INTO `shop` VALUES (43, 6);
INSERT INTO `shop` VALUES (44, 6);
INSERT INTO `shop` VALUES (45, 6);
INSERT INTO `shop` VALUES (46, 6);
INSERT INTO `shop` VALUES (47, 6);
INSERT INTO `shop` VALUES (48, 6);
INSERT INTO `shop` VALUES (49, 7);
INSERT INTO `shop` VALUES (50, 7);
INSERT INTO `shop` VALUES (51, 7);
INSERT INTO `shop` VALUES (52, 7);
INSERT INTO `shop` VALUES (53, 7);
INSERT INTO `shop` VALUES (54, 7);
INSERT INTO `shop` VALUES (55, 7);
INSERT INTO `shop` VALUES (56, 7);
INSERT INTO `shop` VALUES (57, 8);
INSERT INTO `shop` VALUES (58, 8);
INSERT INTO `shop` VALUES (59, 8);
INSERT INTO `shop` VALUES (60, 8);
INSERT INTO `shop` VALUES (61, 8);
INSERT INTO `shop` VALUES (62, 8);
INSERT INTO `shop` VALUES (63, 8);
INSERT INTO `shop` VALUES (64, 8);

-- ----------------------------
-- Table structure for shop_info
-- ----------------------------
DROP TABLE IF EXISTS `shop_info`;
CREATE TABLE `shop_info`  (
  `shop_id` int(11) NOT NULL,
  `shop_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `shop_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `shop_money` double NOT NULL,
  `shop_details` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `shop_img` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `shop_kind_id` int(11) NOT NULL,
  PRIMARY KEY (`shop_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_info
-- ----------------------------
INSERT INTO `shop_info` VALUES (1, '妙洁一次性纸杯', '妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱', 19.8, '洁家用品来自于在中国台湾超过60年历史的脱普企业集团，在中国深耕已有27年。妙洁本着为中国现代化家庭提供更健康、方便、轻松的生活理念，不断推出最新最好的产品满足消费者更高的生活需求！\r\n　　至今妙洁家用品已有保鲜膜、保鲜袋、拖把、手套、抹布、百洁布、一次性用品、垃圾袋、保鲜盒9大类两百余种的家用系列产品。\r\n　　妙洁于2017年获得“2017年全球品牌足迹榜之中国快消品牌50强”之殊荣。', 'https://img.alicdn.com/imgextra/i1/725677994/O1CN01REfBwi28vIj5bk06p_!!725677994-0-sm.jpg_430x430q90.jpg', 1);
INSERT INTO `shop_info` VALUES (2, '商吉一次性纸杯', '商吉豆浆杯带盖杯子家用一次性奶茶杯纸杯咖啡杯商用打包杯热饮杯', 29.9, '上海商吉是中国领先的一-次性食品饮料包装供应商，我们始终坚守品质至上原则,并围绕客户需求持续创新。我们致力于为餐饮企业、品牌咖啡店、奶茶店、面包坊、星级酒店、商务办公及高端家用提供有竞争力的包装解决方案和服务，为客户创造最大价值。希望通过快速、专业、热情的服务，让您坚定与我们同行的信心!', 'https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i1/2210319705/O1CN012LYwH875JboD2iE_!!2210319705.jpg_430x430q90.jpg', 1);
INSERT INTO `shop_info` VALUES (3, '兰月星一次性纸杯', '蓝月星500只纸杯一次性杯子整箱包邮加厚广告纸杯定做印logo', 18.3, '兰月星有限股份公司办公室地址位于素有“女皇故里”、“蜀北重镇”、“川北门户”和“巴蜀金三角”之称的广元，中国 四川 广元市 全国，公司成立以来发展迅速，业务不断发展壮大我公司主要经营医药，我们有好的产品和专业的销售和技术团队，我公司属于广元防伪技术产品公司行业，如果您对我公司的产品服务有兴趣，期待您在线留言或者来电咨询', 'https://gd2.alicdn.com/imgextra/i2/2200757674672/O1CN01ExIElB1kNoxkbDBIn_!!2200757674672.jpg_400x400.jpg', 1);
INSERT INTO `shop_info` VALUES (4, '盛世康洁一次性纸杯', '盛世康洁 康洁纸杯 一次性纸杯加厚环保纸杯子9盎司500只装 茶 50', 59, '快速出货,加厚定制,logou定制', 'https://gd4.alicdn.com/imgextra/i1/0/TB1ca_3uStYBeNjSspaXXaOOFXa_!!0-item_pic.jpg_400x400.jpg', 1);
INSERT INTO `shop_info` VALUES (5, '心相印一次性纸杯', '心相印纸杯纸杯一次性杯子茶水杯家用加厚商用广告杯纸杯200个', 29.9, '心相印以温馨、浪漫的主题调性，不断创新，竭诚提高服务质量，用心关爱身边的每一个人，利用领先技术成就卓越品质，为广大消费者提供卫生、优质的生活用纸。值得信赖的高品质及温馨浪漫的感受，为您带来随时相伴的至纯关爱，守护您的健康快乐生活。', 'https://gd3.alicdn.com/imgextra/i2/2980058804/O1CN01b4lrEF2EuHSb3vY3g_!!2980058804.jpg_400x400.jpg', 1);
INSERT INTO `shop_info` VALUES (6, '得力一次性纸杯', '得力纸杯一次性100只装家用办公聚餐加厚纸杯饮水杯纸杯子', 21.9, '得力集团从20世纪90年代以来，连续保持高速增长。作为中国最大的文具供应商，得力品牌先后获得“国家免检产品”、“中国文具十大品牌”、“中国出口名牌”、“中国最畅销文具品牌”、“中国驰名商标”等荣誉称号，并先后通过ISO9001、ISO14000等体系认证。在未来，得力的发展目标是成为世界领先的综合文具供应商，创建具有全球竞争力的企业。', 'https://img.alicdn.com/imgextra/i2/407910984/O1CN01c23RAB1J8iDxvpEaY_!!0-item_pic.jpg_430x430q90.jpg', 1);
INSERT INTO `shop_info` VALUES (7, '静宝', '静宝定制一次性纸杯印logo设计1000只杯子牛皮纸原浆杯子办公结婚定制', 82, '快速出货,加厚定制,logou定制', 'https://gd4.alicdn.com/imgextra/i4/1991626380/O1CN01o7iPXU1x05SigjFdc_!!1991626380.jpg_400x400.jpg', 1);
INSERT INTO `shop_info` VALUES (8, '佳之堡', '竹纤维本色一次性纸杯加厚家用一次性杯子饮料咖啡杯高档商用奶茶', 12.9, '快速出货,加厚定制,logou定制', 'https://img.alicdn.com/imgextra/i1/516591545/O1CN01xvwbLY1NHeP0jbSYV_!!0-item_pic.jpg_430x430q90.jpg', 1);
INSERT INTO `shop_info` VALUES (9, '和创', '合创包装一次性塑料杯，200ml大量批发1000只', 15.9, '潮州市潮安区合创包装有限公司是一家专门从事标签、工艺盒、礼盒、手提袋及画册等中高档纸塑印刷企业。我司自成立以来，秉承“质量为本、诚信为旨、客户为尊”的经营理念，承接中外企业的印刷业务，取得了良好的社会、经济效益，具有自己独有的竞争力及市场潜力。目前，我司拥有海德堡四色、五色印刷机，9+1全轮转UV标签机，全自动复膜机，切膜机等设备，可以承印大批量彩色印刷品及满足客户各种个性化要求。而且公司在管理上遵循高质量的现代化管理理念，本着“高效、团结、诚信、务实”的精神，注重企业高素质人才培养、拥有一支“年轻化、专业化、知识化”人才队伍，为客户提供最及时、最优质的服务。公司以自身强大的生产能力、一流的产品质量、优质的服务，跻身于印刷行业，精益求精，努力适应市场环境变化，采用世界先进技术与方法，持续改善产品、服务和管理的质量，争取把合创包装办成一流的印刷企业，旨在对客户提供优质服务，同时为中国印刷业作出贡献。', 'https://gd3.alicdn.com/imgextra/i1/2925823768/O1CN01eLSDdl1dhmw9SXP5A_!!2925823768.jpg_400x400.jpg', 2);
INSERT INTO `shop_info` VALUES (10, '家优诚品', '一次性杯子航空杯硬塑加厚200只 透明塑料杯200ml透明硬水杯', 49, '家优诚品(邵武)竹制品有限公司成立于2019年08月29日，注册地位于福建省邵武市水北解放路310号，法人代表为赵建敏。经营范围包括竹制品加工、销售。（依法须经批准的项目，经相关部门批准后方可开展经营活动）', 'https://img.alicdn.com/imgextra/i4/727366959/O1CN010b1vQH21HGmmOFFVQ_!!0-item_pic.jpg_430x430q90.jpg', 2);
INSERT INTO `shop_info` VALUES (11, '十分田', '一次性加厚塑料杯 饮料杯 PET冰杯 果汁杯 刨冰杯 冷杯 咖啡杯', 98, '自2005上海十分田贸易有限公司（盒风物语）注册以来，上海十分田贸易有限公司（盒风物语）一直秉承“诚信、专业”的经营理念,坚持用户至上、质量第一，服务了一批又一批的客户。公司以丰富的生产加工经验，为您提供酒店用品; 烘培用品; 酒店用品; 烘培用品; 打包袋的生产加工。选择我们就是选择诚信 。', 'https://img.alicdn.com/imgextra/i4/727366959/O1CN010b1vQH21HGmmOFFVQ_!!0-item_pic.jpg_430x430q90.jpg', 2);
INSERT INTO `shop_info` VALUES (12, 'PAMPAS/潘帕斯', '加厚pet饮料瓶外卖一次性果汁酸奶茶杯子透明饮料杯塑料带盖', 46.48, 'PAMPAS潘帕斯，美容护理蒸脸洁面按摩方面专家。 按摩刷知名名品-按摩刷月销第一名。PAMPAS/潘帕斯作为按摩刷市场人气牌子，其入库产品[高级版正品魔蝎刷摩羯刷按摩刷经络刷瘦身刷五行刷美体刷创造了月销3651件的成绩，经销商pampas旗舰店，获得了34.91％的市场占有率。', 'https://img.alicdn.com/imgextra/i2/2206593056817/O1CN01NqKsuO20EEXvzfrNK_!!2206593056817.jpg_430x430q90.jpg', 2);
INSERT INTO `shop_info` VALUES (13, 'PAMPAS/潘帕斯', '封口包装塑料一次性PET空罐子饮料杯 密封瓶透明店奶茶易拉罐打包', 378, 'PAMPAS潘帕斯，美容护理蒸脸洁面按摩方面专家。 按摩刷知名名品-按摩刷月销第一名。PAMPAS/潘帕斯作为按摩刷市场人气牌子，其入库产品[高级版正品魔蝎刷摩羯刷按摩刷经络刷瘦身刷五行刷美体刷创造了月销3651件的成绩，经销商pampas旗舰店，获得了34.91％的市场占有率。', 'https://img.alicdn.com/imgextra/i4/2201416834019/O1CN01ulc75Z1fYkLgRLnYs_!!2201416834019.jpg_430x430q90.jpg', 2);
INSERT INTO `shop_info` VALUES (14, '万道', '一次性90口径网红U型胖胖奶茶杯pet高透塑料打包500ml果汁冷饮杯', 99.2, 'PET塑料瓶不仅广泛用于包装碳酸饮料、饮用水、果汁、酵素和茶饮料等，是当今使用量最大的饮料包装，而且广泛用于食品、化工、药品包装等众多领域。PET塑料在包装领域中具有广泛的应用，无论是包装膜、卷材、还是啤酒瓶，都使用PET塑料。但是当这些材料被废弃时，面临着如何处理的问题。每年中国生产的PET塑料瓶达数百亿只，预计到2005年，每年将有50万吨以上的PET用于PET塑料瓶的制造。\r\n', 'https://img.alicdn.com/imgextra/i4/3012164906/O1CN01eLXZhL1m6zfreSG3O_!!3012164906.jpg_430x430q90.jpg', 2);
INSERT INTO `shop_info` VALUES (15, '百分百环保餐饮具', '磨砂注塑杯 一次性杯子90口径加厚奶茶杯水果饮料杯带盖700ml定制', 42.8, 'PET塑料瓶不仅广泛用于包装碳酸饮料、饮用水、果汁、酵素和茶饮料等，是当今使用量最大的饮料包装，而且广泛用于食品、化工、药品包装等众多领域。PET塑料在包装领域中具有广泛的应用，无论是包装膜、卷材、还是啤酒瓶，都使用PET塑料。但是当这些材料被废弃时，面临着如何处理的问题。每年中国生产的PET塑料瓶达数百亿只，预计到2005年，每年将有50万吨以上的PET用于PET塑料瓶的制造。\r\n', 'https://gd4.alicdn.com/imgextra/i3/2796044222/O1CN01QnY2rh1h3ijDojtI4_!!2796044222.jpg_400x400.jpg', 2);
INSERT INTO `shop_info` VALUES (16, '盛源', '一次性小杯子1000只装塑料杯饮杯家用加厚小号150ml迷你硬质批发', 34.9, 'PET塑料瓶不仅广泛用于包装碳酸饮料、饮用水、果汁、酵素和茶饮料等，是当今使用量最大的饮料包装，而且广泛用于食品、化工、药品包装等众多领域。PET塑料在包装领域中具有广泛的应用，无论是包装膜、卷材、还是啤酒瓶，都使用PET塑料。但是当这些材料被废弃时，面临着如何处理的问题。每年中国生产的PET塑料瓶达数百亿只，预计到2005年，每年将有50万吨以上的PET用于PET塑料瓶的制造。\r\n', 'https://gd3.alicdn.com/imgextra/i4/2798396751/O1CN01jFJHSF1zk0PVTepkM_!!2798396751.jpg_400x400.jpg', 2);
INSERT INTO `shop_info` VALUES (17, '盛世康洁一次性纸杯', '盛世康洁 康洁纸杯 一次性纸杯加厚环保纸杯子9盎司500只装 茶 50', 59, '快速出货,加厚定制,logou定制', 'https://gd4.alicdn.com/imgextra/i1/0/TB1ca_3uStYBeNjSspaXXaOOFXa_!!0-item_pic.jpg_400x400.jpg', 3);
INSERT INTO `shop_info` VALUES (18, 'PAMPAS/潘帕斯', '加厚pet饮料瓶外卖一次性果汁酸奶茶杯子透明饮料杯塑料带盖', 46.48, 'PAMPAS潘帕斯，美容护理蒸脸洁面按摩方面专家。 按摩刷知名名品-按摩刷月销第一名。PAMPAS/潘帕斯作为按摩刷市场人气牌子，其入库产品[高级版正品魔蝎刷摩羯刷按摩刷经络刷瘦身刷五行刷美体刷创造了月销3651件的成绩，经销商pampas旗舰店，获得了34.91％的市场占有率。', 'https://img.alicdn.com/imgextra/i2/2206593056817/O1CN01NqKsuO20EEXvzfrNK_!!2206593056817.jpg_430x430q90.jpg', 3);
INSERT INTO `shop_info` VALUES (19, '万道', '一次性90口径网红U型胖胖奶茶杯pet高透塑料打包500ml果汁冷饮杯', 99.2, 'PET塑料瓶不仅广泛用于包装碳酸饮料、饮用水、果汁、酵素和茶饮料等，是当今使用量最大的饮料包装，而且广泛用于食品、化工、药品包装等众多领域。PET塑料在包装领域中具有广泛的应用，无论是包装膜、卷材、还是啤酒瓶，都使用PET塑料。但是当这些材料被废弃时，面临着如何处理的问题。每年中国生产的PET塑料瓶达数百亿只，预计到2005年，每年将有50万吨以上的PET用于PET塑料瓶的制造。\r\n', 'https://img.alicdn.com/imgextra/i4/3012164906/O1CN01eLXZhL1m6zfreSG3O_!!3012164906.jpg_430x430q90.jpg', 3);
INSERT INTO `shop_info` VALUES (20, '得力一次性纸杯', '得力纸杯一次性100只装家用办公聚餐加厚纸杯饮水杯纸杯子', 21.9, '得力集团从20世纪90年代以来，连续保持高速增长。作为中国最大的文具供应商，得力品牌先后获得“国家免检产品”、“中国文具十大品牌”、“中国出口名牌”、“中国最畅销文具品牌”、“中国驰名商标”等荣誉称号，并先后通过ISO9001、ISO14000等体系认证。在未来，得力的发展目标是成为世界领先的综合文具供应商，创建具有全球竞争力的企业。', 'https://img.alicdn.com/imgextra/i2/407910984/O1CN01c23RAB1J8iDxvpEaY_!!0-item_pic.jpg_430x430q90.jpg', 3);
INSERT INTO `shop_info` VALUES (21, '百分百环保餐饮具', '磨砂注塑杯 一次性杯子90口径加厚奶茶杯水果饮料杯带盖700ml定制', 42.8, 'PET塑料瓶不仅广泛用于包装碳酸饮料、饮用水、果汁、酵素和茶饮料等，是当今使用量最大的饮料包装，而且广泛用于食品、化工、药品包装等众多领域。PET塑料在包装领域中具有广泛的应用，无论是包装膜、卷材、还是啤酒瓶，都使用PET塑料。但是当这些材料被废弃时，面临着如何处理的问题。每年中国生产的PET塑料瓶达数百亿只，预计到2005年，每年将有50万吨以上的PET用于PET塑料瓶的制造。\r\n', 'https://gd4.alicdn.com/imgextra/i3/2796044222/O1CN01QnY2rh1h3ijDojtI4_!!2796044222.jpg_400x400.jpg', 3);
INSERT INTO `shop_info` VALUES (22, '佳之堡', '竹纤维本色一次性纸杯加厚家用一次性杯子饮料咖啡杯高档商用奶茶', 12.9, '快速出货,加厚定制,logou定制', 'https://img.alicdn.com/imgextra/i1/516591545/O1CN01xvwbLY1NHeP0jbSYV_!!0-item_pic.jpg_430x430q90.jpg', 3);
INSERT INTO `shop_info` VALUES (23, 'PAMPAS/潘帕斯', '封口包装塑料一次性PET空罐子饮料杯 密封瓶透明店奶茶易拉罐打包', 378, 'PAMPAS潘帕斯，美容护理蒸脸洁面按摩方面专家。 按摩刷知名名品-按摩刷月销第一名。PAMPAS/潘帕斯作为按摩刷市场人气牌子，其入库产品[高级版正品魔蝎刷摩羯刷按摩刷经络刷瘦身刷五行刷美体刷创造了月销3651件的成绩，经销商pampas旗舰店，获得了34.91％的市场占有率。', 'https://img.alicdn.com/imgextra/i4/2201416834019/O1CN01ulc75Z1fYkLgRLnYs_!!2201416834019.jpg_430x430q90.jpg', 3);
INSERT INTO `shop_info` VALUES (24, '家优诚品', '一次性杯子航空杯硬塑加厚200只 透明塑料杯200ml透明硬水杯', 49, '家优诚品(邵武)竹制品有限公司成立于2019年08月29日，注册地位于福建省邵武市水北解放路310号，法人代表为赵建敏。经营范围包括竹制品加工、销售。（依法须经批准的项目，经相关部门批准后方可开展经营活动）', 'https://img.alicdn.com/imgextra/i4/727366959/O1CN010b1vQH21HGmmOFFVQ_!!0-item_pic.jpg_430x430q90.jpg', 3);
INSERT INTO `shop_info` VALUES (25, 'onlycook', 'onlycook 鸡翅木筷子 特惠家用筷环保无漆无蜡高档实木筷 10双套装 尖头筷/10双装', 29.1, 'onlycook就推出高品质餐具产品，一举成为行业标准的起草者和最早执行者。依靠品质立身与技术创新，onlycook迅速成长为中国餐具行业第一品牌，成为中国餐具行业发展的“风向标”。\r\nonlycook不断努力，造就的不仅是国内餐具行业第一，更以值得信赖的品质、智巧的设计与技术的创新，帮助全球千万消费者走上了健康、舒适、充满新意的现代化家居生活。\r\n“演绎生活智慧”，onlycook已经成为追求品质生活的消费者推崇和信赖的品牌，onlycook追求卓越的努力也得到了行业与社会的一致认可：2002年onlycook获得“中国驰名商标”称号，2005年入选“中国最具生命力百强企业”，2006年获得中国商务部颁发的“中国最具竞争力企业”称号，2007年荣膺“全国消费者最喜爱的企业品牌”，2008年入选“年中国500最具价格品牌榜单”。2009年，onlycook被认定为“国家高新技术企业”。', 'https://img14.360buyimg.com/n0/jfs/t1/87991/5/4246/298652/5de5e766E703afd12/f00dded81be79248.jpg', 4);
INSERT INTO `shop_info` VALUES (26, '半物生活', '半物生活 便携餐具三件套 学生儿童餐具套装 木制环保户外旅行餐具 筷子叉子勺子组合装 创意三角柄款', 41.8, '用模具对纸浆经真空吸附成型、烘干，再经深加工制成的可以代替金属，塑料来供人们所使用的餐具', 'https://img14.360buyimg.com/n0/jfs/t7198/274/120616081/180233/f0a92aac/597c3fe9N11c9853b.jpg', 4);
INSERT INTO `shop_info` VALUES (27, '泉林本色', '泉林本色 一次性餐具户外可降解环保可加热烘烤600ml加厚纸餐盒*20支', 29.9, '山东泉林集团有限公司始建于1976年,是全球技术和规模领先的秸秆综合利用企业集团。公司建有国家级企业技术中心，是国家创新型企业、国家技术创新示范企业、国家第一批循环经济试点单位、全国循环经济工作先进单位、国家第一批工业品牌培育示范企业、全国环保印刷纸张标准化试验与推广基地。', 'https://img14.360buyimg.com/n0/jfs/t1/11612/27/5586/242710/5c35ad96Ed8afd459/2b81fe1aa0360062.jpg', 4);
INSERT INTO `shop_info` VALUES (28, '双枪(Suncha)', '双枪（Suncha）一次性竹牙签 环保袋装卫生量贩装大包装2400支牙签 YQ1125（单双头随机发货）', 17.9, '双枪科技股份有限公司，是一家专注于餐厨具的制造商，主要产品有筷子、砧板、勺铲、稻壳餐具等，系列齐全，款式丰富。公司紧紧围绕客户需求持续创新，致力于为客户提供优质的产品和服务，为亿万家庭打造健康环保、有品位有文化的生活。凭借卓越的工艺水平、稳定的产品质量、优秀的创意设计，在行业内已经具备了较高的口碑和品牌知名度。', 'https://img14.360buyimg.com/n0/jfs/t3148/94/3950841165/194125/5e95c6d4/57fd936eN8d9f1970.jpg', 4);
INSERT INTO `shop_info` VALUES (29, '洁能', '洁能 500ML一次性纸碗（40只装）户外野营烧烤 可降解 防水防油 JN-0211', 29.5, '山东洁能集团有限公司于2000年12月28日在乐陵市市场监督管理局登记成立。法定代表人高明，公司经营范围包括合成洗涤剂、餐具洗涤剂制造、销售，消毒液等。', 'https://img14.360buyimg.com/n0/jfs/t673/77/386760972/98000/c75e082b/5463149fNefb1a7e4.jpg', 4);
INSERT INTO `shop_info` VALUES (30, '京惠思创', '京惠思创 JH0238 一次性餐盘7英寸18cm 户外烧烤野餐用品 可降解环保纸盘蛋糕盘聚会家庭饭盘子 50只', 39.9, '京东自营店', 'https://img14.360buyimg.com/n0/jfs/t1/57959/15/2414/201925/5d03419cE9b6f6722/c2406f57b29582df.jpg', 4);
INSERT INTO `shop_info` VALUES (31, '时生（SHISEN）', '一次性筷子方便筷打包圆筷套装独立包装套装卫生环保天然竹筷内含牙签 50双/包', 9.9, '京东自营店', 'https://img14.360buyimg.com/n0/jfs/t1/39833/2/14985/161259/5d6109d8E3b0304d8/2b0262dac4fc7595.jpg', 4);
INSERT INTO `shop_info` VALUES (32, '贩美丽', '贩美丽 一次性筷子批发 竹筷卫生筷 环保方便筷独立包装 圆筷90双独立包装(无牙签)', 12, '杭州贩美丽塑业有限公司成立于2012年06月18日，注册地位于桐庐县城洋塘路256号，法人代表为徐瑜。经营范围包括生产、销售：一次性塑料制品、日用塑料制品。', 'https://img14.360buyimg.com/n0/jfs/t2782/111/2005748490/329523/6318ce0c/57528d58Ncb20abdc.jpg', 4);
INSERT INTO `shop_info` VALUES (33, '百草园', '百草园 打包盒一次性碗 一次性饭盒快餐盒 一次性餐具厨房用品 加厚圆形外卖盒120只带盖纸碗', 99, '纸餐盒，是指制作所述纸饭盒所用的材料为纸材料的餐盒，一般为一次性纸饭盒，其使用方便，成本低廉，已广泛运用于餐饮行业中。由于采用纸材料制作，因而既可以回收使用，又可以通过掩埋或燃烧等方式处理，而不致于造成严重的环境污染，具有较高的环保价值。', 'https://img14.360buyimg.com/n1/s546x546_jfs/t28051/89/1574511204/355333/23c04d46/5ce4b78cN0bd81f01.jpg', 5);
INSERT INTO `shop_info` VALUES (34, '庭好', '庭好 一次性纸碗甘蔗纸浆汤碗50只装350ml无盖加厚可降解泡面烧烤野餐盒用品餐具', 26.9, '纸餐盒，是指制作所述纸饭盒所用的材料为纸材料的餐盒，一般为一次性纸饭盒，其使用方便，成本低廉，已广泛运用于餐饮行业中。由于采用纸材料制作，因而既可以回收使用，又可以通过掩埋或燃烧等方式处理，而不致于造成严重的环境污染，具有较高的环保价值。', 'https://img14.360buyimg.com/n0/jfs/t1/49383/27/9754/277954/5d706000Eed77f8ae/c0134edbb88e6fea.jpg', 5);
INSERT INTO `shop_info` VALUES (35, '茶花', '茶花 一次性快餐盒打包盒子8只装 甘蔗纸浆（180*132mm）G09009', 15.9, '纸餐盒，是指制作所述纸饭盒所用的材料为纸材料的餐盒，一般为一次性纸饭盒，其使用方便，成本低廉，已广泛运用于餐饮行业中。由于采用纸材料制作，因而既可以回收使用，又可以通过掩埋或燃烧等方式处理，而不致于造成严重的环境污染，具有较高的环保价值。', 'https://img14.360buyimg.com/n0/jfs/t1/1427/33/6531/352555/5ba3347dE9ef462d2/cc6b6d977abca924.jpg', 5);
INSERT INTO `shop_info` VALUES (36, '京惠思创', '京惠思创 JH0248 锡纸盒外卖铝箔盘野餐烧烤盘长方形烤肉盘餐盒 410ml 20只装', 29.9, '纸餐盒，是指制作所述纸饭盒所用的材料为纸材料的餐盒，一般为一次性纸饭盒，其使用方便，成本低廉，已广泛运用于餐饮行业中。由于采用纸材料制作，因而既可以回收使用，又可以通过掩埋或燃烧等方式处理，而不致于造成严重的环境污染，具有较高的环保价值。', 'https://img14.360buyimg.com/n1/s546x546_jfs/t1/69715/34/12937/245988/5da2ce94E41df06dc/0cece2909fb81d39.jpg', 5);
INSERT INTO `shop_info` VALUES (37, '新鲜生活', '新鲜生活 一次性竹纤维本色纸质带盖餐盒打包盒 5只装 SH-7331', 13.9, '纸餐盒，是指制作所述纸饭盒所用的材料为纸材料的餐盒，一般为一次性纸饭盒，其使用方便，成本低廉，已广泛运用于餐饮行业中。由于采用纸材料制作，因而既可以回收使用，又可以通过掩埋或燃烧等方式处理，而不致于造成严重的环境污染，具有较高的环保价值。', 'https://img14.360buyimg.com/n0/jfs/t1/2224/4/13756/419653/5bd95432Ee2b824cb/66fc2c9acadba78b.jpg', 5);
INSERT INTO `shop_info` VALUES (38, '特美居', '特美居 一次性纸盘甘蔗纸浆水果蛋糕盘子50只装7英寸加厚可降解烧烤野餐盒碟子用品餐具 TMJ-790', 28.9, '纸餐盒，是指制作所述纸饭盒所用的材料为纸材料的餐盒，一般为一次性纸饭盒，其使用方便，成本低廉，已广泛运用于餐饮行业中。由于采用纸材料制作，因而既可以回收使用，又可以通过掩埋或燃烧等方式处理，而不致于造成严重的环境污染，具有较高的环保价值。', 'https://img14.360buyimg.com/n1/s546x546_jfs/t1/44170/38/6899/235696/5d09971bE93f5f2e6/52e9dba07e112d0a.jpg', 5);
INSERT INTO `shop_info` VALUES (39, '喇叭花', '喇叭花一次性牛皮纸餐盒牛皮纸外卖盒打包盒快餐盒长方形便当盒折叠饭盒 8#-1400ml50个 纸盒', 33, '纸餐盒，是指制作所述纸饭盒所用的材料为纸材料的餐盒，一般为一次性纸饭盒，其使用方便，成本低廉，已广泛运用于餐饮行业中。由于采用纸材料制作，因而既可以回收使用，又可以通过掩埋或燃烧等方式处理，而不致于造成严重的环境污染，具有较高的环保价值。', 'https://img14.360buyimg.com/n1/s546x546_jfs/t1/21844/27/14003/373839/5ca44783E6777dc22/c7ad7ab3e447d61d.jpg', 5);
INSERT INTO `shop_info` VALUES (40, '津熙优品', '津熙优品 Jxsuperior 铝箔四格快餐盒一次性航空快餐盒便当盒外卖盒锡纸盒带铝箔盖15只装JX59940.15', 31.9, '纸餐盒，是指制作所述纸饭盒所用的材料为纸材料的餐盒，一般为一次性纸饭盒，其使用方便，成本低廉，已广泛运用于餐饮行业中。由于采用纸材料制作，因而既可以回收使用，又可以通过掩埋或燃烧等方式处理，而不致于造成严重的环境污染，具有较高的环保价值。', 'https://img14.360buyimg.com/n1/s546x546_jfs/t8455/221/738840973/336538/4e0aad20/59ae3bacNabce0643.jpg', 5);
INSERT INTO `shop_info` VALUES (41, '双枪（Suncha）', '双枪（Suncha）不锈钢牛排刀叉勺西餐餐具加厚加长餐刀勺子叉子三件套刀组合装 CF1114', 19.9, '双枪科技股份有限公司，是一家专注于餐厨具的制造商，主要产品有筷子、砧板、勺铲、稻壳餐具等，系列齐全，款式丰富。公司紧紧围绕客户需求持续创新，致力于为客户提供优质的产品和服务，为亿万家庭打造健康环保、有品位有文化的生活。凭借卓越的工艺水平、稳定的产品质量、优秀的创意设计，在行业内已经具备了较高的口碑和品牌知名度。', 'https://img14.360buyimg.com/n0/jfs/t1/79947/31/2327/85593/5d0b1806Ecbce916c/fb12a44f529a2d9b.jpg', 6);
INSERT INTO `shop_info` VALUES (42, '帕帕罗蒂（PAPAROTTY）', '帕帕罗蒂（PAPAROTTY）刀叉勺三件套 刀叉套装不锈钢牛排刀叉勺 西餐餐具', 39, '帕帕罗蒂（Pappa Roti）品牌发源于马来西亚马来语的寓意是爸爸的面包或爸爸烤的面包，帕帕罗蒂得到广大群众的喜爱和拥戴。金黄色的外皮，咖啡浓香的味道，松软的面包内层和浓郁的奶香，是帕帕罗蒂面包的特征。自2003年始，帕帕罗蒂品牌面包已经在全球各地发展业务和开辟市场， 帕帕罗蒂已经在全球扎根四百余家（包含咖啡厅模式或快捷模式）。长沙帝谱世食品贸易有限公司成立于2012年4月，总部设在在长沙。公司是马来西亚帕帕罗蒂有限公司(Papparoti (M) SdnBhd)特别授权在中华人民共和国执行和运营帕帕罗蒂品牌的总经销商.', 'https://img14.360buyimg.com/n0/jfs/t1/70817/10/2203/197497/5d0870b5Ee440cbee/d97d6fada7b93d07.jpg', 6);
INSERT INTO `shop_info` VALUES (43, '美厨（maxcook）', '美厨（maxcook）刀叉勺套装 西餐餐具情侣俩人份 MCGC-165 加厚 防烫 耐摔', 49, '广州美厨智能家居科技股份有限公司的前身是广州新美厨贸易有限公司，始创于2011年，多年来，专业经营各类不锈钢餐厨具，拥有自主品牌“MAXCOOK”美厨。\r\n\r\n美厨产品质量有保证，款式多样，与国内众多知名零售企业建立了全国合作，以物美价廉的商品、优越的品质赢得市场，获得了众多消费者的青睐。\r\n\r\n公司主张勤劳、朴实、团结、创新的企业精神，努力营造“包容和谐”的文化氛围，坚持以变化和创新的开发思路去面向市场，贴近市场，服务市场。公司将秉承“待之以诚，持之以恒”的信念为顾客提供持续而优质的服务。', 'https://img14.360buyimg.com/n0/jfs/t3139/338/1205163006/57385/4c64d1be/57c808b1Nee0f0c01.jpg', 6);
INSERT INTO `shop_info` VALUES (44, '京东京造', '京东京造 西餐餐具套装 304不锈钢刀叉勺4件套（黑）', 59.9, '京东自营店', 'https://img14.360buyimg.com/n1/s546x546_jfs/t27403/117/1468230576/342747/ca39375/5be40daaN30f181c9.jpg', 6);
INSERT INTO `shop_info` VALUES (45, '路卡酷（LUCUKU）', '路卡酷（LUCUKU）304不锈钢西餐牛排刀叉勺三件套漫享餐具套装', 59, '快速出货,加厚定制,logou定制', 'https://img14.360buyimg.com/n1/s546x546_jfs/t3187/270/8804421288/152625/c27f43fe/58c7b1aaN0279387a.jpg', 6);
INSERT INTO `shop_info` VALUES (46, '路卡酷（LUCUKU）', ' 路卡酷（LUCUKU）304不锈钢牛排刀叉勺三件套 弯尾笑脸西餐餐具套装', 49, '快速出货,加厚定制,logou定制', 'https://img14.360buyimg.com/n0/jfs/t3433/316/280450208/191768/416c6f06/58046476N04c4f488.jpg', 6);
INSERT INTO `shop_info` VALUES (47, '餐将军', '餐将军 西餐具套装 不锈钢牛排刀叉勺24件套组合六人份豪华礼盒装 西餐具24件套礼盒装', 98, '自营店，无更多详情', 'https://img14.360buyimg.com/n0/jfs/t1/26538/18/6399/157519/5c513e68Ef64be7ed/68a20d22778a9919.jpg', 6);
INSERT INTO `shop_info` VALUES (48, '路卡酷（LUCUKU）', '路卡酷（LUCUKU）304不锈钢牛排刀叉勺十六件套 美斯系列西餐餐具全套家庭礼盒装', 299, '快速出货,加厚定制,logou定制', 'https://img14.360buyimg.com/n1/s546x546_jfs/t7129/243/2116102363/215297/274792ca/59929fecNc17dff21.jpg', 6);
INSERT INTO `shop_info` VALUES (49, '真诚', '真诚卷纸本色卫生纸家用纸巾厕所生活用纸4层 3提36卷', 29.9, '诚心诚意做买卖，真诚对客户', 'https://img14.360buyimg.com/n0/jfs/t1/100353/21/964/124845/5db7f560E095616ca/a8d19c0e9c896532.jpg', 7);
INSERT INTO `shop_info` VALUES (50, '维达（Vinda）', '维达（Vinda） 卫生纸生活用纸手纸3层无芯卷纸实芯超韧长卷100gx10卷1提V4600', 15.99, '维达集团为亚洲具规模的卫生用品企业。集团于1985年创建，多年来始终秉承「健康生活从维达开始」的生活理念，竭诚为每个家庭提供优质卫生护理用品和服务。维达集团于中国内地建有十大先进生产基地，于马来西亚有两大生产基地，中国台湾有一间生产基地，以及于澳洲一间后期加工工厂，以维达、得宝、多康、添宁、包大人、轻曲线、薇尔、 丽贝乐、Drypers等主要品牌发展生活用纸、失禁护理、女性护理及婴儿护理四大业务。', 'https://img14.360buyimg.com/n0/jfs/t1/89679/36/5683/81818/5def3554Ef2906e20/c4ffede81e66871e.jpg', 7);
INSERT INTO `shop_info` VALUES (51, '奕辰', '竹浆纸 抽纸生活用纸母婴适用本色纸巾3层100抽 12包', 22.5, '诚心诚意做买卖，真诚对客户,快速出货,加厚定制,logou定制', 'https://img14.360buyimg.com/n0/jfs/t1/81253/37/13099/66269/5da6e45cEe2c0a9ba/5867bca45d4c8655.jpg', 7);
INSERT INTO `shop_info` VALUES (52, 'CB', 'CB 酒店商用大卷纸公用2层大盘纸特惠装生活用纸厕用纸卫生纸600克 1x12卷/ 箱', 98, '诚心诚意做买卖，真诚对客户,快速出货,加厚定制,logou定制', 'https://img14.360buyimg.com/n1/s546x546_jfs/t17455/363/1517978814/293486/d2c83258/5acc29a5N2fa64ff0.jpg', 7);
INSERT INTO `shop_info` VALUES (53, '沃丽凯特', '沃丽凯特进口印花卷纸卫生纸小卷子纸巾卷筒纸3层原木手纸原浆纸生活用纸 有心单提包邮包运费 200节*8卷-母婴可用', 47, '诚心诚意做买卖，真诚对客户,快速出货,加厚定制,logou定制', 'https://img14.360buyimg.com/n0/jfs/t1/986/37/6430/198167/5ba20956Ebfc83b40/b131a04e1875b45e.jpg', 7);
INSERT INTO `shop_info` VALUES (54, '蓝漂竹', '【新品特价】蓝漂竹叶情36包抽纸本色抽纸3层抽纸母婴用纸家用生活用纸 卫生纸巾 36包', 29.9, '生活用纸指为照顾个人居家，外出等所使用的各类卫生擦拭用纸，包括卷筒卫生纸、抽取式卫生纸、盒装面纸、袖珍面纸、纸手帕、餐巾纸、擦手纸、湿巾、厨房纸巾。\r\n', 'https://img14.360buyimg.com/n1/s546x546_jfs/t1/64293/40/13747/604711/5db16a1aEe932b10a/fbf582c609ae0b0f.png', 7);
INSERT INTO `shop_info` VALUES (55, '双庆家居', '双庆家居 无痕贴卫生间卷纸架吸盘纸巾架多用毛巾架 SQ-5013', 29.9, '生活用纸指为照顾个人居家，外出等所使用的各类卫生擦拭用纸，包括卷筒卫生纸、抽取式卫生纸、盒装面纸、袖珍面纸、纸手帕、餐巾纸、擦手纸、湿巾、厨房纸巾。\r\n', 'https://img14.360buyimg.com/n1/s546x546_jfs/t24976/156/650589210/319955/c8f7c134/5b76289cN82196103.jpg', 7);
INSERT INTO `shop_info` VALUES (56, '收米（ShouMi）', '【9.9卷纸 10元商品】卫生纸原生木浆1提无芯卷纸12卷 家用厕纸巾擦手纸宝宝用纸 12卷', 9.9, '9.9包邮，质量可靠', 'https://img14.360buyimg.com/n0/jfs/t1/46779/28/13015/75752/5d9c8a9eEcce77827/d1239fa937d5bbd2.jpg', 7);
INSERT INTO `shop_info` VALUES (57, '京唐', '京唐 牛皮纸礼品袋子礼物袋纸袋手提袋 礼品包装袋食品纸袋 特大号10个装 25*33*11cm', 39.9, '牛皮纸：又称本色牛皮纸。具有很高的拉力，韧度很高，通常呈棕黄色，抗撕裂强度、破裂和动态强度很高，广泛用于购物袋、信封等。常用的厚度有120克-300克的本色牛皮纸。牛皮纸一般适合印刷单色或者双色及颜色不复杂的稿件。相对于白卡纸、白牛皮纸盒铜版纸，黄牛皮纸的价格最低。', 'https://img14.360buyimg.com/n0/jfs/t30412/261/372032736/294476/60824f0f/5bf16acbN3e9cd9e4.jpg', 8);
INSERT INTO `shop_info` VALUES (58, 'TaTanice', 'TaTanice 礼品袋礼盒袋礼袋生日礼物圣诞节礼物包装袋口红香水手提袋纸袋 白兔款中号十只装 22*10*17cm', 31.9, '白卡纸：白卡纸坚挺厚实，有较高的挺度、耐破度和平滑度，纸面平整，常用的厚度是210-300克白卡纸，用的最多的是230白卡。用白卡纸印刷出来的纸袋，颜色饱满，纸的质感也非常好，是您定做的首选。', 'https://img14.360buyimg.com/n0/jfs/t1/75275/20/716/189677/5cefa13aEc249ae91/4ebc941d1be311bc.jpg', 8);
INSERT INTO `shop_info` VALUES (59, '麦好礼', '【10个装】节日礼品袋纸袋 生日礼物包装袋 婚礼手提袋 圣诞节元旦新年结婚婚庆回礼糖袋子 深蓝色小花蝴蝶结 中号20*8*20cm', 38, '黑卡纸：为一种特种纸，双面黑。黑卡纸的特点是纸质细腻，透心黑，坚挺厚实、耐折度好、表面平整光滑，挺度好，拉力好，耐破度高等。常用的厚度有120克-350克的黑卡纸。因为黑卡纸里外都是黑色，所以不能印刷彩色的图案，只适合烫金、烫银等工艺。做出来的袋子也是非常漂亮的哦。', 'https://img14.360buyimg.com/n0/jfs/t1/66954/3/6346/487227/5d4530d5E47d5e883/7c786c7b18e77ecd.jpg', 8);
INSERT INTO `shop_info` VALUES (60, 'fancyfree', '方形手提礼品袋 复古墨绿 方形手提袋袋子纸袋礼物袋购物袋包装袋生日礼物圣诞节礼物七夕情人节礼物 复古墨绿1个（22*22*18CM）', 15, '黑卡纸：为一种特种纸，双面黑。黑卡纸的特点是纸质细腻，透心黑，坚挺厚实、耐折度好、表面平整光滑，挺度好，拉力好，耐破度高等。常用的厚度有120克-350克的黑卡纸。因为黑卡纸里外都是黑色，所以不能印刷彩色的图案，只适合烫金、烫银等工艺。做出来的袋子也是非常漂亮的哦。', 'https://img14.360buyimg.com/n1/s546x546_jfs/t22423/273/2251785751/244310/a4715b01/5b4dcc9eNc7414d44.jpg', 8);
INSERT INTO `shop_info` VALUES (61, '鸿迪（HONGDI）', '【10个装】礼品袋牛皮纸袋手提袋节日生日礼物袋食品茶叶纸质包装袋礼盒结婚庆回礼袋伴手礼红酒袋子 原色 竖款中号15*6*20cm', 30, '牛皮纸：又称本色牛皮纸。具有很高的拉力，韧度很高，通常呈棕黄色，抗撕裂强度、破裂和动态强度很高，广泛用于购物袋、信封等。常用的厚度有120克-300克的本色牛皮纸。牛皮纸一般适合印刷单色或者双色及颜色不复杂的稿件。相对于白卡纸、白牛皮纸盒铜版纸，黄牛皮纸的价格最低。', 'https://img14.360buyimg.com/n0/jfs/t1/94128/24/5513/336202/5deda57dE10236eb4/0de5b90e26ac49d3.jpg', 8);
INSERT INTO `shop_info` VALUES (62, '极度空间', '极度空间 手提袋 礼品包装袋 生日礼物纸袋 圣诞节情人节礼袋 火烈鸟*5', 29, '白牛皮纸：白牛皮纸耐破度高，韧性好，高强度，匀度厚度色象稳定，根据国家有关法规规定超市限制使用塑料袋，以及国外，欧美等国家提倡用环保纸袋的趋势，严格控制塑料污染，塑料袋将被环保纸袋替代，白牛皮纸市场前景看好。100%纯木浆制造，环保无毒，可环保再生利用，白牛皮纸韧性很好，而且不用覆膜，广泛用于制作环保型服装手提袋、高档购物袋等。常用的厚度有120克-200克的白牛皮纸，纸张没有亮度和光泽度，白牛皮纸不适合印刷油墨太大的内容。', 'https://img14.360buyimg.com/n0/jfs/t1/82886/39/14588/133385/5dc23036Ea26e926b/9a9caebe44532dc4.jpg', 8);
INSERT INTO `shop_info` VALUES (63, '麦好礼', '【10个装】红色民族风礼品袋手提袋纸袋 圣诞节元旦新年生日礼物袋纸质包装袋 结婚庆回礼袋子喜糖袋子 横款中号20*8*20cm', 35, '白卡纸：白卡纸坚挺厚实，有较高的挺度、耐破度和平滑度，纸面平整，常用的厚度是210-300克白卡纸，用的最多的是230白卡。用白卡纸印刷出来的纸袋，颜色饱满，纸的质感也非常好，是您定做的首选。', 'https://img14.360buyimg.com/n1/s546x546_jfs/t1/84168/28/5719/324609/5d57a798Eab047a82/93fda8c2f05d4115.jpg', 8);
INSERT INTO `shop_info` VALUES (64, '康诗阁', '康诗阁 礼品袋纸袋 创意手提纸袋商务礼物包装袋子大号服装礼物袋子 米黄波浪6个装 中号24.5*19.5*9.5', 23, '白卡纸：白卡纸坚挺厚实，有较高的挺度、耐破度和平滑度，纸面平整，常用的厚度是210-300克白卡纸，用的最多的是230白卡。用白卡纸印刷出来的纸袋，颜色饱满，纸的质感也非常好，是您定做的首选。', 'https://img14.360buyimg.com/n1/s546x546_jfs/t23098/147/522620577/302760/fb528880/5b335956N1d4489e7.jpg', 8);

-- ----------------------------
-- Table structure for shop_kind
-- ----------------------------
DROP TABLE IF EXISTS `shop_kind`;
CREATE TABLE `shop_kind`  (
  `shop_kind_id` int(11) NOT NULL,
  `shop_kind_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`shop_kind_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_kind
-- ----------------------------
INSERT INTO `shop_kind` VALUES (1, '纸杯系列');
INSERT INTO `shop_kind` VALUES (2, 'PET系列');
INSERT INTO `shop_kind` VALUES (3, '饮品杯配套系列');
INSERT INTO `shop_kind` VALUES (4, '纸浆环保餐具系列');
INSERT INTO `shop_kind` VALUES (5, '纸餐盒系列');
INSERT INTO `shop_kind` VALUES (6, '刀叉勺餐具');
INSERT INTO `shop_kind` VALUES (7, '生活用纸');
INSERT INTO `shop_kind` VALUES (8, '纸袋/环保打包袋');

-- ----------------------------
-- Table structure for shop_parameter
-- ----------------------------
DROP TABLE IF EXISTS `shop_parameter`;
CREATE TABLE `shop_parameter`  (
  `shop_id` int(11) NOT NULL,
  `shop_kind_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `shop_origin` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `shop_number` int(30) NOT NULL,
  `shop_texture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`shop_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_parameter
-- ----------------------------
INSERT INTO `shop_parameter` VALUES (1, '一次性纸杯', '深圳', 1000, '食品级木浆纸');
INSERT INTO `shop_parameter` VALUES (2, '一次性纸杯', '武汉', 1000, 'PE单面淋膜纸');
INSERT INTO `shop_parameter` VALUES (3, '一次性纸杯', '香港', 500, '再生聚乙烯');
INSERT INTO `shop_parameter` VALUES (4, '一次性纸杯', '杭州', 1000, '食品级木浆纸+内外表面pe薄膜');
INSERT INTO `shop_parameter` VALUES (5, '一次性纸杯', '武汉', 1500, '食品级木浆纸+内外表面pe薄膜食品级木浆纸+内外表面pe薄膜');
INSERT INTO `shop_parameter` VALUES (6, '一次性纸杯', '四川', 1000, '食品级木浆纸+内外表面pe薄膜');
INSERT INTO `shop_parameter` VALUES (7, '一次性纸杯', '广州', 1000, '食品级木浆纸+内外表面pe薄膜');
INSERT INTO `shop_parameter` VALUES (8, '一次性纸杯', '中国内陆', 1000, '食品级木浆纸+内外表面pe薄膜');
INSERT INTO `shop_parameter` VALUES (9, 'PET系列', '中国内陆', 1000, 'pet塑料');
INSERT INTO `shop_parameter` VALUES (10, 'PET系列', '杭州', 1000, 'pet塑料');
INSERT INTO `shop_parameter` VALUES (11, 'PET系列', '杭州', 1000, 'pet塑料');
INSERT INTO `shop_parameter` VALUES (12, 'PET系列', '武汉', 1500, 'pet塑料');
INSERT INTO `shop_parameter` VALUES (13, 'PET系列', '上海', 1000, 'pet塑料');
INSERT INTO `shop_parameter` VALUES (14, 'PET系列', '广东', 1000, 'pet塑料');
INSERT INTO `shop_parameter` VALUES (15, 'PET系列', '广西', 1000, 'pet塑料');
INSERT INTO `shop_parameter` VALUES (16, 'PET系列', '四川', 1000, 'pp安全材质');
INSERT INTO `shop_parameter` VALUES (17, '饮品杯配套系列', '杭州', 999, '食品级木浆纸+内外表面pe薄膜食品级木浆纸+内外表面pe薄膜');
INSERT INTO `shop_parameter` VALUES (18, '饮品杯配套系列', '广西', 999, 'pet塑料');
INSERT INTO `shop_parameter` VALUES (19, '饮品杯配套系列', '杭州', 999, 'pet塑料');
INSERT INTO `shop_parameter` VALUES (20, '饮品杯配套系列', '武汉', 999, '食品级木浆纸');
INSERT INTO `shop_parameter` VALUES (21, '饮品杯配套系列', '杭州', 999, 'pp安全材质');
INSERT INTO `shop_parameter` VALUES (22, '饮品杯配套系列', '香港', 1000, '食品级木浆纸');
INSERT INTO `shop_parameter` VALUES (23, '饮品杯配套系列', '杭州', 1000, 'pet塑料');
INSERT INTO `shop_parameter` VALUES (24, '饮品杯配套系列                      ', '香港', 1000, '食品级木浆纸+内外表面pe薄膜');
INSERT INTO `shop_parameter` VALUES (25, '纸浆环保餐具系列', '中国内陆', 1000, '木制');
INSERT INTO `shop_parameter` VALUES (26, '纸浆环保餐具系列', '中国内陆', 1500, '木制');
INSERT INTO `shop_parameter` VALUES (27, '纸浆环保餐具系列', '山东', 10000, '蔗渣浆、麦杆浆、竹浆、芦苇浆及挑选后的白纸边等短纤维纸浆');
INSERT INTO `shop_parameter` VALUES (28, '纸浆环保餐具系列', '浙江', 10000, '蔗渣浆、麦杆浆、竹浆、芦苇浆及挑选后的白纸边等短纤维纸浆');
INSERT INTO `shop_parameter` VALUES (29, '纸浆环保餐具系列', '山东', 3000, '蔗渣浆、麦杆浆、竹浆、芦苇浆及挑选后的白纸边等短纤维纸浆');
INSERT INTO `shop_parameter` VALUES (30, '纸浆环保餐具系列', '中国内陆', 10000, '蔗渣浆、麦杆浆、竹浆、芦苇浆及挑选后的白纸边等短纤维纸浆');
INSERT INTO `shop_parameter` VALUES (31, '纸浆环保餐具系列', '中国内陆', 10000, '蔗渣浆、麦杆浆、竹浆、芦苇浆及挑选后的白纸边等短纤维纸浆');
INSERT INTO `shop_parameter` VALUES (32, '纸浆环保餐具系列', '杭州', 10000, '蔗渣浆、麦杆浆、竹浆、芦苇浆及挑选后的白纸边等短纤维纸浆');
INSERT INTO `shop_parameter` VALUES (33, '纸餐盒系列', '上海', 5900, '纸材料');
INSERT INTO `shop_parameter` VALUES (34, '纸餐盒系列', '杭州', 7000, '纸材料');
INSERT INTO `shop_parameter` VALUES (35, '纸餐盒系列', '杭州', 6000, '纸材料');
INSERT INTO `shop_parameter` VALUES (36, '纸餐盒系列', '中国内陆', 30000, '纸材料');
INSERT INTO `shop_parameter` VALUES (37, '纸餐盒系列', '武汉', 10000, '纸材料');
INSERT INTO `shop_parameter` VALUES (38, '纸餐盒系列', '香港', 2000, '纸材料');
INSERT INTO `shop_parameter` VALUES (39, '纸餐盒系列', '山东', 4800, '纸材料');
INSERT INTO `shop_parameter` VALUES (40, '纸餐盒系列', '浙江', 5000, '纸材料');
INSERT INTO `shop_parameter` VALUES (41, '刀叉勺餐具', '香港', 10000, '不锈钢');
INSERT INTO `shop_parameter` VALUES (42, '刀叉勺餐具', '中国内陆', 1000, '不锈钢');
INSERT INTO `shop_parameter` VALUES (43, '刀叉勺餐具', '杭州', 30000, '不锈钢');
INSERT INTO `shop_parameter` VALUES (44, '刀叉勺餐具', '山东', 3000, '不锈钢');
INSERT INTO `shop_parameter` VALUES (45, '刀叉勺餐具', '浙江', 1000, '不锈钢');
INSERT INTO `shop_parameter` VALUES (46, '刀叉勺餐具', '山东', 3000, '不锈钢');
INSERT INTO `shop_parameter` VALUES (47, '刀叉勺餐具', '广西', 999, '不锈钢');
INSERT INTO `shop_parameter` VALUES (48, '刀叉勺餐具', '四川', 3000, '不锈钢');
INSERT INTO `shop_parameter` VALUES (49, '生活用纸', '中国内陆', 999, '木纤维+纸浆');
INSERT INTO `shop_parameter` VALUES (50, '生活用纸', '中国内陆', 999, '木纤维+纸浆');
INSERT INTO `shop_parameter` VALUES (51, '生活用纸', '香港', 999, '木纤维+纸浆');
INSERT INTO `shop_parameter` VALUES (52, '生活用纸', '中国内陆', 999, '木纤维+纸浆');
INSERT INTO `shop_parameter` VALUES (53, '生活用纸', '香港', 999, '木纤维+纸浆');
INSERT INTO `shop_parameter` VALUES (54, '生活用纸', '中国内陆', 999, '木纤维+纸浆');
INSERT INTO `shop_parameter` VALUES (55, '生活用纸', '杭州', 999, '木纤维+纸浆');
INSERT INTO `shop_parameter` VALUES (56, '生活用纸', '中国内陆', 999, '木纤维+纸浆');
INSERT INTO `shop_parameter` VALUES (57, '纸袋/环保打包袋', '山东', 1000, '纸浆');
INSERT INTO `shop_parameter` VALUES (58, '纸袋/环保打包袋', '香港', 1000, '纸浆');
INSERT INTO `shop_parameter` VALUES (59, '纸袋/环保打包袋', '浙江', 1000, '纸浆');
INSERT INTO `shop_parameter` VALUES (60, '纸袋/环保打包袋', '山东', 1000, '纸浆');
INSERT INTO `shop_parameter` VALUES (61, '纸袋/环保打包袋', '四川', 1000, '纸浆');
INSERT INTO `shop_parameter` VALUES (62, '纸袋/环保打包袋', '山东', 1000, '纸浆');
INSERT INTO `shop_parameter` VALUES (63, '纸袋/环保打包袋', '四川', 1000, '纸浆');
INSERT INTO `shop_parameter` VALUES (64, '纸袋/环保打包袋', '山东', 1000, '纸浆');

-- ----------------------------
-- Table structure for shop_recommend
-- ----------------------------
DROP TABLE IF EXISTS `shop_recommend`;
CREATE TABLE `shop_recommend`  (
  `shop_id` int(255) NOT NULL,
  `shop_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `shop_money` double(255, 0) NOT NULL,
  `shop_img` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`shop_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_recommend
-- ----------------------------
INSERT INTO `shop_recommend` VALUES (1, '妙洁一次性纸杯', 20, 'https://img.alicdn.com/imgextra/i1/725677994/O1CN01REfBwi28vIj5bk06p_!!725677994-0-sm.jpg_430x430q90.jpg');
INSERT INTO `shop_recommend` VALUES (2, '商吉一次性纸杯', 30, 'https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i1/2210319705/O1CN012LYwH875JboD2iE_!!2210319705.jpg_430x430q90.jpg');
INSERT INTO `shop_recommend` VALUES (3, '蓝月星一次性纸杯', 18, 'https://gd2.alicdn.com/imgextra/i2/2200757674672/O1CN01ExIElB1kNoxkbDBIn_!!2200757674672.jpg_400x400.jpg');
INSERT INTO `shop_recommend` VALUES (4, '盛世康洁一次性纸杯', 59, 'https://gd4.alicdn.com/imgextra/i1/0/TB1ca_3uStYBeNjSspaXXaOOFXa_!!0-item_pic.jpg_400x400.jpg');
INSERT INTO `shop_recommend` VALUES (5, '心相印一次性纸杯', 30, 'https://gd3.alicdn.com/imgextra/i2/2980058804/O1CN01b4lrEF2EuHSb3vY3g_!!2980058804.jpg_400x400.jpg');

-- ----------------------------
-- Table structure for sys_address
-- ----------------------------
DROP TABLE IF EXISTS `sys_address`;
CREATE TABLE `sys_address`  (
  `id` int(11) NOT NULL,
  `uid` int(11) NULL DEFAULT NULL,
  `gainname` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `provice` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tel` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `county` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `desadd` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_orders
-- ----------------------------
DROP TABLE IF EXISTS `sys_orders`;
CREATE TABLE `sys_orders`  (
  `id` int(11) NOT NULL,
  `uid` int(11) NULL DEFAULT NULL,
  `sho_id` int(20) NULL DEFAULT NULL,
  `oprice` double NULL DEFAULT NULL,
  `otime` date NULL DEFAULT NULL,
  `ostatus` tinyint(4) NULL DEFAULT NULL,
  `discuss_id` int(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_orders
-- ----------------------------
INSERT INTO `sys_orders` VALUES (1, 1, 1, 19.8, '2019-12-14', 2, 1);
INSERT INTO `sys_orders` VALUES (2, 2, 1, 19.8, '2019-12-14', 2, 1);
INSERT INTO `sys_orders` VALUES (3, 2, 1, 19.8, '2019-12-14', 1, 1);

-- ----------------------------
-- Table structure for sys_product
-- ----------------------------
DROP TABLE IF EXISTS `sys_product`;
CREATE TABLE `sys_product`  (
  `id` int(11) NOT NULL,
  `name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `picture` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bprice` double NULL DEFAULT NULL,
  `aprice` double NULL DEFAULT NULL,
  `introduce` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sortid` int(11) NULL DEFAULT NULL,
  `stock` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_product_discuss
-- ----------------------------
DROP TABLE IF EXISTS `sys_product_discuss`;
CREATE TABLE `sys_product_discuss`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NULL DEFAULT NULL,
  `pid` int(11) NULL DEFAULT NULL,
  `discuss` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_product_discuss
-- ----------------------------
INSERT INTO `sys_product_discuss` VALUES (1, 1, 1, '赞赞赞', '2019-12-14 09:53:36');
INSERT INTO `sys_product_discuss` VALUES (2, 2, 1, '贼好', '2019-12-14 20:47:19');

-- ----------------------------
-- Table structure for sys_product_sort
-- ----------------------------
DROP TABLE IF EXISTS `sys_product_sort`;
CREATE TABLE `sys_product_sort`  (
  `id` int(11) NOT NULL,
  `sort` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` int(11) NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nickname` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, '123456', '123456', '昵称');
INSERT INTO `sys_user` VALUES (2, '654321', '123456', '刚回来看');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Procedure structure for add_discuss
-- ----------------------------
DROP PROCEDURE IF EXISTS `add_discuss`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_discuss`(oid int,uid int,pid int,discuss VARCHAR(255))
BEGIN
	update sys_orders set ostatus = 2 WHERE id=oid;
	INSERT INTO sys_product_discuss(uid,pid,discuss,date) VALUES (uid,pid,discuss,NOW());

END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
