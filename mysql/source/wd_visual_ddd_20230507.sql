-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: wd_visual_ddd
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `domain_event_lock`
--

DROP TABLE IF EXISTS `domain_event_lock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `domain_event_lock` (
  `lock_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'é”åç§°'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='é¢†åŸŸäº‹ä»¶é”';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domain_event_lock`
--

LOCK TABLES `domain_event_lock` WRITE;
/*!40000 ALTER TABLE `domain_event_lock` DISABLE KEYS */;
/*!40000 ALTER TABLE `domain_event_lock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `domain_event_redo_log`
--

DROP TABLE IF EXISTS `domain_event_redo_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `domain_event_redo_log` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ä¸»é”®',
  `event_info` json DEFAULT NULL COMMENT 'äº‹ä»¶å†…å®¹',
  `target_info` json DEFAULT NULL COMMENT 'é‡è¯•ç›®æ ‡ä¿¡æ¯',
  `retry_times` int DEFAULT '0' COMMENT 'é‡è¯•æ¬¡æ•°',
  `last_retry_time` datetime DEFAULT NULL COMMENT 'æœ€åŽé‡è¯•æ—¶é—´',
  `retry_type` int DEFAULT NULL COMMENT 'é‡è¯•ç±»åž‹ 0:å®šæ—¶è°ƒåº¦  1:é‡å¯æ—¶é‡è¯• ',
  `idem` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'å¹‚ç­‰å€¼',
  `create_time` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_time` datetime DEFAULT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_domain_event_redo_log_idem` (`idem`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='é¢†åŸŸäº‹ä»¶é‡è¯•è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domain_event_redo_log`
--

