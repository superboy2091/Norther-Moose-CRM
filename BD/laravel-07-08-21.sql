/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100414
 Source Host           : localhost:3306
 Source Schema         : laravel

 Target Server Type    : MySQL
 Target Server Version : 100414
 File Encoding         : 65001

 Date: 08/07/2021 05:54:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for client_statuses
-- ----------------------------
DROP TABLE IF EXISTS `client_statuses`;
CREATE TABLE `client_statuses`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of client_statuses
-- ----------------------------

-- ----------------------------
-- Table structure for clients
-- ----------------------------
DROP TABLE IF EXISTS `clients`;
CREATE TABLE `clients`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `date` date NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `samples` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `pricel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `importance` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `contact` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `town` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `area` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `web` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `brands` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `comments` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status_id` int UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `status_fk_340032`(`status_id`) USING BTREE,
  CONSTRAINT `status_fk_340032` FOREIGN KEY (`status_id`) REFERENCES `client_statuses` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 749 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of clients
-- ----------------------------
INSERT INTO `clients` VALUES (67, NULL, 'No contact', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-29 10:45:08', '2021-05-03 00:26:31', '2021-05-03 00:26:31', NULL);
INSERT INTO `clients` VALUES (68, NULL, 'RECALL', NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-29 10:45:18', '2021-05-03 00:26:28', '2021-05-03 00:26:28', NULL);
INSERT INTO `clients` VALUES (69, NULL, 'Call 1', NULL, NULL, NULL, '3', NULL, NULL, NULL, '141 342 214', '111 141 513', NULL, NULL, NULL, NULL, '2021-04-29 10:45:41', '2021-05-03 00:26:26', '2021-05-03 00:26:26', NULL);
INSERT INTO `clients` VALUES (70, NULL, 'Call 2', NULL, NULL, NULL, '4', 'microsoft', NULL, NULL, NULL, NULL, NULL, NULL, 'Biologique', NULL, '2021-04-29 10:46:46', '2021-05-03 00:26:24', '2021-05-03 00:26:24', NULL);
INSERT INTO `clients` VALUES (71, NULL, 'Call 3', NULL, NULL, NULL, '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Other', 'nonono', '2021-04-29 10:47:59', '2021-05-03 00:26:22', '2021-05-03 00:26:22', NULL);
INSERT INTO `clients` VALUES (72, NULL, 'Undecided', 'YES', NULL, '2', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-29 10:48:58', '2021-05-03 00:26:20', '2021-05-03 00:26:20', NULL);
INSERT INTO `clients` VALUES (73, NULL, 'Almost customer', NULL, NULL, NULL, '7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-29 10:49:47', '2021-05-03 00:26:17', '2021-05-03 00:26:17', NULL);
INSERT INTO `clients` VALUES (74, NULL, 'Customer', NULL, NULL, NULL, '8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-29 10:49:53', '2021-05-03 00:26:15', '2021-05-03 00:26:15', NULL);
INSERT INTO `clients` VALUES (75, NULL, 'Not interested', NULL, NULL, NULL, '9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-29 10:50:00', '2021-05-03 00:26:13', '2021-05-03 00:26:13', NULL);
INSERT INTO `clients` VALUES (76, NULL, 'Not interesting', NULL, NULL, NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-29 10:50:10', '2021-05-03 00:26:11', '2021-05-03 00:26:11', NULL);
INSERT INTO `clients` VALUES (77, NULL, NULL, NULL, NULL, NULL, '11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mesoestetic', NULL, '2021-04-29 11:08:56', '2021-05-03 00:26:08', '2021-05-03 00:26:08', NULL);
INSERT INTO `clients` VALUES (78, '2021-04-30', 'Call 3', 'YES', NULL, '2', 'pedro', 'estetica navarara', 'santander', 'Asturias', '974 014 014', NULL, NULL, NULL, NULL, 'kfkdsjfsdkfsdkfdksjfkdjskfjdksjfkdjskfjdksjfkdjskfjdksjfkdjskfjsdkjfdjskfdksfkdsjfsdkjfkdsr', '2021-04-30 02:35:05', '2021-05-03 00:26:06', '2021-05-03 00:26:06', NULL);
INSERT INTO `clients` VALUES (79, '2021-04-30', 'Customer', 'YES', NULL, '1', 'Merceds', 'estilistas del Norte', 'Santander', 'Cantabria', '145 147 512', NULL, NULL, 'dsdsddsds.com', 'Biologique', 'dsdsdd sddsf frfr rffr frfrewf etg e trghteye yrehyh y5hyth ythythyt ythytehyrehyh ryyth ythythyth yth', '2021-04-30 02:49:48', '2021-05-03 00:26:04', '2021-05-03 00:26:04', NULL);
INSERT INTO `clients` VALUES (80, '2021-05-01', 'Almost customer', 'YES', NULL, '1', 'Merceds', 'estilistas del Norte', 'dsdsdsd', 'La Rioja', '447 452 145', '145 125 145', NULL, 'dsdsddsds.com', 'Other', 'dffdfdfdffd fd fd fd f fr f rf  fr frew g t gtr gtr g  gtgtrg trg trgtrgtr gtrgtr gtrgtrg trgtrg trgtr gtrg trgt4 hu uy6j u6j u7 j uj 6u j', '2021-05-01 09:31:49', '2021-05-03 00:25:56', '2021-05-03 00:25:56', NULL);
INSERT INTO `clients` VALUES (81, '2021-05-07', 'Call 1', 'YES', NULL, '2', 'María', 'Velvet', 'Santander', 'Cantabria', '942 230 070', NULL, 'info@centrovelvet.com', NULL, 'Mesoestetic', 'Quiere marca a medida', '2021-05-03 00:29:46', '2021-07-08 12:11:23', NULL, NULL);
INSERT INTO `clients` VALUES (82, '2021-05-03', 'No contact', 'NO', NULL, '2', 'Zulema', 'Ponte Mona', 'Sestao', 'Pais Vasco', '944 345 665', NULL, NULL, NULL, 'Mesoestetic', 'Simpatica', '2021-05-03 00:40:08', '2021-06-15 02:15:44', NULL, NULL);
INSERT INTO `clients` VALUES (83, '2021-04-26', 'Call 1', 'YES', NULL, '2', 'Carmen Gutierrez', 'Clinica Dr.Rumoroso', 'Torrelavega', 'Cantabria', '942 142 697', NULL, NULL, NULL, 'Mesoestetic', 'Esperar al feedback de la doctora, viernes 21', '2021-05-03 00:49:26', '2021-05-20 02:19:59', NULL, NULL);
INSERT INTO `clients` VALUES (84, '2021-04-26', 'RECALL', 'YES', NULL, '2', 'Miriam Garcia', 'Quierete Mi', 'Astillero', 'Cantabria', NULL, '616 162 036', NULL, NULL, 'Other', NULL, '2021-05-03 00:51:24', '2021-05-31 00:36:21', NULL, NULL);
INSERT INTO `clients` VALUES (85, '2021-06-01', 'Almost customer', 'YES', NULL, '2', 'Mavi Solano', 'Ongles', 'Santander', 'Cantabria', '942 223 631', '692 852 567', NULL, NULL, 'Other', 'Friki de la cosmética. Llamar en 3 semanas (finales de junio)', '2021-05-03 00:53:03', '2021-05-31 23:54:17', NULL, NULL);
INSERT INTO `clients` VALUES (86, '2021-05-14', 'Call 2', 'YES', NULL, '1', 'Macu', 'Belleza Macu', 'Maoño', 'Cantabria', '942 581 425', NULL, 'macugalvan@yahoo.es', NULL, 'Mesoestetic', 'Tiene 5 chicas trabajando, está a tope pero venden más servicios que productos. Llamar en agosto un día que haga malo.', '2021-05-03 00:54:37', '2021-05-14 02:50:47', NULL, NULL);
INSERT INTO `clients` VALUES (87, '2021-04-27', 'Not interesting', 'YES', NULL, '2', 'Cruz', 'Centro de Estetica Cruz Salas', 'Santander', 'Cantabria', '942 240 873', '650 025 521', NULL, NULL, 'Other', 'Quiere marca a medida, nada que hacer', '2021-05-03 00:55:31', '2021-05-26 00:58:35', NULL, NULL);
INSERT INTO `clients` VALUES (88, '2021-05-07', 'Call 1', 'YES', NULL, '3', 'Lorena', 'Estetica Lorena Escalante', 'Santiago de Cartes', 'Cantabria', NULL, '608 766 034', NULL, NULL, 'Other', 'Tarifas enviadas', '2021-05-03 00:57:48', '2021-06-25 00:20:50', NULL, NULL);
INSERT INTO `clients` VALUES (89, '2021-04-23', 'RECALL', 'NO', NULL, '1', 'Raquel', 'Raquel Carrera', 'Castro Urdiales', 'Cantabria', NULL, '622 252 026', NULL, NULL, 'Other', 'Medicina Estetica. Llamar dia 4 11/45', '2021-05-03 00:59:53', '2021-05-03 01:00:30', NULL, NULL);
INSERT INTO `clients` VALUES (90, '2021-04-27', 'No contact', 'NO', NULL, '1', 'Lucia Barros', 'Estética Yolanda', 'Santander', 'Cantabria', '942 361 372', NULL, NULL, NULL, 'Mesoestetic', NULL, '2021-05-03 01:02:27', '2021-06-15 02:12:46', NULL, NULL);
INSERT INTO `clients` VALUES (91, '2021-05-26', 'RECALL', 'YES', NULL, '1', 'Rocio', 'Belleza y Salud Rocio Mendes', 'Reinosa', 'Cantabria', '942 751 105', '651 068 160', NULL, NULL, 'Natura Bisse', 'BDR. Simpática', '2021-05-03 01:05:02', '2021-06-14 23:46:49', NULL, NULL);
INSERT INTO `clients` VALUES (92, '2021-06-25', 'No contact', 'NO', NULL, '2', 'Noelia Lopez', 'Estetica Integral Noelia Lopez', 'Reinosa', 'Cantabria', '642 750 548', NULL, NULL, NULL, 'Mesoestetic', 'Ocupadísima', '2021-05-03 01:06:09', '2021-06-25 01:30:02', NULL, NULL);
INSERT INTO `clients` VALUES (93, '2021-05-13', 'Almost customer', 'YES', NULL, '3', 'Sandra', 'Sandra Gil Centro de Estetica Integral', 'Castro Urdiales', 'Cantabria', NULL, '645 888 022', NULL, NULL, 'Biologique', 'Llamar más adelante. Ahora está a tope de producto y algunas marcas le piden exclusividad en productos. Se le han enviado las tarifas', '2021-05-03 01:11:31', '2021-05-27 00:05:14', NULL, NULL);
INSERT INTO `clients` VALUES (94, '2021-05-13', 'Almost customer', 'YES', NULL, '1', 'Nuria', 'Centro de Estetica Sublime', 'Santander', 'Cantabria', NULL, '605 695 435', 'nuria.revuelta@hotmail.com', NULL, 'Eberlin', 'Muy maja. Llamar dentro de un mes (finales junio). Tarifas enviadas. Mandar turba', '2021-05-03 01:13:20', '2021-05-25 23:53:49', NULL, NULL);
INSERT INTO `clients` VALUES (95, '2021-04-23', 'RECALL', 'NO', NULL, '2', 'Rosana', 'Estetica Rosana Redondo', 'Arce', 'Cantabria', NULL, '606 605 554', NULL, NULL, 'Mesoestetic', 'Rellamar', '2021-05-03 01:15:07', '2021-05-03 01:15:07', NULL, NULL);
INSERT INTO `clients` VALUES (96, '2021-04-27', 'RECALL', 'NO', NULL, '3', 'Marta', 'Marta Herrero Estetica', 'Torrelavega', 'Cantabria', '942 897 550', NULL, NULL, NULL, 'Natura Bisse', 'Se le ha llamado varias veces. A tope de trabajo', '2021-05-03 01:16:17', '2021-05-03 22:46:53', NULL, NULL);
INSERT INTO `clients` VALUES (97, '2021-05-03', 'Not interested', 'NO', NULL, '2', 'Trini', 'Trini Jurado Bio Estetica', 'Guernika', 'Pais Vasco', NULL, '658 705 674', NULL, NULL, 'Other', 'No le interesa ahora mismo', '2021-05-03 02:49:59', '2021-05-04 23:12:18', NULL, NULL);
INSERT INTO `clients` VALUES (98, '2021-05-31', 'Call 1', 'YES', NULL, '2', 'Nahikari', 'NG Estetica', 'Derio', 'Pais Vasco', '944 541 054', '667 562 104', NULL, NULL, 'Other', 'BDR. Muy maja. Tarifas enviadas', '2021-05-03 02:51:01', '2021-05-31 00:00:20', NULL, NULL);
INSERT INTO `clients` VALUES (99, '2021-05-03', 'No contact', 'NO', NULL, '2', 'Neisa Gil', 'Estetica Neisa', 'Basauri', 'Pais Vasco', '944 496 985', NULL, NULL, NULL, 'Other', 'Volver a llamar', '2021-05-03 02:52:08', '2021-06-15 02:13:46', NULL, NULL);
INSERT INTO `clients` VALUES (100, '2021-05-03', 'No contact', 'NO', NULL, '2', 'Susana Basurto', 'Centro de Estetica Susana Basurto', 'Bilbao', 'Pais Vasco', NULL, '649 476 583', NULL, NULL, 'Mesoestetic', 'Biologique Recherche.', '2021-05-03 02:53:14', '2021-06-15 02:12:34', NULL, NULL);
INSERT INTO `clients` VALUES (101, '2021-06-15', 'RECALL', 'YES', NULL, '2', 'Mónica', 'Meibeauty', 'Bilbao', 'Pais Vasco', NULL, '675 904 994', NULL, NULL, 'Eberlin', 'Muy maja. No lo ha probado todavía. Llamar en una semana.', '2021-05-03 02:54:33', '2021-06-15 00:06:08', NULL, NULL);
INSERT INTO `clients` VALUES (102, '2021-06-04', 'RECALL', 'YES', NULL, '3', 'Mari Carmen', 'Biosensa', 'Bilbao', 'Pais Vasco', '944 103 514', NULL, NULL, NULL, 'Biologique', 'Llamar dentro de una semana', '2021-05-03 02:56:05', '2021-06-04 00:10:01', NULL, NULL);
INSERT INTO `clients` VALUES (103, '2021-05-03', 'Not interested', 'NO', NULL, '2', 'Natalia', 'Centro de estetica Natalia Gomez', 'Barakaldo', 'Pais Vasco', NULL, '688 845 475', NULL, NULL, 'Biologique', 'Trabaja solo con Biolgique y no quiere cambiar', '2021-05-03 02:57:47', '2021-05-04 23:16:42', NULL, NULL);
INSERT INTO `clients` VALUES (104, '2021-06-17', 'RECALL', 'YES', NULL, '2', 'Verónica', 'Instituto de Belleza Indalo', 'Santurce', 'Pais Vasco', '946 025 420', NULL, NULL, NULL, 'Mesoestetic', 'Muy simpática.', '2021-05-03 02:58:54', '2021-06-17 00:19:16', NULL, NULL);
INSERT INTO `clients` VALUES (105, '2021-06-22', 'RECALL', 'YES', NULL, '2', 'Natalia Ortega', 'Gabinete estetico Natalia Ortega', 'Portugalete', 'Pais Vasco', '946 081 928', '670 057 886', NULL, NULL, 'Skeyndor', 'Tarifas enviadas', '2021-05-03 03:00:15', '2021-06-22 01:54:36', NULL, NULL);
INSERT INTO `clients` VALUES (106, '2021-05-03', 'No contact', 'NO', NULL, '2', '.', 'Estetica Alur', 'Sopelana', 'Pais Vasco', '946 760 103', NULL, NULL, NULL, 'Biologique', 'Mediodía', '2021-05-03 03:03:30', '2021-06-30 01:10:35', NULL, NULL);
INSERT INTO `clients` VALUES (107, '2021-05-06', 'No contact', 'NO', NULL, '2', 'Marta Santos', 'Centro de Estetica Marta Santos', 'Barakaldo', 'Pais Vasco', '944 780 788', NULL, NULL, NULL, 'Natura Bisse', NULL, '2021-05-03 03:04:42', '2021-06-07 23:29:56', NULL, NULL);
INSERT INTO `clients` VALUES (108, '2021-05-03', 'Almost customer', 'YES', NULL, '1', 'Merceds', 'estilistas del Norte', 'Bilbao', 'Madrid', NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-03 03:42:58', '2021-05-03 03:43:16', '2021-05-03 03:43:16', NULL);
INSERT INTO `clients` VALUES (109, '2021-05-04', 'Not interested', 'NO', NULL, '2', 'Marisol', 'Irisbelll', 'Getxo', 'Pais Vasco', '944 647 793', NULL, NULL, NULL, 'Other', 'BDR. Trabaja con 4 marcas y no tiene intención de cambiar', '2021-05-03 22:44:41', '2021-05-20 00:07:26', NULL, NULL);
INSERT INTO `clients` VALUES (110, '2021-05-04', 'No contact', 'NO', NULL, '2', 'Susana', 'Esmas Las Arenas', 'Getxo', 'Pais Vasco', '944 631 189', NULL, NULL, NULL, 'Medik8', 'La Mer. Perricone', '2021-05-03 22:46:14', '2021-06-15 02:41:18', NULL, NULL);
INSERT INTO `clients` VALUES (111, '2021-05-21', 'RECALL', 'NO', NULL, '2', 'Cristina', 'Secrets', 'Trapagaran', 'Pais Vasco', '944 044 755', '688 845 157', NULL, NULL, 'Natura Bisse', NULL, '2021-05-03 22:48:08', '2021-05-20 23:28:30', NULL, NULL);
INSERT INTO `clients` VALUES (112, '2021-05-06', 'Almost customer', 'YES', NULL, '2', 'Esti', 'Manawa Estética', 'Sopelana', 'Pais Vasco', NULL, '633 402 547', NULL, NULL, 'Mesoestetic', 'Está a tope de producto. Se le han enviado las tarifas. Llamar más adelante', '2021-05-03 22:54:00', '2021-05-27 00:05:59', NULL, NULL);
INSERT INTO `clients` VALUES (113, '2021-05-04', 'RECALL', 'YES', NULL, '2', 'Arrate', 'Naturalia', 'Plentzia', 'Pais Vasco', '944 077 233', NULL, NULL, NULL, 'Mesoestetic', 'Simpática', '2021-05-03 22:56:56', '2021-07-08 01:37:53', NULL, NULL);
INSERT INTO `clients` VALUES (114, '2021-05-04', 'No contact', 'NO', NULL, '2', 'Sara', 'BIABIA', 'Gorliz', 'Pais Vasco', NULL, '622 644 166', NULL, NULL, 'Other', 'Maria D\'Uol', '2021-05-03 22:59:15', '2021-05-04 23:38:33', NULL, NULL);
INSERT INTO `clients` VALUES (115, '2021-05-04', 'No contact', 'NO', NULL, '3', 'Josune Landa', 'Bronzestetika', 'Bermeo', 'Pais Vasco', '946 884 667', NULL, NULL, NULL, 'Germaine', NULL, '2021-05-03 23:04:20', '2021-05-03 23:04:20', NULL, NULL);
INSERT INTO `clients` VALUES (116, '2021-05-04', 'No contact', 'NO', NULL, '3', 'Ianire', 'Ianire Estetika', 'Bermeo', 'Pais Vasco', '946 880 768', NULL, NULL, NULL, 'Skeyndor', NULL, '2021-05-03 23:06:20', '2021-05-20 22:59:01', NULL, NULL);
INSERT INTO `clients` VALUES (117, '2021-05-04', 'Not interesting', 'NO', NULL, '2', 'Maria José Galván', 'Haize Natura', 'Igorre', 'Pais Vasco', '946 319 120', NULL, NULL, NULL, NULL, 'Manuel la visitó y no le hizo ni caso', '2021-05-03 23:27:19', '2021-05-25 00:11:30', NULL, NULL);
INSERT INTO `clients` VALUES (118, '2021-05-04', 'Not interested', 'NO', NULL, '2', 'Mari Carmen', 'Estetika Idaga', 'Ondarroa', 'Pais Vasco', '946 830 838', NULL, NULL, NULL, 'Natura Bisse', 'Tiene 6 marcas', '2021-05-03 23:35:18', '2021-05-20 23:03:04', NULL, NULL);
INSERT INTO `clients` VALUES (119, '2021-05-04', 'RECALL', 'NO', NULL, '2', 'Cristina', 'C&F Centro de Estética', 'Erandio', 'Pais Vasco', '946 568 453', NULL, NULL, NULL, 'Massada', 'Trabajan con 3 marcas actualmente, pero las podemos llamar de cara a septiembre', '2021-05-03 23:36:27', '2021-06-16 02:51:52', NULL, NULL);
INSERT INTO `clients` VALUES (120, '2021-05-04', 'No contact', 'NO', NULL, '2', 'Rakel', 'Rakel Estetika', 'Zumaia', 'Pais Vasco', '943 862 093', NULL, NULL, NULL, 'Skeyndor', NULL, '2021-05-03 23:39:53', '2021-05-03 23:39:53', NULL, NULL);
INSERT INTO `clients` VALUES (121, '2021-05-04', 'No contact', 'NO', NULL, '2', 'Casilda', 'Instituto de Belleza Casilda del Campo', 'Bilbao', 'Pais Vasco', '944 242 781', NULL, NULL, NULL, 'Massada', NULL, '2021-05-03 23:40:59', '2021-05-24 23:47:05', NULL, NULL);
INSERT INTO `clients` VALUES (122, '2021-05-25', 'No contact', 'NO', NULL, '2', 'Irantxu', 'Fisioclinics Beauty', 'Bilbao', 'Pais Vasco', '944 102 554', '600 222 971', NULL, NULL, 'Mesoestetic', NULL, '2021-05-03 23:42:02', '2021-05-25 00:19:51', NULL, NULL);
INSERT INTO `clients` VALUES (123, '2021-05-04', 'No contact', 'NO', NULL, '2', 'Eva', 'Centro de Estética Armony', 'Bilbao', 'Pais Vasco', '944 223 361', NULL, NULL, NULL, 'Other', 'Indiba', '2021-05-03 23:43:17', '2021-05-18 00:36:56', NULL, NULL);
INSERT INTO `clients` VALUES (124, '2021-05-04', 'No contact', 'NO', NULL, '2', 'Arantzazu', 'Arantzazu Bustamante', 'Getxo', 'Pais Vasco', NULL, '696 521 578', NULL, NULL, 'Other', NULL, '2021-05-03 23:44:34', '2021-06-15 02:16:07', NULL, NULL);
INSERT INTO `clients` VALUES (125, '2021-05-04', 'No contact', 'NO', NULL, '2', 'Abigail', 'Arduan', 'Bilbao', 'Pais Vasco', '944 273 893', NULL, NULL, NULL, 'Other', 'Reviderm. Dermalogica', '2021-05-03 23:45:54', '2021-05-03 23:45:54', NULL, NULL);
INSERT INTO `clients` VALUES (126, '2021-05-19', 'Not interested', 'YES', NULL, '2', 'Itxaso/Coro', 'Centro de Estética Coro Prieto', 'Zumaia', 'Pais Vasco', '943 861 322', NULL, 'coroprieto@coroprieto.com', NULL, 'Natura Bisse', NULL, '2021-05-03 23:50:09', '2021-06-24 22:36:15', NULL, NULL);
INSERT INTO `clients` VALUES (127, '2021-05-04', 'No contact', 'NO', NULL, '3', 'Mamen', 'Mamen Estetika Zestoa', 'Zestoa', 'Pais Vasco', '943 047 953', NULL, NULL, NULL, 'Skeyndor', NULL, '2021-05-03 23:54:24', '2021-05-09 22:56:29', NULL, NULL);
INSERT INTO `clients` VALUES (128, '2021-05-04', 'No contact', 'NO', NULL, '2', 'Eiharne/Irune', 'Irei Estetika', 'Eibar', 'Pais Vasco', '943 257 557', NULL, NULL, NULL, 'Other', NULL, '2021-05-04 00:42:27', '2021-05-04 00:42:27', NULL, NULL);
INSERT INTO `clients` VALUES (129, '2021-05-05', 'Not interested', 'NO', NULL, '2', 'Nerea', 'Massay Health Inspiration', 'San Sebastián', 'Pais Vasco', '943 840 753', NULL, NULL, NULL, 'Mesoestetic', 'Por ahora solo trabajan con Meso y Natura Bissé', '2021-05-04 01:12:06', '2021-05-20 23:09:45', NULL, NULL);
INSERT INTO `clients` VALUES (130, '2021-06-01', 'Almost customer', 'YES', NULL, '3', 'Eva', 'Estética Eva', 'Pomaluengo', 'Cantabria', NULL, '679 852 288', NULL, NULL, 'Other', 'Comentar tema turba.', '2021-05-04 01:21:50', '2021-05-31 23:45:12', NULL, NULL);
INSERT INTO `clients` VALUES (131, '2021-06-15', 'RECALL', 'YES', NULL, '2', 'Bea', 'Imagen', 'Castro Urdiales', 'Cantabria', '942 860 214', '664 019 273', NULL, NULL, 'Mesoestetic', 'Muy maja, técnica. Tarifas enviadas. Final de verano', '2021-05-04 01:28:16', '2021-06-15 01:32:52', NULL, NULL);
INSERT INTO `clients` VALUES (132, '2021-05-04', 'Not interested', 'NO', NULL, '3', '.', 'Zentro Health&Beauty', 'Bilbao', 'Pais Vasco', '946 000 888', NULL, NULL, NULL, 'Mesoestetic', 'Exclusiva mesoestetic. Volver a llamar', '2021-05-04 02:15:37', '2021-05-04 02:15:37', NULL, NULL);
INSERT INTO `clients` VALUES (133, '2021-05-21', 'RECALL', 'YES', NULL, '2', 'Arantxa/Irati', 'Aira', 'Galdácano', 'Pais Vasco', NULL, '688 762 988', NULL, NULL, 'Massada', 'Simpática', '2021-05-04 02:35:18', '2021-05-21 02:04:27', NULL, NULL);
INSERT INTO `clients` VALUES (134, '2021-05-04', 'No contact', 'NO', NULL, '2', '.', 'LDA Estética', 'Galdácano', 'Pais Vasco', '946 055 092', NULL, NULL, NULL, 'Other', NULL, '2021-05-04 02:43:10', '2021-05-04 02:43:10', NULL, NULL);
INSERT INTO `clients` VALUES (135, '2021-05-04', 'No contact', 'NO', NULL, '3', 'Olatz', 'Lezat', 'Lemoa', 'Pais Vasco', '944 654 164', NULL, NULL, NULL, 'Germaine', NULL, '2021-05-04 02:49:20', '2021-06-15 02:15:32', NULL, NULL);
INSERT INTO `clients` VALUES (136, '2021-05-04', 'No contact', 'NO', NULL, '2', '.', 'ILD Estética', 'Amorebieta', 'Pais Vasco', '946 301 649', NULL, NULL, NULL, 'Other', 'Centro Médico Estético', '2021-05-04 02:53:50', '2021-05-04 02:53:50', NULL, NULL);
INSERT INTO `clients` VALUES (137, '2021-05-04', 'No contact', 'NO', NULL, '2', '.', 'Izaro Estética', 'Durango', 'Pais Vasco', '946 672 776', NULL, NULL, NULL, 'Other', NULL, '2021-05-04 02:58:48', '2021-05-04 02:58:48', NULL, NULL);
INSERT INTO `clients` VALUES (138, '2021-05-05', 'Not interesting', 'NO', NULL, '2', 'Mikele', 'Mikele Estetika Zentroa', 'Amorebieta', 'Pais Vasco', NULL, '670 262 880', NULL, NULL, 'Other', 'Phyt\'s', '2021-05-04 22:44:22', '2021-05-24 22:53:01', NULL, NULL);
INSERT INTO `clients` VALUES (139, '2021-05-05', 'No contact', 'NO', NULL, '2', 'Naroa', 'Estética Avanzada Mixta Naroa Viles', 'San Sebastián', 'Pais Vasco', '943 278 624', NULL, NULL, NULL, 'Other', NULL, '2021-05-04 23:08:16', '2021-05-20 23:32:43', NULL, NULL);
INSERT INTO `clients` VALUES (140, '2021-05-05', 'No contact', 'NO', NULL, '2', '.', 'Zaindu Bermeo', 'Bermeo', 'Pais Vasco', '946 028 384', NULL, NULL, NULL, 'Germaine', NULL, '2021-05-04 23:30:32', '2021-05-04 23:30:32', NULL, NULL);
INSERT INTO `clients` VALUES (141, '2021-06-17', 'RECALL', 'YES', NULL, '2', 'Iraide', 'Karan Beauty', 'Guernika', 'Pais Vasco', '946 270 431', NULL, NULL, NULL, NULL, 'BDR. No ha probado. Llamar en dos semanas', '2021-05-04 23:42:42', '2021-06-17 01:05:57', NULL, NULL);
INSERT INTO `clients` VALUES (142, '2021-06-22', 'Call 1', 'YES', NULL, '2', 'Dora', 'Dora Estetika', 'Zarautz', 'Pais Vasco', NULL, '623 021 580', NULL, NULL, 'Eberlin', 'Muy simpática. Tarifas enviadas', '2021-05-05 00:21:42', '2021-06-22 01:58:29', NULL, NULL);
INSERT INTO `clients` VALUES (143, '2021-05-31', 'Call 1', 'YES', NULL, '2', 'Mari Jose', 'Mari Jose Martín Estética', 'San Sebastián', 'Pais Vasco', NULL, '659 987 949', NULL, NULL, 'Other', 'BDR. Tarifas enviadas. Ahora mismo no quiere cambiar. Vende poco', '2021-05-05 00:47:41', '2021-05-31 00:06:54', NULL, NULL);
INSERT INTO `clients` VALUES (144, '2021-05-05', 'No contact', 'NO', NULL, '2', 'María', 'Bi&Be', 'San Sebastián', 'Pais Vasco', '659 987 949', NULL, NULL, NULL, 'Other', NULL, '2021-05-05 01:17:19', '2021-05-05 23:34:30', NULL, NULL);
INSERT INTO `clients` VALUES (145, '2021-06-30', 'Customer', 'YES', NULL, '2', 'Idoia', 'Estética Idoia Ugarte', 'San Sebastián', 'Pais Vasco', '943 000 378', '655 738 841', NULL, NULL, 'Other', 'SkinClinic. Tarifas enviadas (2ud/día)', '2021-05-05 01:34:24', '2021-06-29 22:42:55', NULL, NULL);
INSERT INTO `clients` VALUES (146, '2021-05-05', 'No contact', 'NO', NULL, '2', '.', 'Beti-Eder', 'Deba', 'Pais Vasco', NULL, '601 185 047', NULL, NULL, 'Skeyndor', NULL, '2021-05-05 01:54:44', '2021-05-05 01:54:44', NULL, NULL);
INSERT INTO `clients` VALUES (147, '2021-05-06', 'No contact', 'NO', NULL, '2', 'Rakel', 'Rakel Bilbao Zentro Mediku Estetikoa', 'Lekeitio', 'Pais Vasco', NULL, '679 102 394', NULL, NULL, 'Skeyndor', NULL, '2021-05-05 22:52:35', '2021-06-07 23:29:38', NULL, NULL);
INSERT INTO `clients` VALUES (148, '2021-05-06', 'No contact', 'NO', NULL, '2', 'Oihana', 'Oihana Estetika', 'Lasarte-Oria', 'Pais Vasco', '943 507 653', NULL, NULL, NULL, 'Germaine', NULL, '2021-05-05 22:55:47', '2021-05-05 22:55:47', NULL, NULL);
INSERT INTO `clients` VALUES (149, '2021-05-06', 'RECALL', 'NO', NULL, '2', 'Nekane Edergintza', 'Centro de Estética Nekane', 'Hernani', 'Pais Vasco', '943 243 253', NULL, NULL, NULL, 'Natura Bisse', NULL, '2021-05-05 22:58:48', '2021-05-05 23:14:20', NULL, NULL);
INSERT INTO `clients` VALUES (150, '2021-05-06', 'No contact', 'NO', NULL, '2', '.', 'Centro de Estetica Yolanda', 'Hernani', 'Pais Vasco', '943 553 278', NULL, NULL, NULL, 'Other', 'Montibello, Ericson', '2021-05-05 23:00:45', '2021-05-05 23:00:45', NULL, NULL);
INSERT INTO `clients` VALUES (151, '2021-05-06', 'No contact', 'NO', NULL, '2', 'Clara', 'Centro de Estética Ithaka', 'San Sebastián', 'Pais Vasco', '943 468 384', NULL, NULL, NULL, 'Other', NULL, '2021-05-05 23:03:06', '2021-05-05 23:03:06', NULL, NULL);
INSERT INTO `clients` VALUES (152, '2021-05-31', 'Not interested', 'YES', NULL, '2', 'Nerea', 'Estética Yale', 'San Sebastián', 'Pais Vasco', '943 218 892', NULL, NULL, NULL, 'Other', NULL, '2021-05-05 23:08:02', '2021-05-31 00:47:11', NULL, NULL);
INSERT INTO `clients` VALUES (153, '2021-05-06', 'No contact', 'NO', NULL, '2', 'Miriam', 'Arwen Estética', 'San Sebastián', 'Pais Vasco', NULL, '638 358 824', NULL, NULL, 'Skeyndor', NULL, '2021-05-05 23:24:53', '2021-05-21 00:02:41', NULL, NULL);
INSERT INTO `clients` VALUES (154, '2021-05-06', 'Not interested', 'NO', NULL, '2', 'Ainhoa', 'Centro Estético Aizpurúa', 'San Sebastián', 'Pais Vasco', '943 420 585', '607 447 048', NULL, NULL, NULL, 'Ahora mismo está cubierta de producto', '2021-05-05 23:33:35', '2021-05-06 00:03:12', NULL, NULL);
INSERT INTO `clients` VALUES (155, '2021-05-17', 'No contact', 'NO', NULL, '2', 'Isa/Nata', 'Et Voila', 'Vitoria', 'Pais Vasco', '945 281 308', NULL, NULL, NULL, 'Mesoestetic', NULL, '2021-05-06 00:10:32', '2021-06-15 02:42:00', NULL, NULL);
INSERT INTO `clients` VALUES (156, '2021-05-06', 'Not interested', 'NO', NULL, '1', 'Angie', 'Angie Illarramendi Estética', 'San Sebastián', NULL, NULL, '686 325 111', NULL, NULL, 'Mesoestetic', 'Exclusiva mesoestetic.', '2021-05-06 00:28:01', '2021-05-06 00:46:35', NULL, NULL);
INSERT INTO `clients` VALUES (157, '2021-05-14', 'RECALL', 'NO', NULL, '2', 'Paloma', 'Beauty House', 'Gijón', 'Asturias', '984 196 965', NULL, NULL, NULL, 'Mesoestetic', 'Massada', '2021-05-06 00:52:03', '2021-05-14 00:45:21', NULL, NULL);
INSERT INTO `clients` VALUES (158, '2021-05-10', 'Customer', 'YES', NULL, '2', 'Tania', 'Estética Tania', 'Llanes', 'Asturias', '985 401 303', '680 588 806', NULL, NULL, 'Skeyndor', 'Quiere meter algo más potente. Muy maja.', '2021-05-06 01:06:45', '2021-05-25 23:06:15', NULL, NULL);
INSERT INTO `clients` VALUES (159, '2021-05-06', 'RECALL', 'NO', NULL, '1', 'Fernando', 'Estela Belleza', 'Gijón', 'Asturias', '985 171 414', NULL, 'info@estelabelleza.com', NULL, 'Mesoestetic', NULL, '2021-05-06 01:10:05', '2021-05-25 00:25:31', NULL, NULL);
INSERT INTO `clients` VALUES (160, '2021-05-06', 'RECALL', 'NO', NULL, '2', 'Maria José', 'SOTO Estética Avanzada', 'Arriondas', 'Asturias', NULL, '684 623 632', NULL, NULL, 'Other', 'GerNetic', '2021-05-06 01:22:24', '2021-05-14 00:55:30', NULL, NULL);
INSERT INTO `clients` VALUES (161, '2021-05-25', 'RECALL', 'YES', NULL, '2', 'Alba', 'Alba González Álvarez', 'Cangas de Onís', 'Asturias', '985 947 213', NULL, NULL, NULL, 'Massada', 'Indiba. Simpática', '2021-05-06 01:25:47', '2021-05-25 00:06:28', NULL, NULL);
INSERT INTO `clients` VALUES (162, '2021-06-15', 'Call 1', 'YES', NULL, '1', 'Inés', 'Belleza y Bienestar Valdés Sobrecueva', 'Cangas de Onís', 'Asturias', '985 848 269', '686 926 241', NULL, NULL, 'Other', 'Muy simpática. Tarifas enviadas.', '2021-05-06 01:30:12', '2021-06-14 23:40:37', NULL, NULL);
INSERT INTO `clients` VALUES (163, '2021-05-12', 'Call 1', 'YES', NULL, '2', 'Marta', 'Estética Emy', 'Infiesto', 'Asturias', '985 710 677', NULL, NULL, NULL, 'Mesoestetic', 'Simpatica. Meh', '2021-05-06 01:32:33', '2021-06-03 22:56:55', NULL, NULL);
INSERT INTO `clients` VALUES (164, '2021-05-06', 'No contact', 'NO', NULL, '2', 'Mónica', 'Mónica Fernández', 'Colunga', 'Asturias', NULL, '635 250 955', NULL, NULL, 'Skeyndor', NULL, '2021-05-06 02:16:47', '2021-05-06 02:16:47', NULL, NULL);
INSERT INTO `clients` VALUES (165, '2021-05-06', 'No contact', 'NO', NULL, '2', 'Carmen', 'Aloval Estética', 'Gijón', 'Asturias', '985 339 389', NULL, NULL, NULL, 'Medik8', 'Natura Bissé, Perricone', '2021-05-06 02:21:04', '2021-05-14 01:22:24', NULL, NULL);
INSERT INTO `clients` VALUES (166, '2021-05-31', 'Customer', 'YES', NULL, '2', 'Silvia', 'Silvia Río Estética Avanzada', 'Gijón', 'Asturias', NULL, '623 228 863', NULL, NULL, 'Mesoestetic', 'Muy maja, tarifas enviadas', '2021-05-06 02:28:34', '2021-06-10 01:34:06', NULL, NULL);
INSERT INTO `clients` VALUES (167, '2021-05-21', 'Call 1', 'YES', NULL, '2', 'Susana', 'Susana Estética', 'Pola de Laviana', 'Asturias', NULL, '669 301 416', NULL, NULL, 'Eberlin', NULL, '2021-05-06 23:01:36', '2021-05-31 00:55:25', NULL, NULL);
INSERT INTO `clients` VALUES (168, '2021-05-07', 'No contact', 'NO', NULL, '3', 'Rosabel', 'Centro de Belleza Rosabel Ceferino', 'San Martín del Rey Aurelio', 'Asturias', '985 671 689', NULL, NULL, NULL, 'Other', NULL, '2021-05-06 23:04:46', '2021-05-06 23:04:46', NULL, NULL);
INSERT INTO `clients` VALUES (169, '2021-05-07', 'No contact', 'NO', NULL, '3', 'Jessica', 'Centro de belleza & spa Aldara', 'Ciriego Bajo', 'Asturias', NULL, '687 385 428', NULL, NULL, 'Other', NULL, '2021-05-06 23:08:16', '2021-05-06 23:08:16', NULL, NULL);
INSERT INTO `clients` VALUES (170, '2021-05-25', 'Not interested', 'NO', NULL, '2', 'Asunción (Suny)', 'Salón de belleza Suny', 'Langreo', 'Asturias', '985 693 051', NULL, NULL, NULL, 'Massada', 'Babor, GerNetic. Dice que no quiere meterse en más historias', '2021-05-06 23:11:41', '2021-05-24 23:40:55', NULL, NULL);
INSERT INTO `clients` VALUES (171, '2021-05-28', 'Call 1', 'YES', NULL, '2', 'Begoña', 'Centro de belleza Begoña Geada', 'Sama de Langreo', 'Asturias', '985 683 317', '685 517 435', NULL, NULL, 'Eberlin', 'Tarifas enviadas', '2021-05-06 23:13:43', '2021-06-30 01:26:03', NULL, NULL);
INSERT INTO `clients` VALUES (172, '2021-05-25', 'Not interested', 'NO', NULL, '2', 'Poli', 'Centro de Estética Poli', 'Langreo', 'Asturias', NULL, '685 302 521', NULL, NULL, 'Other', 'GerNetic', '2021-05-06 23:17:15', '2021-05-25 00:54:03', NULL, NULL);
INSERT INTO `clients` VALUES (173, '2021-05-07', 'No contact', 'NO', NULL, '1', 'Marta', 'Marta García', 'Oviedo', 'Asturias', '985 277 300', NULL, NULL, NULL, 'Mesoestetic', 'Biologique, Natura. Tiene línea propia', '2021-05-06 23:37:51', '2021-05-06 23:37:51', NULL, NULL);
INSERT INTO `clients` VALUES (174, '2021-05-14', 'Not interesting', 'NO', NULL, '2', '.', 'Centro de belleza Isis', 'Colloto', 'Asturias', '985 985 383', NULL, NULL, NULL, 'Other', 'Babor, GerNetic. Indiba. Meh', '2021-05-06 23:43:31', '2021-05-19 00:11:26', NULL, NULL);
INSERT INTO `clients` VALUES (175, '2021-05-07', 'No contact', 'NO', NULL, '2', 'Cecilia', 'Ritual Institute Cecilia Paredes', 'Oviedo', 'Asturias', NULL, '684 649 001', NULL, NULL, 'Other', 'Maria Galland', '2021-05-06 23:54:05', '2021-05-06 23:54:05', NULL, NULL);
INSERT INTO `clients` VALUES (176, '2021-06-04', 'RECALL', 'YES', NULL, '2', 'Miriam', 'Valle Morilla', 'Oviedo', 'Asturias', '985 221 026', NULL, NULL, NULL, 'Mesoestetic', 'Simpática. Llamar la semana que viene', '2021-05-06 23:58:11', '2021-06-04 00:11:35', NULL, NULL);
INSERT INTO `clients` VALUES (177, '2021-06-22', 'Call 1', 'YES', NULL, '2', 'Begoña Boto', 'Centro de estética Begoña Boto', 'Oviedo', 'Asturias', '985 209 572', '678 533 802', NULL, NULL, 'Other', 'GerNetic. Majísima. No tiene retinol. Tarifas enviadas', '2021-05-07 00:08:10', '2021-06-22 02:01:43', NULL, NULL);
INSERT INTO `clients` VALUES (178, '2021-05-07', 'No contact', 'NO', NULL, '1', 'Nerea', 'Nerea González Estética Avanzada', 'Oviedo', 'Asturias', NULL, '684 622 288', NULL, NULL, 'Mesoestetic', 'Ocupadísima', '2021-05-07 00:10:39', '2021-05-13 02:04:34', NULL, NULL);
INSERT INTO `clients` VALUES (179, '2021-06-17', 'RECALL', 'YES', NULL, '2', 'Filo/Diana', 'Dermal Center', 'Oviedo', 'Asturias', '984 297 560', NULL, NULL, NULL, 'Mesoestetic', 'Simpática. No ha probado todo. Llamar dentro de 2 semanas', '2021-05-07 00:14:23', '2021-06-17 00:49:49', NULL, NULL);
INSERT INTO `clients` VALUES (180, '2021-05-31', 'Call 1', 'YES', NULL, '2', 'Laura', 'Novasense', 'Oviedo', 'Asturias', '984 284 792', '676 605 509', NULL, NULL, 'Mesoestetic', 'Vende muy poco. Tarifas enviadas, hablar de la turba', '2021-05-07 00:18:49', '2021-05-30 23:38:29', NULL, NULL);
INSERT INTO `clients` VALUES (181, '2021-06-04', 'Almost customer', 'YES', NULL, '2', 'Ana', 'Ana Campoamor Beauty', 'Avilés', 'Asturias', NULL, '666 304 173', NULL, NULL, 'Mesoestetic', 'Muy simpática. Tarifas enviadas', '2021-05-07 00:21:39', '2021-06-08 02:15:24', NULL, NULL);
INSERT INTO `clients` VALUES (182, '2021-06-04', 'RECALL', 'YES', NULL, '2', 'Ana', 'Ana Cueva', 'Gijón', 'Asturias', '985 130 855', NULL, NULL, NULL, 'Other', 'Babor. Indiba. Llamar dentro de una semana', '2021-05-07 00:27:08', '2021-06-04 01:11:18', NULL, NULL);
INSERT INTO `clients` VALUES (183, '2021-06-04', 'RECALL', 'YES', NULL, '2', 'Mercedes', 'Mercedes Patallo', 'Gijón', 'Asturias', '985 356 667', NULL, NULL, NULL, 'Other', 'GerNetic. Indiba. Interesada en vit C y relacionados. Llamar en dos semanas', '2021-05-07 00:51:53', '2021-06-04 00:47:22', NULL, NULL);
INSERT INTO `clients` VALUES (184, '2021-06-04', 'RECALL', 'YES', NULL, '2', 'Noelia', 'Noelia Duarte Estética Avanzada', 'Gijón', 'Asturias', NULL, '680 146 012', NULL, NULL, 'Eberlin', 'Muy simpática. Llamar dentro de una semana', '2021-05-07 00:54:04', '2021-06-04 00:16:18', NULL, NULL);
INSERT INTO `clients` VALUES (185, '2021-06-04', 'Call 1', 'YES', NULL, '2', 'Cecilia Palomo', 'Centro de Estética Abril', 'Gijón', 'Asturias', '985 391 267', '661 948 404', NULL, NULL, 'Casmara', 'Massada. Indiba. Tarifas enviadas', '2021-05-07 00:57:05', '2021-06-04 01:59:00', NULL, NULL);
INSERT INTO `clients` VALUES (186, '2021-05-07', 'No contact', 'NO', NULL, '3', '.', 'Salón de bellea Koala', 'Lugones', 'Asturias', '985 260 668', NULL, NULL, NULL, 'Other', 'Indiba', '2021-05-07 01:17:47', '2021-05-07 01:17:47', NULL, NULL);
INSERT INTO `clients` VALUES (187, '2021-05-07', 'No contact', 'NO', NULL, '2', 'Cristina', 'Centro de estética Cristina Huergo', 'Lugones', 'Asturias', '984 395 268', NULL, NULL, NULL, 'Skeyndor', NULL, '2021-05-07 01:20:13', '2021-05-07 01:20:13', NULL, NULL);
INSERT INTO `clients` VALUES (188, '2021-05-07', 'No contact', 'NO', NULL, '2', 'Melody/Lucía/Aida', 'Marquessa', 'Oviedo', 'Asturias', '985 229 959', NULL, NULL, NULL, 'Natura Bisse', NULL, '2021-05-07 01:25:02', '2021-05-07 01:25:02', NULL, NULL);
INSERT INTO `clients` VALUES (189, '2021-05-07', 'No contact', 'NO', NULL, '2', 'Maite', 'La alkymya de maite', 'Lugones', 'Asturias', '985 265 282', NULL, NULL, NULL, 'Other', NULL, '2021-05-07 01:42:10', '2021-05-07 01:42:10', NULL, NULL);
INSERT INTO `clients` VALUES (190, '2021-05-07', 'No contact', 'NO', NULL, '2', 'Lorena', 'Belleza Covadonga', 'Oviedo', 'Asturias', '985 255 901', NULL, NULL, NULL, 'Other', 'Babor.', '2021-05-07 01:49:04', '2021-05-21 01:33:30', NULL, NULL);
INSERT INTO `clients` VALUES (191, '2021-05-07', 'No contact', 'NO', NULL, '2', 'Dorita', 'Dorita Álvarez Centros de Estética', 'Oviedo', 'Asturias', NULL, '670 839 616', NULL, NULL, 'Other', 'Babor. Maria D\'Uol', '2021-05-07 01:52:13', '2021-06-22 00:11:04', '2021-06-22 00:11:04', NULL);
INSERT INTO `clients` VALUES (192, '2021-05-14', 'RECALL', 'NO', NULL, '2', 'Remedios', 'Reychel', 'Oviedo', 'Asturias', '984 151 024', '671 053 190', 'info@reychel.com', NULL, 'Mesoestetic', 'Hay que enviar un mail para que desde oficina den autorización para enviar las muestras', '2021-05-07 01:58:15', '2021-05-14 02:59:26', NULL, NULL);
INSERT INTO `clients` VALUES (193, '2021-05-12', 'Not interesting', 'YES', NULL, '3', 'Isabel', 'Isabell', 'Laredo', 'Cantabria', '942 607 574', NULL, NULL, NULL, 'Other', 'Recomendada por Cruz Salas. Un pelín p-a', '2021-05-07 02:23:30', '2021-05-24 23:37:47', NULL, NULL);
INSERT INTO `clients` VALUES (194, '2021-05-07', 'No contact', 'NO', NULL, '2', 'Estefanía', 'Estefanía Pérez Centro de Estética Avanzada', 'Lugo de Llanera', 'Asturias', NULL, '679 042 880', NULL, NULL, 'Other', NULL, '2021-05-07 02:27:31', '2021-05-07 02:27:31', NULL, NULL);
INSERT INTO `clients` VALUES (195, '2021-05-07', 'No contact', 'NO', NULL, '2', 'Ana', 'Aqvaspacio', 'Gijón', 'Asturias', '985 353 643', NULL, NULL, NULL, 'Skeyndor', NULL, '2021-05-07 02:47:41', '2021-05-07 02:47:41', NULL, NULL);
INSERT INTO `clients` VALUES (196, '2021-05-21', 'Not interested', 'NO', NULL, '2', 'María', 'Centro de Estética María Cuevas', 'Gijón', 'Asturias', '984 490 229', NULL, NULL, NULL, 'Other', 'Formadora de GerNetic', '2021-05-07 02:52:50', '2021-05-20 23:42:11', NULL, NULL);
INSERT INTO `clients` VALUES (197, '2021-05-07', 'No contact', 'NO', NULL, '2', 'Inés', 'Vitalis Esencia', 'Gijón', 'Asturias', '985 151 114', '684 647 613', NULL, NULL, 'Other', 'GerNetic, Maria D\'Uol', '2021-05-07 02:57:58', '2021-05-20 01:44:20', NULL, NULL);
INSERT INTO `clients` VALUES (198, '2021-05-07', 'No contact', 'NO', NULL, '2', 'Biri', 'Biri Murias', 'Gijón', 'Asturias', '985 086 060', NULL, NULL, NULL, 'Biologique', 'Medik8, Natura', '2021-05-07 03:00:22', '2021-05-07 03:00:22', NULL, NULL);
INSERT INTO `clients` VALUES (199, '2021-05-10', 'Not interested', 'NO', NULL, '2', 'Mara', 'Centro de estética Mara Tejedor', 'Avilés', 'Asturias', NULL, '607 814 937', NULL, NULL, 'Skeyndor', 'Está muy comprometida con Skeyndor', '2021-05-09 22:42:05', '2021-06-10 23:22:41', NULL, NULL);
INSERT INTO `clients` VALUES (200, '2021-05-10', 'Not interesting', 'NO', NULL, '2', 'Ana Alba', 'Centro de Belleza Ana Alba', 'Piedras Blancas', 'Asturias', '985 530 527', NULL, NULL, NULL, 'Skeyndor', 'Indiba. Meh', '2021-05-09 22:49:45', '2021-05-19 00:00:11', NULL, NULL);
INSERT INTO `clients` VALUES (201, '2021-05-10', 'No contact', 'NO', NULL, '2', '.', 'Jade Estética y Masaje', 'Luanco', 'Asturias', NULL, '635 453 489', NULL, NULL, 'Other', NULL, '2021-05-09 23:02:36', '2021-05-09 23:02:36', NULL, NULL);
INSERT INTO `clients` VALUES (202, '2021-07-01', 'RECALL', 'YES', NULL, '2', 'Noemi', 'Bennessere', 'Piedras Blancas', 'Asturias', '984 041 222', NULL, NULL, NULL, 'Eberlin', 'Llamar la semana que viene', '2021-05-09 23:05:18', '2021-07-01 22:52:44', NULL, NULL);
INSERT INTO `clients` VALUES (203, '2021-05-10', 'No contact', 'NO', NULL, '2', 'Noelia', 'Centro de estética Noelia Méndez', 'Cudillero', 'Asturias', '985 590 349', '616 768 237', NULL, NULL, 'Other', 'Tiene otro centro en Jarrio', '2021-05-09 23:10:01', '2021-05-09 23:10:01', NULL, NULL);
INSERT INTO `clients` VALUES (204, '2021-05-31', 'Call 1', 'YES', NULL, '2', 'Lara', 'Lara Ambres Estética', 'Cornellana', 'Asturias', NULL, '627 243 436', NULL, NULL, 'Germaine', 'Indiba. No ha probado todo. Llamar dentro de un mes', '2021-05-09 23:16:42', '2021-05-31 00:16:17', NULL, NULL);
INSERT INTO `clients` VALUES (205, '2021-05-10', 'No contact', 'NO', NULL, '2', 'Jessica/Vanesa/Yolanda', 'Secretos de belleza', 'Trubia', 'Asturias', NULL, '691 083 053', NULL, NULL, 'Other', 'Montibello', '2021-05-09 23:19:22', '2021-05-09 23:19:22', NULL, NULL);
INSERT INTO `clients` VALUES (206, '2021-06-15', 'Call 1', 'YES', NULL, '2', 'Ana Martínez', 'Clínica Grado', 'Grado', 'Asturias', '985 752 211', '661 067 125', NULL, NULL, 'Other', 'Muy maja. Tarifas enviadas', '2021-05-09 23:22:02', '2021-06-15 02:16:53', NULL, NULL);
INSERT INTO `clients` VALUES (207, '2021-06-09', 'RECALL', 'YES', NULL, '2', 'Beatriz', 'Beatriz Estética', 'Luarca', 'Asturias', NULL, '617 079 395', NULL, NULL, 'Other', 'Le interesan ácidos. Llamar dentro de dos semanas', '2021-05-09 23:25:51', '2021-06-09 01:07:07', NULL, NULL);
INSERT INTO `clients` VALUES (208, '2021-05-10', 'Not interesting', 'NO', NULL, '2', 'Marta', 'Centro de Estética Juli', 'Gijón', 'Asturias', '985 336 232', NULL, NULL, NULL, 'Germaine', 'No sabe si va a cerrar el centro', '2021-05-09 23:33:16', '2021-05-19 23:16:58', NULL, NULL);
INSERT INTO `clients` VALUES (209, '2021-06-15', 'Call 1', 'YES', NULL, '2', 'Jennifer', 'Centro de Estética Jennifer Serrano', 'Gijón', 'Asturias', NULL, '690 751 730', NULL, NULL, 'Mesoestetic', 'Simpática. Tarifas enviadas', '2021-05-10 00:41:33', '2021-06-15 02:17:56', NULL, NULL);
INSERT INTO `clients` VALUES (210, '2021-05-10', 'No contact', 'NO', NULL, '2', 'Yolanda', 'Yolcan', 'Gijón', 'Asturias', '985 372 780', NULL, NULL, NULL, 'Natura Bisse', NULL, '2021-05-10 01:34:47', '2021-05-10 01:34:47', NULL, NULL);
INSERT INTO `clients` VALUES (211, '2021-05-10', 'RECALL', 'YES', NULL, '2', 'Patricia', 'Patricia Granda', 'Avilés', 'Asturias', '985 560 385', NULL, NULL, NULL, 'Other', 'GerNetic. Babor', '2021-05-10 02:05:47', '2021-05-14 00:07:57', NULL, NULL);
INSERT INTO `clients` VALUES (212, '2021-05-10', 'No contact', 'NO', NULL, '2', 'Ariana', 'Ariana Rodríguez Estética Integral', 'Gijón', 'Asturias', '984 397 106', NULL, NULL, NULL, 'Other', NULL, '2021-05-10 02:28:14', '2021-05-10 02:28:14', NULL, NULL);
INSERT INTO `clients` VALUES (213, '2021-05-10', 'No contact', 'NO', NULL, '2', 'Águeda/Ana', 'Cuarzo', 'Santander', 'Cantabria', '942 109 564', NULL, NULL, NULL, 'Thalgo', 'No quisieron dar el nombre por protección de datos', '2021-05-10 02:34:45', '2021-05-10 23:04:20', NULL, NULL);
INSERT INTO `clients` VALUES (214, '2021-05-10', 'No contact', 'NO', NULL, '3', 'Leticia', 'Centro de Estética Leticia Pérez', 'Soto de la Marina', 'Cantabria', '942 574 056', NULL, NULL, NULL, 'Casmara', 'Indiba', '2021-05-10 02:44:39', '2021-05-10 02:44:39', NULL, NULL);
INSERT INTO `clients` VALUES (215, '2021-06-09', 'RECALL', 'YES', NULL, '3', 'Rut', 'Rut Oria. Belleza y Bienestar', 'Soto de la Marina', 'Cantabria', NULL, '644 846 939', NULL, NULL, 'Eberlin', 'Indiba. Muy maja. No ha probado. Llamar en dos semanas', '2021-05-10 02:46:23', '2021-06-09 00:53:15', NULL, NULL);
INSERT INTO `clients` VALUES (216, '2021-06-09', 'RECALL', 'YES', NULL, '2', 'Silvia', 'Mi rincón de Liencres', 'Liencres', 'Cantabria', '942 020 388', '619 122 869', NULL, NULL, 'Other', 'Phyt\'s. Indiba. No ha probado, llamar en dos semanas', '2021-05-10 23:11:52', '2021-06-17 00:51:14', NULL, NULL);
INSERT INTO `clients` VALUES (217, '2021-05-11', 'No contact', 'NO', NULL, '2', '.', 'Origen Espacio de bienestar', 'Santa Cruz de Bezana', 'Cantabria', NULL, '682 153 642', NULL, NULL, 'Other', 'Indiba', '2021-05-10 23:15:00', '2021-05-10 23:15:00', NULL, NULL);
INSERT INTO `clients` VALUES (218, '2021-05-11', 'No contact', 'NO', NULL, '2', '.', 'Estética 23', 'Renedo de Piélagos', 'Cantabria', NULL, '622 376 180', NULL, NULL, 'Other', 'Indiba', '2021-05-10 23:36:38', '2021-05-11 02:51:54', NULL, NULL);
INSERT INTO `clients` VALUES (219, '2021-06-15', 'Call 1', 'YES', NULL, '1', 'Mari Jose', 'MJ Estética', 'Colindres', 'Cantabria', '942 046 011', NULL, NULL, NULL, 'Mesoestetic', 'Llamar la semana que viene. Habla de botecitos', '2021-05-11 00:32:38', '2021-06-15 01:08:27', NULL, NULL);
INSERT INTO `clients` VALUES (220, '2021-05-12', 'No contact', 'NO', NULL, '2', 'Reme', 'Centro de belleza Reme', 'Torrelavega', 'Cantabria', '942 891 148', NULL, NULL, NULL, 'Casmara', 'Indiba', '2021-05-11 22:49:44', '2021-05-11 22:49:44', NULL, NULL);
INSERT INTO `clients` VALUES (221, '2021-05-31', 'Call 1', 'YES', NULL, '3', 'Amanda', 'Estética Amanda', 'Posada de Llanera', 'Asturias', '984 187 642', NULL, NULL, NULL, 'Eberlin', NULL, '2021-05-11 23:13:05', '2021-05-31 00:12:21', NULL, NULL);
INSERT INTO `clients` VALUES (222, '2021-06-15', 'Call 1', 'YES', NULL, '2', 'Yolanda San Emeterio', 'Estética Imagine', 'Laredo', 'Cantabria', '942 794 259', '610 227 149', NULL, NULL, 'Other', 'Montibello, cosmecéutica. Tarifas enviadas', '2021-05-12 00:42:24', '2021-06-15 01:12:22', NULL, NULL);
INSERT INTO `clients` VALUES (223, '2021-05-12', 'No contact', 'NO', NULL, '2', 'Vanessa', 'Centro de Estética Integral Díaz de Mendivil', 'Castro Urdiales', 'Cantabria', '942 860 684', NULL, NULL, NULL, 'Other', 'Montibello. Indiba', '2021-05-12 01:01:45', '2021-05-12 01:01:45', NULL, NULL);
INSERT INTO `clients` VALUES (224, '2021-05-12', 'Not interesting', 'NO', NULL, '2', '.', 'Eterbell', 'Gijón', 'Asturias', '985 353 527', NULL, NULL, NULL, 'Massada', 'La que lleva la cosmética nunca está en el centro', '2021-05-12 01:45:20', '2021-05-20 00:10:56', NULL, NULL);
INSERT INTO `clients` VALUES (225, '2021-06-15', 'Call 1', 'YES', NULL, '3', 'Gema', 'Centro de estética Emilia', 'Gijón', 'Asturias', '984 295 686', '687 647 408', NULL, NULL, 'Eberlin', 'RF. Quiere meter ácidos. Tiene volumen (40ud/mes). Tarifas enviadas', '2021-05-12 01:48:38', '2021-06-15 00:47:01', NULL, NULL);
INSERT INTO `clients` VALUES (226, '2021-06-22', 'RECALL', 'YES', NULL, '2', 'Lara', 'Lara Estética Integral', 'Gijón', 'Asturias', '984 990 700', NULL, NULL, NULL, 'Massada', 'Indiba. Tarifas enviadas', '2021-05-12 02:00:30', '2021-06-22 03:01:18', NULL, NULL);
INSERT INTO `clients` VALUES (227, '2021-06-15', 'RECALL', 'YES', NULL, '2', 'Noelia', 'Noelia Frei Estética y Bienestar', 'Gijón', 'Asturias', NULL, '637 373 233', NULL, NULL, 'Other', 'Indiba. Muy maja. Quiere probar vitC Llamar dentro de una semana', '2021-05-12 02:02:55', '2021-06-15 02:47:15', NULL, NULL);
INSERT INTO `clients` VALUES (228, '2021-05-12', 'No contact', 'NO', NULL, '3', 'Mara¿?', 'Belium Somió', 'Gijón', 'Asturias', '985 301 234', NULL, NULL, NULL, 'Other', 'Cosmética ortomolecular (Suiza)', '2021-05-12 02:16:37', '2021-05-12 02:16:37', NULL, NULL);
INSERT INTO `clients` VALUES (229, '2021-05-12', 'No contact', 'NO', NULL, '3', '.', 'Llera belleza y bienestar', 'Villaviciosa', 'Asturias', '985 890 594', NULL, NULL, NULL, 'Other', 'Declaré', '2021-05-12 02:27:05', '2021-05-12 02:27:05', NULL, NULL);
INSERT INTO `clients` VALUES (230, '2021-05-13', 'No contact', 'NO', NULL, '2', 'Jana', 'Jana Tagarro', 'Gijón', 'Asturias', '984 705 460', NULL, NULL, NULL, 'Other', 'GerNetic', '2021-05-13 01:23:53', '2021-05-13 01:23:53', NULL, NULL);
INSERT INTO `clients` VALUES (231, '2021-05-13', 'No contact', 'NO', NULL, '2', 'Mónica', 'Centro de estética Mónica Lanza', 'Gijón', 'Asturias', '985 312 837', NULL, NULL, NULL, 'Germaine', 'Indiba', '2021-05-13 01:27:25', '2021-05-13 01:27:25', NULL, NULL);
INSERT INTO `clients` VALUES (232, '2021-06-07', 'Call 1', 'YES', NULL, '2', 'María', 'Mareprix', 'Los Corrales de Buelna', 'Cantabria', '942 832 598', '676 790 023', NULL, NULL, 'Massada', 'Quiere meter ácidos. Tarifas enviadas. Turba enviada', '2021-05-13 01:57:11', '2021-06-09 01:36:19', NULL, NULL);
INSERT INTO `clients` VALUES (233, '2021-05-13', 'No contact', 'NO', NULL, '3', 'Carmen', 'Carmen Pita Belleza y Salud', 'Suances', 'Cantabria', '942 844 578', NULL, NULL, NULL, 'Germaine', NULL, '2021-05-13 01:58:41', '2021-05-13 01:58:41', NULL, NULL);
INSERT INTO `clients` VALUES (234, '2021-05-14', 'No contact', 'NO', NULL, '2', 'Ángela', 'Ángela Pelayo Belleza y Bienestar', 'Mortera', 'Cantabria', '942 053 671', NULL, NULL, NULL, 'Massada', NULL, '2021-05-13 23:06:21', '2021-05-13 23:06:21', NULL, NULL);
INSERT INTO `clients` VALUES (235, '2021-05-31', 'Call 1', 'YES', NULL, '2', 'Ainhoa', 'Centro de Estética Gema', 'Zarautz', 'Pais Vasco', '943 132 612', '638 233 215', NULL, NULL, 'Other', 'BDR. Tarifas enviadas', '2021-05-16 23:54:22', '2021-06-22 01:56:39', NULL, NULL);
INSERT INTO `clients` VALUES (236, '2021-05-17', 'No contact', 'NO', NULL, '2', 'Amaia', 'Centro Médico-Estético May', 'Zarautz', 'Pais Vasco', NULL, '649 235 867', NULL, NULL, 'Other', 'Indiba', '2021-05-16 23:58:52', '2021-05-18 23:04:24', NULL, NULL);
INSERT INTO `clients` VALUES (237, '2021-06-28', 'Call 1', 'YES', NULL, '2', 'Susana', 'Centro Bristol', 'San Sebastián', 'Pais Vasco', '943 433 776', '608 466 814', NULL, NULL, 'Mesoestetic', 'Súper maja. Tarifas enviadas', '2021-05-17 00:13:30', '2021-06-30 01:30:21', NULL, NULL);
INSERT INTO `clients` VALUES (238, '2021-05-17', 'No contact', 'NO', NULL, '2', 'Sol', 'Instituto de belleza Donna', 'San Sebastián', 'Pais Vasco', '943 422 077', NULL, NULL, NULL, 'Massada', NULL, '2021-05-17 00:16:50', '2021-05-17 00:16:50', NULL, NULL);
INSERT INTO `clients` VALUES (239, '2021-05-17', 'No contact', 'NO', NULL, '2', 'MªCarmen', 'Centro Estética Ederne', 'Irún', 'Pais Vasco', '943 632 484', NULL, NULL, NULL, 'Natura Bisse', 'Indiba.', '2021-05-17 00:56:29', '2021-05-25 00:49:37', NULL, NULL);
INSERT INTO `clients` VALUES (240, '2021-06-17', 'RECALL', 'YES', NULL, '2', 'Nerea', 'Nibiru', 'Hernani', 'Pais Vasco', '943 243 560', '689 581 538', NULL, NULL, 'Other', 'Indiba. Dermalogica. Muy simpática. No ha probado. Llamar dentro de una semana', '2021-05-17 01:08:15', '2021-06-17 01:01:27', NULL, NULL);
INSERT INTO `clients` VALUES (241, '2021-06-09', 'RECALL', 'YES', NULL, '2', 'Esti', 'Centro de estética Indara', 'Hernani', 'Pais Vasco', NULL, '658 397 222', NULL, NULL, 'Mesoestetic', 'Muy simpática. No lo ha probado, llamar en dos semanas', '2021-05-17 01:15:56', '2021-06-10 01:14:33', NULL, NULL);
INSERT INTO `clients` VALUES (242, '2021-05-31', 'Call 1', 'YES', NULL, '2', 'Amalia', 'Rosma Belleza', 'Vitoria', 'Pais Vasco', '945 230 447', '609 902 193', NULL, NULL, 'Other', 'Skin Clinic. Centro Médico Estético. Abre en septiem', '2021-05-17 01:21:30', '2021-06-15 02:26:45', NULL, NULL);
INSERT INTO `clients` VALUES (243, '2021-06-23', 'Almost customer', 'YES', NULL, '2', 'Marivi', 'Centro de Belleza Ibania', 'Vitoria', 'Pais Vasco', NULL, '652 705 277', NULL, NULL, 'Mesoestetic', 'Simpática. Tarifas enviadas', '2021-05-17 01:25:10', '2021-07-01 22:57:03', NULL, NULL);
INSERT INTO `clients` VALUES (244, '2021-05-26', 'Customer', 'YES', NULL, '1', 'Sara', 'Sara Ugarte Centro de Estética Integral', 'Vitoria', 'Pais Vasco', '945 032 482', NULL, NULL, NULL, 'Mesoestetic', 'Majísima. Quiere meter una marca nueva', '2021-05-17 02:01:37', '2021-06-10 00:37:06', NULL, NULL);
INSERT INTO `clients` VALUES (245, '2021-05-17', 'RECALL', 'NO', NULL, '2', 'Gemma', 'Harmonie', 'Vitoria', 'Pais Vasco', '945 176 960', NULL, NULL, NULL, 'Mesoestetic', 'Llamar la semana que viene o la siguiente (24)', '2021-05-17 02:20:35', '2021-05-18 23:22:36', NULL, NULL);
INSERT INTO `clients` VALUES (246, '2021-06-15', 'RECALL', 'YES', NULL, '2', 'Edurne', 'Kabaii', 'Vitoria', 'Pais Vasco', NULL, '672 069 780', NULL, NULL, 'Other', 'Muy maja. Llamar dentro de una semana', '2021-05-18 23:16:06', '2021-06-15 00:39:10', NULL, NULL);
INSERT INTO `clients` VALUES (247, '2021-05-19', 'Call 1', 'YES', NULL, '2', 'Nerea', 'Arenne Belleza y Bienestar', 'Bilbao', 'Pais Vasco', '946 000 789', '688 749 347', 'info@centroarenne.com', NULL, 'Other', 'Cosmética natural. Tarifas enviadas', '2021-05-18 23:19:05', '2021-06-07 23:29:08', NULL, NULL);
INSERT INTO `clients` VALUES (248, '2021-05-21', 'Not interested', 'NO', NULL, '2', '.', 'Centro de Estética Iasone', 'Vitoria', 'Pais Vasco', '945 041 960', NULL, NULL, NULL, 'Mesoestetic', 'No quieren meter otra marca', '2021-05-18 23:24:42', '2021-05-21 01:08:56', NULL, NULL);
INSERT INTO `clients` VALUES (249, '2021-06-15', 'RECALL', 'YES', NULL, '2', 'Leticia', 'Estética Leticia Llaneza', 'Mieres', 'Asturias', '984 180 250', NULL, NULL, NULL, 'Other', 'Llamar dentro de una semana', '2021-05-18 23:32:18', '2021-06-15 02:27:12', NULL, NULL);
INSERT INTO `clients` VALUES (250, '2021-05-19', 'Not interested', 'NO', NULL, '3', 'Marisa', 'Centro de estética Marisa Álvarez', 'Gijón', 'Asturias', '984 393 551', NULL, NULL, NULL, 'Other', 'Utsukusy. No quiere cambiar', '2021-05-18 23:42:21', '2021-05-18 23:42:21', NULL, NULL);
INSERT INTO `clients` VALUES (251, '2021-06-15', 'RECALL', 'YES', NULL, '1', 'Elena', 'Elena Bueno Estética', 'Ruiloba', 'Cantabria', NULL, '636 785 416', NULL, NULL, 'Mesoestetic', 'Simpática. No ha probado todo, llamar dentro de una semana', '2021-05-18 23:48:23', '2021-06-15 00:34:12', NULL, NULL);
INSERT INTO `clients` VALUES (252, '2021-05-19', 'Not interesting', 'NO', NULL, '2', 'Marta', 'Marta Estética', 'El Entrego', 'Asturias', '985 660 836', NULL, NULL, NULL, 'Massada', 'Babor', '2021-05-19 02:20:47', '2021-05-19 23:09:06', NULL, NULL);
INSERT INTO `clients` VALUES (253, '2021-06-18', 'Almost customer', 'YES', NULL, '2', 'Verónica', 'Estética y Belleza Verónica Rivero', 'Vitoria', 'Pais Vasco', '945 012 391', '696 158 043', NULL, NULL, 'Mesoestetic', 'Indiba. (3ud/día) Tarifas enviadas', '2021-05-19 03:02:28', '2021-06-23 01:53:56', NULL, NULL);
INSERT INTO `clients` VALUES (254, '2021-05-20', 'No contact', 'NO', NULL, '2', '.', 'Multiestética Bilbao', 'Bilbao', 'Pais Vasco', '944 397 493', NULL, NULL, NULL, 'Natura Bisse', NULL, '2021-05-20 02:10:35', '2021-05-20 02:10:35', NULL, NULL);
INSERT INTO `clients` VALUES (255, '2021-05-21', 'RECALL', 'YES', NULL, '3', 'Nerea', 'El Secreto de Hebe', 'Bilbao', 'Pais Vasco', NULL, '688 850 716', NULL, NULL, 'Other', 'GerNetic. Indiba. Simpática', '2021-05-20 23:50:33', '2021-05-21 00:54:53', NULL, NULL);
INSERT INTO `clients` VALUES (256, '2021-05-21', 'No contact', 'NO', NULL, '3', 'Vanessa', 'Estética Vanessa', 'Bilbao', 'Pais Vasco', '944 101 184', NULL, NULL, NULL, 'Germaine', 'Indiba', '2021-05-20 23:53:29', '2021-05-20 23:53:29', NULL, NULL);
INSERT INTO `clients` VALUES (257, '2021-05-21', 'No contact', 'NO', NULL, '2', 'Susana', 'Centro de Estética Susana Ortiz', 'San Sebastián', 'Pais Vasco', '943 424 293', NULL, NULL, NULL, 'Other', 'Indiba', '2021-05-21 00:05:32', '2021-05-21 00:05:32', NULL, NULL);
INSERT INTO `clients` VALUES (258, '2021-05-21', 'RECALL', 'YES', NULL, '2', 'Itziar', 'YO Salud y Estética', 'San Sebastián', 'Pais Vasco', '943 290 889', NULL, 'info@yosaludestetica.com', NULL, 'Massada', 'Llamar en octubre', '2021-05-21 00:11:38', '2021-06-04 01:08:07', NULL, NULL);
INSERT INTO `clients` VALUES (259, '2021-05-21', 'No contact', 'NO', NULL, '3', '.', 'Centro de Estética Perfil', 'San Sebastián', 'Pais Vasco', '943 425 704', NULL, NULL, NULL, 'Other', 'Phytomer. Indiba', '2021-05-21 00:15:56', '2021-05-21 00:15:56', NULL, NULL);
INSERT INTO `clients` VALUES (260, '2021-05-21', 'No contact', 'NO', NULL, '2', '.', 'EDER Centro de Estética', 'San Sebastián', 'Pais Vasco', '943 396 344', NULL, NULL, NULL, 'Germaine', 'Guinot. Indiba', '2021-05-21 00:18:36', '2021-05-21 00:18:55', NULL, NULL);
INSERT INTO `clients` VALUES (261, '2021-05-21', 'Not interesting', 'NO', NULL, '2', 'Eider Riaño', 'Eider Riaño Estética', 'Rentería', 'Pais Vasco', '943 514 462', NULL, NULL, NULL, 'Other', NULL, '2021-05-21 00:22:18', '2021-05-25 00:47:03', NULL, NULL);
INSERT INTO `clients` VALUES (262, '2021-05-21', 'No contact', 'NO', NULL, '2', '.', 'Ikuxma Estética', 'Rentería', 'Pais Vasco', '943 344 854', NULL, NULL, NULL, 'Other', 'Biodroga. Comfort Zone', '2021-05-21 00:26:22', '2021-05-21 00:26:22', NULL, NULL);
INSERT INTO `clients` VALUES (263, '2021-05-21', 'No contact', 'NO', NULL, '2', 'Iris', 'Iris Jerónimo Estética y Bienestar', 'Rentería', 'Pais Vasco', NULL, '622 453 640', NULL, NULL, 'Other', 'Indiba', '2021-05-21 00:28:14', '2021-05-21 00:28:14', NULL, NULL);
INSERT INTO `clients` VALUES (264, '2021-05-21', 'No contact', 'NO', NULL, '2', 'Larraitz', 'Kimaya Estetika', 'Lezo', 'Pais Vasco', '943 506 227', NULL, NULL, NULL, 'Other', 'Cosmética Ecológica', '2021-05-21 00:31:00', '2021-05-21 00:31:00', NULL, NULL);
INSERT INTO `clients` VALUES (265, '2021-05-21', 'No contact', 'NO', NULL, '2', 'Garbiñe', 'Garbiñe Estétika', 'Oiartzun', 'Pais Vasco', '943 493 990', NULL, NULL, NULL, 'Other', NULL, '2021-05-21 00:33:11', '2021-05-21 00:33:11', NULL, NULL);
INSERT INTO `clients` VALUES (266, '2021-05-21', 'Not interested', 'NO', NULL, '2', 'Ainhoa', 'Ainhoa Estética', 'Irún', 'Pais Vasco', '943 617 544', NULL, NULL, NULL, 'Other', NULL, '2021-05-21 00:35:31', '2021-05-27 00:09:01', NULL, NULL);
INSERT INTO `clients` VALUES (267, '2021-05-21', 'No contact', 'NO', NULL, '2', 'Javier', 'Centro de Estética Esencia', 'Bilbao', 'Pais Vasco', NULL, '688 734 367', NULL, NULL, 'Other', 'Indiba', '2021-05-21 01:29:57', '2021-05-21 01:29:57', NULL, NULL);
INSERT INTO `clients` VALUES (268, '2021-06-17', 'Almost customer', 'YES', NULL, '2', 'Amada', 'Alma Belleza y Salud', 'Cabezón de la Sal', 'Cantabria', '942 700 374', '609 062 902', NULL, NULL, 'Other', 'BDR. Enviado hialurónico y turba. 2ud/día. Tarifas enviadas', '2021-05-25 01:42:28', '2021-07-01 22:57:20', NULL, NULL);
INSERT INTO `clients` VALUES (269, '2021-06-04', 'Not interesting', 'YES', NULL, '3', 'Mar', 'Mar Lerín', 'Santander', 'Cantabria', '942 337 189', NULL, NULL, NULL, 'Natura Bisse', 'Indiba. No interesa', '2021-05-25 02:09:31', '2021-06-30 01:12:45', NULL, NULL);
INSERT INTO `clients` VALUES (270, '2021-05-26', 'No contact', 'NO', NULL, '1', '.', 'Noan', 'Valladolid', 'Castilla Leon', '983 333 107', NULL, NULL, NULL, 'Mesoestetic', NULL, '2021-05-25 23:28:10', '2021-05-25 23:28:10', NULL, NULL);
INSERT INTO `clients` VALUES (271, '2021-05-26', 'No contact', 'NO', NULL, '2', 'Nuria', 'Nuria Ferrero Clínica Antiaging', 'León', 'Castilla Leon', '987 806 179', NULL, NULL, NULL, 'Mesoestetic', NULL, '2021-05-25 23:30:05', '2021-06-15 02:45:07', NULL, NULL);
INSERT INTO `clients` VALUES (272, '2021-05-26', 'Customer', 'NO', NULL, '2', 'Ana', 'Centro de Estética Alana', 'León', 'Castilla Leon', '987 263 994', '669 652 156', NULL, NULL, 'Mesoestetic', '647784733', '2021-05-26 00:03:08', '2021-06-25 02:55:19', NULL, NULL);
INSERT INTO `clients` VALUES (273, '2021-06-30', 'RECALL', 'YES', NULL, '2', 'Mariola', 'Madicur', 'Valladolid', 'Castilla Leon', NULL, '660 649 019', NULL, NULL, 'Mesoestetic', 'Simpática. Tiene 18 firmas, ahora mismo no quiere meter nada nuevo, pero por si cambia alguna quiere probar. Interesada en cabina', '2021-05-26 00:13:19', '2021-06-30 01:45:09', NULL, NULL);
INSERT INTO `clients` VALUES (274, '2021-05-26', 'RECALL', 'YES', NULL, '1', 'Violeta Merayo', 'Amparo y Violeta Centro Médico Estético', 'Ponferrada', 'Castilla Leon', '987 402 643', NULL, NULL, NULL, 'Mesoestetic', 'Tienen otro centro en O Barco. Llamar el lunes 7/6', '2021-05-26 00:32:17', '2021-06-04 02:10:41', NULL, NULL);
INSERT INTO `clients` VALUES (275, '2021-06-22', 'Call 1', 'YES', NULL, '3', 'Susana', 'Estética Susana Sánchez', 'Alcobendas', 'Madrid', '916 625 716', '649 119 390', NULL, NULL, 'Natura Bisse', 'Indiba. Tarifas enviadas', '2021-05-26 00:36:28', '2021-06-22 01:58:57', NULL, NULL);
INSERT INTO `clients` VALUES (276, '2021-05-26', 'Not interested', 'NO', NULL, '2', 'Pilar', 'Centro de Estética Pilar Fernández', 'Getxo', 'Pais Vasco', '944 910 177', NULL, NULL, NULL, 'Biologique', 'No quiere trabajar con otra marca que no sea Biologique', '2021-05-26 01:25:38', '2021-05-26 01:25:38', NULL, NULL);
INSERT INTO `clients` VALUES (277, '2021-05-26', 'Not interested', 'NO', NULL, '2', 'Patrizia', 'Patrizia Alcalde', 'Zaragoza', 'Aragon', '976 281 122', NULL, NULL, NULL, 'Biologique', 'Solo trabaja con Biologique', '2021-05-26 01:44:59', '2021-05-27 00:49:16', NULL, NULL);
INSERT INTO `clients` VALUES (278, '2021-05-26', 'No contact', 'NO', NULL, '2', 'Raquel', 'África Centro Médico Estético', 'Burgos', 'Castilla Leon', '947 261 092', NULL, NULL, NULL, 'Biologique', NULL, '2021-05-26 01:57:06', '2021-05-27 23:04:46', NULL, NULL);
INSERT INTO `clients` VALUES (279, '2021-05-26', 'No contact', 'NO', NULL, '2', 'Mika', 'Centro de Estética Mika', 'Zamora', 'Castilla Leon', '980 511 950', NULL, NULL, NULL, 'Mesoestetic', 'Biologique Recherche', '2021-05-26 02:00:55', '2021-05-26 02:00:55', NULL, NULL);
INSERT INTO `clients` VALUES (280, '2021-05-26', 'Not interested', 'NO', NULL, '2', 'Blanca', 'BG Estética', 'Zaragoza', 'Aragon', '976 290 900', NULL, NULL, NULL, 'Other', 'Sothy\'s', '2021-05-26 02:03:58', '2021-05-26 02:03:58', NULL, NULL);
INSERT INTO `clients` VALUES (281, '2021-05-26', 'No contact', 'NO', NULL, '2', 'Nieves', 'Nieves Romero', 'Navalmoral de la Mata', 'Extremadura', '927 533 588', NULL, NULL, NULL, 'Mesoestetic', 'Biologique, Massada', '2021-05-26 02:21:04', '2021-05-26 02:28:28', NULL, NULL);
INSERT INTO `clients` VALUES (282, '2021-05-26', 'No contact', 'NO', NULL, '2', 'Vivian', 'Vivian Valero', 'Leganés', 'Madrid', '910 075 679', NULL, NULL, NULL, 'Biologique', 'Casi no está en el centro', '2021-05-26 02:57:05', '2021-06-15 02:18:22', NULL, NULL);
INSERT INTO `clients` VALUES (283, '2021-05-26', 'No contact', 'NO', NULL, '2', 'Adriana', 'AGL Estética', 'San Sebastián', 'Pais Vasco', NULL, '687 658 311', NULL, NULL, 'Biologique', NULL, '2021-05-26 02:58:49', '2021-05-26 02:58:49', NULL, NULL);
INSERT INTO `clients` VALUES (284, '2021-06-02', 'No contact', 'NO', NULL, '3', 'Aneli', 'Belle Epoque', 'Collado Villalba', 'Madrid', '910 829 116', NULL, NULL, NULL, 'Other', 'Buen centro', '2021-05-26 23:22:32', '2021-06-29 23:59:15', NULL, NULL);
INSERT INTO `clients` VALUES (285, '2021-05-27', 'No contact', 'NO', NULL, '2', '.', 'Centro de Estética Lastra', 'Soto del Real', 'Madrid', '918 478 660', NULL, NULL, NULL, 'Other', 'Buen centro y tiene aparatología', '2021-05-26 23:25:12', '2021-05-27 02:15:10', NULL, NULL);
INSERT INTO `clients` VALUES (286, '2021-06-22', 'Call 1', 'YES', NULL, '2', 'Margot', 'Centro Margot', 'Soto del Real', 'Madrid', NULL, '686 978 109', NULL, NULL, 'Other', 'GerNetic. Tarifas enviadas', '2021-05-26 23:27:13', '2021-06-22 01:59:47', NULL, NULL);
INSERT INTO `clients` VALUES (287, '2021-06-21', 'RECALL', 'YES', NULL, '3', 'Estefanía', 'Estética Goji', 'Becerril de la Sierrra', 'Madrid', NULL, '690 389 034', NULL, NULL, 'Other', 'Phytomer. Indiba', '2021-05-26 23:40:02', '2021-06-21 00:44:07', NULL, NULL);
INSERT INTO `clients` VALUES (288, '2021-06-16', 'Not interested', 'NO', NULL, '1', 'Rocío', 'Centro de Estética Rocío Bosque', 'Móstoles', 'Madrid', '916 475 826', NULL, NULL, NULL, 'Biologique', 'Centro certificado Biologique Recherche', '2021-05-26 23:56:27', '2021-06-15 23:32:18', NULL, NULL);
INSERT INTO `clients` VALUES (289, '2021-06-21', 'Not interesting', 'YES', NULL, '3', 'Rosario', 'Estética Rosario Loriente', 'Móstoles', 'Madrid', '911 291 022', '647 608 143', NULL, NULL, 'Eberlin', 'Indiba. Ha rehusado las muestras en correos porque dice que le causan un trastorno', '2021-05-26 23:58:46', '2021-06-24 01:14:59', NULL, NULL);
INSERT INTO `clients` VALUES (290, '2021-05-27', 'No contact', 'NO', NULL, '1', '.', 'Cosmeticsun', 'Móstoles', 'Madrid', '916 656 031', '608 562 351', NULL, NULL, 'Casmara', 'SkinClinic. Clínica Medicina Estética', '2021-05-27 00:00:58', '2021-05-27 01:52:23', NULL, NULL);
INSERT INTO `clients` VALUES (291, '2021-05-27', 'No contact', NULL, NULL, '2', 'Silvia', 'Es Cosmética', 'Santander', 'Cantabria', NULL, '622 117 867', NULL, NULL, 'Biologique', NULL, '2021-05-27 00:26:59', '2021-06-10 01:34:36', NULL, NULL);
INSERT INTO `clients` VALUES (292, '2021-05-27', 'No contact', 'NO', NULL, '2', '.', 'Boris y Saky', 'Madrid', 'Madrid', '915 104 837', '636 551 207', NULL, NULL, 'Biologique', NULL, '2021-05-27 00:38:57', '2021-05-27 00:38:57', NULL, NULL);
INSERT INTO `clients` VALUES (293, '2021-05-27', 'No contact', 'NO', NULL, '2', 'Maria Dolores', 'LongeBell', 'Madrid', 'Madrid', '913 441 968', NULL, NULL, NULL, 'Biologique', 'Casmara. Centro Médico Estético', '2021-05-27 00:45:03', '2021-05-27 00:45:03', NULL, NULL);
INSERT INTO `clients` VALUES (294, '2021-05-27', 'No contact', 'NO', NULL, '2', 'Lucía', 'Lucía García', 'Collado Villalba', 'Madrid', '918 492 467', NULL, NULL, NULL, 'Eberlin', NULL, '2021-05-27 01:15:57', '2021-05-27 01:15:57', NULL, NULL);
INSERT INTO `clients` VALUES (295, '2021-06-16', 'No contact', 'NO', NULL, '2', 'Emilia', 'Centro de Estética Emilia Ariza', 'Colmenar Viejo', 'Madrid', '918 464 069', NULL, NULL, NULL, 'Mesoestetic', 'BDR, Biologique, GerNetic. La encargada está de baja', '2021-05-27 02:56:38', '2021-06-15 23:42:31', NULL, NULL);
INSERT INTO `clients` VALUES (296, '2021-06-22', 'RECALL', 'YES', NULL, '2', 'Juani', 'Centro de Estética Beldad', 'Alcalá de Henares', 'Madrid', '910 113 932', NULL, NULL, NULL, 'Other', 'BDR. Simpática. Especialista en acné. No lo ha probado porque tiene un problema en la barbilla, pero le parece interesante y lo va a probar cuando se quite la mascarilla', '2021-05-27 02:58:42', '2021-06-22 01:52:55', NULL, NULL);
INSERT INTO `clients` VALUES (297, '2021-07-07', 'RECALL', 'YES', NULL, '2', 'Mari Luz', 'Centro de Estética Menta', 'Burgos', 'Castilla Leon', '947 238 482', NULL, NULL, NULL, 'Biologique', NULL, '2021-05-27 23:03:14', '2021-07-07 00:24:45', NULL, NULL);
INSERT INTO `clients` VALUES (298, '2021-06-10', 'Not interested', 'NO', NULL, '2', 'Pilar', 'EstCenter', 'Logroño', 'La Rioja', '941 212 074', NULL, NULL, NULL, 'Biologique', 'Solo trabaja con Biologique', '2021-05-27 23:08:52', '2021-06-10 02:19:15', NULL, NULL);
INSERT INTO `clients` VALUES (299, '2021-05-28', 'No contact', 'NO', NULL, '1', 'Eva Granda', 'Evolution Clinic', 'León', 'Castilla Leon', '987 264 324', NULL, NULL, NULL, 'Mesoestetic', 'Biologique Recherche. Está por las tardes', '2021-05-27 23:18:32', '2021-06-22 01:20:34', NULL, NULL);
INSERT INTO `clients` VALUES (300, '2021-06-15', 'RECALL', 'YES', NULL, '2', 'Nuria', 'Aire Salud y Bienestar', 'Albacete', 'Castilla Mancha', '967 445 041', NULL, NULL, NULL, 'Eberlin', 'Llamar en una semana', '2021-05-27 23:52:39', '2021-06-15 02:55:51', NULL, NULL);
INSERT INTO `clients` VALUES (301, '2021-05-28', 'RECALL', 'YES', NULL, '2', 'Marta', 'Coco Beauty Bar', 'Albacete', 'Castilla Mancha', NULL, '601 473 913', NULL, NULL, 'Eberlin', 'Simpática. Trabaja acné', '2021-05-28 00:03:07', '2021-05-28 00:03:07', NULL, NULL);
INSERT INTO `clients` VALUES (302, '2021-06-02', 'RECALL', 'YES', NULL, '2', 'Carolina', 'Carolina Rodríguez Centro Estético', 'Albacete', 'Castilla Mancha', NULL, '637 836 261', NULL, NULL, 'Eberlin', NULL, '2021-05-28 00:08:58', '2021-06-01 23:24:17', NULL, NULL);
INSERT INTO `clients` VALUES (303, '2021-05-28', 'No contact', 'NO', NULL, '2', 'Rosa Marina', 'Estética Rosa Marina', 'Elda', 'Valencia', NULL, '658 567 554', NULL, NULL, 'Eberlin', NULL, '2021-05-28 00:31:49', '2021-05-28 00:31:49', NULL, NULL);
INSERT INTO `clients` VALUES (304, '2021-05-28', 'No contact', 'NO', NULL, '2', 'Noemí', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-28 00:34:22', '2021-05-31 01:51:17', '2021-05-31 01:51:17', NULL);
INSERT INTO `clients` VALUES (305, '2021-05-28', 'No contact', 'NO', NULL, '2', 'Noemí', 'Noemí Barceló', 'Elda', 'Valencia', NULL, '672 212 842', NULL, NULL, 'Eberlin', NULL, '2021-05-28 00:35:22', '2021-05-28 00:35:22', NULL, NULL);
INSERT INTO `clients` VALUES (306, '2021-05-28', 'No contact', 'NO', NULL, '2', 'Mari Carmen', 'Mari Carmen Gómez Estética', 'Petrer', 'Valencia', NULL, '655 121 447', NULL, NULL, 'Eberlin', NULL, '2021-05-28 00:38:39', '2021-05-28 00:38:39', NULL, NULL);
INSERT INTO `clients` VALUES (307, '2021-05-28', 'RECALL', 'NO', NULL, '2', 'Rosa', 'Rosa Huertas Centro de Estética Avanzada', 'Orihuela', 'Valencia', NULL, '676 079 504', NULL, NULL, 'Eberlin', NULL, '2021-05-28 00:43:25', '2021-05-28 01:25:00', NULL, NULL);
INSERT INTO `clients` VALUES (308, '2021-06-30', 'Not interested', 'NO', NULL, '2', 'Yolanda', 'Yolanda Estética', 'Alicante', 'Valencia', '965 213 555', '667 012 956', NULL, NULL, 'Eberlin', 'No le interesa ahora mismo', '2021-05-28 00:48:52', '2021-06-30 00:51:50', NULL, NULL);
INSERT INTO `clients` VALUES (309, '2021-05-28', 'RECALL', 'YES', NULL, '2', 'Pilar', 'Salón de Belleza Época', 'Alicante', 'Valencia', '965 101 223', NULL, NULL, NULL, 'Eberlin', 'Natura Bissé', '2021-05-28 01:00:16', '2021-05-28 01:00:16', NULL, NULL);
INSERT INTO `clients` VALUES (310, '2021-06-16', 'RECALL', 'YES', NULL, '2', 'Cristina', 'Cris Peña Beauty Center', 'Villajoyosa', 'Valencia', NULL, '606 166 885', NULL, NULL, 'Mesoestetic', 'Llamar dentro de una semana', '2021-05-28 01:16:39', '2021-06-15 23:24:49', NULL, NULL);
INSERT INTO `clients` VALUES (311, '2021-06-15', 'Call 1', 'YES', NULL, '2', 'Ana', 'Dermosiluet', 'Avilés', 'Asturias', '985 521 808', '652 807 630', NULL, NULL, 'Other', 'GerNetic. Babor.  Tarifas enviadas', '2021-05-28 01:53:59', '2021-06-15 02:28:54', NULL, NULL);
INSERT INTO `clients` VALUES (312, '2021-06-15', 'RECALL', 'YES', NULL, '2', 'María', 'María Costales Belleza y Bienestar', 'Gijón', 'Asturias', NULL, '691 831 236', NULL, NULL, 'Eberlin', 'Llamar dentro de una semana', '2021-05-28 02:09:46', '2021-06-15 03:00:45', NULL, NULL);
INSERT INTO `clients` VALUES (313, '2021-06-28', 'RECALL', 'YES', NULL, '2', 'Sara', 'DMAE Advance Beauty', 'Gijón', 'Asturias', NULL, '684 655 416', NULL, NULL, 'Mesoestetic', 'Muy Simpática', '2021-05-28 02:21:37', '2021-06-28 00:35:28', NULL, NULL);
INSERT INTO `clients` VALUES (314, '2021-06-01', 'RECALL', 'YES', NULL, '2', 'Elena', 'Elena Fueyo Estética', 'Gijón', 'Asturias', NULL, '698 923 274', NULL, NULL, 'Eberlin', NULL, '2021-05-28 02:27:06', '2021-05-31 23:04:34', NULL, NULL);
INSERT INTO `clients` VALUES (315, '2021-06-22', 'RECALL', 'YES', NULL, '2', 'Nuria', 'Nuria Cambert', 'Gijón', 'Asturias', '984 391 691', NULL, NULL, NULL, 'Eberlin', NULL, '2021-05-30 22:44:39', '2021-06-21 23:25:24', NULL, NULL);
INSERT INTO `clients` VALUES (316, '2021-05-31', 'No contact', 'NO', NULL, '2', 'Andrea', 'Andrea Guerra Beauty Room', 'Gijón', 'Asturias', '985 050 617', NULL, NULL, NULL, 'Eberlin', NULL, '2021-05-30 22:58:16', '2021-05-30 22:58:16', NULL, NULL);
INSERT INTO `clients` VALUES (317, '2021-05-31', 'RECALL', 'NO', NULL, '2', 'Ana', 'Ana Campelo Belleza y Bienestar', 'Gijón', 'Asturias', '985 343 117', NULL, NULL, NULL, 'Eberlin', NULL, '2021-05-30 23:04:39', '2021-05-31 22:57:56', NULL, NULL);
INSERT INTO `clients` VALUES (318, '2021-05-31', 'No contact', 'NO', NULL, '2', 'Yolanda', 'Estilistas Yolanda Pombo', 'Gijón', 'Asturias', '985 323 650', NULL, NULL, NULL, 'Eberlin', NULL, '2021-05-30 23:06:20', '2021-05-30 23:06:20', NULL, NULL);
INSERT INTO `clients` VALUES (319, '2021-06-21', 'RECALL', 'YES', NULL, '2', 'Silvia', 'Centro de Estética Silvia Alonso', 'Oviedo', 'Asturias', '984 399 585', NULL, NULL, NULL, 'Eberlin', 'Simpática. Tiene derma en la clínica', '2021-05-30 23:12:47', '2021-06-21 00:45:21', NULL, NULL);
INSERT INTO `clients` VALUES (320, '2021-06-22', 'Not interesting', 'NO', NULL, '2', 'Luci', 'Belleza y Bienestar Luci Barbalho', 'Oviedo', 'Asturias', '984 087 103', NULL, NULL, NULL, 'Eberlin', NULL, '2021-05-30 23:19:48', '2021-06-22 00:15:07', NULL, NULL);
INSERT INTO `clients` VALUES (321, '2021-06-15', 'RECALL', 'YES', NULL, '2', 'Mireia', 'Beauty Bar', 'Bilbao', 'Pais Vasco', '944 741 314', NULL, NULL, NULL, 'Eberlin', 'Llamar en dos semanas', '2021-05-31 02:02:39', '2021-06-15 02:56:11', NULL, NULL);
INSERT INTO `clients` VALUES (322, '2021-05-31', 'No contact', 'NO', NULL, '2', '.', 'Esencia', 'Bilbao', 'Pais Vasco', '946 570 311', NULL, NULL, NULL, 'Other', 'GerNetic', '2021-05-31 02:35:46', '2021-05-31 02:35:46', NULL, NULL);
INSERT INTO `clients` VALUES (323, '2021-05-31', 'No contact', 'NO', NULL, '2', 'Laura', 'Clínica Medicina Estética Laura Humara', 'Sarón', 'Cantabria', '942 390 828', NULL, NULL, NULL, 'Other', 'Cantabria Labs', '2021-05-31 03:05:34', '2021-05-31 03:05:34', NULL, NULL);
INSERT INTO `clients` VALUES (324, '2021-06-03', 'RECALL', 'YES', NULL, '2', 'Charo', 'Salón de Belleza Poppins', 'Vitoria', 'Pais Vasco', '945 245 096', NULL, NULL, NULL, 'Eberlin', NULL, '2021-05-31 22:53:46', '2021-06-03 22:58:51', NULL, NULL);
INSERT INTO `clients` VALUES (325, '2021-06-02', 'RECALL', 'YES', NULL, '2', 'Natalia', 'Natalia Fuentetaja Slow Beauty', 'Segovia', 'Castilla Leon', NULL, '633 885 151', NULL, NULL, 'Eberlin', NULL, '2021-06-01 22:44:48', '2021-06-02 00:16:32', NULL, NULL);
INSERT INTO `clients` VALUES (326, '2021-06-10', 'RECALL', 'YES', NULL, '2', 'Mabel', 'Perdiguero Belleza y Bienestar', 'Ávila', 'Castilla Leon', NULL, '657 101 112', NULL, NULL, 'Eberlin', NULL, '2021-06-01 22:57:22', '2021-06-15 02:40:50', NULL, NULL);
INSERT INTO `clients` VALUES (327, '2021-06-02', 'No contact', 'NO', NULL, '3', '.', 'Centro de Estética Innove', 'Madrid', 'Madrid', '915 044 373', NULL, NULL, NULL, 'Eberlin', NULL, '2021-06-01 23:01:58', '2021-06-01 23:01:58', NULL, NULL);
INSERT INTO `clients` VALUES (328, '2021-06-02', 'RECALL', 'YES', NULL, '2', 'Rocío', 'Cio Estética', 'Madrid', 'Madrid', '910 149 929', NULL, NULL, NULL, 'Eberlin', NULL, '2021-06-01 23:02:48', '2021-06-01 23:55:07', NULL, NULL);
INSERT INTO `clients` VALUES (329, '2021-06-21', 'RECALL', 'YES', NULL, '2', 'Gemma', 'Esteticontrol', 'Madrid', 'Madrid', '915 750 850', NULL, NULL, NULL, 'Other', 'Indiba. Llamar en un mes', '2021-06-01 23:05:16', '2021-06-21 00:43:54', NULL, NULL);
INSERT INTO `clients` VALUES (330, '2021-06-22', 'Call 1', 'YES', NULL, '2', 'Esmeralda', 'Esmeralda Márquez', 'Madrid', 'Madrid', NULL, '674 316 153', NULL, NULL, 'Biologique', 'Simpática. Tarifas enviadas', '2021-06-01 23:07:34', '2021-06-22 02:00:11', NULL, NULL);
INSERT INTO `clients` VALUES (331, '2021-06-02', 'RECALL', 'NO', NULL, '2', 'Rosa', 'Centro de Estética Rosa Mancheño', 'Madrid', 'Madrid', '914 305 909', NULL, NULL, NULL, 'Biologique', 'Llamar de cara a septiembre porque ahora está saturada de trabajo y producto', '2021-06-01 23:21:15', '2021-06-03 00:27:10', NULL, NULL);
INSERT INTO `clients` VALUES (332, '2021-06-22', 'Not interesting', 'NO', NULL, '2', 'Catalina', 'Madrid Estética Catalina Rodríguez', 'Madrid', 'Madrid', '917 257 985', NULL, NULL, NULL, 'Other', 'Radiofrecuencia. Se ha llamado 6 días distintos y nunca cogen', '2021-06-01 23:32:35', '2021-06-22 00:16:58', NULL, NULL);
INSERT INTO `clients` VALUES (333, '2021-06-02', 'No contact', 'NO', NULL, '2', '.', 'Centro de Estética V&A', 'Alcalá de Henares', 'Madrid', '918 828 313', NULL, NULL, NULL, 'Other', 'Radiofrecuencia', '2021-06-01 23:35:39', '2021-06-01 23:35:39', NULL, NULL);
INSERT INTO `clients` VALUES (334, '2021-06-02', 'RECALL', 'YES', NULL, '2', 'Laura', 'Laura Rousell Estética', 'Alcalá de Henares', 'Madrid', '912 802 260', '601 197 059', NULL, NULL, 'Other', 'Radiofrecuencia. Simpática', '2021-06-01 23:39:40', '2021-06-01 23:41:11', NULL, NULL);
INSERT INTO `clients` VALUES (335, '2021-06-02', 'Not interested', 'NO', NULL, '2', 'Lorena', 'Lorena Díaz Belleza y Bienestar', 'Alcorcón', 'Madrid', NULL, '692 047 816', NULL, NULL, 'Eberlin', NULL, '2021-06-01 23:46:05', '2021-06-01 23:46:05', NULL, NULL);
INSERT INTO `clients` VALUES (336, '2021-06-02', 'No contact', 'NO', NULL, '2', '.', 'Aimar Salud-Belleza-Bienestar', 'Fuenlabrada', 'Madrid', NULL, '657 963 488', NULL, NULL, 'Eberlin', NULL, '2021-06-02 00:05:55', '2021-06-02 00:05:55', NULL, NULL);
INSERT INTO `clients` VALUES (337, '2021-06-02', 'No contact', 'NO', NULL, '2', '.', 'Secretos de Belleza', 'Móstoles', 'Madrid', '912 384 243', NULL, NULL, NULL, 'Eberlin', 'Llamar a finales de junio', '2021-06-02 00:11:03', '2021-06-15 23:45:05', NULL, NULL);
INSERT INTO `clients` VALUES (338, '2021-06-02', 'No contact', 'NO', NULL, '2', 'Rocío', 'Rocío Mayoral Estética Avanzada', 'Getafe', 'Madrid', '910 666 606', NULL, NULL, NULL, 'Eberlin', NULL, '2021-06-02 00:14:11', '2021-06-08 23:10:32', NULL, NULL);
INSERT INTO `clients` VALUES (339, '2021-06-02', 'No contact', 'NO', NULL, '2', 'Miriam', 'Centro de Estética Avanzada Miriam Cruz', 'Torrejón de Ardoz', 'Madrid', '912 317 286', NULL, NULL, NULL, 'Other', 'Marca propia', '2021-06-02 00:21:16', '2021-06-02 00:21:16', NULL, NULL);
INSERT INTO `clients` VALUES (340, '2021-06-02', 'RECALL', 'YES', NULL, '2', 'Mónica', 'Moima', 'Coslada', 'Madrid', NULL, '622 847 023', NULL, NULL, 'Other', 'BDR', '2021-06-02 00:24:20', '2021-06-02 01:00:12', NULL, NULL);
INSERT INTO `clients` VALUES (341, '2021-06-08', 'RECALL', 'YES', NULL, '2', 'Soraya', 'Soraya Blanco Estética Avanzada', 'Leganés', 'Madrid', '910 244 587', NULL, NULL, NULL, 'Eberlin', NULL, '2021-06-02 00:26:37', '2021-06-07 23:39:07', NULL, NULL);
INSERT INTO `clients` VALUES (342, '2021-06-08', 'RECALL', 'YES', NULL, '2', 'María', 'María Abal Centro de Estética Avanzada', 'Rivas Vaciamadrid', 'Madrid', '917 517 642', NULL, NULL, NULL, 'Eberlin', NULL, '2021-06-02 00:29:20', '2021-06-07 23:46:37', NULL, NULL);
INSERT INTO `clients` VALUES (343, '2021-06-21', 'RECALL', 'YES', NULL, '2', 'Vela', 'Centro de estética y bienestar EVELA', 'Valdemoro', 'Madrid', NULL, '657 570 775', NULL, NULL, 'Eberlin', 'Simpática', '2021-06-02 00:32:41', '2021-06-21 00:46:14', NULL, NULL);
INSERT INTO `clients` VALUES (344, '2021-06-02', 'RECALL', 'YES', NULL, '2', 'Pilar', 'Estética Integral Galapagar', 'Galapagar', 'Madrid', NULL, '608 076 031', NULL, NULL, 'Eberlin', 'Simpática', '2021-06-02 00:40:14', '2021-06-02 00:40:14', NULL, NULL);
INSERT INTO `clients` VALUES (345, '2021-06-02', 'No contact', 'NO', NULL, '2', 'Verónica', 'Verónica López', 'Figueres', 'Cataluna', '972 513 012', NULL, NULL, NULL, 'Other', 'Montibello. Sale en el IG de BDR', '2021-06-02 01:35:22', '2021-06-02 01:36:01', NULL, NULL);
INSERT INTO `clients` VALUES (346, '2021-06-02', 'No contact', 'NO', NULL, '2', 'Cristina López', 'Body Massage', 'San Sebastián de los Reyes', 'Madrid', '911 633 222', NULL, NULL, NULL, 'Other', 'La dueña pasa poco por el centro', '2021-06-02 01:38:51', '2021-06-02 01:38:51', NULL, NULL);
INSERT INTO `clients` VALUES (347, '2021-06-02', 'Not interesting', 'NO', NULL, '2', '.', 'Belestell', 'Alcorcón', 'Madrid', '916 125 933', NULL, NULL, NULL, 'Other', 'Ahora mismo están cubiertos', '2021-06-02 01:42:06', '2021-06-02 01:42:06', NULL, NULL);
INSERT INTO `clients` VALUES (348, '2021-06-02', 'RECALL', 'YES', NULL, '2', 'Mar', 'Centro de estética Alcorcón', 'Alcorcón', 'Madrid', '911 529 380', '647 916 989', NULL, NULL, 'Other', 'SkinClinic', '2021-06-02 01:45:05', '2021-06-25 00:41:40', NULL, NULL);
INSERT INTO `clients` VALUES (349, '2021-06-02', 'No contact', 'NO', NULL, '2', '.', 'Maroc', 'Pinto', 'Madrid', '916 925 611', NULL, NULL, NULL, 'Other', 'Indiba. Tienen otro centro en el centro de Madrid', '2021-06-02 02:20:58', '2021-06-02 02:20:58', NULL, NULL);
INSERT INTO `clients` VALUES (350, '2021-06-02', 'No contact', 'NO', NULL, '2', 'Mariam/Noelia', 'Masquebelleza', 'Boadilla del Monte', 'Madrid', NULL, '650 452 459', NULL, NULL, 'Biologique', NULL, '2021-06-02 02:30:04', '2021-06-02 02:30:04', NULL, NULL);
INSERT INTO `clients` VALUES (351, '2021-06-02', 'Customer', 'YES', NULL, '1', 'Ana', 'Alana', 'León', 'Castilla Leon', NULL, '647 784 733', NULL, NULL, 'Mesoestetic', NULL, '2021-06-02 02:33:00', '2021-06-02 02:35:45', '2021-06-02 02:35:45', NULL);
INSERT INTO `clients` VALUES (352, '2021-06-02', 'No contact', 'NO', NULL, '2', 'María', 'Gea Estética Avanzada', 'Puebla de Sanabria (Zamora)', 'Castilla Leon', NULL, '674 116 602', NULL, NULL, 'Skeyndor', 'Sale en el Ig de BDR', '2021-06-02 02:47:19', '2021-06-10 23:34:50', NULL, NULL);
INSERT INTO `clients` VALUES (353, '2021-06-23', 'RECALL', 'YES', NULL, '2', 'Sonia', 'Sonia Salón de Belleza', 'Zaragoza', 'Aragon', '976 784 084', NULL, NULL, NULL, 'Other', 'BDR', '2021-06-02 02:50:19', '2021-06-23 00:07:21', NULL, NULL);
INSERT INTO `clients` VALUES (354, '2021-06-02', 'No contact', 'NO', NULL, '2', 'Gisele?', 'Clementina', 'Málaga', 'Andalucia', '951 914 704', NULL, NULL, NULL, 'Germaine', 'BDR', '2021-06-02 02:58:19', '2021-06-02 02:58:19', NULL, NULL);
INSERT INTO `clients` VALUES (355, '2021-06-03', 'No contact', 'NO', NULL, '2', '.', 'BEGA Estética', 'Alicante', 'Valencia', NULL, '652 072 040', NULL, NULL, 'Other', 'Sale en el Ig de BDR', '2021-06-02 23:04:27', '2021-06-02 23:04:27', NULL, NULL);
INSERT INTO `clients` VALUES (356, '2021-06-03', 'RECALL', 'YES', NULL, '2', 'Laura', 'Petit Salón León', 'León', 'Castilla Leon', '987 045 174', NULL, NULL, NULL, 'Eberlin', NULL, '2021-06-02 23:27:43', '2021-06-02 23:32:31', NULL, NULL);
INSERT INTO `clients` VALUES (357, '2021-06-22', 'Not interested', 'NO', NULL, '2', '.', 'Deleic', 'León', 'Castilla Leon', '987 027 906', NULL, NULL, NULL, 'Eberlin', 'Acaban de cambiar la cosmética', '2021-06-02 23:34:58', '2021-06-22 01:14:20', NULL, NULL);
INSERT INTO `clients` VALUES (358, '2021-06-03', 'No contact', 'NO', NULL, '3', 'Clara', 'Clara Toro', 'León', 'Castilla Leon', '987 912 441', NULL, NULL, NULL, 'Eberlin', 'Está siempre ocupadísima', '2021-06-02 23:50:53', '2021-06-10 02:25:19', NULL, NULL);
INSERT INTO `clients` VALUES (359, '2021-06-03', 'No contact', 'NO', NULL, '3', 'Mónica', 'Centro de Estética Mónica Blanco', 'León', 'Castilla Leon', '987 171 643', '626 347 841', NULL, NULL, 'Eberlin', NULL, '2021-06-02 23:53:02', '2021-06-02 23:53:02', NULL, NULL);
INSERT INTO `clients` VALUES (360, '2021-06-03', 'RECALL', 'YES', NULL, '3', 'Yolanda', 'Belleza BRE Estética Avanzada', 'León', 'Castilla Leon', '987 018 200', NULL, NULL, NULL, 'Eberlin', NULL, '2021-06-02 23:55:03', '2021-06-02 23:59:52', NULL, NULL);
INSERT INTO `clients` VALUES (361, '2021-06-09', 'RECALL', 'YES', NULL, '2', 'Sonia', 'Centro de Estética Sonia', 'León', 'Castilla Leon', '987 800 999', NULL, NULL, NULL, 'Eberlin', NULL, '2021-06-03 00:05:25', '2021-06-08 23:36:44', NULL, NULL);
INSERT INTO `clients` VALUES (362, '2021-06-03', 'No contact', 'NO', NULL, '2', 'Natalia', 'Natalia Oneca Estética Integral', 'Beriáin', 'Navarra', NULL, '652 373 323', NULL, NULL, 'Eberlin', NULL, '2021-06-03 00:29:59', '2021-06-03 23:21:25', NULL, NULL);
INSERT INTO `clients` VALUES (363, '2021-06-15', 'RECALL', 'YES', NULL, '2', 'Marta', 'MR Salud y Belleza', 'Pamplona', 'Navarra', '948 066 979', NULL, NULL, NULL, 'Eberlin', 'No las ha probado. Llamar en una semana', '2021-06-03 00:33:07', '2021-06-15 02:35:58', NULL, NULL);
INSERT INTO `clients` VALUES (364, '2021-06-10', 'Not interested', 'NO', NULL, '2', 'Yolanda', 'Yolanda Guillén', 'Zaragoza', 'Aragon', '976 210 854', NULL, NULL, NULL, 'Other', NULL, '2021-06-03 01:13:38', '2021-06-10 00:17:02', NULL, NULL);
INSERT INTO `clients` VALUES (365, '2021-06-03', 'No contact', 'NO', NULL, '2', '.', 'D\'Marco Centro Médico Estético', 'Zaragoza', 'Aragon', '976 462 668', NULL, NULL, NULL, 'Eberlin', NULL, '2021-06-03 01:21:55', '2021-06-03 01:21:55', NULL, NULL);
INSERT INTO `clients` VALUES (366, '2021-06-03', 'No contact', 'NO', NULL, '3', '.', 'Irusu', 'Zaragoza', 'Aragon', '976 097 048', NULL, NULL, NULL, 'Eberlin', NULL, '2021-06-03 01:32:06', '2021-06-03 01:32:06', NULL, NULL);
INSERT INTO `clients` VALUES (367, '2021-06-03', 'No contact', 'NO', NULL, '2', '.', 'Estetizar', NULL, NULL, '976 238 662', '603 366 662', NULL, NULL, 'Eberlin', NULL, '2021-06-03 02:02:59', '2021-06-03 02:02:59', NULL, NULL);
INSERT INTO `clients` VALUES (368, '2021-06-03', 'No contact', 'NO', NULL, '3', '.', 'Estética y Bienestar Shiva', 'Zaragoza', 'Aragon', NULL, '635 986 006', NULL, NULL, 'Eberlin', NULL, '2021-06-03 02:08:29', '2021-06-03 02:08:29', NULL, NULL);
INSERT INTO `clients` VALUES (369, '2021-06-03', 'No contact', 'NO', NULL, '2', 'Yaiza', 'Yara Centro Médico Estético', 'Zaragoza', 'Aragon', NULL, '622 531 279', NULL, NULL, 'Eberlin', NULL, '2021-06-03 02:18:13', '2021-06-03 02:18:13', NULL, NULL);
INSERT INTO `clients` VALUES (370, '2021-06-03', 'No contact', 'NO', NULL, '2', '.', 'Centro Estético Sankara', 'Zaragoza', NULL, '976 048 102', NULL, NULL, NULL, 'Eberlin', NULL, '2021-06-03 02:29:19', '2021-06-03 02:29:19', NULL, NULL);
INSERT INTO `clients` VALUES (371, '2021-06-22', 'Call 1', 'YES', NULL, '3', 'Patricia', 'Centro de Estética Patricia Rodríguez', 'Arévalo', 'Castilla Leon', NULL, '633 564 822', NULL, NULL, 'Mesoestetic', 'Eberlin. Tarifas enviadas', '2021-06-03 23:10:04', '2021-06-22 02:00:31', NULL, NULL);
INSERT INTO `clients` VALUES (372, '2021-06-04', 'No contact', 'NO', NULL, '2', 'Virginia', 'Virginia Ansorena', 'Durango', 'Pais Vasco', '946 202 978', NULL, NULL, NULL, 'Eberlin', NULL, '2021-06-03 23:48:40', '2021-06-03 23:48:40', NULL, NULL);
INSERT INTO `clients` VALUES (373, '2021-06-04', 'No contact', 'NO', NULL, '2', '.', 'Kensho Estética y Bienestar', 'Logroño', NULL, '941 586 988', NULL, NULL, NULL, 'Eberlin', NULL, '2021-06-04 02:01:55', '2021-06-04 02:01:55', NULL, NULL);
INSERT INTO `clients` VALUES (374, '2021-06-08', 'RECALL', 'YES', NULL, '3', 'Andrea', 'Andrea Iglesias', 'Lugo', 'Galicia', NULL, '633 225 538', NULL, NULL, 'Eberlin', NULL, '2021-06-04 02:13:27', '2021-06-08 00:07:17', NULL, NULL);
INSERT INTO `clients` VALUES (375, '2021-06-04', 'No contact', 'NO', NULL, '2', '.', 'Dorian Beauty Salon', 'Lugo', 'Galicia', NULL, '648 903 231', NULL, NULL, 'Eberlin', NULL, '2021-06-04 02:15:37', '2021-06-04 02:15:37', NULL, NULL);
INSERT INTO `clients` VALUES (376, '2021-06-23', 'No contact', 'NO', NULL, '2', '.', 'Brisa Salon', 'Sarria', 'Galicia', '982 533 094', NULL, NULL, NULL, 'Eberlin', 'Skeyndor. Llamar la semana que viene (28/6)', '2021-06-04 02:19:23', '2021-06-23 01:41:59', NULL, NULL);
INSERT INTO `clients` VALUES (377, '2021-06-04', 'No contact', 'NO', NULL, '2', '.', 'Cayla', 'Lugo', 'Galicia', '982 225 770', NULL, NULL, NULL, 'Eberlin', 'Llamar a partir del lunes (28/6)', '2021-06-04 02:23:06', '2021-06-23 01:40:58', NULL, NULL);
INSERT INTO `clients` VALUES (378, '2021-06-04', 'No contact', 'NO', NULL, '2', '.', 'Duobell', 'Lugo', 'Galicia', NULL, NULL, NULL, NULL, 'Eberlin', NULL, '2021-06-04 02:29:45', '2021-06-09 01:31:21', '2021-06-09 01:31:21', NULL);
INSERT INTO `clients` VALUES (379, '2021-06-04', 'No contact', 'NO', NULL, '2', 'Marta', 'Belezatres', 'Lugo', 'Galicia', '982 872 839', NULL, NULL, NULL, 'Other', 'Sofia Bertrand', '2021-06-04 02:45:10', '2021-06-04 02:45:10', NULL, NULL);
INSERT INTO `clients` VALUES (380, '2021-06-04', 'No contact', 'NO', NULL, '2', 'Vanessa', 'Kimeva', 'Ourense', 'Galicia', '988 544 187', NULL, NULL, NULL, 'Eberlin', 'Llamar final de la tarde', '2021-06-04 02:51:00', '2021-06-10 01:09:34', NULL, NULL);
INSERT INTO `clients` VALUES (381, '2021-06-07', 'No contact', 'NO', NULL, '2', 'Susana', 'Susana Fernández Beauty and Wellness', 'Madrid', 'Madrid', '915 339 298', NULL, NULL, NULL, 'Eberlin', NULL, '2021-06-06 23:24:37', '2021-06-06 23:24:37', NULL, NULL);
INSERT INTO `clients` VALUES (382, '2021-06-21', 'RECALL', 'YES', NULL, '2', 'Cristina Aranda', 'Sedatio', 'Madrid', 'Madrid', '910 093 101', NULL, NULL, NULL, 'Eberlin', 'Simpática', '2021-06-06 23:28:24', '2021-06-21 00:47:02', NULL, NULL);
INSERT INTO `clients` VALUES (383, '2021-06-07', 'RECALL', 'YES', NULL, '2', 'Mayka', 'Mi Momento Mayka', 'Alcalá de Henares', 'Madrid', NULL, '622 232 145', NULL, NULL, 'Eberlin', 'Muy simpática', '2021-06-06 23:31:43', '2021-06-06 23:35:16', NULL, NULL);
INSERT INTO `clients` VALUES (384, '2021-06-21', 'RECALL', 'YES', NULL, '2', 'María', 'María Rodríguez Estética Avanzada', 'Madrid', 'Madrid', '915 060 434', '686 023 876', NULL, NULL, 'Eberlin', NULL, '2021-06-06 23:48:34', '2021-06-21 00:47:41', NULL, NULL);
INSERT INTO `clients` VALUES (385, '2021-06-21', 'RECALL', 'YES', NULL, '2', 'Sofía', 'Beauty Home', 'Madrid', 'Madrid', '911 704 548', NULL, NULL, NULL, 'Eberlin', NULL, '2021-06-06 23:53:51', '2021-06-21 00:43:26', NULL, NULL);
INSERT INTO `clients` VALUES (386, '2021-06-07', 'No contact', 'NO', NULL, '2', 'Carmen', 'Gooru Beauty', 'Pozuelo de Alarcón', 'Madrid', '913 517 436', NULL, NULL, NULL, 'Massada', 'Centro Médico Estético. Tiene otro centro en Marbella', '2021-06-06 23:56:26', '2021-06-06 23:56:26', NULL, NULL);
INSERT INTO `clients` VALUES (387, '2021-06-07', 'RECALL', 'YES', NULL, '2', 'Estela', 'Centro de Estética Estela Sánchez', 'Madrid', 'Madrid', NULL, '669 550 765', NULL, NULL, 'Eberlin', NULL, '2021-06-07 00:07:20', '2021-06-07 00:07:20', NULL, NULL);
INSERT INTO `clients` VALUES (388, '2021-06-22', 'RECALL', 'YES', NULL, '2', 'Natalia', 'Velvet Boutique de Belleza', 'Madrid', 'Madrid', NULL, '665 684 749', NULL, NULL, 'Eberlin', NULL, '2021-06-07 00:38:13', '2021-06-21 23:24:13', NULL, NULL);
INSERT INTO `clients` VALUES (389, '2021-06-22', 'RECALL', 'YES', NULL, '1', 'Norma', 'Mon Caprice', 'Madrid', 'Madrid', '914 018 940', NULL, 'info@esteticamoncaprice.com', NULL, 'Mesoestetic', NULL, '2021-06-07 01:14:08', '2021-06-21 23:25:08', NULL, NULL);
INSERT INTO `clients` VALUES (390, '2021-06-16', 'No contact', 'NO', NULL, '2', '.', 'Estética Imabell', 'Madrid', 'Madrid', '914 096 275', NULL, NULL, NULL, 'Eberlin', 'La responsable no está casi nunca en el centro', '2021-06-07 01:23:14', '2021-06-15 23:58:11', NULL, NULL);
INSERT INTO `clients` VALUES (391, '2021-06-07', 'Customer', 'YES', NULL, '2', 'Virginia', 'Virginia Birca Beauty Coach', 'Madrid', 'Madrid', NULL, '602 016 702', NULL, NULL, 'Eberlin', NULL, '2021-06-07 01:26:25', '2021-07-05 01:54:33', NULL, NULL);
INSERT INTO `clients` VALUES (392, '2021-06-09', 'No contact', 'NO', NULL, '2', '.', 'Estética Ana Santos', 'Madrid', 'Madrid', '915 062 288', NULL, NULL, NULL, 'Biologique', 'GerNetic. Babor. Ocupadísima', '2021-06-07 01:31:14', '2021-06-08 23:42:57', NULL, NULL);
INSERT INTO `clients` VALUES (393, '2021-06-07', 'No contact', 'NO', NULL, '2', 'Ana', 'Bioimagen', 'Madrid', 'Madrid', '915 287 744', NULL, NULL, NULL, 'Eberlin', NULL, '2021-06-07 01:34:29', '2021-06-15 23:59:37', NULL, NULL);
INSERT INTO `clients` VALUES (394, '2021-06-21', 'RECALL', 'YES', NULL, '3', 'Lilia', 'Magnolia Medicina Estética', 'Madrid', 'Madrid', '917 593 794', NULL, NULL, NULL, 'Eberlin', 'SkinClinic. Clínica Medicina Estética', '2021-06-07 01:47:30', '2021-06-21 00:42:57', NULL, NULL);
INSERT INTO `clients` VALUES (395, '2021-06-07', 'No contact', 'NO', NULL, '3', 'Silvia', 'Silvia Medina', 'Madrid', 'Madrid', '912 210 752', NULL, NULL, NULL, 'Eberlin', 'La encargada está de baja', '2021-06-07 01:54:07', '2021-06-07 01:54:07', NULL, NULL);
INSERT INTO `clients` VALUES (396, '2021-06-07', 'RECALL', 'YES', NULL, '2', 'Carolina', 'CyC Estética Avanzada', 'Madrid', 'Madrid', '917 087 500', NULL, NULL, NULL, 'Eberlin', NULL, '2021-06-07 02:01:38', '2021-06-07 23:16:13', NULL, NULL);
INSERT INTO `clients` VALUES (397, '2021-06-07', 'No contact', 'NO', NULL, '2', '.', 'Ahora Centro Estético Dileima', 'Madrid', 'Madrid', '917 411 308', NULL, NULL, NULL, 'Eberlin', NULL, '2021-06-07 02:18:49', '2021-06-07 02:18:49', NULL, NULL);
INSERT INTO `clients` VALUES (398, '2021-06-07', 'No contact', 'NO', NULL, '2', '.', 'Centro Médico Estético Innova', 'Majadahonda', 'Madrid', '916 389 732', NULL, NULL, NULL, 'Eberlin', NULL, '2021-06-07 02:21:23', '2021-06-07 02:21:23', NULL, NULL);
INSERT INTO `clients` VALUES (399, '2021-06-07', 'Not interesting', 'NO', NULL, '2', 'Gema', 'Gema Cabañero', 'Madrid', 'Madrid', '913 092 523', NULL, 'estetica@gemacabanero.com', NULL, 'Natura Bisse', 'Pasa poco por el centro', '2021-06-07 02:28:20', '2021-06-10 02:18:32', NULL, NULL);
INSERT INTO `clients` VALUES (400, '2021-06-21', 'RECALL', 'NO', NULL, '2', 'Ainhoa', 'Beewe Beauty and Wellness', 'Madrid', 'Madrid', NULL, '622 927 787', NULL, NULL, 'Eberlin', NULL, '2021-06-07 02:30:26', '2021-06-21 00:42:44', NULL, NULL);
INSERT INTO `clients` VALUES (401, '2021-06-16', 'Not interested', 'NO', NULL, '2', 'Merce', 'EstBellium', 'Leganés', 'Madrid', '911 683 108', NULL, NULL, NULL, 'Eberlin', 'Está todo el día trabajando', '2021-06-07 02:32:32', '2021-06-16 00:08:32', NULL, NULL);
INSERT INTO `clients` VALUES (402, '2021-06-07', 'No contact', 'NO', NULL, '2', '.', 'Estética Maroc', 'Madrid', 'Madrid', '917 956 560', NULL, NULL, NULL, 'Eberlin', NULL, '2021-06-07 02:48:40', '2021-06-07 02:48:40', NULL, NULL);
INSERT INTO `clients` VALUES (403, '2021-06-11', 'Not interested', 'NO', NULL, '2', 'Eva', 'Centro Estético Eva Andu', 'Alcorcón', 'Madrid', '911 428 186', NULL, NULL, NULL, 'Eberlin', 'Le cuesta mucho el cambio y no quiere meter más marcas', '2021-06-07 23:04:03', '2021-06-10 23:27:24', NULL, NULL);
INSERT INTO `clients` VALUES (404, '2021-06-21', 'RECALL', 'YES', NULL, '3', 'Eva', 'Centro Médico Estético Eva Soriano', 'Madrid', 'Madrid', '913 324 122', NULL, NULL, NULL, 'Eberlin', 'Skeyndor', '2021-06-07 23:09:45', '2021-06-21 00:45:39', NULL, NULL);
INSERT INTO `clients` VALUES (405, '2021-06-21', 'RECALL', 'YES', NULL, '2', 'Ana', 'Ana Esteban Estética Avanzada', 'Alcorcón', 'Madrid', NULL, '619 339 841', NULL, NULL, 'Eberlin', 'Simpática', '2021-06-07 23:58:50', '2021-06-21 00:41:23', NULL, NULL);
INSERT INTO `clients` VALUES (406, '2021-06-09', 'RECALL', 'NO', NULL, '3', 'Sara', 'Centro de Estética Sara Guillén', 'Alcorcón', 'Madrid', NULL, '665 874 259', NULL, NULL, 'Eberlin', 'Está de baja maternal. Vuelve el 9 de julio', '2021-06-07 23:59:43', '2021-06-08 23:50:02', NULL, NULL);
INSERT INTO `clients` VALUES (407, '2021-06-08', 'No contact', 'NO', NULL, '2', 'Rocío', 'Rocío Mayoral Estética Avanzada', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-08 00:01:10', '2021-06-08 00:01:58', '2021-06-08 00:01:58', NULL);
INSERT INTO `clients` VALUES (408, '2021-06-22', 'RECALL', 'YES', NULL, '3', 'Gloria', 'Morgana Estética Avanzada', 'Fuenlabrada', 'Madrid', '916 151 152', NULL, NULL, NULL, 'Eberlin', 'Ha pedido precios', '2021-06-08 00:44:19', '2021-06-22 01:33:30', NULL, NULL);
INSERT INTO `clients` VALUES (409, '2021-06-16', 'Not interesting', 'NO', NULL, '3', 'Susi', 'Adai Bienestar y Belleza', 'Rivas Vaciamadrid', 'Madrid', '918 634 136', NULL, NULL, NULL, 'Eberlin', 'Están en un Centro comercial y no se les puede mandar lo que se quiera', '2021-06-08 00:59:47', '2021-06-16 00:15:00', NULL, NULL);
INSERT INTO `clients` VALUES (410, '2021-06-08', 'No contact', 'NO', NULL, '3', 'Deva', 'Centro de Estética Deva', 'Torrejón de Ardoz', 'Madrid', '916 762 720', NULL, NULL, NULL, 'Eberlin', 'Llamarla porque tiene en su web los poductos de Norden Mosse', '2021-06-08 01:04:41', '2021-06-08 01:46:31', NULL, NULL);
INSERT INTO `clients` VALUES (411, '2021-06-08', 'RECALL', 'YES', NULL, '2', 'Rosa', 'Mi Momento Rosa Preciado', 'Madrid', 'Madrid', NULL, '640 371 634', NULL, NULL, 'Eberlin', 'Simpática', '2021-06-08 01:27:10', '2021-06-08 01:38:22', NULL, NULL);
INSERT INTO `clients` VALUES (412, '2021-06-08', 'No contact', 'NO', NULL, '2', 'Paloma', 'Paloma Villaverde', 'Madrid', 'Madrid', NULL, '629 234 094', NULL, NULL, 'Eberlin', 'Clienta', '2021-06-08 01:28:54', '2021-06-08 01:46:46', NULL, NULL);
INSERT INTO `clients` VALUES (413, '2021-06-08', 'No contact', 'NO', NULL, '2', 'Esther', 'Wings Esther Plaza', 'Valdemoro', 'Madrid', NULL, '636 689 341', NULL, NULL, 'Eberlin', NULL, '2021-06-08 01:49:51', '2021-06-08 01:49:51', NULL, NULL);
INSERT INTO `clients` VALUES (414, '2021-06-08', 'No contact', 'NO', NULL, '3', '.', 'Centros Qu', 'Valdemoro', 'Madrid', '911 286 963', NULL, NULL, NULL, 'Eberlin', 'Massada', '2021-06-08 02:03:38', '2021-06-08 02:03:38', NULL, NULL);
INSERT INTO `clients` VALUES (415, '2021-07-01', 'RECALL', 'YES', NULL, '2', 'Ingrid', 'Clínica Estética Ingrid Minaya', 'Valdemoro', 'Madrid', '910 425 869', NULL, NULL, NULL, 'Eberlin', 'Llamar la semana que viene', '2021-06-08 22:47:37', '2021-07-01 22:49:44', NULL, NULL);
INSERT INTO `clients` VALUES (416, '2021-06-21', 'RECALL', 'YES', NULL, '1', 'Olga', 'Olga Fierro Estética', 'Ourense', 'Galicia', '988 371 492', NULL, NULL, NULL, 'Eberlin', 'Massada', '2021-06-09 02:10:17', '2021-06-21 00:45:03', NULL, NULL);
INSERT INTO `clients` VALUES (417, '2021-06-21', 'RECALL', 'YES', NULL, '3', 'Anabel', 'El Tocador de Anabel', 'Ourense', 'Galicia', NULL, '634 650 028', NULL, NULL, 'Eberlin', 'Muy simpática', '2021-06-09 02:54:53', '2021-06-21 00:39:59', NULL, NULL);
INSERT INTO `clients` VALUES (418, '2021-06-09', 'No contact', 'NO', NULL, '2', 'Leticia', 'Leticia Celaá Beauty Lounge', 'Ourense', 'Galicia', '988 252 402', NULL, NULL, NULL, 'Eberlin', NULL, '2021-06-09 03:00:35', '2021-06-10 01:10:40', NULL, NULL);
INSERT INTO `clients` VALUES (419, '2021-06-10', 'No contact', 'NO', NULL, '2', '.', 'Centro de Estética Lauder', 'Bilbao', 'Pais Vasco', '944 110 719', NULL, NULL, NULL, 'Other', 'BDR', '2021-06-09 23:00:44', '2021-06-09 23:00:44', NULL, NULL);
INSERT INTO `clients` VALUES (420, '2021-06-10', 'No contact', 'NO', NULL, '2', '.', 'Conchi Mulas', 'Jávea', 'Valencia', '965 791 644', NULL, NULL, NULL, 'Massada', NULL, '2021-06-09 23:04:00', '2021-06-09 23:04:00', NULL, NULL);
INSERT INTO `clients` VALUES (421, '2021-06-10', 'No contact', 'NO', NULL, '3', 'Macarena', 'Marey Estética Personalizada', 'El Puerto de Santa María', 'Andalucia', NULL, '647 658 600', NULL, NULL, 'Massada', NULL, '2021-06-09 23:06:59', '2021-06-10 22:48:13', NULL, NULL);
INSERT INTO `clients` VALUES (422, '2021-06-10', 'No contact', 'NO', NULL, '3', '.', 'Arrumaco Estética', 'O Carballiño', 'Galicia', NULL, '605 443 254', NULL, NULL, 'Eberlin', 'BDR. Casmara', '2021-06-09 23:11:14', '2021-06-09 23:11:14', NULL, NULL);
INSERT INTO `clients` VALUES (423, '2021-06-21', 'RECALL', 'YES', NULL, '2', 'Ana', 'Centro de Estética Ana Lázaro', 'Jaca', 'Aragon', '974 093 678', NULL, NULL, NULL, 'Eberlin', 'Muy simpática', '2021-06-10 00:26:49', '2021-06-21 00:45:59', NULL, NULL);
INSERT INTO `clients` VALUES (424, '2021-06-10', 'No contact', 'NO', NULL, '3', 'Lidia', 'Bali Belleza', 'Tuy', 'Galicia', '986 906 993', NULL, NULL, NULL, 'Eberlin', NULL, '2021-06-10 00:54:25', '2021-06-18 02:04:28', NULL, NULL);
INSERT INTO `clients` VALUES (425, '2021-06-10', 'No contact', 'NO', NULL, '2', 'Cristina', 'Centro de Estética Avanzada y Antiedad Cristina Sotelo', 'Ourense', 'Galicia', NULL, '687 622 465', NULL, NULL, 'Eberlin', NULL, '2021-06-10 01:09:19', '2021-06-10 01:09:19', NULL, NULL);
INSERT INTO `clients` VALUES (426, '2021-06-10', 'Not interested', 'NO', NULL, '3', 'María', 'María Varó', 'Ourense', 'Galicia', '988 242 596', NULL, NULL, NULL, NULL, 'Tiene exclusividad con Matis', '2021-06-10 01:12:14', '2021-07-07 00:19:27', NULL, NULL);
INSERT INTO `clients` VALUES (427, '2021-06-21', 'RECALL', 'YES', NULL, '2', 'Eva María', 'Esencia Zen', 'Ourense', 'Galicia', '988 608 037', NULL, NULL, NULL, 'Mesoestetic', 'Skeyndor. Ahora mismo está complicada la cosmética en su centro', '2021-06-10 01:20:54', '2021-06-21 00:41:38', NULL, NULL);
INSERT INTO `clients` VALUES (428, '2021-06-16', 'No contact', 'NO', NULL, '3', 'Marina', 'Marina Joga Bioestética', 'Ourense', 'Galicia', '988 245 751', NULL, NULL, NULL, 'Mesoestetic', 'Está por las tardes', '2021-06-10 01:26:18', '2021-06-16 01:06:25', NULL, NULL);
INSERT INTO `clients` VALUES (429, '2021-06-21', 'RECALL', 'YES', NULL, '2', 'Lucía', 'Estética Luma', 'Ourense', 'Galicia', NULL, '607 329 684', NULL, NULL, 'Eberlin', NULL, '2021-06-10 02:31:26', '2021-06-21 00:40:11', NULL, NULL);
INSERT INTO `clients` VALUES (430, '2021-06-21', 'RECALL', 'YES', NULL, '2', 'Isa', 'Estética Chi', 'Pontevedra', 'Galicia', NULL, '649 408 253', NULL, NULL, 'Eberlin', NULL, '2021-06-10 23:10:58', '2021-06-21 00:44:49', NULL, NULL);
INSERT INTO `clients` VALUES (431, '2021-06-11', 'No contact', 'NO', NULL, '2', 'Belén', 'Belén Estética', 'Pontevedra', 'Galicia', NULL, '633 186 394', NULL, NULL, 'Eberlin', NULL, '2021-06-10 23:42:30', '2021-06-10 23:42:30', NULL, NULL);
INSERT INTO `clients` VALUES (432, '2021-06-14', 'Not interesting', 'NO', NULL, '2', 'Tania', 'Tania Costas Estética & Spa', 'Pontevedra', 'Galicia', '886 132 129', NULL, NULL, NULL, 'Eberlin', NULL, '2021-06-11 00:54:45', '2021-06-18 02:06:57', NULL, NULL);
INSERT INTO `clients` VALUES (433, '2021-06-16', 'No contact', 'NO', NULL, '2', '.', 'Centro Estético Esenzia', 'Vigo', 'Galicia', '986 298 552', NULL, NULL, NULL, 'Eberlin', NULL, '2021-06-11 01:49:25', '2021-06-16 01:12:28', NULL, NULL);
INSERT INTO `clients` VALUES (434, '2021-06-21', 'RECALL', 'YES', NULL, '2', 'Lorena', 'Lorena Barcia', 'Vigo', 'Galicia', NULL, '633 537 223', NULL, NULL, 'Eberlin', NULL, '2021-06-11 02:02:24', '2021-06-21 00:42:12', NULL, NULL);
INSERT INTO `clients` VALUES (435, '2021-06-16', 'RECALL', 'NO', NULL, '2', 'Dori', 'Figursan', 'Pontevedra', 'Galicia', '986 865 283', NULL, 'clinica@figursan.com', NULL, 'Eberlin', 'Alérgica a muchas cosas, se le ha enviado el INCI', '2021-06-11 02:09:13', '2021-06-21 00:11:50', NULL, NULL);
INSERT INTO `clients` VALUES (436, '2021-06-11', 'No contact', 'NO', NULL, '3', 'Karina', 'Karina Kova', 'Pontevedra', 'Galicia', '986 101 110', NULL, NULL, NULL, 'Eberlin', NULL, '2021-06-11 02:28:23', '2021-06-11 02:28:23', NULL, NULL);
INSERT INTO `clients` VALUES (437, '2021-06-11', 'No contact', 'NO', NULL, '2', 'Neli', 'Neli Paredes Centro de Estética', 'Pontevedra', 'Galicia', '986 302 437', NULL, NULL, NULL, 'Mesoestetic', 'Eberlin', '2021-06-11 02:30:57', '2021-06-14 00:34:47', NULL, NULL);
INSERT INTO `clients` VALUES (438, '2021-06-21', 'RECALL', 'YES', NULL, '2', 'Remedios', 'Centro de Estética Susana Soliño', 'Pontevedra', 'Galicia', '986 302 721', NULL, NULL, NULL, 'Eberlin', 'Tiene la piel muy sensible', '2021-06-11 02:34:47', '2021-06-21 00:42:27', NULL, NULL);
INSERT INTO `clients` VALUES (439, '2021-06-21', 'RECALL', 'YES', NULL, '2', 'Sofia', 'Sofía Mosquera Estética & Bienestar', 'A Coruña', 'Galicia', '981 104 905', NULL, NULL, NULL, 'Other', 'Matis', '2021-06-11 02:40:00', '2021-06-21 00:41:59', NULL, NULL);
INSERT INTO `clients` VALUES (440, '2021-06-11', 'No contact', 'NO', NULL, '2', 'Conchy', 'Conchy Pintos', 'Sanxenxo', 'Galicia', '986 690 898', NULL, NULL, NULL, 'Eberlin', NULL, '2021-06-11 02:41:47', '2021-06-11 02:41:47', NULL, NULL);
INSERT INTO `clients` VALUES (441, '2021-06-21', 'RECALL', 'YES', NULL, '3', 'Yasmina', 'Yasmina Villamel', 'Barrantes', 'Galicia', '986 710 414', NULL, NULL, NULL, 'Eberlin', NULL, '2021-06-14 00:44:04', '2021-06-21 00:44:19', NULL, NULL);
INSERT INTO `clients` VALUES (442, '2021-06-17', 'No contact', 'NO', NULL, '3', 'Irene', 'Dermabell', 'Segovia', 'Castilla Leon', NULL, '648 963 294', NULL, NULL, 'Eberlin', 'Está mucho fuera del centro haciendo papeleo', '2021-06-14 22:46:48', '2021-06-17 02:22:47', NULL, NULL);
INSERT INTO `clients` VALUES (443, '2021-06-15', 'No contact', 'NO', NULL, '2', 'Mailo', 'Atenea Estética', 'Segovia', 'Castilla Leon', '921 461 936', NULL, NULL, NULL, 'Eberlin', NULL, '2021-06-14 22:49:30', '2021-06-14 22:49:30', NULL, NULL);
INSERT INTO `clients` VALUES (444, '2021-06-21', 'RECALL', 'YES', NULL, '2', 'Adela', 'Body Silk', 'Alcobendas', 'Madrid', NULL, '643 341 091', NULL, NULL, 'Mesoestetic', NULL, '2021-06-15 23:00:09', '2021-06-21 00:40:33', NULL, NULL);
INSERT INTO `clients` VALUES (445, '2021-06-21', 'RECALL', 'YES', NULL, '2', 'Estefanía', 'AKISI Centro de Estética', 'Coslada', 'Madrid', NULL, '643 045 284', NULL, NULL, 'Other', NULL, '2021-06-15 23:03:04', '2021-06-21 00:40:46', NULL, NULL);
INSERT INTO `clients` VALUES (446, '2021-06-16', 'Not interested', 'NO', NULL, '3', '.', 'Woman&Man', 'Coslada', 'Madrid', '916 743 606', NULL, NULL, NULL, 'Other', 'Está surtida y no quiere meter nuevas marcas', '2021-06-15 23:20:14', '2021-06-16 00:20:57', NULL, NULL);
INSERT INTO `clients` VALUES (447, '2021-06-16', 'No contact', 'NO', NULL, '2', 'Diana', 'Diana Montoya Estética', 'Madrid', 'Madrid', '917 047 509', NULL, NULL, NULL, 'Biologique', 'Natura Bissé', '2021-06-16 00:24:16', '2021-06-16 00:38:23', NULL, NULL);
INSERT INTO `clients` VALUES (448, '2021-06-16', 'RECALL', 'NO', NULL, '1', 'Laura', 'Belessa Aesthetic', 'Madrid', 'Madrid', NULL, '667 594 769', NULL, NULL, NULL, 'Llamar para septiembre', '2021-06-16 00:27:46', '2021-06-16 00:27:46', NULL, NULL);
INSERT INTO `clients` VALUES (449, '2021-06-16', 'No contact', 'NO', NULL, '2', '.', 'Felicidad Carrera', 'Madrid', 'Madrid', '914 351 724', NULL, NULL, NULL, 'Other', NULL, '2021-06-16 00:30:44', '2021-06-22 01:42:28', '2021-06-22 01:42:28', NULL);
INSERT INTO `clients` VALUES (450, '2021-06-16', 'Not interested', 'NO', NULL, '2', 'Paloma', 'Paloma Molero', 'Madrid', 'Madrid', '914 294 686', NULL, NULL, NULL, 'Other', NULL, '2021-06-16 00:35:17', '2021-06-16 00:35:17', NULL, NULL);
INSERT INTO `clients` VALUES (451, '2021-06-17', 'No contact', 'NO', NULL, '2', '.', 'Mandala', 'Barcelona', 'Cataluna', '932 229 044', NULL, NULL, NULL, 'Other', 'Kobido. Abre solo por las tardes', '2021-06-16 23:27:16', '2021-06-16 23:28:53', NULL, NULL);
INSERT INTO `clients` VALUES (452, '2021-06-17', 'No contact', 'NO', NULL, '2', 'Núria', 'Therapy&Aesthetics Núria Bayarre', 'Barcelona', 'Cataluna', '934 535 222', NULL, NULL, NULL, 'Thalgo', NULL, '2021-06-16 23:29:54', '2021-06-16 23:29:54', NULL, NULL);
INSERT INTO `clients` VALUES (453, '2021-06-17', 'No contact', 'NO', NULL, '2', '.', 'TEN Clínica', 'Barcelona', 'Cataluna', NULL, '691 384 443', NULL, NULL, 'Eberlin', 'BDR', '2021-06-16 23:31:42', '2021-06-16 23:31:42', NULL, NULL);
INSERT INTO `clients` VALUES (454, '2021-06-17', 'Not interested', 'NO', NULL, '3', '.', 'Centro de Estética Lidia Sánchez', 'Barcelona', 'Cataluna', NULL, '660 457 019', NULL, NULL, 'Natura Bisse', NULL, '2021-06-16 23:33:14', '2021-06-17 00:10:35', NULL, NULL);
INSERT INTO `clients` VALUES (455, '2021-06-17', 'No contact', 'NO', NULL, '2', '.', 'Om Estética Avanzada', 'Barcelona', 'Cataluna', NULL, '666 310 811', NULL, NULL, 'Mesoestetic', NULL, '2021-06-16 23:44:08', '2021-06-16 23:44:08', NULL, NULL);
INSERT INTO `clients` VALUES (456, '2021-06-17', 'No contact', 'NO', NULL, '3', '.', 'Cinc Estética', 'Barcelona', 'Cataluna', '932 726 500', NULL, NULL, NULL, 'Thalgo', NULL, '2021-06-16 23:46:22', '2021-06-16 23:46:22', NULL, NULL);
INSERT INTO `clients` VALUES (457, '2021-06-17', 'No contact', 'NO', NULL, '3', 'María', 'María Rodríguez Estética Avanzada', 'Barcelona', 'Cataluna', '934 869 056', NULL, NULL, NULL, 'Germaine', NULL, '2021-06-16 23:47:41', '2021-06-16 23:47:41', NULL, NULL);
INSERT INTO `clients` VALUES (458, '2021-06-17', 'No contact', 'NO', NULL, '2', '.', 'Centro de Estética Carme Martí', 'Barcelona', 'Cataluna', '931 798 274', NULL, NULL, NULL, 'Natura Bisse', 'Tiene muchas marcas.', '2021-06-16 23:49:41', '2021-06-16 23:49:41', NULL, NULL);
INSERT INTO `clients` VALUES (459, '2021-06-21', 'RECALL', 'YES', NULL, '3', 'Emma', 'Inosens Estética Avanzada', 'Barcelona', 'Cataluna', '934 001 074', NULL, NULL, NULL, 'Other', 'Indiba', '2021-06-16 23:50:52', '2021-06-21 00:39:46', NULL, NULL);
INSERT INTO `clients` VALUES (460, '2021-06-17', 'No contact', 'NO', NULL, '2', '.', 'Masbella', 'Barcelona', 'Cataluna', '931 934 230', NULL, 'lidia@eresmasbella.com', NULL, NULL, 'Alqvimia. RF', '2021-06-16 23:52:16', '2021-06-17 02:05:29', NULL, NULL);
INSERT INTO `clients` VALUES (461, '2021-06-17', 'No contact', 'NO', NULL, '2', 'Cristina', 'Amarama by Cristina Coma', 'Barcelona', 'Cataluna', '934 103 003', NULL, NULL, NULL, 'Mesoestetic', 'Homeópata¿?', '2021-06-16 23:54:25', '2021-06-16 23:54:25', NULL, NULL);
INSERT INTO `clients` VALUES (462, '2021-06-17', 'No contact', 'NO', NULL, '2', 'Susana', 'SAF Estética', 'Barcelona', 'Cataluna', NULL, '659 668 617', NULL, NULL, 'Biologique', 'Pasa poco por el centro', '2021-06-16 23:55:28', '2021-06-17 02:03:15', NULL, NULL);
INSERT INTO `clients` VALUES (463, '2021-06-17', 'No contact', 'NO', NULL, '3', '.', 'Ebody Beauty Center', 'Barcelona', 'Cataluna', NULL, '662 650 857', NULL, NULL, 'Other', 'BDR', '2021-06-16 23:57:09', '2021-06-17 02:00:30', '2021-06-17 02:00:30', NULL);
INSERT INTO `clients` VALUES (464, '2021-06-17', 'No contact', 'NO', NULL, '3', '.', 'Elixir Estética', 'Barcelona', 'Cataluna', '931 795 814', NULL, NULL, NULL, 'Eberlin', 'RF. Llamar otro día porque la responsable no está', '2021-06-16 23:58:03', '2021-06-17 01:57:18', NULL, NULL);
INSERT INTO `clients` VALUES (465, '2021-06-17', 'No contact', 'NO', NULL, '2', 'Carmen', 'Carmen Secrets', 'Barcelona', 'Cataluna', '932 224 994', NULL, NULL, NULL, 'Massada', NULL, '2021-06-17 00:04:46', '2021-06-17 00:04:46', NULL, NULL);
INSERT INTO `clients` VALUES (466, '2021-06-17', 'No contact', 'NO', NULL, '3', 'Sandra', 'Sandra Castilla Estética Natural', 'Barcelona', 'Cataluna', NULL, '639 914 910', NULL, NULL, 'Other', 'Kobido', '2021-06-17 00:07:14', '2021-06-17 00:07:14', NULL, NULL);
INSERT INTO `clients` VALUES (467, '2021-06-17', 'No contact', 'NO', NULL, '3', '.', 'Estética Nenúfar', 'Barcelona', 'Cataluna', NULL, '639 083 065', NULL, NULL, 'Other', 'RF', '2021-06-17 00:08:33', '2021-06-17 00:08:33', NULL, NULL);
INSERT INTO `clients` VALUES (468, '2021-06-17', 'No contact', 'NO', NULL, '2', '.', 'Nimfa Estética', 'Barcelona', 'Cataluna', NULL, '661 994 496', NULL, NULL, 'Other', 'Klapp. RF', '2021-06-17 01:56:38', '2021-06-17 01:56:38', NULL, NULL);
INSERT INTO `clients` VALUES (469, '2021-06-17', 'No contact', 'NO', NULL, '2', 'Yolanda', 'Clínica de Medicina Estética Yolanda Albelda', 'Santiago de Compostela', 'Galicia', '981 561 625', NULL, 'clinica@yolandaalbelda.com', NULL, 'Other', 'RF. Está de viaje y tiene la agenda ocupadísima', '2021-06-17 02:30:46', '2021-06-17 23:25:38', NULL, NULL);
INSERT INTO `clients` VALUES (470, '2021-06-17', 'No contact', 'NO', NULL, '2', 'Patricia', 'Centro de belleza Patricia Domínguez', 'Santiago de Compostela', 'Galicia', '981 585 872', NULL, NULL, NULL, 'Mesoestetic', NULL, '2021-06-17 02:33:19', '2021-06-17 02:33:19', NULL, NULL);
INSERT INTO `clients` VALUES (471, '2021-06-22', 'RECALL', 'YES', NULL, '2', 'Paz', 'Instituto de Belleza Paz Castro', 'Santiago de Compostela', 'Galicia', '981 573 126', NULL, NULL, NULL, 'Biologique', 'BDR', '2021-06-17 02:45:21', '2021-06-22 00:23:56', NULL, NULL);
INSERT INTO `clients` VALUES (472, '2021-06-21', 'RECALL', 'YES', NULL, '2', 'Luice', 'Zaitez Estética Avanzada', 'Santiago de Compostela', 'Galicia', '981 943 018', NULL, NULL, NULL, 'Eberlin', 'Simpática', '2021-06-17 02:46:45', '2021-06-21 00:39:11', NULL, NULL);
INSERT INTO `clients` VALUES (473, '2021-06-17', 'Not interested', 'NO', NULL, '2', 'Maria Victoria', 'Centro de Estética Maví', 'Santiago de Compostela', 'Galicia', '981 599 524', NULL, NULL, NULL, NULL, 'Indiba. No quiere meter marcas nuevas (voz de mayor)', '2021-06-17 02:49:10', '2021-06-17 23:35:13', NULL, NULL);
INSERT INTO `clients` VALUES (474, '2021-06-21', 'RECALL', 'YES', NULL, '2', 'Noelia', 'Le Mulier', 'Santiago de Compostela', 'Galicia', NULL, '622 457 881', NULL, NULL, 'Other', 'Indiba. Simpática', '2021-06-17 02:50:22', '2021-06-21 00:38:28', NULL, NULL);
INSERT INTO `clients` VALUES (475, '2021-06-30', 'No contact', 'NO', NULL, '2', 'Loly', 'Náyade', 'Santiago de Compostela', 'Galicia', '981 584 367', NULL, NULL, NULL, 'Mesoestetic', 'Tiene medicina estética. Llamar en otro momento', '2021-06-17 02:52:50', '2021-06-30 01:08:11', NULL, NULL);
INSERT INTO `clients` VALUES (476, '2021-06-17', 'No contact', 'NO', NULL, '2', '.', 'La Cura Vigo', 'Vigo', 'Galicia', '986 437 817', NULL, NULL, NULL, 'Mesoestetic', 'Biologique Recherche', '2021-06-17 02:55:19', '2021-06-17 02:55:19', NULL, NULL);
INSERT INTO `clients` VALUES (477, '2021-06-21', 'RECALL', 'YES', NULL, '2', 'Paquita', 'Salón de belleza Paquita', 'Vigo', 'Galicia', '986 212 821', NULL, NULL, NULL, 'Mesoestetic', 'Indiba, Natura Bissé', '2021-06-17 03:00:28', '2021-06-21 00:39:29', NULL, NULL);
INSERT INTO `clients` VALUES (478, '2021-06-18', 'No contact', 'NO', NULL, '2', 'Aury', 'Aury Camiño-Lilas', 'Vigo', 'Galicia', '986 225 634', NULL, NULL, NULL, 'Natura Bisse', 'GerNetic', '2021-06-17 22:55:22', '2021-06-17 22:55:22', NULL, NULL);
INSERT INTO `clients` VALUES (479, '2021-06-22', 'RECALL', 'YES', NULL, '2', 'Loli', 'Loli Francos', 'Vigo', 'Galicia', '886 122 513', NULL, NULL, NULL, 'Other', 'BDR. Indiba', '2021-06-17 22:57:49', '2021-06-21 23:26:52', NULL, NULL);
INSERT INTO `clients` VALUES (480, '2021-06-18', 'No contact', 'NO', NULL, '2', '.', 'Bellelsa', 'A Coruña', 'Galicia', '881 894 971', NULL, NULL, NULL, 'Eberlin', NULL, '2021-06-17 23:00:23', '2021-06-17 23:00:23', NULL, NULL);
INSERT INTO `clients` VALUES (481, '2021-06-18', 'Not interesting', 'NO', NULL, '2', '.', 'Loel', 'A Coruña', 'Galicia', '981 246 404', NULL, NULL, NULL, 'Other', 'Kobido y RF. El responsable es un poco maled.', '2021-06-17 23:05:15', '2021-06-17 23:43:20', NULL, NULL);
INSERT INTO `clients` VALUES (482, '2021-06-18', 'Not interested', 'NO', NULL, '2', '.', 'Lya Estética', 'A Coruña', 'Galicia', '881 067 013', NULL, NULL, NULL, 'Biologique', 'Es centro autorizado Biologique', '2021-06-17 23:07:32', '2021-06-17 23:07:32', NULL, NULL);
INSERT INTO `clients` VALUES (483, '2021-06-18', 'No contact', 'NO', NULL, '2', '.', 'Lipoout', 'A Coruña', 'Galicia', '881 242 909', NULL, NULL, NULL, 'Mesoestetic', 'Massada. Está por las tardes', '2021-06-17 23:10:55', '2021-06-17 23:10:55', NULL, NULL);
INSERT INTO `clients` VALUES (484, '2021-06-22', 'RECALL', 'YES', NULL, '2', 'Noe', 'Noe Ferreño Beauty Concept', 'A Coruña', 'Galicia', '881 888 215', NULL, NULL, NULL, 'Other', 'Indiba', '2021-06-17 23:14:20', '2021-06-22 00:58:45', NULL, NULL);
INSERT INTO `clients` VALUES (485, '2021-06-18', 'No contact', 'NO', NULL, '2', '.', 'Ohh la là', 'A Coruña', 'Galicia', '981 267 537', NULL, NULL, NULL, 'Other', 'Indiba', '2021-06-17 23:18:13', '2021-06-17 23:18:13', NULL, NULL);
INSERT INTO `clients` VALUES (486, '2021-06-28', 'No contact', 'NO', NULL, '2', '.', 'IN\'STETIC', 'Ferrol', 'Galicia', '981 312 861', NULL, NULL, NULL, 'Mesoestetic', 'Indiba. Está disponible al mediodía', '2021-06-17 23:48:05', '2021-06-28 02:24:50', NULL, NULL);
INSERT INTO `clients` VALUES (487, '2021-06-18', 'Not interesting', 'NO', NULL, '2', '.', 'Idavcare Bitácora', 'Ferrol', 'Galicia', '881 953 645', NULL, NULL, NULL, 'Natura Bisse', 'Lo lleva Farmadismo', '2021-06-17 23:49:40', '2021-06-18 00:46:07', NULL, NULL);
INSERT INTO `clients` VALUES (488, '2021-06-21', 'RECALL', 'YES', NULL, '2', 'Cris', 'Cris Gómez Centro de Estética', 'Ourense', 'Galicia', '988 616 002', NULL, NULL, NULL, 'Other', 'RF. Simpática', '2021-06-17 23:57:00', '2021-06-21 00:38:59', NULL, NULL);
INSERT INTO `clients` VALUES (489, '2021-06-18', 'Not interested', 'NO', NULL, '2', '.', 'Casco Bello', 'Ourense', 'Galicia', '988 223 233', NULL, NULL, NULL, 'Other', 'Indiba.', '2021-06-18 00:08:40', '2021-06-18 00:10:29', NULL, NULL);
INSERT INTO `clients` VALUES (490, '2021-06-21', 'RECALL', 'YES', NULL, '2', '.', 'Sheyluz', 'Lugo', 'Galicia', NULL, '674 089 569', NULL, NULL, 'Biologique', NULL, '2021-06-18 00:14:14', '2021-06-21 00:38:09', NULL, NULL);
INSERT INTO `clients` VALUES (491, '2021-06-28', 'RECALL', 'YES', NULL, '2', 'Iria', 'Iria López', 'Lugo', 'Galicia', '982 229 659', NULL, NULL, NULL, 'Mesoestetic', 'GerNetic. SkinClinic. Dr.Baumann', '2021-06-18 00:17:31', '2021-06-28 02:28:46', NULL, NULL);
INSERT INTO `clients` VALUES (492, '2021-06-18', 'No contact', 'NO', NULL, '2', 'Marisa', 'Marisa Fernández', 'Lugo', 'Galicia', '982 255 458', NULL, NULL, NULL, 'Other', 'Indiba', '2021-06-18 00:20:56', '2021-06-18 00:20:56', NULL, NULL);
INSERT INTO `clients` VALUES (493, '2021-06-21', 'RECALL', 'YES', NULL, '2', 'Emma/Leticia', 'Mi Momento Beauty', 'Arteixo', 'Galicia', NULL, '604 062 337', NULL, NULL, 'Eberlin', NULL, '2021-06-18 00:23:22', '2021-06-21 00:59:06', NULL, NULL);
INSERT INTO `clients` VALUES (494, '2021-06-18', 'No contact', 'NO', NULL, '2', 'Marisa', 'Marisa Blanco Estética Avanzada', 'Arteixo', 'Galicia', NULL, '667 808 874', NULL, NULL, 'Other', 'Enviar INCI', '2021-06-18 00:44:26', '2021-06-18 01:10:03', NULL, NULL);
INSERT INTO `clients` VALUES (495, '2021-06-18', 'Not interesting', 'NO', NULL, '2', 'Erica', 'Beauty Room by Erica Fernández', 'Arteixo', 'Galicia', '881 873 500', NULL, NULL, NULL, 'Other', NULL, '2021-06-18 00:51:12', '2021-06-18 00:51:12', NULL, NULL);
INSERT INTO `clients` VALUES (496, '2021-06-22', 'No contact', 'NO', NULL, '2', '.', 'Be Attitude', 'Arteixo', 'Galicia', '981 909 019', NULL, NULL, NULL, 'Mesoestetic', 'Natura Bissé, Biologique, Dr.Baumann. Está de días libres', '2021-06-18 00:54:01', '2021-06-22 00:52:14', NULL, NULL);
INSERT INTO `clients` VALUES (497, '2021-06-18', 'No contact', 'NO', NULL, '2', '.', 'Nova Estetic Marin', 'Marin', 'Galicia', '986 881 147', NULL, NULL, NULL, 'Mesoestetic', 'Llamar por la tarde', '2021-06-18 01:01:09', '2021-06-18 01:01:09', NULL, NULL);
INSERT INTO `clients` VALUES (498, '2021-06-22', 'RECALL', 'YES', NULL, '2', 'Rocío', 'Centro de Bienestar y Belleza Rocío Rodríguez', 'Narón', 'Galicia', '881 933 799', NULL, NULL, NULL, 'Mesoestetic', 'Natura Bissé, GerNetic, BDR. Ha pedido precios', '2021-06-18 01:04:20', '2021-06-22 01:36:33', NULL, NULL);
INSERT INTO `clients` VALUES (499, '2021-06-22', 'RECALL', 'YES', NULL, NULL, 'Yessica', 'Centro Estético Yessica Rodríguez', 'Narón', 'Galicia', NULL, '633 276 733', NULL, NULL, 'Other', 'RF', '2021-06-18 01:09:39', '2021-06-21 23:27:14', NULL, NULL);
INSERT INTO `clients` VALUES (500, '2021-06-18', 'No contact', 'NO', NULL, '2', 'Marina', 'MF Estética', 'Milladoiro', 'Galicia', NULL, '639 533 962', NULL, NULL, 'Natura Bisse', 'Massada. Indiba', '2021-06-18 01:38:03', '2021-06-18 01:38:03', NULL, NULL);
INSERT INTO `clients` VALUES (501, '2021-06-21', 'RECALL', 'YES', NULL, '2', 'Eva', 'Estética Eva Cives', 'Milladoiro', 'Galicia', NULL, '717 702 595', 'eva.cives@gmail.com', NULL, 'Other', 'Indiba. GerNetic', '2021-06-18 01:44:23', '2021-06-21 01:37:16', NULL, NULL);
INSERT INTO `clients` VALUES (502, '2021-06-22', 'RECALL', 'YES', NULL, '2', 'Eva', 'Kenkoo', 'O Milladoiro', 'Galicia', NULL, '628 378 636', NULL, NULL, 'Other', 'Phyt\'s. Indiba', '2021-06-18 01:50:30', '2021-06-28 02:07:15', NULL, NULL);
INSERT INTO `clients` VALUES (503, '2021-06-18', 'No contact', 'NO', NULL, '2', 'Isabel', 'Isi Estética', 'Oleiros', 'Galicia', '981 110 080', NULL, NULL, NULL, 'Mesoestetic', NULL, '2021-06-18 01:53:09', '2021-06-18 01:53:09', NULL, NULL);
INSERT INTO `clients` VALUES (504, '2021-06-22', 'RECALL', 'YES', NULL, '2', 'Montserrat', 'Vedraesthetica', 'Pontevedra', 'Galicia', '986 104 565', NULL, NULL, NULL, 'Mesoestetic', 'BDR', '2021-06-18 01:58:49', '2021-06-21 23:23:27', NULL, NULL);
INSERT INTO `clients` VALUES (505, '2021-06-21', 'RECALL', 'YES', NULL, '2', 'Mirian', 'Estética Mirian Sanmartin', 'Pontevedra', 'Galicia', '986 102 121', NULL, NULL, NULL, 'Other', 'Kobido', '2021-06-18 02:03:20', '2021-06-21 00:37:34', NULL, NULL);
INSERT INTO `clients` VALUES (506, '2021-07-07', 'Almost customer', 'YES', NULL, '2', 'Beatriz', 'Ilovmi', 'Pontevedra', 'Galicia', '986 104 491', '679 716 920', NULL, NULL, 'Other', 'Muy simpática', '2021-06-18 02:06:36', '2021-07-07 01:01:04', NULL, NULL);
INSERT INTO `clients` VALUES (507, '2021-06-22', 'No contact', 'NO', NULL, '2', '.', 'B&C Estética Integral', 'Ribeira', 'Galicia', '981 972 161', NULL, NULL, NULL, NULL, 'Indiba. Está por las tardes', '2021-06-18 02:19:08', '2021-06-22 00:42:37', NULL, NULL);
INSERT INTO `clients` VALUES (508, '2021-06-22', 'RECALL', 'YES', NULL, '2', 'Sara', 'Nácar by Sara Sevilla', 'Ribeira', 'Galicia', NULL, '670 824 430', NULL, NULL, 'Germaine', 'Indiba', '2021-06-18 02:20:36', '2021-06-22 00:41:02', NULL, NULL);
INSERT INTO `clients` VALUES (509, '2021-06-22', 'RECALL', 'YES', NULL, '2', 'Jessica', 'CÒCCOLE', 'Baiona', 'Galicia', NULL, '659 964 980', NULL, NULL, 'Other', 'Indiba', '2021-06-18 02:23:04', '2021-06-21 23:54:54', NULL, NULL);
INSERT INTO `clients` VALUES (510, '2021-06-18', 'No contact', 'NO', NULL, '2', '.', 'Hedra', 'Cangas', 'Galicia', '986 305 383', NULL, NULL, NULL, 'Other', 'Dr.Baumann. Está por las tardes', '2021-06-18 02:25:12', '2021-06-21 23:59:54', NULL, NULL);
INSERT INTO `clients` VALUES (511, '2021-06-22', 'RECALL', 'YES', NULL, '2', 'Jennifer', 'SV Estética', 'Betanzos', 'Galicia', '881 161 731', NULL, NULL, NULL, 'Other', 'RF', '2021-06-18 02:27:21', '2021-06-22 00:36:11', NULL, NULL);
INSERT INTO `clients` VALUES (512, '2021-06-18', 'No contact', 'NO', NULL, '2', '.', 'Lolita\'s', 'Betanzos', 'Galicia', '881 980 950', NULL, NULL, NULL, 'Other', 'BDR', '2021-06-18 02:28:58', '2021-06-18 02:28:58', NULL, NULL);
INSERT INTO `clients` VALUES (513, '2021-06-18', 'No contact', 'NO', NULL, '2', 'Gema', 'Gema Chantada', 'Cambados', 'Galicia', '986 543 545', NULL, NULL, NULL, 'Other', NULL, '2021-06-18 02:32:27', '2021-06-18 02:32:27', NULL, NULL);
INSERT INTO `clients` VALUES (514, '2021-06-18', 'No contact', 'NO', NULL, '2', 'Lina', 'Lina Costa', 'Cambados', 'Galicia', '986 543 688', NULL, NULL, NULL, NULL, 'Indiba', '2021-06-18 02:34:04', '2021-06-18 02:34:04', NULL, NULL);
INSERT INTO `clients` VALUES (515, '2021-06-18', 'No contact', 'NO', NULL, '2', '.', 'Centro de Estética Soleares', 'Cambados', 'Galicia', NULL, '604 002 562', NULL, NULL, 'Mesoestetic', NULL, '2021-06-18 02:50:10', '2021-06-18 02:50:10', NULL, NULL);
INSERT INTO `clients` VALUES (516, '2021-06-22', 'RECALL', 'YES', NULL, '2', 'Noelia', 'Bella Donna', 'Viveiro', 'Galicia', NULL, '622 121 486', NULL, NULL, 'Mesoestetic', 'Indiba', '2021-06-18 02:52:12', '2021-06-21 23:23:42', NULL, NULL);
INSERT INTO `clients` VALUES (517, '2021-06-22', 'RECALL', 'YES', NULL, '2', 'Natalia', 'Nueva Belleza', 'O Porriño', 'Galicia', '986 330 601', NULL, NULL, NULL, 'Other', 'Indiba', '2021-06-18 02:54:07', '2021-06-21 23:39:35', NULL, NULL);
INSERT INTO `clients` VALUES (518, '2021-06-21', 'No contact', 'NO', NULL, '2', 'Marisa', 'Marisa Pérez Estética', 'O Porriño', 'Galicia', '986 331 255', NULL, NULL, NULL, 'Eberlin', 'Ahora no lo va a probar, llamar en septiembre', '2021-06-18 02:55:17', '2021-06-21 01:27:56', NULL, NULL);
INSERT INTO `clients` VALUES (519, '2021-06-22', 'RECALL', 'YES', NULL, '2', 'Suzeli', 'Miracle-Espacio belleza y bienestar', 'O Porriño', 'Galicia', '886 137 681', NULL, NULL, NULL, 'Mesoestetic', 'Indiba', '2021-06-18 02:56:29', '2021-06-21 23:23:07', NULL, NULL);
INSERT INTO `clients` VALUES (520, '2021-06-30', 'RECALL', 'YES', NULL, '2', 'Lucía', 'Centro de Estética Azahar', 'Gondomar', 'Galicia', NULL, '633 161 114', NULL, NULL, 'Mesoestetic', 'Simpática', '2021-06-18 02:58:59', '2021-06-30 01:32:34', NULL, NULL);
INSERT INTO `clients` VALUES (521, '2021-06-21', 'Not interested', 'NO', NULL, '2', 'Pilar', 'Centro de belleza y estética Pilar Rodríguez', 'Ponteareas', 'Galicia', '986 660 037', NULL, NULL, NULL, 'Natura Bisse', 'De momento está satisfecha con lo que tiene (voz de mayor)', '2021-06-18 03:00:19', '2021-06-21 01:13:58', NULL, NULL);
INSERT INTO `clients` VALUES (522, '2021-06-21', 'No contact', 'NO', NULL, '2', 'MªJosé', 'Belia Clinic', 'Burgos', 'Castilla Leon', NULL, '617 489 309', NULL, NULL, 'Mesoestetic', NULL, '2021-06-20 23:04:46', '2021-06-20 23:04:46', NULL, NULL);
INSERT INTO `clients` VALUES (523, '2021-06-22', 'RECALL', 'YES', NULL, '2', 'Sheila', 'Sheila de Hoyos Estética Avanzada', 'Valladolid', 'Castilla Leon', NULL, '677 196 346', NULL, NULL, 'Mesoestetic', NULL, '2021-06-20 23:12:24', '2021-06-21 23:24:49', NULL, NULL);
INSERT INTO `clients` VALUES (524, '2021-06-22', 'RECALL', 'YES', NULL, '2', 'Elena', 'Elena Somoano Estética Avanzada', 'Oviedo', 'Asturias', NULL, '693 514 679', NULL, NULL, 'Mesoestetic', NULL, '2021-06-20 23:16:06', '2021-06-21 23:33:53', NULL, NULL);
INSERT INTO `clients` VALUES (525, '2021-06-24', 'RECALL', 'YES', NULL, '2', 'Mar', 'NIUNO Wellness Life', 'A Coruña', 'Galicia', '881 886 551', '656 429 006', NULL, NULL, 'Mesoestetic', 'Muy simpática', '2021-06-20 23:20:04', '2021-06-25 02:09:49', NULL, NULL);
INSERT INTO `clients` VALUES (526, '2021-06-21', 'Not interested', 'NO', NULL, '2', 'María', 'Centro de Estética María Reino', 'Noia', 'Galicia', '981 821 454', NULL, NULL, NULL, 'Mesoestetic', 'No le interesa (me colgó)', '2021-06-20 23:22:11', '2021-06-21 01:20:41', NULL, NULL);
INSERT INTO `clients` VALUES (527, '2021-06-22', 'RECALL', 'YES', NULL, NULL, '.', 'Centro de Estética Isabel Escola', 'Vigo', 'Galicia', '986 275 841', NULL, NULL, NULL, 'Mesoestetic', NULL, '2021-06-20 23:24:54', '2021-06-21 23:24:00', NULL, NULL);
INSERT INTO `clients` VALUES (528, '2021-06-22', 'RECALL', 'YES', NULL, '2', 'Cristina', 'Cristina Rodríguez Salud y Belleza', 'Vigo', 'Galicia', '986 207 479', NULL, NULL, NULL, 'Mesoestetic', NULL, '2021-06-20 23:26:38', '2021-06-21 23:24:36', NULL, NULL);
INSERT INTO `clients` VALUES (529, '2021-06-21', 'No contact', 'NO', NULL, '2', '.', 'Salón de belleza Victoria', 'Noia', 'Galicia', '981 824 234', NULL, NULL, NULL, 'Mesoestetic', 'Skeyndor. Llamar la semana que viene', '2021-06-20 23:29:10', '2021-06-21 00:36:37', NULL, NULL);
INSERT INTO `clients` VALUES (530, '2021-06-30', 'No contact', 'NO', NULL, '1', '.', 'Konema Estetik', 'Reus', 'Cataluna', '877 011 694', NULL, NULL, NULL, 'Mesoestetic', 'Llamar en otro momento', '2021-06-22 01:47:38', '2021-06-30 01:08:56', NULL, NULL);
INSERT INTO `clients` VALUES (531, '2021-06-23', 'RECALL', 'YES', NULL, '2', 'Sofía', 'Estética Gloria García Pereda', 'Zaragoza', 'Aragon', '976 564 402', NULL, NULL, NULL, 'Mesoestetic', NULL, '2021-06-22 22:52:52', '2021-06-23 01:06:11', NULL, NULL);
INSERT INTO `clients` VALUES (532, '2021-06-23', 'RECALL', 'YES', NULL, '2', 'Michelle', 'Mains', 'Zaragoza', 'Aragon', '976 205 406', NULL, NULL, NULL, 'Mesoestetic', 'Massada', '2021-06-22 22:54:02', '2021-06-23 01:45:12', NULL, NULL);
INSERT INTO `clients` VALUES (533, '2021-06-23', 'No contact', 'NO', NULL, '2', '.', 'Bouquet Centre D\'Estética', 'Reus', 'Cataluna', '977 328 219', NULL, NULL, NULL, 'Mesoestetic', 'Llamar la semana que viene (28/6)', '2021-06-22 22:55:49', '2021-06-23 01:00:16', NULL, NULL);
INSERT INTO `clients` VALUES (534, '2021-06-23', 'No contact', 'NO', NULL, '2', 'Mireia', 'Mireia Fernández Estética i Benestar', 'Viladecans', 'Cataluna', '931 294 663', NULL, NULL, NULL, 'Mesoestetic', NULL, '2021-06-22 22:56:39', '2021-06-22 22:56:39', NULL, NULL);
INSERT INTO `clients` VALUES (535, '2021-06-23', 'RECALL', 'YES', NULL, '2', 'Adriana', 'The Beautery', 'Barcelona', 'Cataluna', '936 813 598', NULL, NULL, NULL, 'Mesoestetic', NULL, '2021-06-22 22:57:48', '2021-06-23 01:17:51', NULL, NULL);
INSERT INTO `clients` VALUES (536, '2021-06-23', 'No contact', 'NO', NULL, '2', 'Yolanda', 'Centre d\'estetica avançada Yolanda López', 'Barcelona', 'Cataluna', '930 088 047', NULL, NULL, NULL, 'Mesoestetic', NULL, '2021-06-22 23:04:56', '2021-06-22 23:04:56', NULL, NULL);
INSERT INTO `clients` VALUES (537, '2021-06-23', 'No contact', 'NO', NULL, '2', 'Susana', 'Susana Centre d\'estetica', 'Barcelona', 'Cataluna', '931 256 419', NULL, NULL, NULL, 'Mesoestetic', 'Trabaja por mail', '2021-06-22 23:08:01', '2021-06-23 00:57:56', NULL, NULL);
INSERT INTO `clients` VALUES (538, '2021-06-30', 'No contact', 'NO', NULL, '2', '.', 'Instituto de Benito', 'Barcelona', 'Cataluna', '932 530 282', NULL, NULL, NULL, 'Mesoestetic', 'Instituto Universitario Dexeus (Grupo Quirón). Trabajan por mail', '2021-06-22 23:08:57', '2021-06-29 23:43:48', NULL, NULL);
INSERT INTO `clients` VALUES (539, '2021-06-23', 'No contact', 'NO', NULL, '2', 'Dina', 'Royal Bee', 'Barcelona', 'Cataluna', '933 426 615', NULL, NULL, NULL, 'Mesoestetic', 'Está por las tardes', '2021-06-22 23:11:51', '2021-06-23 01:00:46', NULL, NULL);
INSERT INTO `clients` VALUES (540, '2021-06-23', 'RECALL', 'YES', NULL, '2', 'Noemi Lorite', 'Novadermis', 'Barcelona', 'Cataluna', '936 823 696', NULL, NULL, NULL, 'Mesoestetic', NULL, '2021-06-22 23:13:58', '2021-06-23 00:55:01', NULL, NULL);
INSERT INTO `clients` VALUES (541, '2021-06-23', 'RECALL', 'YES', NULL, '2', 'Alicia', 'Estética Alicia', 'Barcelona', 'Cataluna', NULL, '677 002 578', NULL, NULL, 'Mesoestetic', NULL, '2021-06-22 23:15:11', '2021-06-23 00:40:33', NULL, NULL);
INSERT INTO `clients` VALUES (542, '2021-06-23', 'No contact', 'NO', NULL, '2', '.', 'Estetic Medic Garvin', 'Girona', 'Cataluna', '972 370 723', NULL, NULL, NULL, 'Mesoestetic', 'Clínica Medicina Estética', '2021-06-22 23:18:45', '2021-06-22 23:18:45', NULL, NULL);
INSERT INTO `clients` VALUES (543, '2021-06-23', 'No contact', 'NO', NULL, '2', '.', 'Cliniem', 'Madrid', 'Madrid', '915 630 882', NULL, NULL, NULL, 'Mesoestetic', 'Cirugía. Solo trabajan por mail', '2021-06-22 23:20:13', '2021-06-28 02:14:02', NULL, NULL);
INSERT INTO `clients` VALUES (544, '2021-06-23', 'No contact', 'NO', NULL, '2', 'Fer', 'Fer Esthetic', 'Madrid', 'Madrid', NULL, '603 039 128', NULL, NULL, 'Other', 'SkinClinic', '2021-06-22 23:22:56', '2021-06-22 23:22:56', NULL, NULL);
INSERT INTO `clients` VALUES (545, '2021-06-23', 'RECALL', 'YES', NULL, '2', 'María', 'Maganda Estética Integral', 'Madrid', 'Madrid', NULL, '695 891 976', NULL, NULL, 'Mesoestetic', 'Simpática. Está embarazada. El retinol lo probará con su madre. Le acaban de dar la baja maternal', '2021-06-22 23:25:07', '2021-06-23 00:35:45', NULL, NULL);
INSERT INTO `clients` VALUES (546, '2021-06-23', 'No contact', 'NO', NULL, '2', 'MªJosé', 'Centro de belleza MªJosé Sanz', 'Madrid', 'Madrid', '912 774 269', NULL, NULL, NULL, 'Mesoestetic', 'Solo trabajan por mail', '2021-06-22 23:29:12', '2021-06-28 02:05:57', NULL, NULL);
INSERT INTO `clients` VALUES (547, '2021-06-23', 'No contact', 'NO', NULL, '2', '.', 'MYMO', 'Madrid', 'Madrid', '910 811 619', NULL, NULL, NULL, 'Skeyndor', 'Está de baja maternal', '2021-06-22 23:30:37', '2021-06-23 00:30:57', NULL, NULL);
INSERT INTO `clients` VALUES (548, '2021-06-23', 'RECALL', 'YES', NULL, '2', 'Aure / Sandra', 'S&A Medicina Estética Avanzada', 'Albacete', 'Castilla Mancha', NULL, '628 608 730', NULL, NULL, 'Mesoestetic', NULL, '2021-06-22 23:32:28', '2021-06-23 00:26:35', NULL, NULL);
INSERT INTO `clients` VALUES (549, '2021-06-23', 'RECALL', 'YES', NULL, '2', 'Ana', 'Centro de Estética ritual Visage Ana J. Pérez', 'Ciudad Real', 'Castilla Mancha', '926 217 673', '619 977 586', NULL, NULL, 'Mesoestetic', 'Simpática', '2021-06-22 23:38:56', '2021-06-23 00:16:45', NULL, NULL);
INSERT INTO `clients` VALUES (550, '2021-06-23', 'No contact', 'NO', NULL, '2', '.', 'Dermoestetica Victoria', 'Toledo', 'Castilla Mancha', '925 513 316', NULL, 'info@esteticavictoria.es', NULL, 'Mesoestetic', 'La responsable no coge el teléfono. Hay que contactar con ella por mail', '2021-06-22 23:47:19', '2021-06-28 02:30:41', NULL, NULL);
INSERT INTO `clients` VALUES (551, '2021-06-23', 'No contact', 'NO', NULL, '2', '.', 'Sarana Estética Avanzada', 'Alicante', 'Valencia', NULL, '678 044 072', 'info@sarana.es', NULL, 'Mesoestetic', 'La responsable no está casi nunca en el centro. Hay que enviarle un mail', '2021-06-22 23:48:16', '2021-06-25 01:17:51', NULL, NULL);
INSERT INTO `clients` VALUES (552, '2021-06-23', 'No contact', 'NO', NULL, '2', 'Zaida', 'Clínica Médico Estética Zaida Navarro', 'Alicante', 'Valencia', '965 700 500', NULL, NULL, NULL, 'Mesoestetic', NULL, '2021-06-22 23:49:55', '2021-06-22 23:49:55', NULL, NULL);
INSERT INTO `clients` VALUES (553, '2021-06-30', 'RECALL', 'YES', NULL, '2', 'Alejandra', 'Mima-T Beauty Center', 'Alicante', 'Valencia', NULL, '650 335 193', NULL, NULL, 'Mesoestetic', NULL, '2021-06-22 23:50:56', '2021-06-29 23:50:26', NULL, NULL);
INSERT INTO `clients` VALUES (554, '2021-06-23', 'No contact', 'NO', NULL, '2', '.', 'Centro de Estética Pepa Navarro', 'Valencia', 'Valencia', NULL, '615 321 189', NULL, NULL, 'Mesoestetic', NULL, '2021-06-23 02:20:29', '2021-06-23 02:20:29', NULL, NULL);
INSERT INTO `clients` VALUES (555, '2021-06-30', 'No contact', 'NO', NULL, '2', '.', 'Pétalos Estética Médica', 'Valencia', 'Valencia', NULL, '678 695 020', 'petalosgestion@gmail.com', NULL, 'Mesoestetic', 'Solo trabajan por mail', '2021-06-23 02:22:00', '2021-06-30 01:21:43', NULL, NULL);
INSERT INTO `clients` VALUES (556, '2021-06-23', 'No contact', 'NO', NULL, '2', '.', 'ASESTETIC Estética Avanzada', 'Murcia', 'Murcia', '968 966 400', '667 667 560', NULL, NULL, 'Mesoestetic', 'Grupo de clínicas, contactar solo por mail', '2021-06-23 02:23:27', '2021-06-28 02:14:37', NULL, NULL);
INSERT INTO `clients` VALUES (557, '2021-06-23', 'No contact', 'NO', NULL, '2', 'Ana', 'Estética Ana Buen Día', 'Alcantarilla', 'Murcia', '968 805 851', NULL, NULL, NULL, 'Mesoestetic', NULL, '2021-06-23 02:25:13', '2021-06-23 02:25:13', NULL, NULL);
INSERT INTO `clients` VALUES (558, '2021-06-23', 'No contact', 'NO', NULL, '2', '.', 'Centro de Estética Aqua', 'Granada', 'Andalucia', '958 446 561', NULL, NULL, NULL, 'Mesoestetic', NULL, '2021-06-23 02:26:04', '2021-06-23 02:26:04', NULL, NULL);
INSERT INTO `clients` VALUES (559, '2021-06-23', 'No contact', 'NO', NULL, '2', 'Rocío', 'Rocío Fernández Romero', 'Sevilla', 'Andalucia', NULL, '675 725 965', NULL, NULL, 'Mesoestetic', NULL, '2021-06-23 02:27:05', '2021-06-23 22:55:13', NULL, NULL);
INSERT INTO `clients` VALUES (560, '2021-06-23', 'No contact', 'NO', NULL, '2', 'Carmen', 'Centro de estética Carmen Povedano', 'Córdoba', 'Andalucia', '957 046 478', NULL, NULL, NULL, 'Mesoestetic', 'Llamar más adelante', '2021-06-23 02:34:42', '2021-06-28 01:56:56', NULL, NULL);
INSERT INTO `clients` VALUES (561, '2021-06-28', 'No contact', 'NO', NULL, '3', 'MªÁngeles', 'Centro MªÁngeles Torres', 'Córdoba', 'Andalucia', '957 454 511', '670 617 397', NULL, NULL, 'Mesoestetic', NULL, '2021-06-23 02:36:47', '2021-06-28 01:56:15', NULL, NULL);
INSERT INTO `clients` VALUES (562, '2021-06-24', 'RECALL', 'NO', NULL, '2', 'Isabel', 'Isabel Estética', 'Almería', 'Andalucia', NULL, '619 361 847', NULL, NULL, 'Other', 'Se puso en contacto por mail', '2021-06-23 22:54:42', '2021-06-28 01:27:32', NULL, NULL);
INSERT INTO `clients` VALUES (563, '2021-06-24', 'RECALL', 'YES', NULL, '2', 'Guadalupe', 'Onipse', 'Jaén', 'Andalucia', NULL, '666 192 259', NULL, NULL, 'Mesoestetic', 'Simpática', '2021-06-23 22:58:39', '2021-06-28 01:06:38', NULL, NULL);
INSERT INTO `clients` VALUES (564, '2021-06-28', 'RECALL', 'YES', NULL, '2', 'Águeda', 'Estética Águeda Oria Care&Beauty', 'Huelva', 'Andalucia', NULL, '610 236 835', NULL, NULL, 'Mesoestetic', NULL, '2021-06-23 22:59:58', '2021-06-28 01:17:51', NULL, NULL);
INSERT INTO `clients` VALUES (565, '2021-06-28', 'RECALL', 'YES', NULL, '2', 'Mari Carmen', 'Beauty Laser Center', 'Málaga', 'Andalucia', NULL, '693 255 087', NULL, NULL, 'Mesoestetic', NULL, '2021-06-23 23:01:32', '2021-06-28 00:57:27', NULL, NULL);
INSERT INTO `clients` VALUES (566, '2021-06-24', 'Not interesting', 'NO', NULL, '2', '.', 'Milyan Lashes', 'Málaga', 'Andalucia', NULL, '674 537 012', NULL, NULL, 'Mesoestetic', 'Ahora solo hacen pestañas', '2021-06-23 23:02:20', '2021-06-28 01:50:51', NULL, NULL);
INSERT INTO `clients` VALUES (567, '2021-06-25', 'RECALL', 'YES', NULL, '2', 'Montse', 'Centro Estética Montse Ruiz', 'Córdoba', 'Andalucia', '957 463 074', NULL, NULL, NULL, 'Mesoestetic', 'Simpática', '2021-06-23 23:03:27', '2021-06-25 02:43:57', NULL, NULL);
INSERT INTO `clients` VALUES (568, '2021-06-25', 'Not interested', 'NO', NULL, '2', 'Carmen', 'Centro Estética Baguer', 'Málaga', 'Andalucia', '952 347 751', NULL, NULL, NULL, 'Mesoestetic', NULL, '2021-06-23 23:04:46', '2021-06-25 01:34:29', NULL, NULL);
INSERT INTO `clients` VALUES (569, '2021-06-30', 'RECALL', 'YES', NULL, '2', 'Ana', 'Amamelis Centro Médico Estético', 'Badajoz', 'Extremadura', '924 260 062', NULL, NULL, NULL, 'Mesoestetic', 'Simpática', '2021-06-23 23:05:53', '2021-06-30 00:42:32', NULL, NULL);
INSERT INTO `clients` VALUES (570, '2021-06-25', 'RECALL', 'YES', NULL, '2', 'Sheila', 'Centro de Estética Baobab', 'Cáceres', 'Extremadura', '927 042 117', NULL, NULL, NULL, 'Mesoestetic', 'Simpática. Preguntó si solo vendemos a profesional', '2021-06-23 23:06:53', '2021-06-25 02:39:56', NULL, NULL);
INSERT INTO `clients` VALUES (571, '2021-06-24', 'No contact', 'NO', NULL, '2', '.', 'Essenza', 'Badajoz', 'Extremadura', NULL, '626 186 557', NULL, NULL, 'Mesoestetic', NULL, '2021-06-23 23:08:27', '2021-06-23 23:08:27', NULL, NULL);
INSERT INTO `clients` VALUES (572, '2021-06-24', 'No contact', 'NO', NULL, '2', '.', 'Espacio Lumiere', 'Madrid', 'Madrid', NULL, '633 247 435', NULL, NULL, 'Mesoestetic', NULL, '2021-06-23 23:44:25', '2021-06-23 23:44:25', NULL, NULL);
INSERT INTO `clients` VALUES (573, '2021-06-25', 'RECALL', 'YES', NULL, '2', 'Carolina', 'En Privé', 'Madrid', 'Madrid', NULL, '681 399 503', NULL, NULL, 'Mesoestetic', 'Simpática', '2021-06-23 23:46:17', '2021-06-25 02:03:09', NULL, NULL);
INSERT INTO `clients` VALUES (574, '2021-06-24', 'No contact', 'NO', NULL, '2', '.', 'So Glamour', 'Madrid', 'Madrid', '911 467 230', NULL, NULL, NULL, 'Mesoestetic', 'Cirugía', '2021-06-23 23:49:51', '2021-06-23 23:50:16', NULL, NULL);
INSERT INTO `clients` VALUES (575, '2021-06-24', 'RECALL', 'YES', NULL, '2', '.', 'Blossom Beauty House', 'Madrid', 'Madrid', NULL, '722 666 589', NULL, NULL, 'Mesoestetic', NULL, '2021-06-23 23:51:47', '2021-06-24 01:32:12', NULL, NULL);
INSERT INTO `clients` VALUES (576, '2021-06-25', 'No contact', 'NO', NULL, '2', 'Paloma', 'Metzli Institut de Bellesa', 'Barcelona', 'Cataluna', '935 846 572', NULL, NULL, NULL, 'Mesoestetic', 'Llamar a partir de miércoles 30', '2021-06-23 23:52:55', '2021-06-25 01:49:28', NULL, NULL);
INSERT INTO `clients` VALUES (577, '2021-06-28', 'Not interested', 'NO', NULL, '2', 'Cathy', 'Estética Avanzada Cathy', 'Barcelona', 'Cataluna', NULL, '618 818 758', NULL, NULL, 'Mesoestetic', 'Acaba de abrir', '2021-06-23 23:55:09', '2021-06-28 00:19:32', NULL, NULL);
INSERT INTO `clients` VALUES (578, '2021-06-24', 'No contact', 'NO', NULL, '2', 'Leticia', 'Centro de Estética Leticia Truebas', 'Madrid', 'Madrid', NULL, '605 912 652', NULL, NULL, 'Mesoestetic', NULL, '2021-06-24 00:03:33', '2021-06-24 00:03:33', NULL, NULL);
INSERT INTO `clients` VALUES (579, '2021-06-30', 'RECALL', 'YES', NULL, '2', 'Virginia', 'Centro de Estética Guadalupe Carrasco', 'Madrid', 'Madrid', '913 738 703', '630 269 262', NULL, NULL, 'Natura Bisse', NULL, '2021-06-24 00:05:37', '2021-06-30 00:05:36', NULL, NULL);
INSERT INTO `clients` VALUES (580, '2021-06-24', 'No contact', 'NO', NULL, '2', 'Elena', 'Centro Médico Estético Elena Méndez', 'Madrid', 'Madrid', NULL, '682 937 011', NULL, NULL, 'Mesoestetic', 'La responsable no tiene horario fijo', '2021-06-24 00:08:35', '2021-06-25 02:33:07', NULL, NULL);
INSERT INTO `clients` VALUES (581, '2021-06-24', 'No contact', 'NO', NULL, '2', '.', 'Imagen Integral', 'Madrid', 'Madrid', '915 420 230', NULL, NULL, NULL, 'Mesoestetic', NULL, '2021-06-24 00:09:40', '2021-06-24 00:09:40', NULL, NULL);
INSERT INTO `clients` VALUES (582, '2021-06-24', 'No contact', 'NO', NULL, '2', '.', 'Clínica Dimar', 'Barcelona', 'Cataluna', '930 008 696', NULL, NULL, NULL, 'Mesoestetic', 'Disponible a partir de las 3', '2021-06-24 00:22:45', '2021-06-28 02:32:03', NULL, NULL);
INSERT INTO `clients` VALUES (583, '2021-06-28', 'RECALL', 'YES', NULL, '2', 'Mayte', 'Beauté Secret Mayte', 'Fuenlabrada', 'Madrid', NULL, '653 211 923', NULL, NULL, 'Mesoestetic', NULL, '2021-06-24 01:12:36', '2021-06-28 00:29:33', NULL, NULL);
INSERT INTO `clients` VALUES (584, '2021-06-25', 'Not interested', 'NO', NULL, '2', '.', 'Estética Raquel', 'Pontevedra', 'Galicia', '986 862 704', NULL, NULL, NULL, 'Mesoestetic', 'No quieren meter nuevas firmas', '2021-06-24 01:36:14', '2021-06-25 01:32:48', NULL, NULL);
INSERT INTO `clients` VALUES (585, '2021-06-24', 'No contact', 'NO', NULL, '2', '.', 'Centro de Estética Cala', 'Vitoria', 'Pais Vasco', '945 011 190', NULL, NULL, NULL, 'Natura Bisse', NULL, '2021-06-24 02:25:01', '2021-06-24 02:25:01', NULL, NULL);
INSERT INTO `clients` VALUES (586, '2021-06-24', 'No contact', 'NO', NULL, '2', '.', 'Centro de Estética Dafne', 'Vitoria', 'Pais Vasco', '945 142 678', NULL, NULL, NULL, 'Germaine', NULL, '2021-06-24 02:26:06', '2021-06-24 02:26:06', NULL, NULL);
INSERT INTO `clients` VALUES (587, '2021-06-24', 'No contact', 'NO', NULL, '2', '.', 'AzulconB Estética y Bienestar', 'Bilbao', 'Pais Vasco', NULL, '678 493 365', NULL, NULL, 'Massada', 'Comfort Zone', '2021-06-24 02:30:21', '2021-06-24 02:30:21', NULL, NULL);
INSERT INTO `clients` VALUES (588, '2021-06-24', 'No contact', 'NO', NULL, '2', 'Juana', 'Instituto de belleza Juana Sustacha', 'Bilbao', 'Pais Vasco', '944 238 385', NULL, NULL, NULL, 'Other', 'RF', '2021-06-24 02:31:35', '2021-06-24 02:31:35', NULL, NULL);
INSERT INTO `clients` VALUES (589, '2021-06-24', 'No contact', 'NO', NULL, '2', '.', 'Donostibelle', 'San Sebastián', 'Pais Vasco', '943 102 277', NULL, NULL, NULL, 'Other', 'SkinClinic', '2021-06-24 02:35:07', '2021-06-24 02:35:07', NULL, NULL);
INSERT INTO `clients` VALUES (590, '2021-06-24', 'No contact', 'NO', NULL, '2', '.', 'Estética Ainhoa', 'San Sebastián', 'Pais Vasco', '943 116 302', NULL, NULL, NULL, 'Massada', NULL, '2021-06-24 02:38:15', '2021-06-24 02:38:15', NULL, NULL);
INSERT INTO `clients` VALUES (591, '2021-06-24', 'No contact', 'NO', NULL, '2', '.', 'Sahrazad', 'San Sebastián', 'Pais Vasco', '943 291 414', NULL, NULL, NULL, 'Other', 'RF', '2021-06-24 02:39:59', '2021-06-24 02:39:59', NULL, NULL);
INSERT INTO `clients` VALUES (592, '2021-06-24', 'No contact', 'NO', NULL, '2', 'Esther', 'Esther González', 'San Sebastián', 'Pais Vasco', NULL, '688 775 975', NULL, NULL, 'Other', 'Indiba', '2021-06-24 02:41:31', '2021-06-24 02:41:31', NULL, NULL);
INSERT INTO `clients` VALUES (593, '2021-06-25', 'No contact', 'NO', NULL, '3', 'Verónica', 'Verónica Cazalis', 'Zarautz', 'Pais Vasco', '943 132 197', NULL, NULL, NULL, 'Natura Bisse', 'Massada. RF', '2021-06-24 22:41:01', '2021-06-24 22:41:40', NULL, NULL);
INSERT INTO `clients` VALUES (594, '2021-06-25', 'No contact', 'NO', NULL, '2', '.', 'Ekoreka', 'Zarautz', 'Pais Vasco', NULL, '663 434 116', NULL, NULL, 'Other', 'Indiba', '2021-06-24 22:43:42', '2021-06-24 22:43:42', NULL, NULL);
INSERT INTO `clients` VALUES (595, '2021-06-25', 'No contact', 'NO', NULL, '2', 'Marta', 'Clínica Marta Soares', 'Getxo', 'Pais Vasco', NULL, '674 493 912', NULL, NULL, 'Other', 'RF', '2021-06-24 22:45:45', '2021-06-24 22:45:45', NULL, NULL);
INSERT INTO `clients` VALUES (596, '2021-06-25', 'No contact', 'NO', NULL, '2', '.', 'Centro de estética Thais', 'Getxo', 'Pais Vasco', '946 573 870', NULL, NULL, NULL, 'Other', 'Kobido', '2021-06-24 22:46:56', '2021-06-24 22:46:56', NULL, NULL);
INSERT INTO `clients` VALUES (597, '2021-06-25', 'No contact', 'NO', NULL, '2', '.', 'Kerala', 'Portugalete', 'Pais Vasco', '944 966 451', NULL, NULL, NULL, 'Massada', NULL, '2021-06-24 22:48:56', '2021-06-24 22:48:56', NULL, NULL);
INSERT INTO `clients` VALUES (598, '2021-06-25', 'No contact', 'NO', NULL, '2', 'Nazaret', 'Estética y Bienestar Nazaret', 'Mungia', 'Pais Vasco', '946 155 709', NULL, NULL, NULL, 'Massada', NULL, '2021-06-24 23:01:56', '2021-06-24 23:01:56', NULL, NULL);
INSERT INTO `clients` VALUES (599, '2021-06-25', 'No contact', 'NO', NULL, '2', '.', 'Mariángeles Manzanero Centro Clínico Estético', 'Irún', 'Pais Vasco', '943 543 176', NULL, NULL, NULL, 'Other', 'RF.', '2021-06-24 23:06:46', '2021-06-24 23:06:46', NULL, NULL);
INSERT INTO `clients` VALUES (600, '2021-06-25', 'No contact', 'NO', NULL, '2', '.', 'Estetika Rotxu', 'Lekeitio', 'Pais Vasco', '946 842 983', NULL, NULL, NULL, 'Other', 'Indiba', '2021-06-24 23:08:49', '2021-06-24 23:08:49', NULL, NULL);
INSERT INTO `clients` VALUES (601, '2021-06-25', 'No contact', 'NO', NULL, '2', '.', 'Samadhi', 'Barakaldo', 'Pais Vasco', '944 374 016', NULL, NULL, NULL, 'Mesoestetic', 'Indiba. Llamar en octubre porque ahora no van a empezar nada nuevo', '2021-06-25 01:15:03', '2021-06-25 01:29:20', NULL, NULL);
INSERT INTO `clients` VALUES (602, '2021-06-25', 'RECALL', 'YES', NULL, '2', '.', 'Amaia Abad', 'Barakaldo', 'Pais Vasco', '944 901 304', NULL, NULL, NULL, 'Other', 'RF. Simpática', '2021-06-25 01:16:36', '2021-06-25 01:27:05', NULL, NULL);
INSERT INTO `clients` VALUES (603, '2021-06-28', 'No contact', 'NO', NULL, '2', '.', 'Centro de Estética Sueños', 'Valladolid', 'Castilla Leon', '983 205 182', NULL, NULL, NULL, 'Other', 'Indiba', '2021-06-27 22:50:21', '2021-06-27 22:50:21', NULL, NULL);
INSERT INTO `clients` VALUES (604, '2021-06-28', 'No contact', 'NO', NULL, '2', '.', 'TanRelax', 'Valladolid', 'Castilla Leon', NULL, '640 610 367', NULL, NULL, 'Other', 'RF', '2021-06-27 22:52:50', '2021-06-27 22:52:50', NULL, NULL);
INSERT INTO `clients` VALUES (605, '2021-06-28', NULL, NULL, NULL, NULL, '.', 'Clínica Leform', 'Valladolid', 'Castilla Leon', '983 330 280', NULL, NULL, NULL, 'Biologique', NULL, '2021-06-27 22:57:48', '2021-06-27 22:57:48', NULL, NULL);
INSERT INTO `clients` VALUES (606, '2021-06-28', 'No contact', 'NO', NULL, '2', 'Cristina/Silvia', 'Estética Covaresa S&K', 'Valladolid', 'Castilla Leon', '983 248 689', NULL, NULL, NULL, 'Other', 'RF. Kobido', '2021-06-27 22:59:52', '2021-06-27 22:59:52', NULL, NULL);
INSERT INTO `clients` VALUES (607, '2021-06-28', 'No contact', 'NO', NULL, '2', '.', 'La fuente de la belleza', 'Valladolid', 'Castilla Leon', NULL, '630 325 763', NULL, NULL, 'Other', 'Kobido y RF', '2021-06-27 23:02:09', '2021-06-27 23:02:09', NULL, NULL);
INSERT INTO `clients` VALUES (608, '2021-06-28', 'No contact', 'NO', NULL, '2', 'Esther', 'Shibumi', 'Valladolid', 'Castilla Leon', '983 040 183', NULL, NULL, NULL, 'Medik8', NULL, '2021-06-27 23:09:31', '2021-06-27 23:09:31', NULL, NULL);
INSERT INTO `clients` VALUES (609, '2021-06-28', 'No contact', 'NO', NULL, '2', '.', 'EA Estética', 'Valladolid', 'Castilla Leon', '983 241 081', NULL, NULL, NULL, 'Other', 'Indiba. Kobido', '2021-06-27 23:23:12', '2021-06-27 23:23:12', NULL, NULL);
INSERT INTO `clients` VALUES (610, '2021-06-28', 'No contact', 'NO', NULL, '2', 'Rosa', 'Cuídate+ Belleza y Nutrición', 'Valladolid', 'Castilla Leon', NULL, '639 226 501', NULL, NULL, 'Other', 'Indiba', '2021-06-27 23:24:14', '2021-06-27 23:24:14', NULL, NULL);
INSERT INTO `clients` VALUES (611, '2021-06-28', 'No contact', 'NO', NULL, '2', 'Nuria', 'Nuria González Espacio de Belleza Íscar', 'Íscar', 'Castilla Leon', '983 611 909', NULL, NULL, NULL, 'Natura Bisse', NULL, '2021-06-27 23:25:50', '2021-06-27 23:25:50', NULL, NULL);
INSERT INTO `clients` VALUES (612, '2021-06-28', 'No contact', 'NO', NULL, '2', 'Lourdes', 'Gabinete de Estética Lourdes Angulo', 'Valladolid', 'Castilla Leon', '983 389 837', NULL, NULL, NULL, 'Other', 'Indiba', '2021-06-27 23:27:12', '2021-06-27 23:27:12', NULL, NULL);
INSERT INTO `clients` VALUES (613, '2021-06-28', 'No contact', 'NO', NULL, '2', 'Ana', 'Centro de Estética, belleza y relajación Ana Santo Domingo', 'Segovia', 'Castilla Leon', '921 444 823', NULL, NULL, NULL, 'Massada', 'RF', '2021-06-27 23:29:05', '2021-06-27 23:29:05', NULL, NULL);
INSERT INTO `clients` VALUES (614, '2021-06-28', 'No contact', 'NO', NULL, '2', 'María', 'Centro Estético María Múñez', 'Segovia', 'Castilla Leon', '921 047 913', NULL, NULL, NULL, 'Other', 'RF', '2021-06-27 23:30:35', '2021-06-27 23:30:35', NULL, NULL);
INSERT INTO `clients` VALUES (615, '2021-07-05', 'RECALL', 'YES', NULL, '2', 'Mónica', 'Mónica Marazuela Esteticistas', 'Segovia', 'Castilla Leon', '921 438 708', NULL, NULL, NULL, 'Natura Bisse', NULL, '2021-06-27 23:32:26', '2021-07-05 01:28:50', NULL, NULL);
INSERT INTO `clients` VALUES (616, '2021-06-30', 'No contact', 'NO', NULL, '2', '.', 'Estética Avanzada Sonia Herrero', 'Burgos', 'Castilla Leon', '947 276 504', NULL, NULL, NULL, 'Natura Bisse', NULL, '2021-06-30 02:03:43', '2021-06-30 02:03:43', NULL, NULL);
INSERT INTO `clients` VALUES (617, '2021-06-30', 'No contact', 'NO', NULL, '2', 'Ester', 'Nuevo Concepto Estética', 'Burgos', 'Castilla Leon', '947 075 364', NULL, NULL, NULL, 'Other', 'SkinClinic', '2021-06-30 02:05:27', '2021-06-30 02:05:27', NULL, NULL);
INSERT INTO `clients` VALUES (618, '2021-06-30', 'No contact', 'NO', NULL, '2', 'Ana Isabel/Goretti', 'Anay.G.', 'Burgos y Palencia', 'Castilla Leon', '947 255 636', NULL, NULL, NULL, 'Other', 'Indiba', '2021-06-30 02:07:52', '2021-06-30 02:07:52', NULL, NULL);
INSERT INTO `clients` VALUES (619, '2021-07-05', 'No contact', 'NO', NULL, '2', 'Marta', 'Centro de Estética Marta del Olmo', 'Burgos', 'Castilla Leon', '947 276 410', NULL, NULL, NULL, 'Other', 'GerNetic. Babor. Llamar en otro momento', '2021-06-30 02:14:32', '2021-07-05 02:30:34', NULL, NULL);
INSERT INTO `clients` VALUES (620, '2021-06-30', 'No contact', 'NO', NULL, '2', '.', 'Dama Centro de Estética', 'Ávila', 'Castilla Leon', '920 251 550', NULL, NULL, NULL, 'Other', 'RF', '2021-06-30 02:15:41', '2021-06-30 02:15:41', NULL, NULL);
INSERT INTO `clients` VALUES (621, '2021-06-30', 'No contact', 'NO', NULL, '2', '.', 'Centro de belleza Borneo', 'Ávila', 'Castilla Leon', '920 219 381', NULL, NULL, NULL, 'Other', 'RF', '2021-06-30 02:16:40', '2021-06-30 02:16:40', NULL, NULL);
INSERT INTO `clients` VALUES (622, '2021-06-30', 'No contact', 'NO', NULL, '2', 'Cristina', 'Cristina Hurtado Estética Natural', 'Palencia', 'Castilla Leon', NULL, '679 952 896', NULL, NULL, 'Skeyndor', NULL, '2021-06-30 02:19:48', '2021-07-08 00:41:14', NULL, NULL);
INSERT INTO `clients` VALUES (623, '2021-06-30', 'No contact', 'NO', NULL, '2', '.', 'Beautiful', 'Palencia', 'Castilla Leon', '979 106 794', NULL, NULL, NULL, 'Natura Bisse', NULL, '2021-06-30 02:20:55', '2021-06-30 02:20:55', NULL, NULL);
INSERT INTO `clients` VALUES (624, '2021-07-02', 'RECALL', 'YES', NULL, '2', 'Isabel', 'Acqua Centro de Estética', 'Palencia', 'Castilla Leon', '979 752 617', '600 623 253', NULL, NULL, 'Mesoestetic', 'Indiba. Dr. Baumann. Simpática.', '2021-06-30 02:44:19', '2021-07-02 01:54:15', NULL, NULL);
INSERT INTO `clients` VALUES (625, '2021-06-30', 'No contact', 'NO', NULL, '2', 'Ana', 'Estética Ana Pastor', 'Palencia', 'Castilla Leon', '979 726 319', NULL, NULL, NULL, 'Other', 'RF', '2021-06-30 02:46:02', '2021-06-30 02:46:02', NULL, NULL);
INSERT INTO `clients` VALUES (626, '2021-06-30', 'No contact', 'NO', NULL, '2', '.', 'Jennest', 'Palencia', 'Castilla Leon', NULL, '627 159 927', NULL, NULL, 'Natura Bisse', 'Indiba', '2021-06-30 02:50:55', '2021-06-30 02:50:55', NULL, NULL);
INSERT INTO `clients` VALUES (627, '2021-06-30', 'No contact', 'NO', NULL, '2', '.', 'Centro de Estética Quiroga', 'Salamanca', 'Castilla Leon', '923 242 961', NULL, 'info@esteticaquiroga.com', NULL, 'Biologique', 'Dr. Baumann. Indiba. No pasa por el centro, hay que contactar por mail', '2021-06-30 02:52:36', '2021-07-02 01:41:50', NULL, NULL);
INSERT INTO `clients` VALUES (628, '2021-06-30', 'No contact', 'NO', NULL, '2', '.', 'By me', 'Salamanca', 'Castilla Leon', '923 054 919', NULL, NULL, NULL, 'Biologique', NULL, '2021-06-30 02:53:37', '2021-06-30 02:53:37', NULL, NULL);
INSERT INTO `clients` VALUES (629, '2021-07-02', 'No contact', 'NO', NULL, '2', '.', 'Centro de Estética Integral LH Imagen', 'Salamanca', 'Castilla Leon', '923 267 464', NULL, NULL, NULL, 'Natura Bisse', 'Maria Galland. A partir de las 16:00', '2021-07-01 23:24:49', '2021-07-02 01:38:53', NULL, NULL);
INSERT INTO `clients` VALUES (630, '2021-07-02', 'No contact', 'NO', NULL, '2', '.', 'Centro de Estética Mar Nieto', 'Salamanca', 'Castilla Leon', '923 215 670', NULL, NULL, NULL, 'Other', 'Indiba', '2021-07-01 23:26:04', '2021-07-01 23:26:04', NULL, NULL);
INSERT INTO `clients` VALUES (631, '2021-07-02', 'No contact', 'NO', NULL, '2', 'Esther', 'Clínica Kiodai', 'Salamanca', 'Castilla Leon', '923 215 984', NULL, NULL, NULL, 'Other', 'RF', '2021-07-01 23:28:08', '2021-07-01 23:28:08', NULL, NULL);
INSERT INTO `clients` VALUES (632, '2021-07-02', 'No contact', 'NO', NULL, '2', '.', 'Nutryestet', 'Zamora', 'Castilla Leon', '980 520 112', NULL, NULL, NULL, 'Other', 'GerNetic', '2021-07-01 23:29:33', '2021-07-01 23:29:33', NULL, NULL);
INSERT INTO `clients` VALUES (633, '2021-07-02', 'No contact', 'NO', NULL, '2', '.', 'Centro Médico Estético Hernando', 'Zamora', 'Castilla Leon', '980 515 930', NULL, NULL, NULL, 'Other', 'RF', '2021-07-01 23:30:54', '2021-07-01 23:30:54', NULL, NULL);
INSERT INTO `clients` VALUES (634, '2021-07-02', 'No contact', 'NO', NULL, '2', '.', 'Centro Kalos', 'Zamora', 'Castilla Leon', '980 046 208', NULL, NULL, NULL, 'Other', 'Indiba', '2021-07-01 23:33:27', '2021-07-01 23:33:27', NULL, NULL);
INSERT INTO `clients` VALUES (635, '2021-07-02', 'No contact', 'NO', NULL, '2', '.', 'Beauty Center Carmen Núñez', 'Zamora', 'Castilla Leon', NULL, '633 242 685', NULL, NULL, 'Other', 'RF. Kobido', '2021-07-01 23:35:07', '2021-07-01 23:35:07', NULL, NULL);
INSERT INTO `clients` VALUES (636, '2021-07-02', 'No contact', 'NO', NULL, '2', '.', 'Altheis Estética y Nutrición', 'Soria', 'Castilla Leon', '975 678 156', NULL, NULL, NULL, 'Massada', 'BDR', '2021-07-02 00:05:45', '2021-07-02 00:05:45', NULL, NULL);
INSERT INTO `clients` VALUES (637, '2021-07-02', 'RECALL', 'YES', NULL, '2', 'Beatriz', 'Beauté Soria', 'Soria', 'Castilla Leon', '975 678 445', NULL, NULL, NULL, 'Other', 'Indiba', '2021-07-02 00:07:25', '2021-07-02 01:14:22', NULL, NULL);
INSERT INTO `clients` VALUES (638, '2021-07-02', 'No contact', 'NO', NULL, '2', '.', 'Aquilea Estética', 'Soria', 'Castilla Leon', '975 215 160', NULL, NULL, NULL, 'Other', 'Klapp. RF', '2021-07-02 00:08:58', '2021-07-02 00:08:58', NULL, NULL);
INSERT INTO `clients` VALUES (639, '2021-07-02', 'Not interested', 'NO', NULL, '2', '.', 'eSparati', 'Soria', 'Castilla Leon', '686 210 271', NULL, NULL, NULL, 'Natura Bisse', '\"El teléfono no es para eso\"', '2021-07-02 00:11:01', '2021-07-02 01:09:04', NULL, NULL);
INSERT INTO `clients` VALUES (640, '2021-07-02', 'No contact', 'NO', NULL, '2', '.', 'Blanco Estética León', 'León', 'Castilla Leon', NULL, '627 554 646', NULL, NULL, 'Other', 'Indiba', '2021-07-02 00:17:49', '2021-07-02 00:17:49', NULL, NULL);
INSERT INTO `clients` VALUES (641, '2021-07-02', 'No contact', 'NO', NULL, '2', '.', 'Pilar Rojo', 'León', 'Castilla Leon', '987 271 582', NULL, NULL, NULL, 'Massada', 'BDR, GerNetic. Mediodía', '2021-07-02 00:19:16', '2021-07-02 01:04:19', NULL, NULL);
INSERT INTO `clients` VALUES (642, '2021-07-02', 'Not interesting', 'NO', NULL, '2', 'Fátima', 'Salón de bellez Fátima Díez', 'León', 'Castilla Leon', '987 233 971', NULL, NULL, NULL, 'Other', 'Indiba', '2021-07-02 00:21:46', '2021-07-02 01:05:13', NULL, NULL);
INSERT INTO `clients` VALUES (643, '2021-07-02', 'No contact', 'NO', NULL, '2', 'Belén', 'Estética Belén Burón', 'León', 'Castilla Leon', '987 803 164', NULL, NULL, NULL, 'Massada', 'Indiba. No está casi nunca por el centro', '2021-07-02 00:23:23', '2021-07-02 01:01:31', NULL, NULL);
INSERT INTO `clients` VALUES (644, '2021-07-02', 'RECALL', 'YES', NULL, '2', 'María Otero', 'Sakura Wellness Estética Avanzada', 'León', 'Castilla Leon', NULL, '690 101 001', NULL, NULL, 'Biologique', 'Kobido. Simpática', '2021-07-02 00:25:16', '2021-07-02 00:54:35', NULL, NULL);
INSERT INTO `clients` VALUES (645, '2021-07-02', 'No contact', 'NO', NULL, '2', '.', 'Clínica Remo', 'León', 'Castilla Leon', '987 876 180', NULL, NULL, NULL, 'Other', 'Indiba. Medicina Estética', '2021-07-02 00:26:38', '2021-07-02 00:26:38', NULL, NULL);
INSERT INTO `clients` VALUES (646, '2021-07-02', 'No contact', 'NO', NULL, '2', '.', 'Clínica San Agustín', 'León', 'Castilla Leon', '987 235 873', NULL, NULL, NULL, 'Other', 'Indiba. Cirugía Plástica', '2021-07-02 00:28:01', '2021-07-02 00:28:01', NULL, NULL);
INSERT INTO `clients` VALUES (647, '2021-07-02', 'No contact', 'NO', NULL, '1', '.', 'Centro Estético Ekivital', 'Ponferrada', 'Castilla Leon', '987 174 940', NULL, 'info@ekivitalcentroestetico.com', NULL, 'Mesoestetic', 'GerNetic. Solo trabajan por mail', '2021-07-02 00:28:50', '2021-07-02 00:48:19', NULL, NULL);
INSERT INTO `clients` VALUES (648, '2021-07-06', 'Not interested', 'NO', NULL, '2', '.', 'Beauty Diem', 'Ponferrada', 'Castilla Leon', NULL, '620 252 692', NULL, NULL, 'Other', 'GerNetic. Va a cambiar de actividad y cierra el centro', '2021-07-02 00:29:59', '2021-07-05 23:32:14', NULL, NULL);
INSERT INTO `clients` VALUES (649, '2021-07-06', 'RECALL', 'YES', NULL, '2', 'Verónica', 'Centro Estético Afrodita\'s', 'Miranda de Ebro', 'Castilla Leon', NULL, '618 815 057', NULL, NULL, 'Other', 'GerNetic', '2021-07-02 00:31:18', '2021-07-06 01:39:40', NULL, NULL);
INSERT INTO `clients` VALUES (650, '2021-07-02', 'No contact', 'NO', NULL, '2', '.', 'Eres un Ángel', 'Miranda de Ebro', 'Castilla Leon', '947 110 617', NULL, NULL, NULL, 'Other', 'RF', '2021-07-02 00:32:39', '2021-07-02 00:32:39', NULL, NULL);
INSERT INTO `clients` VALUES (651, '2021-07-02', 'No contact', 'NO', NULL, '2', '.', 'Centro Médico Estético ADA', 'Miranda de Ebro', 'Castilla Leon', '947 069 074', NULL, NULL, NULL, 'Other', 'RF', '2021-07-02 00:33:36', '2021-07-02 00:33:36', NULL, NULL);
INSERT INTO `clients` VALUES (652, '2021-07-02', 'No contact', 'NO', NULL, '2', '.', 'Centro de Estética Beauty Zen', 'Béjar', 'Castilla Leon', '923 880 022', NULL, NULL, NULL, 'Mesoestetic', 'RF. Borde', '2021-07-02 00:34:42', '2021-07-02 00:46:37', NULL, NULL);
INSERT INTO `clients` VALUES (653, '2021-07-02', 'No contact', 'NO', NULL, '3', 'Marta', 'Salón de Belleza Marta', 'Béjar', 'Castilla Leon', '923 403 271', NULL, NULL, NULL, 'Other', 'BDR, RF, Kobido', '2021-07-02 00:35:51', '2021-07-02 00:35:51', NULL, NULL);
INSERT INTO `clients` VALUES (654, '2021-07-02', 'No contact', 'NO', NULL, '2', '.', 'Gabinete de belleza Emilia Regalado', 'Santa Marta de Tormes', 'Castilla Leon', '923 130 909', NULL, NULL, NULL, 'Germaine', 'BDR, Indiba', '2021-07-02 00:37:18', '2021-07-02 00:37:18', NULL, NULL);
INSERT INTO `clients` VALUES (655, '2021-07-02', 'No contact', 'NO', NULL, '2', '.', 'Estética Eli', 'Ciudad Rodrigo', 'Castilla Leon', '923 481 059', NULL, NULL, NULL, 'Other', 'BDR. Mediodía', '2021-07-02 00:38:34', '2021-07-02 00:49:23', NULL, NULL);
INSERT INTO `clients` VALUES (656, '2021-07-05', 'No contact', 'NO', NULL, '2', '.', 'María Padilla Estética de Vanguardia', 'Barcelona', 'Cataluna', '935 190 200', NULL, NULL, NULL, 'Other', 'RF', '2021-07-05 02:22:53', '2021-07-05 02:22:53', NULL, NULL);
INSERT INTO `clients` VALUES (657, '2021-07-05', 'No contact', 'NO', NULL, '2', '.', 'Benestar Calvet', 'Barcelona', 'Cataluna', '932 023 263', NULL, NULL, NULL, 'Other', 'RF', '2021-07-05 02:26:07', '2021-07-05 02:26:07', NULL, NULL);
INSERT INTO `clients` VALUES (658, '2021-07-05', 'No contact', 'NO', NULL, '2', '.', 'Depila\'t Imatge & bellesa', 'Barcelona', 'Cataluna', '934 095 427', NULL, NULL, NULL, 'Other', 'RF', '2021-07-05 02:39:07', '2021-07-05 02:39:07', NULL, NULL);
INSERT INTO `clients` VALUES (659, '2021-07-05', 'No contact', 'NO', NULL, '2', '.', 'Blauceldona', 'Barcelona', 'Cataluna', '934 533 813', NULL, 'blauceldona@blauceldona.com', NULL, 'Natura Bisse', 'Indiba. Solo por mail', '2021-07-05 02:39:56', '2021-07-05 23:35:59', NULL, NULL);
INSERT INTO `clients` VALUES (660, '2021-07-05', 'No contact', 'NO', NULL, '2', '.', 'Laser Therapy Clinic', 'Barcelona', 'Cataluna', '930 242 083', NULL, NULL, NULL, 'Other', 'RF', '2021-07-05 02:41:31', '2021-07-05 02:41:31', NULL, NULL);
INSERT INTO `clients` VALUES (661, '2021-07-05', 'No contact', 'NO', NULL, '2', '.', 'Devi Advance', 'Barcelona', 'Cataluna', '934 487 597', NULL, NULL, NULL, 'Other', 'RF', '2021-07-05 02:43:09', '2021-07-05 02:43:09', NULL, NULL);
INSERT INTO `clients` VALUES (662, '2021-07-05', 'No contact', 'NO', NULL, '2', '.', 'Centro de Estética Alicia', 'Barcelona', 'Cataluna', '933 466 368', NULL, NULL, NULL, 'Other', NULL, '2021-07-05 02:44:45', '2021-07-05 02:44:45', NULL, NULL);
INSERT INTO `clients` VALUES (663, '2021-07-05', 'No contact', 'NO', NULL, '2', '.', 'L\'Or Institut', 'Barcelona', 'Cataluna', '931 157 399', NULL, NULL, NULL, 'Other', 'RF', '2021-07-05 02:45:57', '2021-07-05 02:45:57', NULL, NULL);
INSERT INTO `clients` VALUES (664, '2021-07-05', 'No contact', 'NO', NULL, '2', '.', 'Centro de Estética Meravelles', 'Barcelona', 'Cataluna', '934 621 336', NULL, NULL, NULL, 'Other', 'Grupo de clínicas, contactar solo por mail', '2021-07-05 02:47:46', '2021-07-05 02:47:46', NULL, NULL);
INSERT INTO `clients` VALUES (665, '2021-07-05', 'No contact', 'NO', NULL, '2', '.', 'Sinergy Esthetic', 'Barcelona', 'Cataluna', '930 104 615', NULL, NULL, NULL, 'Other', 'BDR. Solo mail', '2021-07-05 02:49:43', '2021-07-05 23:38:20', NULL, NULL);
INSERT INTO `clients` VALUES (666, '2021-07-05', 'No contact', 'NO', NULL, '2', '.', 'CuidaM', 'Barcelona', 'Cataluna', '935 650 596', NULL, NULL, NULL, 'Other', 'RF', '2021-07-05 02:50:37', '2021-07-05 02:50:37', NULL, NULL);
INSERT INTO `clients` VALUES (667, '2021-07-05', 'RECALL', 'YES', NULL, '2', 'Mari Carmen', 'Centro de Estética Bhaskara Beauty', 'Mataró', 'Cataluna', '935 768 568', NULL, 'info@bhaskara.es', NULL, 'Mesoestetic', 'Biologique Recherche', '2021-07-05 02:52:58', '2021-07-06 00:37:09', NULL, NULL);
INSERT INTO `clients` VALUES (668, '2021-07-05', 'No contact', 'NO', NULL, '2', '.', 'UMA Beauty Center', 'Mataró', 'Cataluna', '937 999 051', NULL, NULL, NULL, 'Other', 'Indiba', '2021-07-05 02:53:43', '2021-07-05 02:53:43', NULL, NULL);
INSERT INTO `clients` VALUES (669, '2021-07-05', 'No contact', 'NO', NULL, '2', '.', 'Diva Beauty', 'Sant Cugat del Vallés', 'Cataluna', '937 637 017', NULL, NULL, NULL, 'Mesoestetic', NULL, '2021-07-05 02:55:32', '2021-07-05 02:55:32', NULL, NULL);
INSERT INTO `clients` VALUES (670, '2021-07-05', 'Not interested', 'NO', NULL, '2', 'Elia', 'Elia Estética y Láser', 'Sant Cugat del Vallés', 'Cataluna', '935 895 844', NULL, NULL, NULL, 'Mesoestetic', 'Acaba de cambiar de marcas', '2021-07-05 02:57:12', '2021-07-05 23:59:06', NULL, NULL);
INSERT INTO `clients` VALUES (671, '2021-07-05', 'No contact', 'NO', NULL, '2', '.', 'Posat Guapa', 'Gavá', 'Cataluna', '936 381 011', NULL, 'posatguap@gmail.com', NULL, 'Mesoestetic', 'Trabajan por mail', '2021-07-05 03:00:13', '2021-07-05 03:00:13', NULL, NULL);
INSERT INTO `clients` VALUES (672, '2021-07-05', 'Not interested', 'NO', NULL, '2', '.', 'Carmen Moreno Estética', 'Malgrat de Mar', 'Cataluna', NULL, '655 910 034', NULL, NULL, 'Mesoestetic', 'Técnica de Mesoestetic', '2021-07-05 03:02:20', '2021-07-05 23:41:40', NULL, NULL);
INSERT INTO `clients` VALUES (673, '2021-07-06', 'RECALL', 'YES', NULL, '2', '.', 'Centro de Estética Avanzada Beatriz', 'Malgrat de Mar', 'Cataluna', NULL, '633 076 490', NULL, NULL, 'Mesoestetic', 'Súper maja, trabaja mucho ácidos', '2021-07-05 03:03:23', '2021-07-05 23:46:18', NULL, NULL);
INSERT INTO `clients` VALUES (674, '2021-07-05', 'No contact', 'NO', NULL, '2', '.', 'Killenci', 'Mataró', 'Cataluna', '937 574 778', NULL, NULL, NULL, 'Mesoestetic', 'Natura Bissé', '2021-07-05 03:08:58', '2021-07-05 03:08:58', NULL, NULL);
INSERT INTO `clients` VALUES (675, '2021-07-05', 'No contact', 'NO', NULL, '2', '.', 'Walden Essence Estética', 'Sant Just Desvern', 'Cataluna', '936 397 288', NULL, NULL, NULL, 'Mesoestetic', 'La responsable no tiene horario fijo', '2021-07-05 03:25:45', '2021-07-05 23:50:45', NULL, NULL);
INSERT INTO `clients` VALUES (676, '2021-07-05', 'No contact', 'NO', NULL, '2', 'Pilar', 'Pilar Delgado Instituto Estético', 'Sant Feliu de Llobregat', 'Cataluna', '936 859 543', NULL, NULL, NULL, 'Mesoestetic', NULL, '2021-07-05 03:27:14', '2021-07-05 03:27:14', NULL, NULL);
INSERT INTO `clients` VALUES (677, '2021-07-06', 'RECALL', 'YES', NULL, '2', 'Sofía', 'Sofía Ventura Estética', 'Sant Just Desvern', 'Cataluna', '934 735 322', NULL, NULL, NULL, 'Natura Bisse', NULL, '2021-07-05 23:02:45', '2021-07-07 02:54:49', NULL, NULL);
INSERT INTO `clients` VALUES (678, '2021-07-06', 'No contact', 'NO', NULL, '2', '.', 'Salutaris', 'Sant Sadurni d\'Anoia', 'Cataluna', '938 183 180', NULL, NULL, NULL, 'Other', 'BDR', '2021-07-05 23:05:50', '2021-07-05 23:05:50', NULL, NULL);
INSERT INTO `clients` VALUES (679, '2021-07-06', 'No contact', 'NO', NULL, '2', '.', 'Centro de Estética Avanzada Laura Martínez', 'Granollers', 'Cataluna', '938 705 674', NULL, NULL, NULL, 'Biologique', 'BDR', '2021-07-05 23:20:07', '2021-07-05 23:20:07', NULL, NULL);
INSERT INTO `clients` VALUES (680, '2021-07-06', 'No contact', 'NO', NULL, '2', '.', 'Más Guapa', 'Terrasa', 'Cataluna', '937 363 271', NULL, NULL, NULL, 'Mesoestetic', 'Está fuera, llamar a partir de septiembre', '2021-07-05 23:26:56', '2021-07-05 23:57:18', NULL, NULL);
INSERT INTO `clients` VALUES (681, '2021-07-06', 'No contact', 'NO', NULL, '2', '.', 'Centro de Estética Natalia Toscano', 'Badalona', 'Cataluna', '933 995 204', NULL, NULL, NULL, 'Other', 'BDR', '2021-07-05 23:28:07', '2021-07-05 23:28:07', NULL, NULL);
INSERT INTO `clients` VALUES (682, '2021-07-06', 'No contact', 'NO', NULL, '2', '.', 'Centro de Estética Vanessa Guerrero', 'Barcelona', 'Cataluna', NULL, '692 067 706', NULL, NULL, 'Natura Bisse', NULL, '2021-07-05 23:29:10', '2021-07-05 23:29:10', NULL, NULL);
INSERT INTO `clients` VALUES (683, '2021-07-06', 'No contact', 'NO', NULL, '2', '.', 'Estética Equilibrium', 'Corró d\'Avall', 'Cataluna', '938 497 055', NULL, NULL, NULL, 'Other', 'BDR. RF', '2021-07-05 23:30:17', '2021-07-05 23:30:17', NULL, NULL);
INSERT INTO `clients` VALUES (684, '2021-07-06', 'No contact', 'NO', NULL, '2', '.', 'Bosa Estética', 'Palau-solità i Plegamans', 'Cataluna', '938 649 037', NULL, NULL, NULL, 'Mesoestetic', 'Indiba', '2021-07-06 00:06:00', '2021-07-06 00:06:00', NULL, NULL);
INSERT INTO `clients` VALUES (685, '2021-07-06', 'No contact', 'NO', NULL, '2', '.', 'Palau Estetic', 'Palau-solità i Plegamans', 'Cataluna', NULL, '619 431 515', NULL, NULL, 'Eberlin', 'Llamar en otro momento porque está superocupada', '2021-07-06 00:08:11', '2021-07-06 00:08:11', NULL, NULL);
INSERT INTO `clients` VALUES (686, '2021-07-06', 'No contact', 'NO', NULL, '2', '.', 'Centro Médico Estético y Quirúrgico Pilo', 'Mataró', 'Cataluna', '937 562 352', NULL, 'info@esteticapilo.com', NULL, 'Other', 'RF. Solo por mail', '2021-07-06 00:12:30', '2021-07-06 00:12:30', NULL, NULL);
INSERT INTO `clients` VALUES (687, '2021-07-06', 'RECALL', 'YES', NULL, '2', 'Janeth', 'Centro Estético Janeth  Duarte', 'Caldes d\'Estrac', 'Cataluna', '937 911 350', NULL, NULL, NULL, 'Other', 'RF', '2021-07-06 00:15:39', '2021-07-06 00:55:05', NULL, NULL);
INSERT INTO `clients` VALUES (688, '2021-07-06', 'No contact', 'NO', NULL, '2', '.', 'El Saló Estética avanzada', 'Canet de Mar', 'Cataluna', '937 956 439', NULL, NULL, NULL, 'Other', 'Llamar el mes que viene', '2021-07-06 00:25:48', '2021-07-06 00:25:48', NULL, NULL);
INSERT INTO `clients` VALUES (689, '2021-07-06', 'No contact', 'NO', NULL, '2', '.', 'Sublim Estetica', 'Canet de Mar', 'Cataluna', NULL, '628 177 106', 'info@sublimestetica.com', NULL, 'Other', 'Indiba. La responsable no suele estar por el centro', '2021-07-06 00:28:26', '2021-07-06 00:28:26', NULL, NULL);
INSERT INTO `clients` VALUES (690, '2021-07-06', 'No contact', 'NO', NULL, '2', '.', 'Anel CB', 'Vilafranca del Penedès', 'Cataluna', '938 905 224', NULL, NULL, NULL, 'Other', 'Indiba. Llamar en dos semanas', '2021-07-06 00:31:35', '2021-07-06 00:31:35', NULL, NULL);
INSERT INTO `clients` VALUES (691, '2021-07-06', 'RECALL', 'YES', NULL, '2', 'Gloria Pérez', 'Alestetic Centro de Belleza y Bienestar', 'Vilafranca del Penedès', 'Cataluna', '935 389 700', NULL, NULL, NULL, 'Other', 'Indiba', '2021-07-06 00:40:45', '2021-07-07 00:29:44', NULL, NULL);
INSERT INTO `clients` VALUES (692, '2021-07-06', 'No contact', 'NO', NULL, '2', '.', 'Centro de Estética Nova Imatge Sabadell', 'Sabadell', 'Cataluna', '937 114 487', NULL, NULL, NULL, 'Other', 'RF', '2021-07-06 00:42:05', '2021-07-06 00:42:05', NULL, NULL);
INSERT INTO `clients` VALUES (693, '2021-07-06', 'No contact', 'NO', NULL, '2', '.', 'Centro de Salud y Estética Sabadell', 'Sabadell', 'Cataluna', '937 278 399', NULL, 'info@cuidatsabadell.cat', NULL, 'Other', 'RF. Ocupadísima, solo mail', '2021-07-06 00:45:36', '2021-07-06 00:49:27', NULL, NULL);
INSERT INTO `clients` VALUES (694, '2021-07-06', 'Not interested', 'NO', NULL, '2', 'Rosana', 'Estética Rosana', 'Abrera', 'Cataluna', NULL, '661 967 151', NULL, NULL, 'Other', 'RF. No le interesan más marcas', '2021-07-06 00:59:38', '2021-07-06 00:59:38', NULL, NULL);
INSERT INTO `clients` VALUES (695, '2021-07-06', 'No contact', 'NO', NULL, '2', '.', 'Centro Estetic Thermal', 'Abrera', 'Cataluna', NULL, '665 845 139', NULL, NULL, 'Other', 'RF. La responsable no está trabajando', '2021-07-06 01:01:03', '2021-07-06 01:03:23', NULL, NULL);
INSERT INTO `clients` VALUES (696, '2021-07-06', 'No contact', 'NO', NULL, '2', '.', 'Estética 3C', 'Terrasa', 'Cataluna', '931 704 502', NULL, NULL, NULL, 'Other', 'Indiba', '2021-07-06 01:02:53', '2021-07-06 01:02:53', NULL, NULL);
INSERT INTO `clients` VALUES (697, '2021-07-06', 'RECALL', 'YES', NULL, '2', 'Lorena', 'Estética Avanzada Lorena Morales', 'Terrassa', 'Cataluna', NULL, '640 065 110', NULL, NULL, 'Other', 'RF', '2021-07-06 01:05:06', '2021-07-06 02:07:49', NULL, NULL);
INSERT INTO `clients` VALUES (698, '2021-07-06', 'No contact', 'NO', NULL, '2', 'Marta', 'Benessere Marta Oliart', 'Terrassa', 'Cataluna', '937 364 059', NULL, 'martaoliart@gmail.com', NULL, 'Other', 'Indiba. No está casi nunca por el centro. Mandar mail', '2021-07-06 01:07:18', '2021-07-06 01:07:18', NULL, NULL);
INSERT INTO `clients` VALUES (699, '2021-07-06', 'No contact', 'NO', NULL, '2', '.', 'Naturelle Centro de Estética', 'Terrassa', 'Cataluna', '937 354 428', NULL, NULL, NULL, 'Other', 'RF. Hasta septiembre no atiende a nadie nuevo', '2021-07-06 01:09:01', '2021-07-06 01:09:01', NULL, NULL);
INSERT INTO `clients` VALUES (700, '2021-07-06', 'RECALL', 'YES', NULL, '2', 'Montserrat', 'Estética Montserrat', 'Terrassa', 'Cataluna', NULL, '657 225 775', NULL, NULL, 'Other', 'RF', '2021-07-06 01:10:44', '2021-07-06 02:17:20', NULL, NULL);
INSERT INTO `clients` VALUES (701, '2021-07-06', 'Not interested', 'NO', NULL, '2', '.', 'Beldefinity', 'Terrassa', 'Cataluna', '937 331 320', NULL, NULL, NULL, 'Other', 'Indiba. Se jubila', '2021-07-06 01:12:42', '2021-07-06 01:12:42', NULL, NULL);
INSERT INTO `clients` VALUES (702, '2021-07-07', 'RECALL', 'YES', NULL, '2', '.', 'Centro de Estética Fanny', 'El Masnou', 'Cataluna', '935 552 309', NULL, NULL, NULL, 'Other', 'Indiba', '2021-07-06 01:26:41', '2021-07-07 00:33:39', NULL, NULL);
INSERT INTO `clients` VALUES (703, '2021-07-06', 'No contact', 'NO', NULL, '2', '.', 'Ginac', 'Badalona', 'Cataluna', '934 646 946', NULL, NULL, NULL, 'Other', 'RF', '2021-07-06 01:29:19', '2021-07-06 01:29:19', NULL, NULL);
INSERT INTO `clients` VALUES (704, '2021-07-06', 'Not interesting', 'NO', NULL, '2', '.', 'Aire Estética', 'El Masnou', 'Cataluna', NULL, '628 872 814', NULL, NULL, 'Natura Bisse', 'Indiba. Es peluquería también', '2021-07-06 01:32:38', '2021-07-07 00:36:38', NULL, NULL);
INSERT INTO `clients` VALUES (705, '2021-07-06', 'No contact', 'NO', NULL, '2', '.', 'Opium Centro de Estética', 'Sant Cugat del Vallés', 'Cataluna', '935 878 888', NULL, NULL, NULL, 'Other', 'BDR. Indiba. Están a tope', '2021-07-06 01:48:42', '2021-07-07 00:37:59', NULL, NULL);
INSERT INTO `clients` VALUES (706, '2021-07-07', 'No contact', 'NO', NULL, '2', '.', 'Centro Abril Estética Avanzada', 'El Masnou', 'Cataluna', '935 404 428', NULL, NULL, NULL, 'Other', 'RF', '2021-07-06 22:54:08', '2021-07-06 22:54:08', NULL, NULL);
INSERT INTO `clients` VALUES (707, '2021-07-07', 'No contact', 'NO', NULL, '2', 'Pam', 'Sensevello', 'Igualada', 'Cataluna', '938 041 792', NULL, NULL, NULL, 'Other', 'SkinClinic', '2021-07-06 22:56:11', '2021-07-08 00:57:48', NULL, NULL);
INSERT INTO `clients` VALUES (708, '2021-07-07', 'No contact', 'NO', NULL, '2', '.', 'ImaigVic', 'Vic', 'Cataluna', '938 867 759', NULL, NULL, NULL, 'Other', 'Indiba', '2021-07-06 22:57:17', '2021-07-06 22:57:17', NULL, NULL);
INSERT INTO `clients` VALUES (709, '2021-07-07', 'Not interested', 'NO', NULL, '2', 'Anna', 'Anna Armengol Estética', 'Manlleu', 'Cataluna', '938 510 906', NULL, NULL, NULL, 'Other', 'Babor. Indiba. No le interesa meter nuevas marcas', '2021-07-06 22:58:22', '2021-07-08 00:54:35', NULL, NULL);
INSERT INTO `clients` VALUES (710, '2021-07-07', 'No contact', 'NO', NULL, '2', '.', 'Alda Estética', 'Sant Cugat del Vallés', 'Cataluna', '935 890 312', NULL, NULL, NULL, 'Other', 'Indiba', '2021-07-06 23:01:43', '2021-07-06 23:01:43', NULL, NULL);
INSERT INTO `clients` VALUES (711, '2021-07-07', 'No contact', 'NO', NULL, '2', '.', 'Estética Boters', 'Molins de Rei', 'Cataluna', '936 802 531', '722 831 331', NULL, NULL, 'Eberlin', 'RF. Están a tope,', '2021-07-06 23:05:50', '2021-07-06 23:05:50', NULL, NULL);
INSERT INTO `clients` VALUES (712, '2021-07-07', 'Not interested', 'NO', NULL, '2', '.', 'Secrets de Bellesa', 'Sant Feliu de Llobregat', 'Cataluna', NULL, '609 313 631', NULL, NULL, 'Other', 'Indiba. Borde', '2021-07-06 23:08:23', '2021-07-08 00:55:15', NULL, NULL);
INSERT INTO `clients` VALUES (713, '2021-07-07', 'No contact', 'NO', NULL, '2', 'Patri', 'Patri Estética y Bienestar', 'Gavà', 'Cataluna', '936 388 022', NULL, NULL, NULL, 'Other', 'Indiba', '2021-07-06 23:09:49', '2021-07-06 23:09:49', NULL, NULL);
INSERT INTO `clients` VALUES (714, '2021-07-07', 'RECALL', 'YES', NULL, '2', '.', 'Géneris', 'Vilanova i la Geltrú', 'Cataluna', '938 150 404', NULL, NULL, NULL, 'Other', 'RF. Es una empresa de distribución. Muy simpático', '2021-07-06 23:17:45', '2021-07-06 23:17:45', NULL, NULL);
INSERT INTO `clients` VALUES (715, '2021-07-07', 'No contact', 'NO', NULL, '2', '.', '6 Sentits', 'Palau-solità i Plegamans', 'Cataluna', '931 151 951', NULL, NULL, NULL, 'Other', 'RF', '2021-07-06 23:22:16', '2021-07-06 23:22:16', NULL, NULL);
INSERT INTO `clients` VALUES (716, '2021-07-07', 'No contact', 'NO', NULL, '2', '.', 'Centres Mercury', 'Granollers', 'Cataluna', NULL, '689 316 464', NULL, NULL, 'Other', 'RF', '2021-07-06 23:24:12', '2021-07-06 23:24:12', NULL, NULL);
INSERT INTO `clients` VALUES (717, '2021-07-07', 'No contact', 'NO', NULL, '2', 'Eloisa', 'Estética Eloisa', 'Cardedeu', 'Cataluna', NULL, '656 608 678', NULL, NULL, 'Other', 'Kobido', '2021-07-06 23:26:49', '2021-07-06 23:26:49', NULL, NULL);
INSERT INTO `clients` VALUES (718, '2021-07-07', 'No contact', 'NO', NULL, '2', '.', 'Artemiss Centro de Belleza, Salud y Bienestar', 'Barcelona', 'Cataluna', '933 467 970', NULL, NULL, NULL, 'Other', 'Indiba', '2021-07-07 00:00:37', '2021-07-07 00:00:37', NULL, NULL);
INSERT INTO `clients` VALUES (719, '2021-07-07', 'No contact', 'NO', NULL, '2', '.', 'Peltucos Estética', 'Barcelona', 'Cataluna', '931 252 801', NULL, NULL, NULL, 'Other', 'Montibello', '2021-07-07 00:01:47', '2021-07-07 00:01:47', NULL, NULL);
INSERT INTO `clients` VALUES (720, '2021-07-07', 'No contact', 'NO', NULL, '2', '.', 'Clínica Cipsalut', 'Barcelona', 'Cataluna', '934 526 688', NULL, NULL, NULL, 'Other', 'Kobido. RF', '2021-07-07 00:07:24', '2021-07-07 00:07:24', NULL, NULL);
INSERT INTO `clients` VALUES (721, '2021-07-07', 'No contact', 'NO', NULL, '2', '.', 'Beauty BCN', 'Barcelona', 'Cataluna', NULL, '673 387 999', NULL, NULL, 'Other', 'Kobido', '2021-07-07 00:09:31', '2021-07-07 02:10:28', NULL, NULL);
INSERT INTO `clients` VALUES (722, '2021-07-07', 'No contact', 'NO', NULL, '2', '.', 'Vintage Esthetic', 'Barcelona', 'Cataluna', '931 066 237', NULL, NULL, NULL, 'Other', 'RF', '2021-07-07 00:10:20', '2021-07-07 00:10:20', NULL, NULL);
INSERT INTO `clients` VALUES (723, '2021-07-07', 'No contact', 'NO', NULL, '2', 'Yolanda', 'Yolanda Calvo Estética', 'Barcelona', 'Cataluna', '933 734 550', NULL, NULL, NULL, 'Other', 'RF', '2021-07-07 00:11:10', '2021-07-07 00:11:10', NULL, NULL);
INSERT INTO `clients` VALUES (724, '2021-07-07', 'No contact', 'NO', NULL, '2', '.', 'Ebody Beauty Center', 'Barcelona', 'Cataluna', '931 936 802', NULL, NULL, NULL, 'Other', 'BDR', '2021-07-07 01:58:23', '2021-07-07 01:58:23', NULL, NULL);
INSERT INTO `clients` VALUES (725, '2021-07-08', 'No contact', 'NO', NULL, '2', 'Rocío', 'Rocío Delgado Salud y Belleza', 'Écija', 'Andalucia', NULL, '615 174 777', NULL, NULL, 'Other', 'Es embajadora CND', '2021-07-07 22:49:30', '2021-07-07 22:49:30', NULL, NULL);
INSERT INTO `clients` VALUES (726, '2021-07-08', 'Not interested', 'NO', NULL, '2', 'Patricia', 'Estética Secretos', 'Pamplona', 'Navarra', NULL, '652 435 239', NULL, NULL, 'Other', 'Centro Oficial Secretos del Agua', '2021-07-07 22:54:14', '2021-07-07 22:54:39', NULL, NULL);
INSERT INTO `clients` VALUES (727, '2021-07-08', 'No contact', 'NO', NULL, '2', 'Marta', 'Estética Galdana', 'Girona', 'Cataluna', '972 208 302', NULL, NULL, NULL, 'Other', 'GerNetic', '2021-07-07 22:56:56', '2021-07-07 22:56:56', NULL, NULL);
INSERT INTO `clients` VALUES (728, '2021-07-08', 'Not interested', 'NO', NULL, '2', '.', 'Estetik\'Els', 'Granollers', 'Cataluna', '931 736 281', NULL, NULL, NULL, 'Germaine', 'Exclusividad con Germaine', '2021-07-07 22:59:50', '2021-07-07 22:59:50', NULL, NULL);
INSERT INTO `clients` VALUES (729, '2021-07-08', 'Not interested', 'NO', NULL, '2', 'Ángeles', 'Centro de Estética Ángeles Camiña', 'Portonovo', 'Galicia', '986 691 072', NULL, NULL, NULL, 'Other', 'Ahora solo trabaja con SkinIdent®', '2021-07-07 23:17:01', '2021-07-07 23:17:01', NULL, NULL);
INSERT INTO `clients` VALUES (730, '2021-07-08', 'No contact', 'NO', NULL, '2', 'Lorena', 'Estética Lorena Fernandez', 'Oviedo', 'Asturias', '985 088 650', NULL, NULL, NULL, 'Other', 'GerNetic', '2021-07-07 23:19:51', '2021-07-07 23:19:51', NULL, NULL);
INSERT INTO `clients` VALUES (731, '2021-07-08', 'No contact', 'NO', NULL, '2', '.', 'H2O Estética Avanzada', 'Cádiz', 'Andalucia', NULL, '623 353 291', NULL, NULL, 'Other', 'GerNetic', '2021-07-07 23:48:04', '2021-07-07 23:48:04', NULL, NULL);
INSERT INTO `clients` VALUES (732, '2021-07-08', 'Not interested', 'NO', NULL, '2', 'Montse', 'Estètica i Teràpies', 'Barcelona', 'Cataluna', '933 521 215', NULL, NULL, NULL, 'Skeyndor', 'Exclusividad con Skeyndor', '2021-07-07 23:51:59', '2021-07-07 23:51:59', NULL, NULL);
INSERT INTO `clients` VALUES (733, '2021-07-08', 'Not interested', 'NO', NULL, '2', '.', 'HeBe Estética Tomiño', 'Tomiño', 'Galicia', '986 622 726', NULL, NULL, NULL, 'Skeyndor', 'Solo trabaja con Skeyndor', '2021-07-07 23:54:28', '2021-07-07 23:54:48', NULL, NULL);
INSERT INTO `clients` VALUES (734, '2021-07-08', 'No contact', 'NO', NULL, '2', '.', 'Centro de Estética y Salud Rogem', 'Tarragona', 'Cataluna', '977 362 123', NULL, NULL, NULL, 'Massada', 'BDR, Skeyndor', '2021-07-07 23:57:12', '2021-07-07 23:57:12', NULL, NULL);
INSERT INTO `clients` VALUES (735, '2021-07-08', 'No contact', 'NO', NULL, '2', 'Olaya', 'Estética Olaya Carrero', 'San Sebastián de los Reyes', 'Madrid', NULL, '609 108 757', NULL, NULL, 'Skeyndor', NULL, '2021-07-08 00:00:04', '2021-07-08 00:00:04', NULL, NULL);
INSERT INTO `clients` VALUES (736, '2021-07-08', 'Not interesting', 'NO', NULL, '2', 'Asun', 'Asun Centro de Estética', 'Arévalo', 'Castilla Leon', '920 303 642', NULL, NULL, NULL, 'Skeyndor', 'No se quiere meter en historias (voz de mayor)', '2021-07-08 00:01:44', '2021-07-08 00:01:44', NULL, NULL);
INSERT INTO `clients` VALUES (737, '2021-07-08', 'No contact', 'NO', NULL, '2', 'Gemma', 'Gemma Gumà Centre d\'Estètica', 'Igualada', 'Cataluna', '938 032 514', NULL, NULL, NULL, 'Skeyndor', 'Phyt\'s', '2021-07-08 00:03:42', '2021-07-08 00:03:42', NULL, NULL);
INSERT INTO `clients` VALUES (738, '2021-07-08', 'No contact', 'NO', NULL, '2', 'Nieves', 'Centro de Estética Nieves García', 'Valladolid', 'Castilla Leon', '983 663 316', NULL, NULL, NULL, 'Skeyndor', NULL, '2021-07-08 00:05:09', '2021-07-08 00:05:09', NULL, NULL);
INSERT INTO `clients` VALUES (739, '2021-07-08', 'No contact', 'NO', NULL, '2', '.', 'Beauty Barcelona', 'Barcelona', 'Cataluna', '938 447 858', NULL, NULL, NULL, 'Medik8', 'Dermalogica', '2021-07-08 00:29:25', '2021-07-08 00:29:25', NULL, NULL);
INSERT INTO `clients` VALUES (740, '2021-07-08', 'No contact', 'NO', NULL, '2', '.', 'Jania Estética', 'Manresa', 'Cataluna', '938 734 390', NULL, NULL, NULL, 'Skeyndor', NULL, '2021-07-08 00:31:59', '2021-07-08 00:31:59', NULL, NULL);
INSERT INTO `clients` VALUES (741, '2021-07-08', 'No contact', 'NO', NULL, '2', 'Laia', 'Laia Torta Beauty Calm', 'Amposta', 'Cataluna', NULL, '687 898 414', NULL, NULL, 'Germaine', NULL, '2021-07-08 00:33:54', '2021-07-08 00:33:54', NULL, NULL);
INSERT INTO `clients` VALUES (742, '2021-07-08', 'No contact', 'NO', NULL, '2', '.', 'Estética Berdayes', 'Noreña', 'Asturias', '985 740 393', NULL, NULL, NULL, 'Casmara', 'BDR', '2021-07-08 00:36:04', '2021-07-08 00:36:04', NULL, NULL);
INSERT INTO `clients` VALUES (743, '2021-07-08', 'No contact', 'NO', NULL, '2', 'Marta', 'Marta de la Fuente', 'Ansoain', 'Navarra', '948 132 577', '644 746 606', NULL, NULL, 'Mesoestetic', 'De vacaciones hasta el 19', '2021-07-08 01:52:13', '2021-07-08 01:52:13', NULL, NULL);
INSERT INTO `clients` VALUES (744, '2021-07-08', 'No contact', 'NO', NULL, '2', 'Maribel', 'Estética Maribel Pomares', 'Alicante', 'Valencia', '966 723 076', NULL, NULL, NULL, 'Mesoestetic', NULL, '2021-07-08 01:55:09', '2021-07-08 01:55:09', NULL, NULL);
INSERT INTO `clients` VALUES (745, '2021-07-08', 'No contact', 'NO', NULL, '2', '.', 'Aura Clínica de Estética', 'Murcia', 'Murcia', '868 110 900', NULL, NULL, NULL, 'Other', 'Babor', '2021-07-08 02:07:27', '2021-07-08 02:08:38', NULL, NULL);
INSERT INTO `clients` VALUES (746, '2021-07-08', 'No contact', 'NO', NULL, '2', '.', 'Clinic Bascoy', 'Barcelona', 'Cataluna', '937 933 675', NULL, NULL, NULL, 'Other', 'Cirugía. Solo trabajan por mail', '2021-07-08 02:11:04', '2021-07-08 02:11:04', NULL, NULL);
INSERT INTO `clients` VALUES (747, '2021-07-08', 'No contact', 'NO', NULL, '2', '.', 'Lisa Beauty Valdebebas', 'Madrid', 'Madrid', NULL, '609 736 251', NULL, NULL, 'Biologique', NULL, '2021-07-08 02:12:42', '2021-07-08 02:12:42', NULL, NULL);
INSERT INTO `clients` VALUES (748, '2021-07-08', 'No contact', 'NO', NULL, '2', '.', 'Naturelle', 'Amposta', 'Cataluna', NULL, '629 709 947', NULL, NULL, 'Mesoestetic', NULL, '2021-07-08 02:17:19', '2021-07-08 02:17:19', NULL, NULL);

-- ----------------------------
-- Table structure for currencies
-- ----------------------------
DROP TABLE IF EXISTS `currencies`;
CREATE TABLE `currencies`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `main_currency` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of currencies
-- ----------------------------

-- ----------------------------
-- Table structure for documents
-- ----------------------------
DROP TABLE IF EXISTS `documents`;
CREATE TABLE `documents`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `project_id` int UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `project_fk_340053`(`project_id`) USING BTREE,
  CONSTRAINT `project_fk_340053` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of documents
-- ----------------------------

-- ----------------------------
-- Table structure for income_sources
-- ----------------------------
DROP TABLE IF EXISTS `income_sources`;
CREATE TABLE `income_sources`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `fee_percent` double(15, 2) NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of income_sources
-- ----------------------------

-- ----------------------------
-- Table structure for media
-- ----------------------------
DROP TABLE IF EXISTS `media`;
CREATE TABLE `media`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `collection_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `disk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `size` bigint UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `order_column` int UNSIGNED NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `media_model_type_model_id_index`(`model_type`, `model_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of media
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (2, '2016_06_01_000001_create_oauth_auth_codes_table', 1);
INSERT INTO `migrations` VALUES (3, '2016_06_01_000002_create_oauth_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (4, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1);
INSERT INTO `migrations` VALUES (5, '2016_06_01_000004_create_oauth_clients_table', 1);
INSERT INTO `migrations` VALUES (6, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1);
INSERT INTO `migrations` VALUES (7, '2019_09_15_000000_create_media_table', 1);
INSERT INTO `migrations` VALUES (8, '2019_09_15_000001_create_permissions_table', 1);
INSERT INTO `migrations` VALUES (9, '2019_09_15_000002_create_project_statuses_table', 1);
INSERT INTO `migrations` VALUES (10, '2019_09_15_000003_create_transactions_table', 1);
INSERT INTO `migrations` VALUES (11, '2019_09_15_000004_create_documents_table', 1);
INSERT INTO `migrations` VALUES (12, '2019_09_15_000005_create_notes_table', 1);
INSERT INTO `migrations` VALUES (13, '2019_09_15_000006_create_projects_table', 1);
INSERT INTO `migrations` VALUES (14, '2019_09_15_000007_create_roles_table', 1);
INSERT INTO `migrations` VALUES (15, '2019_09_15_000008_create_clients_table', 1);
INSERT INTO `migrations` VALUES (16, '2019_09_15_000009_create_client_statuses_table', 1);
INSERT INTO `migrations` VALUES (17, '2019_09_15_000010_create_income_sources_table', 1);
INSERT INTO `migrations` VALUES (18, '2019_09_15_000011_create_transaction_types_table', 1);
INSERT INTO `migrations` VALUES (19, '2019_09_15_000012_create_currencies_table', 1);
INSERT INTO `migrations` VALUES (20, '2019_09_15_000013_create_users_table', 1);
INSERT INTO `migrations` VALUES (21, '2019_09_15_000014_create_role_user_pivot_table', 1);
INSERT INTO `migrations` VALUES (22, '2019_09_15_000015_create_permission_role_pivot_table', 1);
INSERT INTO `migrations` VALUES (23, '2019_09_15_000016_add_relationship_fields_to_clients_table', 1);
INSERT INTO `migrations` VALUES (24, '2019_09_15_000017_add_relationship_fields_to_projects_table', 1);
INSERT INTO `migrations` VALUES (25, '2019_09_15_000018_add_relationship_fields_to_notes_table', 1);
INSERT INTO `migrations` VALUES (26, '2019_09_15_000019_add_relationship_fields_to_documents_table', 1);
INSERT INTO `migrations` VALUES (27, '2019_09_15_000020_add_relationship_fields_to_transactions_table', 1);

-- ----------------------------
-- Table structure for notes
-- ----------------------------
DROP TABLE IF EXISTS `notes`;
CREATE TABLE `notes`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `note_text` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `project_id` int UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `project_fk_340047`(`project_id`) USING BTREE,
  CONSTRAINT `project_fk_340047` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of notes
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NULL DEFAULT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_access_tokens_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of oauth_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_auth_codes
-- ----------------------------
DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE `oauth_auth_codes`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_auth_codes_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of oauth_auth_codes
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE `oauth_clients`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `provider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_clients_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of oauth_clients
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_personal_access_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE `oauth_personal_access_clients`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of oauth_personal_access_clients
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_refresh_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_refresh_tokens_access_token_id_index`(`access_token_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of oauth_refresh_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for permission_role
-- ----------------------------
DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE `permission_role`  (
  `role_id` int UNSIGNED NOT NULL,
  `permission_id` int UNSIGNED NOT NULL,
  INDEX `role_id_fk_339981`(`role_id`) USING BTREE,
  INDEX `permission_id_fk_339981`(`permission_id`) USING BTREE,
  CONSTRAINT `permission_id_fk_339981` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `role_id_fk_339981` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of permission_role
-- ----------------------------
INSERT INTO `permission_role` VALUES (1, 1);
INSERT INTO `permission_role` VALUES (1, 2);
INSERT INTO `permission_role` VALUES (1, 3);
INSERT INTO `permission_role` VALUES (1, 4);
INSERT INTO `permission_role` VALUES (1, 5);
INSERT INTO `permission_role` VALUES (1, 6);
INSERT INTO `permission_role` VALUES (1, 7);
INSERT INTO `permission_role` VALUES (1, 8);
INSERT INTO `permission_role` VALUES (1, 9);
INSERT INTO `permission_role` VALUES (1, 10);
INSERT INTO `permission_role` VALUES (1, 11);
INSERT INTO `permission_role` VALUES (1, 12);
INSERT INTO `permission_role` VALUES (1, 13);
INSERT INTO `permission_role` VALUES (1, 14);
INSERT INTO `permission_role` VALUES (1, 15);
INSERT INTO `permission_role` VALUES (1, 16);
INSERT INTO `permission_role` VALUES (1, 17);
INSERT INTO `permission_role` VALUES (1, 18);
INSERT INTO `permission_role` VALUES (1, 19);
INSERT INTO `permission_role` VALUES (1, 20);
INSERT INTO `permission_role` VALUES (1, 21);
INSERT INTO `permission_role` VALUES (1, 22);
INSERT INTO `permission_role` VALUES (1, 23);
INSERT INTO `permission_role` VALUES (1, 24);
INSERT INTO `permission_role` VALUES (1, 25);
INSERT INTO `permission_role` VALUES (1, 26);
INSERT INTO `permission_role` VALUES (1, 27);
INSERT INTO `permission_role` VALUES (1, 28);
INSERT INTO `permission_role` VALUES (1, 29);
INSERT INTO `permission_role` VALUES (1, 30);
INSERT INTO `permission_role` VALUES (1, 31);
INSERT INTO `permission_role` VALUES (1, 32);
INSERT INTO `permission_role` VALUES (1, 33);
INSERT INTO `permission_role` VALUES (1, 34);
INSERT INTO `permission_role` VALUES (1, 35);
INSERT INTO `permission_role` VALUES (1, 36);
INSERT INTO `permission_role` VALUES (1, 37);
INSERT INTO `permission_role` VALUES (1, 38);
INSERT INTO `permission_role` VALUES (1, 39);
INSERT INTO `permission_role` VALUES (1, 40);
INSERT INTO `permission_role` VALUES (1, 41);
INSERT INTO `permission_role` VALUES (1, 42);
INSERT INTO `permission_role` VALUES (1, 43);
INSERT INTO `permission_role` VALUES (1, 44);
INSERT INTO `permission_role` VALUES (1, 45);
INSERT INTO `permission_role` VALUES (1, 46);
INSERT INTO `permission_role` VALUES (1, 47);
INSERT INTO `permission_role` VALUES (1, 48);
INSERT INTO `permission_role` VALUES (1, 49);
INSERT INTO `permission_role` VALUES (1, 50);
INSERT INTO `permission_role` VALUES (1, 51);
INSERT INTO `permission_role` VALUES (1, 52);
INSERT INTO `permission_role` VALUES (1, 53);
INSERT INTO `permission_role` VALUES (1, 54);
INSERT INTO `permission_role` VALUES (1, 55);
INSERT INTO `permission_role` VALUES (1, 56);
INSERT INTO `permission_role` VALUES (1, 57);
INSERT INTO `permission_role` VALUES (1, 58);
INSERT INTO `permission_role` VALUES (1, 59);
INSERT INTO `permission_role` VALUES (1, 60);
INSERT INTO `permission_role` VALUES (1, 61);
INSERT INTO `permission_role` VALUES (1, 62);
INSERT INTO `permission_role` VALUES (1, 63);
INSERT INTO `permission_role` VALUES (1, 64);
INSERT INTO `permission_role` VALUES (1, 65);
INSERT INTO `permission_role` VALUES (1, 66);
INSERT INTO `permission_role` VALUES (1, 67);
INSERT INTO `permission_role` VALUES (1, 68);
INSERT INTO `permission_role` VALUES (1, 69);
INSERT INTO `permission_role` VALUES (1, 70);
INSERT INTO `permission_role` VALUES (1, 71);
INSERT INTO `permission_role` VALUES (1, 72);
INSERT INTO `permission_role` VALUES (1, 73);
INSERT INTO `permission_role` VALUES (2, 17);
INSERT INTO `permission_role` VALUES (2, 18);
INSERT INTO `permission_role` VALUES (2, 19);
INSERT INTO `permission_role` VALUES (2, 20);
INSERT INTO `permission_role` VALUES (2, 21);
INSERT INTO `permission_role` VALUES (2, 22);
INSERT INTO `permission_role` VALUES (2, 23);
INSERT INTO `permission_role` VALUES (2, 24);
INSERT INTO `permission_role` VALUES (2, 25);
INSERT INTO `permission_role` VALUES (2, 26);
INSERT INTO `permission_role` VALUES (2, 27);
INSERT INTO `permission_role` VALUES (2, 28);
INSERT INTO `permission_role` VALUES (2, 29);
INSERT INTO `permission_role` VALUES (2, 30);
INSERT INTO `permission_role` VALUES (2, 31);
INSERT INTO `permission_role` VALUES (2, 32);
INSERT INTO `permission_role` VALUES (2, 33);
INSERT INTO `permission_role` VALUES (2, 34);
INSERT INTO `permission_role` VALUES (2, 35);
INSERT INTO `permission_role` VALUES (2, 36);
INSERT INTO `permission_role` VALUES (2, 37);
INSERT INTO `permission_role` VALUES (2, 38);
INSERT INTO `permission_role` VALUES (2, 39);
INSERT INTO `permission_role` VALUES (2, 40);
INSERT INTO `permission_role` VALUES (2, 41);
INSERT INTO `permission_role` VALUES (2, 42);
INSERT INTO `permission_role` VALUES (2, 43);
INSERT INTO `permission_role` VALUES (2, 44);
INSERT INTO `permission_role` VALUES (2, 45);
INSERT INTO `permission_role` VALUES (2, 46);
INSERT INTO `permission_role` VALUES (2, 47);
INSERT INTO `permission_role` VALUES (2, 48);
INSERT INTO `permission_role` VALUES (2, 49);
INSERT INTO `permission_role` VALUES (2, 50);
INSERT INTO `permission_role` VALUES (2, 51);
INSERT INTO `permission_role` VALUES (2, 52);
INSERT INTO `permission_role` VALUES (2, 53);
INSERT INTO `permission_role` VALUES (2, 54);
INSERT INTO `permission_role` VALUES (2, 55);
INSERT INTO `permission_role` VALUES (2, 56);
INSERT INTO `permission_role` VALUES (2, 57);
INSERT INTO `permission_role` VALUES (2, 58);
INSERT INTO `permission_role` VALUES (2, 59);
INSERT INTO `permission_role` VALUES (2, 60);
INSERT INTO `permission_role` VALUES (2, 61);
INSERT INTO `permission_role` VALUES (2, 62);
INSERT INTO `permission_role` VALUES (2, 63);
INSERT INTO `permission_role` VALUES (2, 64);
INSERT INTO `permission_role` VALUES (2, 65);
INSERT INTO `permission_role` VALUES (2, 66);
INSERT INTO `permission_role` VALUES (2, 67);
INSERT INTO `permission_role` VALUES (2, 68);
INSERT INTO `permission_role` VALUES (2, 69);
INSERT INTO `permission_role` VALUES (2, 70);
INSERT INTO `permission_role` VALUES (2, 71);
INSERT INTO `permission_role` VALUES (2, 72);
INSERT INTO `permission_role` VALUES (2, 73);

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 74 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES (1, 'user_management_access', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (2, 'permission_create', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (3, 'permission_edit', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (4, 'permission_show', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (5, 'permission_delete', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (6, 'permission_access', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (7, 'role_create', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (8, 'role_edit', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (9, 'role_show', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (10, 'role_delete', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (11, 'role_access', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (12, 'user_create', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (13, 'user_edit', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (14, 'user_show', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (15, 'user_delete', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (16, 'user_access', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (17, 'client_management_setting_access', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (18, 'currency_create', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (19, 'currency_edit', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (20, 'currency_show', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (21, 'currency_delete', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (22, 'currency_access', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (23, 'transaction_type_create', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (24, 'transaction_type_edit', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (25, 'transaction_type_show', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (26, 'transaction_type_delete', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (27, 'transaction_type_access', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (28, 'income_source_create', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (29, 'income_source_edit', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (30, 'income_source_show', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (31, 'income_source_delete', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (32, 'income_source_access', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (33, 'client_status_create', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (34, 'client_status_edit', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (35, 'client_status_show', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (36, 'client_status_delete', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (37, 'client_status_access', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (38, 'project_status_create', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (39, 'project_status_edit', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (40, 'project_status_show', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (41, 'project_status_delete', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (42, 'project_status_access', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (43, 'client_management_access', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (44, 'client_create', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (45, 'client_edit', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (46, 'client_show', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (47, 'client_delete', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (48, 'client_access', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (49, 'project_create', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (50, 'project_edit', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (51, 'project_show', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (52, 'project_delete', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (53, 'project_access', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (54, 'note_create', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (55, 'note_edit', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (56, 'note_show', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (57, 'note_delete', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (58, 'note_access', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (59, 'document_create', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (60, 'document_edit', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (61, 'document_show', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (62, 'document_delete', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (63, 'document_access', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (64, 'transaction_create', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (65, 'transaction_edit', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (66, 'transaction_show', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (67, 'transaction_delete', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (68, 'transaction_access', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (69, 'client_report_create', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (70, 'client_report_edit', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (71, 'client_report_show', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (72, 'client_report_delete', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);
INSERT INTO `permissions` VALUES (73, 'client_report_access', '2019-09-14 21:10:05', '2019-09-14 21:10:05', NULL);

-- ----------------------------
-- Table structure for project_statuses
-- ----------------------------
DROP TABLE IF EXISTS `project_statuses`;
CREATE TABLE `project_statuses`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of project_statuses
-- ----------------------------

-- ----------------------------
-- Table structure for projects
-- ----------------------------
DROP TABLE IF EXISTS `projects`;
CREATE TABLE `projects`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `start_date` date NULL DEFAULT NULL,
  `budget` double(15, 2) NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `client_id` int UNSIGNED NULL DEFAULT NULL,
  `status_id` int UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `client_fk_340038`(`client_id`) USING BTREE,
  INDEX `status_fk_340042`(`status_id`) USING BTREE,
  CONSTRAINT `client_fk_340038` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `status_fk_340042` FOREIGN KEY (`status_id`) REFERENCES `project_statuses` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of projects
-- ----------------------------

-- ----------------------------
-- Table structure for role_user
-- ----------------------------
DROP TABLE IF EXISTS `role_user`;
CREATE TABLE `role_user`  (
  `user_id` int UNSIGNED NOT NULL,
  `role_id` int UNSIGNED NOT NULL,
  INDEX `user_id_fk_339990`(`user_id`) USING BTREE,
  INDEX `role_id_fk_339990`(`role_id`) USING BTREE,
  CONSTRAINT `role_id_fk_339990` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `user_id_fk_339990` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role_user
-- ----------------------------
INSERT INTO `role_user` VALUES (1, 1);
INSERT INTO `role_user` VALUES (2, 2);
INSERT INTO `role_user` VALUES (3, 2);
INSERT INTO `role_user` VALUES (4, 2);
INSERT INTO `role_user` VALUES (5, 2);
INSERT INTO `role_user` VALUES (6, 2);
INSERT INTO `role_user` VALUES (7, 2);
INSERT INTO `role_user` VALUES (8, 2);

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'Admin', '2019-09-14 21:09:29', '2019-09-14 21:09:29', NULL);
INSERT INTO `roles` VALUES (2, 'User', '2019-09-14 21:09:29', '2019-09-14 21:09:29', NULL);

-- ----------------------------
-- Table structure for tb_crm
-- ----------------------------
DROP TABLE IF EXISTS `tb_crm`;
CREATE TABLE `tb_crm`  (
  `crm_id` int NOT NULL AUTO_INCREMENT,
  `crm_date` date NULL DEFAULT NULL,
  `crm_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `crm_contact` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `crm_company` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `crm_town` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `crm_area` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `crm_tel` int NULL DEFAULT NULL,
  `crm_mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `crm_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `crm_web` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `crm_brands` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `crm_comments` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`crm_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_crm
-- ----------------------------

-- ----------------------------
-- Table structure for transaction_types
-- ----------------------------
DROP TABLE IF EXISTS `transaction_types`;
CREATE TABLE `transaction_types`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of transaction_types
-- ----------------------------

-- ----------------------------
-- Table structure for transactions
-- ----------------------------
DROP TABLE IF EXISTS `transactions`;
CREATE TABLE `transactions`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `amount` decimal(15, 2) NULL DEFAULT NULL,
  `transaction_date` date NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `project_id` int UNSIGNED NULL DEFAULT NULL,
  `transaction_type_id` int UNSIGNED NULL DEFAULT NULL,
  `income_source_id` int UNSIGNED NULL DEFAULT NULL,
  `currency_id` int UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `project_fk_340061`(`project_id`) USING BTREE,
  INDEX `transaction_type_fk_340062`(`transaction_type_id`) USING BTREE,
  INDEX `income_source_fk_340063`(`income_source_id`) USING BTREE,
  INDEX `currency_fk_340065`(`currency_id`) USING BTREE,
  CONSTRAINT `currency_fk_340065` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `income_source_fk_340063` FOREIGN KEY (`income_source_id`) REFERENCES `income_sources` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `project_fk_340061` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `transaction_type_fk_340062` FOREIGN KEY (`transaction_type_id`) REFERENCES `transaction_types` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of transactions
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` datetime NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Admin', 'admin@admin.com', NULL, '$2y$10$rA.UbFkvBY0TnPXC5AvdEew7ITCs.PFo9eAfkH.m48GlOdhFMXvLG', 'wZwI3nPbwP8BmhiqD0BTR1tAHDkM254foW3jqn44LnODPGq5KsnPkrbh2bjg', '2019-09-14 21:09:29', '2019-09-14 21:09:29', NULL);
INSERT INTO `users` VALUES (2, 'a', 'admin', NULL, '$2y$10$6Z1TZGHBO5pt5uE./qqTSOiRv1hQCocIWUMMQhuXJ6lei3mCTZApm', NULL, '2021-04-23 03:12:46', '2021-07-08 12:50:15', '2021-07-08 12:50:15');
INSERT INTO `users` VALUES (3, 'Mosse1', 'Mosse1', NULL, '$2y$10$6XYZSXsWAY/0s9gtuGrtqOWm./EqOqNdgD3cgbSXVjVLgqlNCp0fu', NULL, '2021-07-08 12:47:51', '2021-07-08 12:47:51', NULL);
INSERT INTO `users` VALUES (4, 'Mosse2', 'Mosse2', NULL, '$2y$10$w6PKx4GaSUd1TwqyDATyueo21p./wBUp2m.hbUbTm2X8DcaKIw0Za', NULL, '2021-07-08 12:48:42', '2021-07-08 12:48:42', NULL);
INSERT INTO `users` VALUES (5, 'Mosse3', 'Mosse3', NULL, '$2y$10$u7nUKjnthSH3CPuRUmVMPut2W8qn/mMviqs81qoKN9uA6oyl79TLS', NULL, '2021-07-08 12:49:03', '2021-07-08 12:49:03', NULL);
INSERT INTO `users` VALUES (6, 'Mosse4', 'Mosse4', NULL, '$2y$10$PAe/5XZlNFSxPOArt0iUIuLqq4.Cr1N7n7fD7Bdq/CLZtaHzXUmBS', NULL, '2021-07-08 12:49:27', '2021-07-08 12:49:27', NULL);
INSERT INTO `users` VALUES (7, 'Mosse5', 'Mosse5', NULL, '$2y$10$UJDXsmABN2EeYVL9tKHpwe1KPZ1ehk39YHF1Qa0rn/mTrtR3.O3XK', NULL, '2021-07-08 12:49:47', '2021-07-08 12:49:47', NULL);
INSERT INTO `users` VALUES (8, 'Mosse6', 'Mosse6', NULL, '$2y$10$K/wYJrjxoHpY.7bEOtv3p.UviKJLshYh7xxqx2QuzlVbiFvOJltHu', NULL, '2021-07-08 12:50:05', '2021-07-08 12:50:05', NULL);

SET FOREIGN_KEY_CHECKS = 1;
