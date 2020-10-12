/*
 Navicat Premium Data Transfer

 Source Server         : 123
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : 127.0.0.1:3306
 Source Schema         : studentm

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 12/10/2020 14:44:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `anum` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_croatian_ci NULL DEFAULT NULL,
  `apwd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_croatian_ci NULL DEFAULT NULL,
  `aname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_croatian_ci NULL DEFAULT NULL,
  `agender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_croatian_ci NULL DEFAULT NULL,
  `aage` int(11) NULL DEFAULT NULL,
  `aidcard` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_croatian_ci NULL DEFAULT NULL,
  PRIMARY KEY (`aid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 102 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_croatian_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, '434208', '122987', 'bbd8b名字', '男', 11, '767078168906192377');
INSERT INTO `admin` VALUES (2, '535901', '664202', '753c2名字', '男', 70, '322828277581374676');
INSERT INTO `admin` VALUES (3, '218559', '598643', 'd7ae0名字', '女', 50, '123064631171103147');
INSERT INTO `admin` VALUES (4, '082041', '568727', 'd9869名字', '女', 4, '648370735591553832');
INSERT INTO `admin` VALUES (5, '612623', '776913', '079fa名字', '女', 1, '223550594241743494');
INSERT INTO `admin` VALUES (6, '789310', '189363', '6afb5名字', '女', 69, '659637415006669125');
INSERT INTO `admin` VALUES (7, '633910', '913173', '9a318名字', '女', 94, '828363624996727818');
INSERT INTO `admin` VALUES (8, '945551', '873547', '565d8名字', '男', 65, '231946617607157454');
INSERT INTO `admin` VALUES (9, '482092', '091704', '5a6ac名字', '男', 19, '639817053636590556');
INSERT INTO `admin` VALUES (10, '246376', '177623', 'd52bb名字', '女', 73, '077426946929136143');
INSERT INTO `admin` VALUES (11, '754801', '304047', '6f8d8名字', '男', 73, '855167055485846925');
INSERT INTO `admin` VALUES (12, '623947', '025206', 'b6acb名字', '男', 22, '796999616161361625');
INSERT INTO `admin` VALUES (13, '018863', '362121', 'bbb64名字', '女', 23, '229566813410237500');
INSERT INTO `admin` VALUES (14, '087357', '628773', '0f060名字', '女', 8, '359384616271285248');
INSERT INTO `admin` VALUES (15, '567084', '400273', '4f935名字', '女', 94, '305555592081874209');
INSERT INTO `admin` VALUES (16, '436960', '837854', 'bb1d9名字', '女', 19, '990139963599011178');
INSERT INTO `admin` VALUES (17, '094271', '729814', '51c76名字', '男', 25, '375655107822483304');
INSERT INTO `admin` VALUES (18, '505387', '936041', 'cc930名字', '女', 28, '355562619853768035');
INSERT INTO `admin` VALUES (19, '814931', '858084', '8b4be名字', '男', 68, '757121933001543276');
INSERT INTO `admin` VALUES (20, '029423', '024250', 'cd8da名字', '男', 28, '909134899146455089');
INSERT INTO `admin` VALUES (21, '141895', '970883', 'f39db名字', '女', 0, '276568762454062297');
INSERT INTO `admin` VALUES (22, '940727', '484470', '09e86名字', '男', 75, '934500013165908733');
INSERT INTO `admin` VALUES (23, '232194', '736215', '82ed7名字', '女', 50, '050301856316359627');
INSERT INTO `admin` VALUES (24, '835237', '961398', '3237a名字', '女', 67, '755815982656483025');
INSERT INTO `admin` VALUES (25, '375466', '036676', '0efef名字', '男', 47, '876815508379197081');
INSERT INTO `admin` VALUES (26, '430978', '283033', '63796名字', '女', 7, '614811196499061328');
INSERT INTO `admin` VALUES (27, '601958', '030164', 'c5a8e名字', '男', 50, '863169855348247872');
INSERT INTO `admin` VALUES (28, '726368', '578885', 'c3940名字', '女', 33, '139871023507660725');
INSERT INTO `admin` VALUES (29, '882204', '610747', '34d18名字', '女', 48, '428393108396348218');
INSERT INTO `admin` VALUES (30, '334796', '968806', '8c485名字', '男', 99, '195786780753787628');
INSERT INTO `admin` VALUES (31, '598374', '964780', '4ea78名字', '男', 40, '065848456742518627');
INSERT INTO `admin` VALUES (32, '589274', '868912', '3051d名字', '男', 97, '228088099246816857');
INSERT INTO `admin` VALUES (33, '417241', '047406', '84b60名字', '男', 19, '312699550457992674');
INSERT INTO `admin` VALUES (34, '711050', '585042', 'a349b名字', '男', 81, '261736975941046891');
INSERT INTO `admin` VALUES (35, '475189', '731427', '0a7d1名字', '男', 38, '238296937726686777');
INSERT INTO `admin` VALUES (36, '829978', '189850', 'cd1d6名字', '女', 87, '223600092642114682');
INSERT INTO `admin` VALUES (37, '694494', '378614', '52efe名字', '男', 83, '503211915897779641');
INSERT INTO `admin` VALUES (38, '378554', '067200', 'e64d1名字', '男', 42, '709215958918002723');
INSERT INTO `admin` VALUES (39, '744490', '161628', '6b2da名字', '女', 69, '095584496008548820');
INSERT INTO `admin` VALUES (40, '286478', '176786', 'd9654名字', '男', 31, '168557098697541247');
INSERT INTO `admin` VALUES (41, '407868', '615985', '66290名字', '男', 83, '269022101407897666');
INSERT INTO `admin` VALUES (42, '143385', '371936', '4ae70名字', '男', 89, '439433459068686696');
INSERT INTO `admin` VALUES (43, '037047', '353528', '433c0名字', '女', 44, '893865981394271673');
INSERT INTO `admin` VALUES (44, '723548', '682838', '38085名字', '女', 96, '791104944737765019');
INSERT INTO `admin` VALUES (45, '123851', '333470', '816c8名字', '男', 99, '407756363710941164');
INSERT INTO `admin` VALUES (46, '861498', '653836', '32121名字', '女', 29, '070069051661610707');
INSERT INTO `admin` VALUES (47, '352228', '510658', '29a9a名字', '男', 26, '188113072663058849');
INSERT INTO `admin` VALUES (48, '999964', '754155', '6ccba名字', '女', 8, '063891927075149752');
INSERT INTO `admin` VALUES (49, '562565', '493827', '4ccf0名字', '男', 34, '453653664682987213');
INSERT INTO `admin` VALUES (50, '903740', '833104', '406e7名字', '男', 38, '951364368327491372');
INSERT INTO `admin` VALUES (51, '890823', '214410', '3816a名字', '男', 70, '579283276349242105');
INSERT INTO `admin` VALUES (52, '132010', '189340', 'b484b名字', '男', 21, '306350696823268080');
INSERT INTO `admin` VALUES (53, '629075', '678259', '71462名字', '男', 42, '932551022230985133');
INSERT INTO `admin` VALUES (54, '208529', '304674', '19b47名字', '男', 20, '920805622565539811');
INSERT INTO `admin` VALUES (55, '618188', '032288', 'bd678名字', '女', 62, '323918336059397665');
INSERT INTO `admin` VALUES (56, '829652', '750655', '30a69名字', '女', 81, '046783025307532714');
INSERT INTO `admin` VALUES (57, '870192', '293672', '95dfc名字', '女', 94, '830254518494921721');
INSERT INTO `admin` VALUES (58, '444391', '415171', '3bd9e名字', '男', 99, '098830505423278916');
INSERT INTO `admin` VALUES (59, '628009', '763422', '326fe名字', '男', 71, '883310571544305824');
INSERT INTO `admin` VALUES (60, '653050', '579709', 'e4598名字', '男', 91, '462815946110556304');
INSERT INTO `admin` VALUES (61, '814279', '965750', '328e2名字', '女', 67, '004226281984554104');
INSERT INTO `admin` VALUES (62, '860209', '678892', 'fb19e名字', '女', 60, '614969632496577813');
INSERT INTO `admin` VALUES (63, '268573', '740992', 'df962名字', '男', 82, '662201316227261225');
INSERT INTO `admin` VALUES (64, '727119', '824434', '72bd1名字', '男', 80, '040104506137562927');
INSERT INTO `admin` VALUES (65, '902522', '178632', 'a7a31名字', '男', 44, '300798644094800005');
INSERT INTO `admin` VALUES (66, '175438', '517434', 'ea6aa名字', '女', 39, '459416318054539435');
INSERT INTO `admin` VALUES (67, '853753', '448116', 'b1c99名字', '男', 59, '328579989999398345');
INSERT INTO `admin` VALUES (68, '960655', '907014', 'e4a0d名字', '男', 87, '129179062210604838');
INSERT INTO `admin` VALUES (69, '439844', '293226', 'ca970名字', '女', 30, '641024772898141859');
INSERT INTO `admin` VALUES (70, '355719', '589840', 'e797d名字', '女', 91, '679515515657042224');
INSERT INTO `admin` VALUES (71, '610082', '259443', 'f6d06名字', '男', 9, '216496431050322669');
INSERT INTO `admin` VALUES (72, '944047', '254011', '01923名字', '男', 22, '339113732507487523');
INSERT INTO `admin` VALUES (73, '182157', '366244', '9b51b名字', '女', 53, '308085408502636537');
INSERT INTO `admin` VALUES (74, '331241', '531103', '75231名字', '男', 79, '883764296793120742');
INSERT INTO `admin` VALUES (75, '309070', '395070', '8a68c名字', '女', 38, '392945916134432788');
INSERT INTO `admin` VALUES (76, '145925', '670309', 'e658f名字', '女', 4, '184256253831174278');
INSERT INTO `admin` VALUES (77, '833821', '700857', 'd915e名字', '女', 48, '107584864202326536');
INSERT INTO `admin` VALUES (78, '645848', '136593', '22e36名字', '男', 10, '477865240068972506');
INSERT INTO `admin` VALUES (79, '800581', '166605', '3faa1名字', '女', 52, '017647823099882109');
INSERT INTO `admin` VALUES (80, '694106', '867587', '2fe4b名字', '女', 76, '096550105964028412');
INSERT INTO `admin` VALUES (81, '855197', '787362', '4c234名字', '女', 73, '979319216534021376');
INSERT INTO `admin` VALUES (82, '674314', '718452', '05d55名字', '女', 89, '238015573204199666');
INSERT INTO `admin` VALUES (83, '398386', '307081', 'ae3df名字', '女', 13, '641248132680161118');
INSERT INTO `admin` VALUES (84, '909992', '955875', '84bdf名字', '男', 92, '830974343542556893');
INSERT INTO `admin` VALUES (85, '574888', '238584', 'd5a9f名字', '女', 27, '015096584800559498');
INSERT INTO `admin` VALUES (86, '413376', '517223', '4ca75名字', '女', 6, '726060848583934177');
INSERT INTO `admin` VALUES (87, '773161', '607110', '9415c名字', '男', 5, '072745928450782087');
INSERT INTO `admin` VALUES (88, '868130', '973379', '3005f名字', '男', 92, '425477123680343617');
INSERT INTO `admin` VALUES (89, '664747', '489748', '4278c名字', '男', 96, '681865596980771364');
INSERT INTO `admin` VALUES (90, '939022', '677969', 'e5d4b名字', '女', 48, '669254340279753902');
INSERT INTO `admin` VALUES (91, '681001', '229070', 'b9e39名字', '男', 95, '401070734502517860');
INSERT INTO `admin` VALUES (92, '573906', '765057', '5b23b名字', '女', 27, '229274434199603670');
INSERT INTO `admin` VALUES (93, '567940', '416363', 'fd752名字', '女', 53, '362934553954443510');
INSERT INTO `admin` VALUES (94, '428184', '394847', '7216b名字', '男', 13, '764344226530774627');
INSERT INTO `admin` VALUES (95, '497166', '939279', '3e0c6名字', '女', 43, '678620929850084824');
INSERT INTO `admin` VALUES (96, '892413', '724602', '431d4名字', '男', 75, '084689012682251870');
INSERT INTO `admin` VALUES (97, '471366', '626187', '2a3c8名字', '男', 90, '112269437758631191');
INSERT INTO `admin` VALUES (98, '167440', '391592', 'f779c名字', '女', 35, '421310966299999259');
INSERT INTO `admin` VALUES (99, '135087', '085048', '0c75c名字', '女', 11, '666107596685067395');
INSERT INTO `admin` VALUES (100, '120305', '087275', 'e4cff名字', '男', 64, '537754900628559525');
INSERT INTO `admin` VALUES (101, 'admin', 'admin', '管理员测试', '男', 64, '537754900628559525');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `couid` int(11) NOT NULL AUTO_INCREMENT,
  `subid` int(11) NOT NULL COMMENT '科目表外键id',
  `tid` int(11) NOT NULL COMMENT '教师表外键id',
  `coutime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_croatian_ci NULL DEFAULT NULL COMMENT '上课时间',
  `couweek` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_croatian_ci NULL DEFAULT NULL COMMENT '上课周数',
  `couroom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_croatian_ci NULL DEFAULT NULL COMMENT '上课课室',
  `credits` int(11) NULL DEFAULT NULL COMMENT '学分',
  `period` int(11) NULL DEFAULT NULL COMMENT '学时',
  `totalnum` int(11) NULL DEFAULT NULL COMMENT '总人数',
  PRIMARY KEY (`couid`) USING BTREE,
  INDEX `fk_course_subject`(`subid`) USING BTREE,
  INDEX `fk_course_teacher`(`tid`) USING BTREE,
  CONSTRAINT `fk_course_subject` FOREIGN KEY (`subid`) REFERENCES `subject` (`subid`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `fk_course_teacher` FOREIGN KEY (`tid`) REFERENCES `teacher` (`tid`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 102 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_croatian_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES (1, 67, 91, '6ba57上课时间', 'f3329上课周数', '908', 2, 5, 20);
INSERT INTO `course` VALUES (2, 65, 65, '5cfe3上课时间', '5e502上课周数', '556', 2, 3, 60);
INSERT INTO `course` VALUES (3, 29, 71, 'f42a0上课时间', 'ef203上课周数', '845', 1, 5, 80);
INSERT INTO `course` VALUES (4, 34, 3, 'c9a39上课时间', '149f7上课周数', '464', 1, 26, 30);
INSERT INTO `course` VALUES (5, 20, 67, '492eb上课时间', 'f61e3上课周数', '628', 2, 7, 20);
INSERT INTO `course` VALUES (6, 94, 14, '3be88上课时间', 'ad75e上课周数', '682', 2, 29, 50);
INSERT INTO `course` VALUES (7, 64, 26, 'b89aa上课时间', '40048上课周数', '038', 2, 10, 70);
INSERT INTO `course` VALUES (8, 27, 28, 'c63c7上课时间', '1c277上课周数', '478', 2, 5, 70);
INSERT INTO `course` VALUES (9, 7, 52, '325b4上课时间', 'fc24f上课周数', '995', 2, 9, 90);
INSERT INTO `course` VALUES (10, 76, 64, '4acba上课时间', '966d9上课周数', '842', 1, 16, 80);
INSERT INTO `course` VALUES (11, 36, 45, '774c5上课时间', '02016上课周数', '074', 1, 24, 50);
INSERT INTO `course` VALUES (12, 79, 79, '9deaf上课时间', 'bfe4b上课周数', '472', 1, 9, 90);
INSERT INTO `course` VALUES (13, 57, 33, '22999上课时间', '10853上课周数', '194', 2, 1, 80);
INSERT INTO `course` VALUES (14, 83, 81, '9b4f7上课时间', 'd7267上课周数', '224', 1, 11, 90);
INSERT INTO `course` VALUES (15, 47, 33, '1e188上课时间', 'ee7e5上课周数', '725', 1, 27, 10);
INSERT INTO `course` VALUES (16, 23, 101, '70061上课时间', '51239上课周数', '670', 2, 19, 90);
INSERT INTO `course` VALUES (17, 46, 81, '0ae92上课时间', 'bb9cd上课周数', '786', 2, 11, 60);
INSERT INTO `course` VALUES (18, 43, 5, '34d75上课时间', 'efbb8上课周数', '508', 1, 13, 10);
INSERT INTO `course` VALUES (19, 58, 84, '022f8上课时间', '7f86f上课周数', '374', 1, 20, 100);
INSERT INTO `course` VALUES (20, 36, 73, '678eb上课时间', 'c0d4f上课周数', '461', 2, 20, 10);
INSERT INTO `course` VALUES (21, 5, 47, 'ce59c上课时间', '69b7f上课周数', '205', 1, 3, 50);
INSERT INTO `course` VALUES (22, 57, 85, '5bf79上课时间', '5f8a2上课周数', '094', 2, 4, 50);
INSERT INTO `course` VALUES (23, 35, 86, 'e8712上课时间', '499a8上课周数', '694', 1, 10, 40);
INSERT INTO `course` VALUES (24, 19, 19, '43491上课时间', '2472d上课周数', '575', 1, 22, 70);
INSERT INTO `course` VALUES (25, 99, 26, '84f21上课时间', '61fd5上课周数', '403', 2, 23, 50);
INSERT INTO `course` VALUES (26, 22, 38, '7137e上课时间', '03cb6上课周数', '870', 1, 25, 20);
INSERT INTO `course` VALUES (27, 75, 9, '3b4b6上课时间', '4c666上课周数', '562', 2, 18, 60);
INSERT INTO `course` VALUES (28, 98, 96, '920e7上课时间', '13088上课周数', '146', 1, 28, 60);
INSERT INTO `course` VALUES (29, 92, 85, '1c3ee上课时间', 'f22ca上课周数', '842', 1, 11, 80);
INSERT INTO `course` VALUES (30, 62, 95, '7774e上课时间', '5d80c上课周数', '305', 1, 22, 70);
INSERT INTO `course` VALUES (31, 14, 26, 'ca97d上课时间', '203b7上课周数', '494', 2, 18, 10);
INSERT INTO `course` VALUES (32, 83, 84, 'b0d48上课时间', 'bfc7c上课周数', '572', 2, 11, 90);
INSERT INTO `course` VALUES (33, 21, 22, '2766d上课时间', 'c93da上课周数', '283', 2, 16, 20);
INSERT INTO `course` VALUES (34, 6, 53, 'b9846上课时间', 'b5b60上课周数', '851', 2, 14, 20);
INSERT INTO `course` VALUES (35, 78, 100, '219ec上课时间', '65827上课周数', '211', 2, 7, 80);
INSERT INTO `course` VALUES (36, 14, 83, '77bb8上课时间', '3f730上课周数', '289', 2, 19, 20);
INSERT INTO `course` VALUES (37, 27, 26, '84849上课时间', '8c098上课周数', '076', 1, 24, 60);
INSERT INTO `course` VALUES (38, 62, 39, 'fcfd4上课时间', '33d56上课周数', '943', 1, 15, 70);
INSERT INTO `course` VALUES (39, 6, 49, '2866c上课时间', 'c1f0a上课周数', '138', 2, 22, 80);
INSERT INTO `course` VALUES (40, 75, 66, 'dc063上课时间', '5e79b上课周数', '866', 1, 5, 70);
INSERT INTO `course` VALUES (41, 15, 18, '31a3d上课时间', '4b5df上课周数', '893', 1, 20, 40);
INSERT INTO `course` VALUES (42, 74, 67, '4ef7d上课时间', '7aba3上课周数', '088', 1, 19, 20);
INSERT INTO `course` VALUES (43, 85, 94, 'd06e8上课时间', '64d2f上课周数', '918', 1, 24, 10);
INSERT INTO `course` VALUES (44, 51, 29, 'd06ab上课时间', 'ecc6f上课周数', '035', 1, 9, 70);
INSERT INTO `course` VALUES (45, 55, 29, 'f2469上课时间', '8f3bb上课周数', '101', 1, 2, 90);
INSERT INTO `course` VALUES (46, 63, 39, '594e5上课时间', '32287上课周数', '819', 1, 1, 50);
INSERT INTO `course` VALUES (47, 44, 11, '1e144上课时间', 'be848上课周数', '267', 1, 2, 60);
INSERT INTO `course` VALUES (48, 92, 80, 'f5cdb上课时间', '541d2上课周数', '564', 1, 4, 100);
INSERT INTO `course` VALUES (49, 46, 31, '7f655上课时间', 'f3424上课周数', '239', 2, 23, 40);
INSERT INTO `course` VALUES (50, 9, 38, 'bae3e上课时间', '7e651上课周数', '515', 1, 4, 70);
INSERT INTO `course` VALUES (51, 20, 70, '54c2b上课时间', '99ed8上课周数', '740', 1, 6, 90);
INSERT INTO `course` VALUES (52, 62, 16, '19446上课时间', 'eea27上课周数', '096', 1, 13, 90);
INSERT INTO `course` VALUES (53, 88, 13, '0b6a6上课时间', '3017b上课周数', '282', 2, 19, 90);
INSERT INTO `course` VALUES (54, 86, 72, '7e9c6上课时间', 'f30cb上课周数', '356', 2, 1, 10);
INSERT INTO `course` VALUES (55, 90, 18, '584e8上课时间', '1a9a2上课周数', '232', 1, 2, 80);
INSERT INTO `course` VALUES (56, 16, 9, '0a332上课时间', '4ee89上课周数', '345', 2, 10, 100);
INSERT INTO `course` VALUES (57, 43, 99, '42641上课时间', '2ab77上课周数', '652', 1, 24, 70);
INSERT INTO `course` VALUES (58, 83, 10, 'b7507上课时间', 'd088c上课周数', '921', 2, 24, 30);
INSERT INTO `course` VALUES (59, 4, 54, 'bee84上课时间', '12459上课周数', '293', 2, 23, 30);
INSERT INTO `course` VALUES (60, 40, 86, '4cbee上课时间', 'aa935上课周数', '287', 1, 11, 60);
INSERT INTO `course` VALUES (61, 96, 10, 'd6555上课时间', '74c02上课周数', '162', 2, 11, 30);
INSERT INTO `course` VALUES (62, 73, 11, 'ba75e上课时间', '3053b上课周数', '193', 2, 28, 40);
INSERT INTO `course` VALUES (63, 25, 93, '87d50上课时间', 'f0317上课周数', '577', 1, 25, 100);
INSERT INTO `course` VALUES (64, 13, 63, 'a040d上课时间', 'ed542上课周数', '231', 2, 8, 50);
INSERT INTO `course` VALUES (65, 14, 63, 'e4be0上课时间', 'efff9上课周数', '364', 2, 27, 80);
INSERT INTO `course` VALUES (66, 7, 3, '618fd上课时间', '39aca上课周数', '978', 2, 28, 70);
INSERT INTO `course` VALUES (67, 93, 2, '6081f上课时间', '68342上课周数', '002', 1, 9, 40);
INSERT INTO `course` VALUES (68, 9, 5, 'aaba9上课时间', '0d313上课周数', '906', 1, 15, 10);
INSERT INTO `course` VALUES (69, 95, 21, '01a62上课时间', '210bc上课周数', '979', 2, 3, 50);
INSERT INTO `course` VALUES (70, 46, 10, 'e5f0a上课时间', 'c29e8上课周数', '009', 2, 17, 50);
INSERT INTO `course` VALUES (71, 96, 100, 'd5345上课时间', 'a8eb7上课周数', '441', 1, 17, 70);
INSERT INTO `course` VALUES (72, 38, 88, '512e6上课时间', 'f7ab2上课周数', '952', 2, 12, 100);
INSERT INTO `course` VALUES (73, 39, 46, '5ca62上课时间', '2a7dd上课周数', '368', 2, 6, 80);
INSERT INTO `course` VALUES (74, 48, 7, '1928f上课时间', '8a54a上课周数', '238', 2, 14, 20);
INSERT INTO `course` VALUES (75, 40, 1, 'a464b上课时间', 'a381c上课周数', '022', 1, 23, 60);
INSERT INTO `course` VALUES (76, 81, 82, '8eb89上课时间', '08b8f上课周数', '458', 1, 15, 80);
INSERT INTO `course` VALUES (77, 79, 43, 'f38d4上课时间', '8ca9a上课周数', '242', 1, 1, 10);
INSERT INTO `course` VALUES (78, 93, 53, '1ef4a上课时间', '62e69上课周数', '076', 1, 1, 60);
INSERT INTO `course` VALUES (79, 16, 76, '8244d上课时间', '1d87a上课周数', '363', 2, 14, 20);
INSERT INTO `course` VALUES (80, 90, 15, 'b30a7上课时间', '6c2be上课周数', '413', 1, 11, 10);
INSERT INTO `course` VALUES (81, 78, 58, 'f15a2上课时间', '4411a上课周数', '061', 2, 29, 50);
INSERT INTO `course` VALUES (82, 7, 39, 'a6e39上课时间', '17442上课周数', '609', 2, 29, 90);
INSERT INTO `course` VALUES (83, 13, 57, '6ef4d上课时间', 'ef832上课周数', '308', 1, 8, 40);
INSERT INTO `course` VALUES (84, 44, 64, '131e0上课时间', 'c3e48上课周数', '238', 2, 26, 20);
INSERT INTO `course` VALUES (85, 46, 3, '820c6上课时间', 'ef98c上课周数', '822', 1, 28, 90);
INSERT INTO `course` VALUES (86, 5, 47, '6ae80上课时间', 'dfe28上课周数', '028', 1, 13, 40);
INSERT INTO `course` VALUES (87, 34, 101, '700e3上课时间', '62a1b上课周数', '1000', 1, 13, 90);
INSERT INTO `course` VALUES (88, 78, 68, '7010c上课时间', '03b9f上课周数', '754', 2, 6, 20);
INSERT INTO `course` VALUES (89, 59, 100, '42457上课时间', 'ad6fd上课周数', '177', 2, 13, 90);
INSERT INTO `course` VALUES (90, 71, 7, '984f7上课时间', '1cedb上课周数', '804', 2, 9, 20);
INSERT INTO `course` VALUES (91, 18, 98, 'f600c上课时间', 'd8ec8上课周数', '354', 2, 20, 80);
INSERT INTO `course` VALUES (92, 38, 94, '01098上课时间', '69e23上课周数', '249', 1, 12, 50);
INSERT INTO `course` VALUES (93, 77, 65, 'ee566上课时间', 'ad601上课周数', '094', 1, 5, 20);
INSERT INTO `course` VALUES (94, 50, 98, '38254上课时间', '16793上课周数', '360', 1, 19, 10);
INSERT INTO `course` VALUES (95, 59, 77, '08377上课时间', '66125上课周数', '258', 2, 22, 100);
INSERT INTO `course` VALUES (96, 30, 83, '05ca6上课时间', 'b13d7上课周数', '512', 2, 17, 20);
INSERT INTO `course` VALUES (97, 85, 100, '7b2a6上课时间', 'd0223上课周数', '499', 1, 13, 30);
INSERT INTO `course` VALUES (98, 25, 28, '3f117上课时间', 'c9cdf上课周数', '255', 2, 7, 30);
INSERT INTO `course` VALUES (99, 86, 59, '6131b上课时间', 'fbe0e上课周数', '087', 2, 17, 40);
INSERT INTO `course` VALUES (100, 49, 47, '4acff上课时间', '64a55上课周数', '978', 2, 5, 90);
INSERT INTO `course` VALUES (101, 103, 101, '4acff上课时间', '64a55上课周数', '978', 2, 5, 90);

-- ----------------------------
-- Table structure for sc
-- ----------------------------
DROP TABLE IF EXISTS `sc`;
CREATE TABLE `sc`  (
  `scid` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) NOT NULL COMMENT '学生外键id',
  `couid` int(11) NOT NULL COMMENT '课程外键id',
  PRIMARY KEY (`scid`) USING BTREE,
  INDEX `fk_sc_course`(`couid`) USING BTREE,
  INDEX `fk_sc_student`(`sid`) USING BTREE,
  CONSTRAINT `fk_sc_course` FOREIGN KEY (`couid`) REFERENCES `course` (`couid`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `fk_sc_student` FOREIGN KEY (`sid`) REFERENCES `student` (`sid`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 157 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_croatian_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc
-- ----------------------------
INSERT INTO `sc` VALUES (1, 12, 32);
INSERT INTO `sc` VALUES (2, 61, 50);
INSERT INTO `sc` VALUES (3, 87, 58);
INSERT INTO `sc` VALUES (4, 90, 2);
INSERT INTO `sc` VALUES (5, 15, 56);
INSERT INTO `sc` VALUES (6, 22, 57);
INSERT INTO `sc` VALUES (7, 39, 54);
INSERT INTO `sc` VALUES (8, 34, 97);
INSERT INTO `sc` VALUES (9, 95, 17);
INSERT INTO `sc` VALUES (10, 18, 13);
INSERT INTO `sc` VALUES (11, 39, 3);
INSERT INTO `sc` VALUES (12, 77, 3);
INSERT INTO `sc` VALUES (13, 10, 35);
INSERT INTO `sc` VALUES (14, 87, 63);
INSERT INTO `sc` VALUES (15, 19, 1);
INSERT INTO `sc` VALUES (16, 33, 47);
INSERT INTO `sc` VALUES (18, 75, 81);
INSERT INTO `sc` VALUES (19, 67, 93);
INSERT INTO `sc` VALUES (20, 43, 10);
INSERT INTO `sc` VALUES (21, 81, 70);
INSERT INTO `sc` VALUES (22, 84, 24);
INSERT INTO `sc` VALUES (23, 52, 22);
INSERT INTO `sc` VALUES (24, 26, 92);
INSERT INTO `sc` VALUES (25, 72, 28);
INSERT INTO `sc` VALUES (26, 78, 91);
INSERT INTO `sc` VALUES (27, 40, 38);
INSERT INTO `sc` VALUES (28, 31, 45);
INSERT INTO `sc` VALUES (29, 47, 34);
INSERT INTO `sc` VALUES (30, 42, 1);
INSERT INTO `sc` VALUES (31, 15, 58);
INSERT INTO `sc` VALUES (32, 14, 41);
INSERT INTO `sc` VALUES (33, 11, 72);
INSERT INTO `sc` VALUES (34, 24, 43);
INSERT INTO `sc` VALUES (35, 5, 68);
INSERT INTO `sc` VALUES (36, 56, 76);
INSERT INTO `sc` VALUES (37, 45, 4);
INSERT INTO `sc` VALUES (38, 95, 23);
INSERT INTO `sc` VALUES (39, 16, 92);
INSERT INTO `sc` VALUES (40, 84, 28);
INSERT INTO `sc` VALUES (41, 8, 42);
INSERT INTO `sc` VALUES (42, 12, 52);
INSERT INTO `sc` VALUES (43, 89, 47);
INSERT INTO `sc` VALUES (45, 46, 13);
INSERT INTO `sc` VALUES (46, 79, 28);
INSERT INTO `sc` VALUES (47, 51, 97);
INSERT INTO `sc` VALUES (49, 72, 86);
INSERT INTO `sc` VALUES (50, 14, 2);
INSERT INTO `sc` VALUES (51, 26, 51);
INSERT INTO `sc` VALUES (52, 36, 5);
INSERT INTO `sc` VALUES (53, 8, 80);
INSERT INTO `sc` VALUES (54, 93, 51);
INSERT INTO `sc` VALUES (55, 15, 68);
INSERT INTO `sc` VALUES (56, 71, 77);
INSERT INTO `sc` VALUES (57, 16, 70);
INSERT INTO `sc` VALUES (58, 16, 70);
INSERT INTO `sc` VALUES (59, 70, 72);
INSERT INTO `sc` VALUES (60, 24, 36);
INSERT INTO `sc` VALUES (61, 28, 67);
INSERT INTO `sc` VALUES (62, 30, 87);
INSERT INTO `sc` VALUES (63, 19, 94);
INSERT INTO `sc` VALUES (65, 82, 26);
INSERT INTO `sc` VALUES (66, 79, 44);
INSERT INTO `sc` VALUES (67, 21, 77);
INSERT INTO `sc` VALUES (68, 51, 28);
INSERT INTO `sc` VALUES (69, 19, 23);
INSERT INTO `sc` VALUES (70, 80, 96);
INSERT INTO `sc` VALUES (71, 49, 28);
INSERT INTO `sc` VALUES (72, 16, 59);
INSERT INTO `sc` VALUES (73, 93, 98);
INSERT INTO `sc` VALUES (74, 64, 24);
INSERT INTO `sc` VALUES (75, 34, 93);
INSERT INTO `sc` VALUES (76, 45, 59);
INSERT INTO `sc` VALUES (77, 84, 49);
INSERT INTO `sc` VALUES (78, 95, 86);
INSERT INTO `sc` VALUES (79, 27, 92);
INSERT INTO `sc` VALUES (80, 91, 34);
INSERT INTO `sc` VALUES (81, 47, 40);
INSERT INTO `sc` VALUES (82, 82, 10);
INSERT INTO `sc` VALUES (83, 49, 46);
INSERT INTO `sc` VALUES (84, 25, 61);
INSERT INTO `sc` VALUES (85, 22, 41);
INSERT INTO `sc` VALUES (86, 29, 38);
INSERT INTO `sc` VALUES (87, 32, 73);
INSERT INTO `sc` VALUES (88, 25, 77);
INSERT INTO `sc` VALUES (89, 66, 20);
INSERT INTO `sc` VALUES (90, 12, 63);
INSERT INTO `sc` VALUES (91, 99, 32);
INSERT INTO `sc` VALUES (92, 27, 57);
INSERT INTO `sc` VALUES (93, 28, 65);
INSERT INTO `sc` VALUES (94, 54, 9);
INSERT INTO `sc` VALUES (96, 40, 23);
INSERT INTO `sc` VALUES (97, 43, 79);
INSERT INTO `sc` VALUES (98, 39, 70);
INSERT INTO `sc` VALUES (99, 43, 38);
INSERT INTO `sc` VALUES (100, 71, 5);
INSERT INTO `sc` VALUES (153, 101, 44);
INSERT INTO `sc` VALUES (154, 101, 1);
INSERT INTO `sc` VALUES (155, 101, 2);
INSERT INTO `sc` VALUES (156, 101, 1);
INSERT INTO `sc` VALUES (157, 101, 2);

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `snum` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_croatian_ci NOT NULL,
  `spwd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_croatian_ci NOT NULL,
  `sname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_croatian_ci NULL DEFAULT NULL,
  `sgender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_croatian_ci NULL DEFAULT NULL,
  `sidcard` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_croatian_ci NULL DEFAULT NULL,
  `sage` int(11) NULL DEFAULT NULL,
  `scoll` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_croatian_ci NULL DEFAULT NULL,
  `spro` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_croatian_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 104 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_croatian_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (5, '355593', '689800', 'a455e名字', '男', '972465419028440732', 1, 'c948a学院', 'c265f专业');
INSERT INTO `student` VALUES (6, '543529', '746002', 'a7a09名字', '女', '909613227512328517', 12, '7726e学院', 'd45af专业');
INSERT INTO `student` VALUES (7, '558036', '231745', '6a0f9名字', '女', '486396783068768664', 9, 'c1a90学院', '1a5d9专业');
INSERT INTO `student` VALUES (8, '082089', '386309', '28cf5名字', '男', '999709012052918992', 4, 'b866c学院', '1dcec专业');
INSERT INTO `student` VALUES (9, '070085', '212495', 'e2bc7名字', '男', '416328908457811026', 71, '85390学院', '68cc8专业');
INSERT INTO `student` VALUES (10, '471074', '171434', '8c101名字', '男', '394777532805347986', 89, 'cf5b5学院', '3819b专业');
INSERT INTO `student` VALUES (11, '787766', '401728', 'bcfe6名字', '男', '225708567377323065', 20, '60949学院', '7d123专业');
INSERT INTO `student` VALUES (12, '248751', '226663', 'cc012名字', '男', '673947578478944362', 32, '4ed45学院', '751d9专业');
INSERT INTO `student` VALUES (13, '867871', '558985', '4ad29名字', '女', '017896658947332986', 12, '29cd8学院', 'a4080专业');
INSERT INTO `student` VALUES (14, '909659', '486210', '50dca名字', '男', '609862262605063055', 69, 'f990c学院', 'd4dda专业');
INSERT INTO `student` VALUES (15, '450733', '058370', '9ff36名字', '男', '713897147441757219', 12, '93ff4学院', 'dfecf专业');
INSERT INTO `student` VALUES (16, '520720', '815229', '9002f名字', '女', '077938687977665654', 22, '0a075学院', '99882专业');
INSERT INTO `student` VALUES (17, '823332', '128502', 'c18c7名字', '女', '882242032513179372', 17, '030b3学院', '55a62专业');
INSERT INTO `student` VALUES (18, '122662', '324613', '52c27名字', '女', '760244630912893169', 20, 'cdc8e学院', '3fe7b专业');
INSERT INTO `student` VALUES (19, '573170', '047915', '399c7名字', '女', '782504275186070508', 45, 'd3a3b学院', 'e969a专业');
INSERT INTO `student` VALUES (20, '386081', '152137', '90dca名字', '女', '551021924068818733', 37, '54979学院', '8e76a专业');
INSERT INTO `student` VALUES (21, '631389', '288777', '129c9名字', '男', '466751211226737832', 39, '0310b学院', '313b6专业');
INSERT INTO `student` VALUES (22, '051092', '829840', 'd8557名字', '男', '935251380344316764', 96, '60c85学院', '8cea7专业');
INSERT INTO `student` VALUES (23, '529301', '993695', '5192b名字', '女', '266627250531849451', 68, '6404e学院', '0d094专业');
INSERT INTO `student` VALUES (24, '709733', '965137', 'c2b97名字', '女', '022944023542045330', 23, 'e067d学院', '61f0c专业');
INSERT INTO `student` VALUES (25, '665456', '622720', '84684名字', '男', '428745939830011316', 71, '9b863学院', '028ef专业');
INSERT INTO `student` VALUES (26, '234383', '864036', '92c42名字', '女', '654234387259325154', 93, '0a543学院', '902bc专业');
INSERT INTO `student` VALUES (27, '979735', '926202', '78811名字', '男', '408056093199444643', 74, '8c14a学院', '139a9专业');
INSERT INTO `student` VALUES (28, '090813', '560849', 'faad1名字', '男', '552872634773611352', 55, 'a24ce学院', '56e3d专业');
INSERT INTO `student` VALUES (29, '595216', '123827', '1ea57名字', '男', '607440242026813476', 44, 'f1fc2学院', 'b1129专业');
INSERT INTO `student` VALUES (30, '363171', '490619', 'a6539名字', '男', '891355021862926317', 66, 'e624e学院', 'a60b8专业');
INSERT INTO `student` VALUES (31, '765544', '825499', 'd206b名字', '女', '491234178640027254', 73, '3b857学院', '0e4e2专业');
INSERT INTO `student` VALUES (32, '256399', '358811', 'b9286名字', '男', '567294662912172383', 37, '1052f学院', 'a736f专业');
INSERT INTO `student` VALUES (33, '762446', '574411', '7e5c3名字', '女', '689017656027846420', 62, 'f40b2学院', '643da专业');
INSERT INTO `student` VALUES (34, '309994', '097031', 'a5d18名字', '女', '689641919528523489', 29, '75c92学院', '1db54专业');
INSERT INTO `student` VALUES (35, '171587', '169917', 'a21ac名字', '男', '241783134194163742', 60, 'e88cb学院', '8e5e9专业');
INSERT INTO `student` VALUES (36, '470712', '723046', '3c6df名字', '男', '181334870405943039', 97, 'b3284学院', '71c3a专业');
INSERT INTO `student` VALUES (37, '810941', '115167', '91e86名字', '男', '682719840690342923', 24, '67e92学院', '1be19专业');
INSERT INTO `student` VALUES (38, '430114', '386408', 'f970b名字', '男', '452416961146361651', 11, '8d198学院', '1136f专业');
INSERT INTO `student` VALUES (39, '129821', '593809', '01006名字', '男', '455842831629251508', 31, '4b8a8学院', 'c86ca专业');
INSERT INTO `student` VALUES (40, '369696', '425586', 'fe1e5名字', '女', '949862902209729357', 0, 'a5623学院', '24851专业');
INSERT INTO `student` VALUES (41, '333216', '507763', '15df0名字', '女', '883716427909018667', 28, '0c1d5学院', '664b4专业');
INSERT INTO `student` VALUES (42, '089693', '295741', '74a3e名字', '男', '196503370678321909', 32, '73249学院', '30fe4专业');
INSERT INTO `student` VALUES (43, '559375', '984635', 'cf6a5名字', '男', '735663571006831089', 93, '5e2ff学院', 'd75e0专业');
INSERT INTO `student` VALUES (44, '780266', '264879', 'eb1d6名字', '男', '075477874861604730', 30, 'c44d3学院', '441e2专业');
INSERT INTO `student` VALUES (45, '531988', '804028', '10ce6名字', '男', '515097740150612307', 51, '5fe01学院', '62ae7专业');
INSERT INTO `student` VALUES (46, '762378', '695982', 'd35a8名字', '女', '466631917191149436', 57, 'dbefc学院', '63d01专业');
INSERT INTO `student` VALUES (47, '134842', '795973', 'e8d2d名字', '男', '082912028349432100', 8, '1f2bb学院', '8fa87专业');
INSERT INTO `student` VALUES (48, '951696', '019208', '2cd32名字', '男', '499849106996549888', 63, '8a999学院', 'dfb11专业');
INSERT INTO `student` VALUES (49, '098567', '066018', '3ce9e名字', '女', '726691453904292149', 67, '73336学院', '1b174专业');
INSERT INTO `student` VALUES (50, '637852', '496122', 'a0101名字', '女', '244265256491725043', 20, '4cc52学院', '25328专业');
INSERT INTO `student` VALUES (51, '337744', '018068', 'b9485名字', '男', '445823235878220452', 78, '67f89学院', '89102专业');
INSERT INTO `student` VALUES (52, '213508', '041267', 'd019a名字', '女', '423056476145136265', 98, '02016学院', 'd0e3f专业');
INSERT INTO `student` VALUES (53, '683117', '430614', '0ba47名字', '男', '082511470494677944', 4, '03d60学院', 'fc693专业');
INSERT INTO `student` VALUES (54, '507217', '508640', 'f6f14名字', '女', '036614464090233621', 43, '08497学院', '71579专业');
INSERT INTO `student` VALUES (55, '678350', '131334', '245c8名字', '男', '129844778632293508', 85, 'c77f5学院', '2385d专业');
INSERT INTO `student` VALUES (56, '379911', '394724', 'ae2b8名字', '男', '632491262629309583', 34, '235eb学院', '312dd专业');
INSERT INTO `student` VALUES (57, '473369', '180487', '33c09名字', '女', '091504155104164770', 81, 'f2d13学院', 'f9438专业');
INSERT INTO `student` VALUES (58, '730119', '137816', '297a0名字', '女', '402885796583044625', 54, '1781d学院', '64fb2专业');
INSERT INTO `student` VALUES (59, '475994', '470747', '0bc52名字', '女', '263654525056017677', 31, '24835学院', '347ee专业');
INSERT INTO `student` VALUES (60, '245236', '497102', 'b468b名字', '男', '578556186075526817', 80, '5eb1b学院', 'f78ac专业');
INSERT INTO `student` VALUES (61, '508691', '570191', 'f2fe5名字', '女', '727835723051643222', 95, '95f5a学院', 'a958f专业');
INSERT INTO `student` VALUES (62, '347292', '625245', 'a196b名字', '男', '464847672613800389', 99, 'f94a5学院', '75764专业');
INSERT INTO `student` VALUES (63, '555781', '750377', '99e37名字', '男', '263369561700319544', 58, '734ac学院', '8926b专业');
INSERT INTO `student` VALUES (64, '257977', '765528', 'b09f8名字', '女', '408783653578914711', 28, '6b05d学院', 'd5d04专业');
INSERT INTO `student` VALUES (65, '435563', '961786', '8fd8b名字', '女', '247341889226586084', 94, 'f4161学院', 'd7166专业');
INSERT INTO `student` VALUES (66, '879755', '228507', 'b1afb名字', '男', '457605787462607539', 37, '3b748学院', '09df2专业');
INSERT INTO `student` VALUES (67, '658024', '037327', '94536名字', '男', '457523573462326990', 35, '91285学院', '49f06专业');
INSERT INTO `student` VALUES (68, '922986', '762888', '597dc名字', '女', '165190020741751813', 84, '38c02学院', '608df专业');
INSERT INTO `student` VALUES (69, '458308', '348818', 'ee389名字', '女', '935847952323816404', 52, 'fc014学院', '9e32c专业');
INSERT INTO `student` VALUES (70, '052185', '319285', 'e7bd8名字', '男', '103985166893344875', 70, '9b2b9学院', '9e2be专业');
INSERT INTO `student` VALUES (71, '264009', '223155', 'dbdfc名字', '女', '723858700815210862', 21, 'c62a3学院', 'eaef5专业');
INSERT INTO `student` VALUES (72, '661994', '811622', '40350名字', '女', '061584917807428559', 24, 'dc97e学院', '67b1f专业');
INSERT INTO `student` VALUES (73, '255576', '590657', 'f07b2名字', '女', '722921259852085345', 50, 'c7707学院', '0e5f7专业');
INSERT INTO `student` VALUES (74, '593018', '966336', 'ef725名字', '男', '542243826238938044', 88, '254c7学院', '4d16c专业');
INSERT INTO `student` VALUES (75, '917640', '018365', 'c7786名字', '男', '146193914296500598', 31, '07a14学院', '6be15专业');
INSERT INTO `student` VALUES (76, '762087', '980915', '7245d名字', '女', '188191412831111178', 64, '35748学院', 'b3392专业');
INSERT INTO `student` VALUES (77, '618399', '641081', '2952e名字', '女', '861225493122870448', 23, '5cbb9学院', '22dd8专业');
INSERT INTO `student` VALUES (78, '397629', '116552', '8588f名字', '女', '701846529808006985', 0, '914a7学院', 'e83f8专业');
INSERT INTO `student` VALUES (79, '967251', '691879', '10e11名字', '男', '325627174034538809', 33, '528c3学院', 'ba66f专业');
INSERT INTO `student` VALUES (80, '659887', '760217', '087e2名字', '男', '140423972310625285', 37, '30d1f学院', '7a81a专业');
INSERT INTO `student` VALUES (81, '519746', '735696', 'ee6b1名字', '男', '106984423294555869', 42, '4796f学院', 'cd253专业');
INSERT INTO `student` VALUES (82, '693469', '003986', 'd24ce名字', '女', '405848943573566525', 22, 'eba40学院', '717d6专业');
INSERT INTO `student` VALUES (83, '965344', '192411', '1f7d1名字', '女', '075036088399100193', 28, '499ab学院', 'edee6专业');
INSERT INTO `student` VALUES (84, '146149', '608051', '2f241名字', '女', '936725836905583762', 23, '1edb8学院', '9f2ba专业');
INSERT INTO `student` VALUES (85, '248373', '902158', 'c5484名字', '女', '041181720243375935', 17, '1a210学院', '78318专业');
INSERT INTO `student` VALUES (86, '417341', '902025', '2e0a1名字', '男', '080943240645453675', 13, 'cbb2d学院', '8875e专业');
INSERT INTO `student` VALUES (87, '746249', '922472', '98e7e名字', '女', '789332450899529224', 55, '12aaa学院', 'f4e3f专业');
INSERT INTO `student` VALUES (88, '131106', '909747', 'aedac名字', '女', '177377555898511119', 75, 'e92b1学院', 'ece72专业');
INSERT INTO `student` VALUES (89, '131335', '275347', '559a5名字', '女', '343962045417191797', 22, '0619a学院', '36318专业');
INSERT INTO `student` VALUES (90, '805026', '788024', '34af4名字', '男', '777559954460867121', 81, '88e5a学院', '7ba73专业');
INSERT INTO `student` VALUES (91, '452670', '288258', 'efbb3名字', '男', '816138918230048944', 63, '760c5学院', '10a28专业');
INSERT INTO `student` VALUES (92, '385330', '691256', '01b4c名字', '男', '701805018710662775', 28, 'fa7bf学院', '9dbc3专业');
INSERT INTO `student` VALUES (93, '229910', '536570', 'ad2f7名字', '女', '976311028021328198', 77, 'a68c4学院', '791d9专业');
INSERT INTO `student` VALUES (94, '202262', '912566', '5ee12名字', '男', '242382578650835003', 72, 'fb507学院', '398a1专业');
INSERT INTO `student` VALUES (95, '501798', '219977', '3a892名字', '女', '652554194918159768', 12, 'e9771学院', 'b1464专业');
INSERT INTO `student` VALUES (96, '164042', '718400', '42ae5名字', '男', '026334385323402756', 30, 'f8017学院', '91b41专业');
INSERT INTO `student` VALUES (97, '222754', '351493', '82166名字', '女', '333418810768323367', 83, '186ea学院', 'b2dcc专业');
INSERT INTO `student` VALUES (98, '333614', '657087', '8ddf2名字', '女', '044515085442576558', 6, '80989学院', 'ab317专业');
INSERT INTO `student` VALUES (99, '670184', '147200', '25631名字', '女', '763380411306282568', 35, '1ad58学院', '0dfb0专业');
INSERT INTO `student` VALUES (100, '834716', '361902', '814e8名字', '男', '587507849644387097', 55, 'a8d56学院', 'ec44c专业');
INSERT INTO `student` VALUES (101, 'student', 'student', '学生测试', '男', '587507849644387097', 55, 'a8d56学院', 'ec44c专业');
INSERT INTO `student` VALUES (103, '123', '123', '123', '123', '123', 123, '123', '123');

-- ----------------------------
-- Table structure for subject
-- ----------------------------
DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject`  (
  `subid` int(11) NOT NULL AUTO_INCREMENT,
  `subname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_croatian_ci NULL DEFAULT NULL,
  `subintro` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_croatian_ci NULL DEFAULT NULL,
  `subtype` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_croatian_ci NULL DEFAULT NULL,
  `subcoll` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_croatian_ci NULL DEFAULT NULL,
  `subpro` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_croatian_ci NULL DEFAULT NULL,
  PRIMARY KEY (`subid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 103 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_croatian_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of subject
-- ----------------------------
INSERT INTO `subject` VALUES (3, '9e064名字', 'ad37f79e-1介绍', '必修', 'dff8e学院', '62f8f专业');
INSERT INTO `subject` VALUES (4, 'b813f名字', '9eae897c-1介绍', '选修', 'd188f学院', 'c971e专业');
INSERT INTO `subject` VALUES (5, '43f67名字', '8c1f774d-7介绍', '选修', '58baa学院', '0c7aa专业');
INSERT INTO `subject` VALUES (6, 'fa5d9名字', '93c1ac43-b介绍', '必修', 'a44f8学院', '44224专业');
INSERT INTO `subject` VALUES (7, '76f58名字', 'bee6727a-9介绍', '选修', '9d0de学院', '28f76专业');
INSERT INTO `subject` VALUES (8, '99cad名字', '0cba7582-d介绍', '选修', '5c904学院', 'f4732专业');
INSERT INTO `subject` VALUES (9, '04747名字', '3fc22d60-d介绍', '选修', 'ea67e学院', 'a386f专业');
INSERT INTO `subject` VALUES (10, 'f0ad5名字', '4e55638a-0介绍', '选修', 'c7dce学院', '762f6专业');
INSERT INTO `subject` VALUES (11, 'deb37名字', 'b0725ed0-f介绍', '必修', '6bca1学院', '15717专业');
INSERT INTO `subject` VALUES (12, '2926b名字', '94ad062f-1介绍', '选修', 'f2a8c学院', 'aa5e6专业');
INSERT INTO `subject` VALUES (13, 'ddbda名字', 'bd75c9b3-8介绍', '选修', 'e703b学院', 'd1fa6专业');
INSERT INTO `subject` VALUES (14, 'a9c25名字', '409849d4-c介绍', '必修', 'bf691学院', 'a185f专业');
INSERT INTO `subject` VALUES (15, '05d8f名字', '918dcda3-2介绍', '必修', '40504学院', '3d197专业');
INSERT INTO `subject` VALUES (16, '11fae名字', '006287f7-3介绍', '选修', 'ed079学院', 'cc2ec专业');
INSERT INTO `subject` VALUES (17, 'cd426名字', '39c0a0a0-d介绍', '必修', '50aa1学院', 'c9b50专业');
INSERT INTO `subject` VALUES (18, 'efa5e名字', 'a0be1886-d介绍', '必修', '8436f学院', 'a7eff专业');
INSERT INTO `subject` VALUES (19, 'ef6eb名字', '37a78e82-9介绍', '必修', '5c475学院', '5c57d专业');
INSERT INTO `subject` VALUES (20, 'cf413名字', 'af238071-4介绍', '必修', 'c679f学院', '7c82e专业');
INSERT INTO `subject` VALUES (21, '8309d名字', 'aeb44f25-0介绍', '必修', 'ee495学院', 'b7917专业');
INSERT INTO `subject` VALUES (22, 'a1b42名字', '2ce20fe0-4介绍', '选修', 'f1fc9学院', '3e6a9专业');
INSERT INTO `subject` VALUES (23, '1b298名字', '39f10382-a介绍', '必修', '050de学院', '5b41e专业');
INSERT INTO `subject` VALUES (24, '88e7b名字', 'afb3bb59-5介绍', '选修', '37988学院', 'b9a9a专业');
INSERT INTO `subject` VALUES (25, '75a7f名字', '3020f97d-5介绍', '选修', '421ce学院', 'ecaba专业');
INSERT INTO `subject` VALUES (26, '57cf4名字', '6ffbd428-7介绍', '必修', 'd2b2d学院', '2238a专业');
INSERT INTO `subject` VALUES (27, '8ee19名字', 'a53d7512-f介绍', '选修', '6a66c学院', 'b4aa4专业');
INSERT INTO `subject` VALUES (28, 'f45ea名字', '8a19afbf-5介绍', '必修', '1f026学院', '3a36d专业');
INSERT INTO `subject` VALUES (29, '42315名字', '1c9e8c97-e介绍', '必修', 'a90dd学院', 'a9922专业');
INSERT INTO `subject` VALUES (30, 'afdaa名字', 'c6122d10-4介绍', '必修', '07101学院', '55196专业');
INSERT INTO `subject` VALUES (31, 'e3db9名字', '599e52f8-9介绍', '必修', 'c6f5d学院', 'f96b7专业');
INSERT INTO `subject` VALUES (32, '42e5a名字', '6cdabdc9-7介绍', '必修', '59844学院', 'e4c77专业');
INSERT INTO `subject` VALUES (33, '763d7名字', '36a1c121-3介绍', '必修', '8194e学院', 'c47ab专业');
INSERT INTO `subject` VALUES (34, '55da9名字', '8eba50fc-2介绍', '选修', '0df65学院', '5ad4b专业');
INSERT INTO `subject` VALUES (35, '816ba名字', 'aecd9ae6-c介绍', '选修', 'a8b82学院', '86024专业');
INSERT INTO `subject` VALUES (36, '1765e名字', 'f81c4cbc-c介绍', '选修', 'b6f1f学院', 'c2fe8专业');
INSERT INTO `subject` VALUES (37, '98413名字', '773d1f7d-4介绍', '必修', 'c2549学院', '16136专业');
INSERT INTO `subject` VALUES (38, 'b9a46名字', '102afce9-f介绍', '选修', 'b8270学院', 'a22a4专业');
INSERT INTO `subject` VALUES (39, '9d1c0名字', 'bad64a16-a介绍', '选修', '73dc4学院', 'bd8b8专业');
INSERT INTO `subject` VALUES (40, 'c8d85名字', 'd19db41f-9介绍', '必修', 'b0064学院', 'ee2e0专业');
INSERT INTO `subject` VALUES (41, 'c7dc4名字', 'f896d1ee-f介绍', '必修', '85b6a学院', 'f9f16专业');
INSERT INTO `subject` VALUES (42, '78332名字', '0a0a9bc3-7介绍', '选修', 'f56bb学院', '87d62专业');
INSERT INTO `subject` VALUES (43, '51845名字', '86f0d3fd-9介绍', '选修', '60dcf学院', '3f06a专业');
INSERT INTO `subject` VALUES (44, 'dd861名字', '89385b52-b介绍', '选修', '60a1c学院', '5add8专业');
INSERT INTO `subject` VALUES (45, '6d6fe名字', 'be371df6-6介绍', '必修', '16bfb学院', '9a770专业');
INSERT INTO `subject` VALUES (46, '1b55e名字', '7bfd2914-3介绍', '选修', '2d20c学院', '590b2专业');
INSERT INTO `subject` VALUES (47, 'f4d33名字', '27256333-2介绍', '必修', 'ca279学院', 'b2716专业');
INSERT INTO `subject` VALUES (48, 'e8d13名字', 'c56d40c5-2介绍', '必修', 'e5376学院', '182f6专业');
INSERT INTO `subject` VALUES (49, '88c81名字', '831ab492-7介绍', '选修', '8f24a学院', 'dd1fb专业');
INSERT INTO `subject` VALUES (50, 'db50a名字', 'fd46cd6c-6介绍', '选修', 'bb01c学院', '029bb专业');
INSERT INTO `subject` VALUES (51, '4d5e7名字', '3e8fc782-a介绍', '必修', '5fa65学院', 'c3d25专业');
INSERT INTO `subject` VALUES (52, 'b61e3名字', '05c6cea0-9介绍', '选修', '9e093学院', 'be937专业');
INSERT INTO `subject` VALUES (53, '26d92名字', '5835587b-a介绍', '必修', 'c567c学院', '3d053专业');
INSERT INTO `subject` VALUES (54, 'c0328名字', '53c93c79-1介绍', '必修', 'bd8da学院', 'e1eb7专业');
INSERT INTO `subject` VALUES (55, 'c8c79名字', '0b0143e4-7介绍', '必修', '688ad学院', '19c18专业');
INSERT INTO `subject` VALUES (56, 'bd2c3名字', 'c585d76e-5介绍', '选修', '26359学院', '31d67专业');
INSERT INTO `subject` VALUES (57, '50020名字', 'b4d07d63-a介绍', '必修', 'edb12学院', '01856专业');
INSERT INTO `subject` VALUES (58, '4d3ad名字', 'fbab5a8d-c介绍', '选修', '9b617学院', 'b468e专业');
INSERT INTO `subject` VALUES (59, '7e9fa名字', '8aeee5ef-5介绍', '选修', '459b7学院', 'e54ea专业');
INSERT INTO `subject` VALUES (60, 'ca279名字', '5c03fc54-a介绍', '选修', 'fae70学院', 'd66b8专业');
INSERT INTO `subject` VALUES (61, 'db543名字', 'd42e165c-5介绍', '选修', 'c9663学院', '76337专业');
INSERT INTO `subject` VALUES (62, '232db名字', '1514ba96-c介绍', '选修', '54c0a学院', 'a18e9专业');
INSERT INTO `subject` VALUES (63, 'dd277名字', 'e8663dff-4介绍', '必修', 'a0a11学院', '2949e专业');
INSERT INTO `subject` VALUES (64, 'f4d9d名字', 'df9479bf-f介绍', '选修', 'e5faf学院', 'b3d62专业');
INSERT INTO `subject` VALUES (65, '2b675名字', '88e4287f-4介绍', '必修', '79773学院', '48907专业');
INSERT INTO `subject` VALUES (66, '1991a名字', '25603984-d介绍', '必修', 'b1a93学院', '1c2d7专业');
INSERT INTO `subject` VALUES (67, 'c5f61名字', '0dbb79ce-5介绍', '必修', '2a34c学院', '8bd73专业');
INSERT INTO `subject` VALUES (68, 'd203f名字', '39b6622f-5介绍', '选修', 'f1168学院', '1bd07专业');
INSERT INTO `subject` VALUES (69, '9465c名字', 'd4888a02-3介绍', '必修', '12532学院', '6acd0专业');
INSERT INTO `subject` VALUES (70, '34eca名字', '24584abd-f介绍', '必修', '76e07学院', 'cf78d专业');
INSERT INTO `subject` VALUES (71, '85216名字', 'be0d8a28-3介绍', '必修', '0d4b5学院', 'bedab专业');
INSERT INTO `subject` VALUES (72, '0bed5名字', '21c58fbd-0介绍', '必修', 'da2e2学院', 'b9b86专业');
INSERT INTO `subject` VALUES (73, 'b2764名字', 'a38da2c9-d介绍', '选修', 'd95c8学院', 'af4be专业');
INSERT INTO `subject` VALUES (74, 'dacfa名字', '433213ac-1介绍', '必修', 'a4035学院', '91aa1专业');
INSERT INTO `subject` VALUES (75, 'f3bb2名字', 'cd083927-8介绍', '选修', '2e20e学院', '7b3c4专业');
INSERT INTO `subject` VALUES (76, '1172f名字', 'b6bab171-3介绍', '必修', '1b517学院', '2e481专业');
INSERT INTO `subject` VALUES (77, '5b073名字', '6dd8d0a4-c介绍', '选修', 'b5a71学院', 'a8078专业');
INSERT INTO `subject` VALUES (78, '3f388名字', 'ba913a25-d介绍', '选修', 'd4e96学院', 'f052c专业');
INSERT INTO `subject` VALUES (79, '90697名字', '7a3d04ea-6介绍', '选修', '2adcc学院', 'f040f专业');
INSERT INTO `subject` VALUES (80, 'f0a52名字', '869f7ba4-6介绍', '必修', '5d95a学院', '94f7d专业');
INSERT INTO `subject` VALUES (81, 'e77ee名字', 'ed94367d-e介绍', '选修', '94154学院', 'b7e36专业');
INSERT INTO `subject` VALUES (82, '5ec72名字', '99e0b8f5-b介绍', '必修', 'daea1学院', '1f532专业');
INSERT INTO `subject` VALUES (83, 'd8193名字', 'a2543ca0-f介绍', '选修', '47a74学院', '9207a专业');
INSERT INTO `subject` VALUES (84, 'e5b67名字', 'd4be17c1-9介绍', '必修', '8c0fd学院', '04dbd专业');
INSERT INTO `subject` VALUES (85, '209e8名字', '4cb0f994-2介绍', '选修', 'd0bac学院', '07852专业');
INSERT INTO `subject` VALUES (86, '9e07d名字', 'd807c40f-7介绍', '必修', 'b23ce学院', '242a8专业');
INSERT INTO `subject` VALUES (87, 'ff4f8名字', '8eda9545-f介绍', '必修', '91656学院', '2f4d6专业');
INSERT INTO `subject` VALUES (88, 'f800e名字', '01335521-6介绍', '必修', '4d880学院', 'becdf专业');
INSERT INTO `subject` VALUES (89, '00fe7名字', 'c6e14734-6介绍', '选修', '20b9d学院', 'da0d7专业');
INSERT INTO `subject` VALUES (90, 'a8ecc名字', '145a3030-f介绍', '必修', 'c0d9b学院', 'bc804专业');
INSERT INTO `subject` VALUES (91, '816e2名字', 'e4b71e55-a介绍', '必修', 'ceb32学院', 'f44bb专业');
INSERT INTO `subject` VALUES (92, '7f051名字', '3b3ee2e3-1介绍', '选修', '96b56学院', 'a3675专业');
INSERT INTO `subject` VALUES (93, 'f3d51名字', '0cb7b413-2介绍', '选修', '137c0学院', '6892f专业');
INSERT INTO `subject` VALUES (94, '49482名字', 'e2c871d0-1介绍', '选修', 'a0b10学院', 'a152c专业');
INSERT INTO `subject` VALUES (95, 'c7894名字', 'c78fd1e9-1介绍', '必修', '9c0eb学院', '08393专业');
INSERT INTO `subject` VALUES (96, '38d56名字', 'be1e0b1f-9介绍', '选修', 'f98d6学院', 'd47a0专业');
INSERT INTO `subject` VALUES (97, '002bf名字', 'bb4b869b-7介绍', '选修', 'c6e0f学院', 'fd18d专业');
INSERT INTO `subject` VALUES (98, 'aef7e名字', 'fdd653c6-d介绍', '必修', 'd8345学院', '2e21f专业');
INSERT INTO `subject` VALUES (99, '5e556名字', '665a4d19-3介绍', '必修', 'a10ae学院', '37541专业');
INSERT INTO `subject` VALUES (100, '0e662名字', '37ae50b3-e介绍', '必修', '74069学院', '3a455专业');
INSERT INTO `subject` VALUES (101, '68170名字', 'a704c640-c介绍', '必修', '050da学院', '72a81专业');
INSERT INTO `subject` VALUES (102, '62d27名字', '60f76c78-5介绍', '选修', '84d8d学院', '31d3b专业');
INSERT INTO `subject` VALUES (103, '科目表测试', '60f76c78-5介绍', '选修', '84d8d学院', '31d3b专业');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `tnum` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_croatian_ci NULL DEFAULT NULL,
  `tpwd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_croatian_ci NULL DEFAULT NULL,
  `tname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_croatian_ci NULL DEFAULT NULL,
  `tgender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_croatian_ci NULL DEFAULT NULL,
  `tidcard` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_croatian_ci NULL DEFAULT NULL,
  `tage` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`tid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 102 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_croatian_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES (1, '295339', '567021', '35b10名字', '男', '528877609005129441', 71);
INSERT INTO `teacher` VALUES (2, '115755', '170568', '2754d名字', '男', '183106797459470447', 19);
INSERT INTO `teacher` VALUES (3, '584710', '836961', 'b1a0a名字', '男', '706976012529949757', 13);
INSERT INTO `teacher` VALUES (4, '941623', '312808', '3e742名字', '男', '711805842109046062', 65);
INSERT INTO `teacher` VALUES (5, '351795', '414819', 'b0b6c名字', '男', '628659406541352213', 68);
INSERT INTO `teacher` VALUES (6, '335539', '766841', 'e54c0名字', '女', '668278666560814176', 52);
INSERT INTO `teacher` VALUES (7, '418248', '050539', '13593名字', '女', '843583270639711012', 59);
INSERT INTO `teacher` VALUES (8, '931428', '336181', '8580b名字', '女', '667891104631614754', 94);
INSERT INTO `teacher` VALUES (9, '836494', '512288', 'd63d5名字', '男', '244505572745095282', 87);
INSERT INTO `teacher` VALUES (10, '905190', '044011', '79ee7名字', '男', '131540230902387654', 8);
INSERT INTO `teacher` VALUES (11, '455978', '913330', '7937d名字', '女', '191391588503537781', 73);
INSERT INTO `teacher` VALUES (12, '810661', '469931', '9adab名字', '女', '885726352475904199', 48);
INSERT INTO `teacher` VALUES (13, '767379', '891791', '70e64名字', '女', '019569306147457568', 78);
INSERT INTO `teacher` VALUES (14, '308929', '206998', 'e6977名字', '女', '452534960535466533', 97);
INSERT INTO `teacher` VALUES (15, '756703', '710150', 'c7bdf名字', '男', '204015992758502071', 60);
INSERT INTO `teacher` VALUES (16, '708256', '444386', '3f3cb名字', '男', '735781315627054838', 12);
INSERT INTO `teacher` VALUES (17, '619886', '722581', '7645a名字', '男', '884139619475344283', 53);
INSERT INTO `teacher` VALUES (18, '494733', '180832', '37559名字', '女', '849916786790610301', 67);
INSERT INTO `teacher` VALUES (19, '132898', '323709', '52054名字', '女', '271970106441446566', 78);
INSERT INTO `teacher` VALUES (20, '968440', '458076', '17965名字', '女', '564027330707018516', 93);
INSERT INTO `teacher` VALUES (21, '993242', '794457', 'd0358名字', '女', '203474136849281676', 7);
INSERT INTO `teacher` VALUES (22, '980781', '585213', 'a97ae名字', '女', '050311677464349876', 4);
INSERT INTO `teacher` VALUES (23, '906687', '736319', 'c0606名字', '女', '389656471444641350', 81);
INSERT INTO `teacher` VALUES (24, '104596', '527171', '4441d名字', '男', '874462088657951301', 22);
INSERT INTO `teacher` VALUES (25, '807563', '605926', '1310c名字', '男', '781922872950229675', 44);
INSERT INTO `teacher` VALUES (26, '352704', '235556', '370f7名字', '女', '969205534657732250', 46);
INSERT INTO `teacher` VALUES (27, '701380', '282822', '89608名字', '男', '495375510900858536', 51);
INSERT INTO `teacher` VALUES (28, '520387', '599540', 'e1b2c名字', '男', '450324973974096900', 35);
INSERT INTO `teacher` VALUES (29, '893060', '415008', '52dc3名字', '女', '403941882582970999', 50);
INSERT INTO `teacher` VALUES (30, '074730', '139220', '33724名字', '男', '810246140810327382', 55);
INSERT INTO `teacher` VALUES (31, '110817', '263363', '515a4名字', '女', '411601161017510308', 35);
INSERT INTO `teacher` VALUES (32, '195140', '414352', 'ebaad名字', '女', '235000998896188192', 40);
INSERT INTO `teacher` VALUES (33, '411758', '916475', '443ed名字', '男', '453031505927031320', 7);
INSERT INTO `teacher` VALUES (34, '515300', '097259', 'ec668名字', '男', '498204301357201933', 65);
INSERT INTO `teacher` VALUES (35, '027247', '564654', '69df8名字', '男', '032444273145481190', 42);
INSERT INTO `teacher` VALUES (36, '492393', '589130', '52c94名字', '女', '286808618130528260', 92);
INSERT INTO `teacher` VALUES (37, '099959', '233706', 'c7dc9名字', '男', '978634490474929737', 57);
INSERT INTO `teacher` VALUES (38, '284083', '132362', '9a540名字', '女', '588372723990982629', 14);
INSERT INTO `teacher` VALUES (39, '815716', '197170', 'cf12f名字', '男', '593726176929239476', 39);
INSERT INTO `teacher` VALUES (40, '931169', '385881', 'f5e54名字', '男', '333753460738264777', 55);
INSERT INTO `teacher` VALUES (41, '836323', '656552', 'e93c1名字', '男', '378970545008872339', 67);
INSERT INTO `teacher` VALUES (42, '392281', '042749', 'b1fb8名字', '男', '241503534910468938', 33);
INSERT INTO `teacher` VALUES (43, '398872', '133262', '37cfa名字', '男', '518312304169735597', 38);
INSERT INTO `teacher` VALUES (44, '158972', '046409', 'edc62名字', '男', '385007235479942945', 38);
INSERT INTO `teacher` VALUES (45, '525753', '018467', 'b4027名字', '女', '634325874212783848', 72);
INSERT INTO `teacher` VALUES (46, '381984', '429660', '9a808名字', '男', '518399661515310396', 56);
INSERT INTO `teacher` VALUES (47, '660874', '527443', '01131名字', '女', '455321500552486825', 35);
INSERT INTO `teacher` VALUES (48, '483635', '494148', 'f5c4a名字', '男', '505285754407212184', 19);
INSERT INTO `teacher` VALUES (49, '743407', '786863', '641a5名字', '女', '760697954356823295', 86);
INSERT INTO `teacher` VALUES (50, '422813', '562661', '1a419名字', '男', '132051608839038368', 4);
INSERT INTO `teacher` VALUES (51, '392531', '315167', '8c4be名字', '女', '726569598723108027', 11);
INSERT INTO `teacher` VALUES (52, '158103', '575816', '38e53名字', '女', '226447176753570582', 26);
INSERT INTO `teacher` VALUES (53, '005972', '840039', '07911名字', '男', '857786241196249428', 80);
INSERT INTO `teacher` VALUES (54, '445401', '432335', '4e4ca名字', '男', '897789423669235159', 9);
INSERT INTO `teacher` VALUES (55, '282024', '320189', 'e818d名字', '男', '457057991167377324', 82);
INSERT INTO `teacher` VALUES (56, '167853', '860941', '290fb名字', '男', '157592201068258647', 89);
INSERT INTO `teacher` VALUES (57, '928988', '522217', '56e71名字', '女', '798178650629690033', 84);
INSERT INTO `teacher` VALUES (58, '671316', '294060', 'c5c65名字', '女', '443183875587835317', 12);
INSERT INTO `teacher` VALUES (59, '206576', '353146', '4f7f8名字', '男', '198567325217723334', 96);
INSERT INTO `teacher` VALUES (60, '545107', '330749', 'bbb07名字', '女', '160529028378860187', 16);
INSERT INTO `teacher` VALUES (61, '889297', '905106', 'ed74f名字', '女', '246157520829526534', 24);
INSERT INTO `teacher` VALUES (62, '407788', '929383', 'bafbd名字', '男', '279449088322484641', 3);
INSERT INTO `teacher` VALUES (63, '300118', '355281', 'cfe4e名字', '男', '856393044980787288', 70);
INSERT INTO `teacher` VALUES (64, '227138', '070179', '0a25f名字', '男', '981980482525833194', 89);
INSERT INTO `teacher` VALUES (65, '140857', '240106', 'b5fc5名字', '男', '304965351462231275', 67);
INSERT INTO `teacher` VALUES (66, '703160', '743139', 'cfec3名字', '男', '094953027619531812', 78);
INSERT INTO `teacher` VALUES (67, '960501', '431276', '43333名字', '女', '198952326318448669', 71);
INSERT INTO `teacher` VALUES (68, '187879', '327714', '5bca7名字', '男', '476987706133077385', 96);
INSERT INTO `teacher` VALUES (69, '629976', '359668', '6869a名字', '女', '670381921290089560', 12);
INSERT INTO `teacher` VALUES (70, '405275', '674798', '72276名字', '女', '108900393458595731', 0);
INSERT INTO `teacher` VALUES (71, '117020', '623946', '53e00名字', '男', '168517991019407104', 99);
INSERT INTO `teacher` VALUES (72, '002731', '027498', '06b22名字', '男', '519933351609747608', 88);
INSERT INTO `teacher` VALUES (73, '022623', '279475', '9e007名字', '男', '716391409856802044', 5);
INSERT INTO `teacher` VALUES (74, '330043', '731617', 'fe431名字', '女', '519599574786738563', 65);
INSERT INTO `teacher` VALUES (75, '705012', '511081', '77f7c名字', '女', '618526245103086119', 85);
INSERT INTO `teacher` VALUES (76, '155847', '006628', '15fc7名字', '女', '380257156288843585', 2);
INSERT INTO `teacher` VALUES (77, '691838', '465048', '0fe5f名字', '女', '455299892120995253', 19);
INSERT INTO `teacher` VALUES (78, '631208', '749043', 'aa163名字', '男', '496759404037080147', 27);
INSERT INTO `teacher` VALUES (79, '388977', '151026', '96ea8名字', '女', '978900563750265935', 12);
INSERT INTO `teacher` VALUES (80, '267368', '907794', '8ad2a名字', '男', '739323229348646530', 25);
INSERT INTO `teacher` VALUES (81, '617366', '157037', 'fd01a名字', '男', '799969036814669039', 76);
INSERT INTO `teacher` VALUES (82, '064913', '750416', '298f5名字', '男', '801001496571213860', 42);
INSERT INTO `teacher` VALUES (83, '139193', '568610', 'd0c44名字', '女', '695530741602462872', 47);
INSERT INTO `teacher` VALUES (84, '004978', '783366', '4b22d名字', '男', '643114285322831955', 72);
INSERT INTO `teacher` VALUES (85, '322470', '798851', 'f3dad名字', '男', '010014019986079453', 43);
INSERT INTO `teacher` VALUES (86, '663899', '013340', '60b88名字', '男', '966383976757027159', 39);
INSERT INTO `teacher` VALUES (87, '298991', '856841', '791a1名字', '女', '103577042263651992', 79);
INSERT INTO `teacher` VALUES (88, '749816', '061800', '98b4a名字', '女', '522301435004065517', 8);
INSERT INTO `teacher` VALUES (89, '114506', '978478', '480aa名字', '男', '626599564557494027', 54);
INSERT INTO `teacher` VALUES (90, '376259', '654235', '0ce6c名字', '女', '052966377775491970', 81);
INSERT INTO `teacher` VALUES (91, '280849', '072306', '9d0f9名字', '男', '676440514581477496', 69);
INSERT INTO `teacher` VALUES (92, '111194', '590657', 'e73ad名字', '男', '966905989311085044', 96);
INSERT INTO `teacher` VALUES (93, '006176', '383238', '3105d名字', '男', '592087634948663670', 91);
INSERT INTO `teacher` VALUES (94, '482426', '215405', 'f8f10名字', '男', '266512456326670738', 3);
INSERT INTO `teacher` VALUES (95, '999173', '423520', 'd3d0d名字', '男', '343236895857611967', 79);
INSERT INTO `teacher` VALUES (96, '127745', '002819', 'db25f名字', '女', '217215045083686932', 78);
INSERT INTO `teacher` VALUES (97, '773490', '071881', 'd9752名字', '女', '611173652680731366', 18);
INSERT INTO `teacher` VALUES (98, '081628', '380576', '6dd7c名字', '女', '251196586269583367', 82);
INSERT INTO `teacher` VALUES (99, '586140', '791499', 'e3042名字', '男', '787368093399410925', 36);
INSERT INTO `teacher` VALUES (100, '454523', '653409', 'e67eb名字', '男', '325734404082668880', 39);
INSERT INTO `teacher` VALUES (101, 'teacher', 'teacher', '教师测试', '男', '325734404082668880', 39);

SET FOREIGN_KEY_CHECKS = 1;