LOCK TABLES `domain_event_redo_log` WRITE;
/*!40000 ALTER TABLE `domain_event_redo_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `domain_event_redo_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wd_account`
--

DROP TABLE IF EXISTS `wd_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wd_account` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'åˆ›å»ºäºº',
  `create_time` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'æ›´æ–°äºº',
  `update_time` datetime DEFAULT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `account_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ç”¨æˆ·å¤´åƒ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wd_account`
--

LOCK TABLES `wd_account` WRITE;
/*!40000 ALTER TABLE `wd_account` DISABLE KEYS */;
INSERT INTO `wd_account` VALUES (1,'0','2023-01-05 14:38:09','ç³»ç»Ÿç®¡ç†å‘˜','2023-05-06 19:18:30','admin@gpt.com','','wY&KG+V8','系统管理员','70c5c3a3-aee3-40f4-9be4-6e565a984793',''),(3,'ç³»ç»Ÿç®¡ç†å‘˜','2023-05-06 16:23:22','ç³»ç»Ÿç®¡ç†å‘˜','2023-05-06 16:23:22','lsq666666_2004@qq.com',NULL,'123456','lsq666666',NULL,NULL),(4,'ç³»ç»Ÿç®¡ç†å‘˜','2023-05-06 16:24:28','ç³»ç»Ÿç®¡ç†å‘˜','2023-05-06 16:24:28','fjh32tcl@vip.qq.com',NULL,'123456','fjh32tcl',NULL,NULL),(5,'ç³»ç»Ÿç®¡ç†å‘˜','2023-05-06 16:24:44','ç³»ç»Ÿç®¡ç†å‘˜','2023-05-06 16:24:44','770193845@qq.com',NULL,'123456','770193845',NULL,NULL),(6,'ç³»ç»Ÿç®¡ç†å‘˜','2023-05-06 16:24:58','ç³»ç»Ÿç®¡ç†å‘˜','2023-05-06 16:24:58','craigchen399@gmail.com',NULL,'123456','啸龙',NULL,NULL),(7,'ç³»ç»Ÿç®¡ç†å‘˜','2023-05-06 16:25:11','ç³»ç»Ÿç®¡ç†å‘˜','2023-05-06 16:25:11','150327133@qq.com',NULL,'123456','150327133',NULL,NULL),(8,'ç³»ç»Ÿç®¡ç†å‘˜','2023-05-06 16:30:49','ç³»ç»Ÿç®¡ç†å‘˜','2023-05-06 16:30:49','224772828@qq.com',NULL,'123456','许悦兴',NULL,NULL),(9,'ç³»ç»Ÿç®¡ç†å‘˜','2023-05-06 17:52:33','ç³»ç»Ÿç®¡ç†å‘˜','2023-05-06 17:52:33','869244123@qq.com',NULL,'123456','869244123',NULL,NULL),(10,'ç³»ç»Ÿç®¡ç†å‘˜','2023-05-06 17:53:57','ç³»ç»Ÿç®¡ç†å‘˜','2023-05-06 17:53:57','735002823@qq.com',NULL,'123456','735002823@qq.com',NULL,NULL),(11,'ç³»ç»Ÿç®¡ç†å‘˜','2023-05-06 17:59:17','ç³»ç»Ÿç®¡ç†å‘˜','2023-05-06 17:59:17','181630450@qq.com',NULL,'123456','putao',NULL,NULL);
/*!40000 ALTER TABLE `wd_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wd_account_verification`
--

DROP TABLE IF EXISTS `wd_account_verification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wd_account_verification` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'åˆ›å»ºäºº',
  `create_time` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'æ›´æ–°äºº',
  `update_time` datetime DEFAULT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `account_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wd_account_verification`
--

LOCK TABLES `wd_account_verification` WRITE;
/*!40000 ALTER TABLE `wd_account_verification` DISABLE KEYS */;
/*!40000 ALTER TABLE `wd_account_verification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wd_application`
--

DROP TABLE IF EXISTS `wd_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wd_application` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'åˆ›å»ºäºº',
  `create_time` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'æ›´æ–°äºº',
  `update_time` datetime DEFAULT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_id` bigint DEFAULT NULL,
  `is_deleted` int NOT NULL DEFAULT '0' COMMENT 'æ˜¯å¦åˆ é™¤',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wd_application`
--

LOCK TABLES `wd_application` WRITE;
/*!40000 ALTER TABLE `wd_application` DISABLE KEYS */;
/*!40000 ALTER TABLE `wd_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wd_application_version`
--

DROP TABLE IF EXISTS `wd_application_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wd_application_version` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'åˆ›å»ºäºº',
  `create_time` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'æ›´æ–°äºº',
  `update_time` datetime DEFAULT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `application_id` bigint DEFAULT NULL,
  `business_scene_version_ids` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_version` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `domain_design_version_ids` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_version` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` int DEFAULT NULL,
  `dsl` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wd_application_version`
--

LOCK TABLES `wd_application_version` WRITE;
/*!40000 ALTER TABLE `wd_application_version` DISABLE KEYS */;
/*!40000 ALTER TABLE `wd_application_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wd_business_scene`
--

DROP TABLE IF EXISTS `wd_business_scene`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wd_business_scene` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'åˆ›å»ºäºº',
  `create_time` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'æ›´æ–°äºº',
  `update_time` datetime DEFAULT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_id` bigint DEFAULT NULL,
  `is_deleted` int NOT NULL DEFAULT '0' COMMENT 'æ˜¯å¦åˆ é™¤ 0-æœªåˆ é™¤ 1-å·²åˆ é™¤',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wd_business_scene`
--

LOCK TABLES `wd_business_scene` WRITE;
/*!40000 ALTER TABLE `wd_business_scene` DISABLE KEYS */;
/*!40000 ALTER TABLE `wd_business_scene` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wd_business_scene_version`
--

DROP TABLE IF EXISTS `wd_business_scene_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wd_business_scene_version` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'åˆ›å»ºäºº',
  `create_time` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'æ›´æ–°äºº',
  `update_time` datetime DEFAULT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `business_scene_id` bigint DEFAULT NULL,
  `current_version` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dsl` longtext COLLATE utf8mb4_unicode_ci,
  `graph_dsl` longtext COLLATE utf8mb4_unicode_ci,
  `start_version` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wd_business_scene_version`
--

LOCK TABLES `wd_business_scene_version` WRITE;
/*!40000 ALTER TABLE `wd_business_scene_version` DISABLE KEYS */;
/*!40000 ALTER TABLE `wd_business_scene_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wd_domain_design`
--

DROP TABLE IF EXISTS `wd_domain_design`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wd_domain_design` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'åˆ›å»ºäºº',
  `create_time` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'æ›´æ–°äºº',
  `update_time` datetime DEFAULT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `description` text COLLATE utf8mb4_unicode_ci,
  `identity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_id` bigint DEFAULT NULL,
  `is_deleted` int NOT NULL DEFAULT '0' COMMENT 'æ˜¯å¦åˆ é™¤ 0-æœªåˆ é™¤ 1-å·²åˆ é™¤',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wd_domain_design`
--

LOCK TABLES `wd_domain_design` WRITE;
/*!40000 ALTER TABLE `wd_domain_design` DISABLE KEYS */;
/*!40000 ALTER TABLE `wd_domain_design` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wd_domain_design_version`
--

DROP TABLE IF EXISTS `wd_domain_design_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wd_domain_design_version` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'åˆ›å»ºäºº',
  `create_time` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'æ›´æ–°äºº',
  `update_time` datetime DEFAULT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `current_version` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `domain_design_dsl` longtext COLLATE utf8mb4_unicode_ci,
  `domain_design_id` bigint DEFAULT NULL,
  `graph_dsl` longtext COLLATE utf8mb4_unicode_ci,
  `start_version` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wd_domain_design_version`
--

LOCK TABLES `wd_domain_design_version` WRITE;
/*!40000 ALTER TABLE `wd_domain_design_version` DISABLE KEYS */;
/*!40000 ALTER TABLE `wd_domain_design_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wd_organization`
--

DROP TABLE IF EXISTS `wd_organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wd_organization` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'åˆ›å»ºäºº',
  `create_time` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'æ›´æ–°äºº',
  `update_time` datetime DEFAULT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organization_manager_id` bigint DEFAULT NULL,
  `is_deleted` int NOT NULL DEFAULT '0' COMMENT 'æ˜¯å¦åˆ é™¤ 0-æœªåˆ é™¤ 1-å·²åˆ é™¤',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wd_organization`
--

LOCK TABLES `wd_organization` WRITE;
/*!40000 ALTER TABLE `wd_organization` DISABLE KEYS */;
/*!40000 ALTER TABLE `wd_organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wd_organization_team`
--

DROP TABLE IF EXISTS `wd_organization_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wd_organization_team` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'åˆ›å»ºäºº',
  `create_time` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'æ›´æ–°äºº',
  `update_time` datetime DEFAULT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organization_id` bigint DEFAULT NULL,
  `team_manager_id` bigint DEFAULT NULL,
  `is_deleted` int NOT NULL DEFAULT '0' COMMENT 'æ˜¯å¦åˆ é™¤ 0-æœªåˆ é™¤ 1-å·²åˆ é™¤',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wd_organization_team`
--

LOCK TABLES `wd_organization_team` WRITE;
/*!40000 ALTER TABLE `wd_organization_team` DISABLE KEYS */;
/*!40000 ALTER TABLE `wd_organization_team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wd_organization_team_member`
--

DROP TABLE IF EXISTS `wd_organization_team_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wd_organization_team_member` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'åˆ›å»ºäºº',
  `create_time` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'æ›´æ–°äºº',
  `update_time` datetime DEFAULT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `account_id` bigint DEFAULT NULL,
  `member_type_list` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wd_organization_team_member`
--

LOCK TABLES `wd_organization_team_member` WRITE;
/*!40000 ALTER TABLE `wd_organization_team_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `wd_organization_team_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wd_prompt`
--

DROP TABLE IF EXISTS `wd_prompt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wd_prompt` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'åˆ›å»ºäºº',
  `create_time` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'æ›´æ–°äºº',
  `update_time` datetime DEFAULT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` datetime(6) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `introduction` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_context_length` bigint DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `system_prompt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temperature` double DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wd_prompt`
--

LOCK TABLES `wd_prompt` WRITE;
/*!40000 ALTER TABLE `wd_prompt` DISABLE KEYS */;
/*!40000 ALTER TABLE `wd_prompt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wd_universal_language`
--

DROP TABLE IF EXISTS `wd_universal_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wd_universal_language` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'åˆ›å»ºäºº',
  `create_time` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'æ›´æ–°äºº',
  `update_time` datetime DEFAULT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `conception` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `definition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `english_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identity` bigint DEFAULT NULL,
  `language_type` int DEFAULT NULL,
  `restraint` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `example` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ä¸¾ä¾‹',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wd_universal_language`
--

LOCK TABLES `wd_universal_language` WRITE;
/*!40000 ALTER TABLE `wd_universal_language` DISABLE KEYS */;
/*!40000 ALTER TABLE `wd_universal_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wd_white_list`
--

DROP TABLE IF EXISTS `wd_white_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wd_white_list` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'åˆ›å»ºäºº',
  `create_time` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'æ›´æ–°äºº',
  `update_time` datetime DEFAULT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `account_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wd_white_list`
--

LOCK TABLES `wd_white_list` WRITE;
/*!40000 ALTER TABLE `wd_white_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `wd_white_list` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-07  5:18:37
