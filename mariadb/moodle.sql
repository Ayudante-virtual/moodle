-- MySQL dump 10.17  Distrib 10.3.24-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: moodle
-- ------------------------------------------------------
-- Server version	10.3.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES UTF8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `mdl_analytics_indicator_calc`
--

DROP TABLE IF EXISTS `mdl_analytics_indicator_calc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_analytics_indicator_calc` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `starttime` bigint(10) NOT NULL,
  `endtime` bigint(10) NOT NULL,
  `contextid` bigint(10) NOT NULL,
  `sampleorigin` varchar(255) NOT NULL DEFAULT '',
  `sampleid` bigint(10) NOT NULL,
  `indicator` varchar(255) NOT NULL DEFAULT '',
  `value` decimal(10,2) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_analindicalc_staendcon_ix` (`starttime`,`endtime`,`contextid`),
  KEY `mdl_analindicalc_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stored indicator calculations';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_analytics_indicator_calc`
--

LOCK TABLES `mdl_analytics_indicator_calc` WRITE;
/*!40000 ALTER TABLE `mdl_analytics_indicator_calc` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_analytics_indicator_calc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_analytics_models`
--

DROP TABLE IF EXISTS `mdl_analytics_models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_analytics_models` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `enabled` tinyint(1) NOT NULL DEFAULT 0,
  `trained` tinyint(1) NOT NULL DEFAULT 0,
  `target` varchar(255) NOT NULL DEFAULT '',
  `indicators` longtext NOT NULL,
  `timesplitting` varchar(255) DEFAULT NULL,
  `predictionsprocessor` varchar(255) DEFAULT NULL,
  `version` bigint(10) NOT NULL,
  `timecreated` bigint(10) DEFAULT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_analmode_enatra_ix` (`enabled`,`trained`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Analytic models.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_analytics_models`
--

LOCK TABLES `mdl_analytics_models` WRITE;
/*!40000 ALTER TABLE `mdl_analytics_models` DISABLE KEYS */;
INSERT INTO `mdl_analytics_models` VALUES (1,0,0,'\\core\\analytics\\target\\course_dropout','[\"\\\\mod_assign\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_assign\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_book\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_book\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_chat\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_chat\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_choice\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_choice\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_data\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_data\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_feedback\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_feedback\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_folder\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_folder\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_forum\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_forum\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_glossary\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_glossary\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_imscp\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_imscp\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_label\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_label\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_lesson\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_lesson\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_lti\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_lti\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_page\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_page\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_quiz\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_quiz\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_resource\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_resource\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_scorm\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_scorm\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_survey\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_survey\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_url\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_url\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_wiki\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_wiki\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_workshop\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_workshop\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\core_course\\\\analytics\\\\indicator\\\\completion_enabled\",\"\\\\core_course\\\\analytics\\\\indicator\\\\potential_cognitive_depth\",\"\\\\core_course\\\\analytics\\\\indicator\\\\potential_social_breadth\",\"\\\\core\\\\analytics\\\\indicator\\\\any_access_after_end\",\"\\\\core\\\\analytics\\\\indicator\\\\any_access_before_start\",\"\\\\core\\\\analytics\\\\indicator\\\\any_write_action_in_course\",\"\\\\core\\\\analytics\\\\indicator\\\\read_actions\"]',NULL,'0',1601070785,1601070785,1601070785,0),(2,1,1,'\\core\\analytics\\target\\no_teaching','[\"\\\\core_course\\\\analytics\\\\indicator\\\\no_teacher\",\"\\\\core_course\\\\analytics\\\\indicator\\\\no_student\"]','\\core\\analytics\\time_splitting\\single_range','0',1601070785,1601070785,1601070785,0);
/*!40000 ALTER TABLE `mdl_analytics_models` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_analytics_models_log`
--

DROP TABLE IF EXISTS `mdl_analytics_models_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_analytics_models_log` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `modelid` bigint(10) NOT NULL,
  `version` bigint(10) NOT NULL,
  `target` varchar(255) NOT NULL DEFAULT '',
  `indicators` longtext NOT NULL,
  `timesplitting` varchar(255) DEFAULT NULL,
  `score` decimal(10,5) NOT NULL DEFAULT 0.00000,
  `info` longtext DEFAULT NULL,
  `dir` longtext NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_analmodelog_mod_ix` (`modelid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Analytic models changes during evaluation.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_analytics_models_log`
--

LOCK TABLES `mdl_analytics_models_log` WRITE;
/*!40000 ALTER TABLE `mdl_analytics_models_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_analytics_models_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_analytics_predict_samples`
--

DROP TABLE IF EXISTS `mdl_analytics_predict_samples`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_analytics_predict_samples` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `modelid` bigint(10) NOT NULL,
  `analysableid` bigint(10) NOT NULL,
  `timesplitting` varchar(255) NOT NULL DEFAULT '',
  `rangeindex` bigint(10) NOT NULL,
  `sampleids` longtext NOT NULL,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_analpredsamp_modanatimr_ix` (`modelid`,`analysableid`,`timesplitting`,`rangeindex`),
  KEY `mdl_analpredsamp_mod_ix` (`modelid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Samples already used for predictions.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_analytics_predict_samples`
--

LOCK TABLES `mdl_analytics_predict_samples` WRITE;
/*!40000 ALTER TABLE `mdl_analytics_predict_samples` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_analytics_predict_samples` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_analytics_prediction_actions`
--

DROP TABLE IF EXISTS `mdl_analytics_prediction_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_analytics_prediction_actions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `predictionid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `actionname` varchar(255) NOT NULL DEFAULT '',
  `timecreated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_analpredacti_preuseact_ix` (`predictionid`,`userid`,`actionname`),
  KEY `mdl_analpredacti_pre_ix` (`predictionid`),
  KEY `mdl_analpredacti_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Register of user actions over predictions.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_analytics_prediction_actions`
--

LOCK TABLES `mdl_analytics_prediction_actions` WRITE;
/*!40000 ALTER TABLE `mdl_analytics_prediction_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_analytics_prediction_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_analytics_predictions`
--

DROP TABLE IF EXISTS `mdl_analytics_predictions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_analytics_predictions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `modelid` bigint(10) NOT NULL,
  `contextid` bigint(10) NOT NULL,
  `sampleid` bigint(10) NOT NULL,
  `rangeindex` mediumint(5) NOT NULL,
  `prediction` decimal(10,2) NOT NULL,
  `predictionscore` decimal(10,5) NOT NULL,
  `calculations` longtext NOT NULL,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timestart` bigint(10) DEFAULT NULL,
  `timeend` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_analpred_modcon_ix` (`modelid`,`contextid`),
  KEY `mdl_analpred_mod_ix` (`modelid`),
  KEY `mdl_analpred_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Predictions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_analytics_predictions`
--

LOCK TABLES `mdl_analytics_predictions` WRITE;
/*!40000 ALTER TABLE `mdl_analytics_predictions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_analytics_predictions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_analytics_train_samples`
--

DROP TABLE IF EXISTS `mdl_analytics_train_samples`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_analytics_train_samples` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `modelid` bigint(10) NOT NULL,
  `analysableid` bigint(10) NOT NULL,
  `timesplitting` varchar(255) NOT NULL DEFAULT '',
  `fileid` bigint(10) NOT NULL,
  `sampleids` longtext NOT NULL,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_analtraisamp_modanatim_ix` (`modelid`,`analysableid`,`timesplitting`),
  KEY `mdl_analtraisamp_mod_ix` (`modelid`),
  KEY `mdl_analtraisamp_fil_ix` (`fileid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Samples used for training';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_analytics_train_samples`
--

LOCK TABLES `mdl_analytics_train_samples` WRITE;
/*!40000 ALTER TABLE `mdl_analytics_train_samples` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_analytics_train_samples` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_analytics_used_analysables`
--

DROP TABLE IF EXISTS `mdl_analytics_used_analysables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_analytics_used_analysables` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `modelid` bigint(10) NOT NULL,
  `action` varchar(50) NOT NULL DEFAULT '',
  `analysableid` bigint(10) NOT NULL,
  `timeanalysed` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_analusedanal_modact_ix` (`modelid`,`action`),
  KEY `mdl_analusedanal_mod_ix` (`modelid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='List of analysables used by each model';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_analytics_used_analysables`
--

LOCK TABLES `mdl_analytics_used_analysables` WRITE;
/*!40000 ALTER TABLE `mdl_analytics_used_analysables` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_analytics_used_analysables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_analytics_used_files`
--

DROP TABLE IF EXISTS `mdl_analytics_used_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_analytics_used_files` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `modelid` bigint(10) NOT NULL DEFAULT 0,
  `fileid` bigint(10) NOT NULL DEFAULT 0,
  `action` varchar(50) NOT NULL DEFAULT '',
  `time` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_analusedfile_modactfil_ix` (`modelid`,`action`,`fileid`),
  KEY `mdl_analusedfile_mod_ix` (`modelid`),
  KEY `mdl_analusedfile_fil_ix` (`fileid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Files that have already been used for training and predictio';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_analytics_used_files`
--

LOCK TABLES `mdl_analytics_used_files` WRITE;
/*!40000 ALTER TABLE `mdl_analytics_used_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_analytics_used_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assign`
--

DROP TABLE IF EXISTS `mdl_assign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_assign` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `intro` longtext NOT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT 0,
  `alwaysshowdescription` tinyint(2) NOT NULL DEFAULT 0,
  `nosubmissions` tinyint(2) NOT NULL DEFAULT 0,
  `submissiondrafts` tinyint(2) NOT NULL DEFAULT 0,
  `sendnotifications` tinyint(2) NOT NULL DEFAULT 0,
  `sendlatenotifications` tinyint(2) NOT NULL DEFAULT 0,
  `duedate` bigint(10) NOT NULL DEFAULT 0,
  `allowsubmissionsfromdate` bigint(10) NOT NULL DEFAULT 0,
  `grade` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `requiresubmissionstatement` tinyint(2) NOT NULL DEFAULT 0,
  `completionsubmit` tinyint(2) NOT NULL DEFAULT 0,
  `cutoffdate` bigint(10) NOT NULL DEFAULT 0,
  `gradingduedate` bigint(10) NOT NULL DEFAULT 0,
  `teamsubmission` tinyint(2) NOT NULL DEFAULT 0,
  `requireallteammemberssubmit` tinyint(2) NOT NULL DEFAULT 0,
  `teamsubmissiongroupingid` bigint(10) NOT NULL DEFAULT 0,
  `blindmarking` tinyint(2) NOT NULL DEFAULT 0,
  `revealidentities` tinyint(2) NOT NULL DEFAULT 0,
  `attemptreopenmethod` varchar(10) NOT NULL DEFAULT 'none',
  `maxattempts` mediumint(6) NOT NULL DEFAULT -1,
  `markingworkflow` tinyint(2) NOT NULL DEFAULT 0,
  `markingallocation` tinyint(2) NOT NULL DEFAULT 0,
  `sendstudentnotifications` tinyint(2) NOT NULL DEFAULT 1,
  `preventsubmissionnotingroup` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_assi_cou_ix` (`course`),
  KEY `mdl_assi_tea_ix` (`teamsubmissiongroupingid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='This table saves information about an instance of mod_assign';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assign`
--

LOCK TABLES `mdl_assign` WRITE;
/*!40000 ALTER TABLE `mdl_assign` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assign_grades`
--

DROP TABLE IF EXISTS `mdl_assign_grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_assign_grades` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assignment` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `grader` bigint(10) NOT NULL DEFAULT 0,
  `grade` decimal(10,5) DEFAULT 0.00000,
  `attemptnumber` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_assigrad_assuseatt_uix` (`assignment`,`userid`,`attemptnumber`),
  KEY `mdl_assigrad_use_ix` (`userid`),
  KEY `mdl_assigrad_att_ix` (`attemptnumber`),
  KEY `mdl_assigrad_ass_ix` (`assignment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Grading information about a single assignment submission.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assign_grades`
--

LOCK TABLES `mdl_assign_grades` WRITE;
/*!40000 ALTER TABLE `mdl_assign_grades` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assign_grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assign_overrides`
--

DROP TABLE IF EXISTS `mdl_assign_overrides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_assign_overrides` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assignid` bigint(10) NOT NULL DEFAULT 0,
  `groupid` bigint(10) DEFAULT NULL,
  `userid` bigint(10) DEFAULT NULL,
  `sortorder` bigint(10) DEFAULT NULL,
  `allowsubmissionsfromdate` bigint(10) DEFAULT NULL,
  `duedate` bigint(10) DEFAULT NULL,
  `cutoffdate` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_assiover_ass_ix` (`assignid`),
  KEY `mdl_assiover_gro_ix` (`groupid`),
  KEY `mdl_assiover_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='The overrides to assign settings.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assign_overrides`
--

LOCK TABLES `mdl_assign_overrides` WRITE;
/*!40000 ALTER TABLE `mdl_assign_overrides` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assign_overrides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assign_plugin_config`
--

DROP TABLE IF EXISTS `mdl_assign_plugin_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_assign_plugin_config` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assignment` bigint(10) NOT NULL DEFAULT 0,
  `plugin` varchar(28) NOT NULL DEFAULT '',
  `subtype` varchar(28) NOT NULL DEFAULT '',
  `name` varchar(28) NOT NULL DEFAULT '',
  `value` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_assiplugconf_plu_ix` (`plugin`),
  KEY `mdl_assiplugconf_sub_ix` (`subtype`),
  KEY `mdl_assiplugconf_nam_ix` (`name`),
  KEY `mdl_assiplugconf_ass_ix` (`assignment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Config data for an instance of a plugin in an assignment.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assign_plugin_config`
--

LOCK TABLES `mdl_assign_plugin_config` WRITE;
/*!40000 ALTER TABLE `mdl_assign_plugin_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assign_plugin_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assign_submission`
--

DROP TABLE IF EXISTS `mdl_assign_submission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_assign_submission` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assignment` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `status` varchar(10) DEFAULT NULL,
  `groupid` bigint(10) NOT NULL DEFAULT 0,
  `attemptnumber` bigint(10) NOT NULL DEFAULT 0,
  `latest` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_assisubm_assusegroatt_uix` (`assignment`,`userid`,`groupid`,`attemptnumber`),
  KEY `mdl_assisubm_use_ix` (`userid`),
  KEY `mdl_assisubm_att_ix` (`attemptnumber`),
  KEY `mdl_assisubm_assusegrolat_ix` (`assignment`,`userid`,`groupid`,`latest`),
  KEY `mdl_assisubm_ass_ix` (`assignment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='This table keeps information about student interactions with';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assign_submission`
--

LOCK TABLES `mdl_assign_submission` WRITE;
/*!40000 ALTER TABLE `mdl_assign_submission` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assign_submission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assign_user_flags`
--

DROP TABLE IF EXISTS `mdl_assign_user_flags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_assign_user_flags` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `assignment` bigint(10) NOT NULL DEFAULT 0,
  `locked` bigint(10) NOT NULL DEFAULT 0,
  `mailed` smallint(4) NOT NULL DEFAULT 0,
  `extensionduedate` bigint(10) NOT NULL DEFAULT 0,
  `workflowstate` varchar(20) DEFAULT NULL,
  `allocatedmarker` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_assiuserflag_mai_ix` (`mailed`),
  KEY `mdl_assiuserflag_use_ix` (`userid`),
  KEY `mdl_assiuserflag_ass_ix` (`assignment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='List of flags that can be set for a single user in a single ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assign_user_flags`
--

LOCK TABLES `mdl_assign_user_flags` WRITE;
/*!40000 ALTER TABLE `mdl_assign_user_flags` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assign_user_flags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assign_user_mapping`
--

DROP TABLE IF EXISTS `mdl_assign_user_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_assign_user_mapping` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assignment` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_assiusermapp_ass_ix` (`assignment`),
  KEY `mdl_assiusermapp_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Map an assignment specific id number to a user';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assign_user_mapping`
--

LOCK TABLES `mdl_assign_user_mapping` WRITE;
/*!40000 ALTER TABLE `mdl_assign_user_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assign_user_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assignfeedback_comments`
--

DROP TABLE IF EXISTS `mdl_assignfeedback_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_assignfeedback_comments` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assignment` bigint(10) NOT NULL DEFAULT 0,
  `grade` bigint(10) NOT NULL DEFAULT 0,
  `commenttext` longtext DEFAULT NULL,
  `commentformat` smallint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_assicomm_ass_ix` (`assignment`),
  KEY `mdl_assicomm_gra_ix` (`grade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Text feedback for submitted assignments';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assignfeedback_comments`
--

LOCK TABLES `mdl_assignfeedback_comments` WRITE;
/*!40000 ALTER TABLE `mdl_assignfeedback_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assignfeedback_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assignfeedback_editpdf_annot`
--

DROP TABLE IF EXISTS `mdl_assignfeedback_editpdf_annot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_assignfeedback_editpdf_annot` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `gradeid` bigint(10) NOT NULL DEFAULT 0,
  `pageno` bigint(10) NOT NULL DEFAULT 0,
  `x` bigint(10) DEFAULT 0,
  `y` bigint(10) DEFAULT 0,
  `endx` bigint(10) DEFAULT 0,
  `endy` bigint(10) DEFAULT 0,
  `path` longtext DEFAULT NULL,
  `type` varchar(10) DEFAULT 'line',
  `colour` varchar(10) DEFAULT 'black',
  `draft` tinyint(2) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `mdl_assieditanno_grapag_ix` (`gradeid`,`pageno`),
  KEY `mdl_assieditanno_gra_ix` (`gradeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='stores annotations added to pdfs submitted by students';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assignfeedback_editpdf_annot`
--

LOCK TABLES `mdl_assignfeedback_editpdf_annot` WRITE;
/*!40000 ALTER TABLE `mdl_assignfeedback_editpdf_annot` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assignfeedback_editpdf_annot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assignfeedback_editpdf_cmnt`
--

DROP TABLE IF EXISTS `mdl_assignfeedback_editpdf_cmnt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_assignfeedback_editpdf_cmnt` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `gradeid` bigint(10) NOT NULL DEFAULT 0,
  `x` bigint(10) DEFAULT 0,
  `y` bigint(10) DEFAULT 0,
  `width` bigint(10) DEFAULT 120,
  `rawtext` longtext DEFAULT NULL,
  `pageno` bigint(10) NOT NULL DEFAULT 0,
  `colour` varchar(10) DEFAULT 'black',
  `draft` tinyint(2) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `mdl_assieditcmnt_grapag_ix` (`gradeid`,`pageno`),
  KEY `mdl_assieditcmnt_gra_ix` (`gradeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores comments added to pdfs';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assignfeedback_editpdf_cmnt`
--

LOCK TABLES `mdl_assignfeedback_editpdf_cmnt` WRITE;
/*!40000 ALTER TABLE `mdl_assignfeedback_editpdf_cmnt` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assignfeedback_editpdf_cmnt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assignfeedback_editpdf_queue`
--

DROP TABLE IF EXISTS `mdl_assignfeedback_editpdf_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_assignfeedback_editpdf_queue` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `submissionid` bigint(10) NOT NULL,
  `submissionattempt` bigint(10) NOT NULL,
  `attemptedconversions` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_assieditqueu_subsub_uix` (`submissionid`,`submissionattempt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Queue for processing.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assignfeedback_editpdf_queue`
--

LOCK TABLES `mdl_assignfeedback_editpdf_queue` WRITE;
/*!40000 ALTER TABLE `mdl_assignfeedback_editpdf_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assignfeedback_editpdf_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assignfeedback_editpdf_quick`
--

DROP TABLE IF EXISTS `mdl_assignfeedback_editpdf_quick`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_assignfeedback_editpdf_quick` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `rawtext` longtext NOT NULL,
  `width` bigint(10) NOT NULL DEFAULT 120,
  `colour` varchar(10) DEFAULT 'yellow',
  PRIMARY KEY (`id`),
  KEY `mdl_assieditquic_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores teacher specified quicklist comments';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assignfeedback_editpdf_quick`
--

LOCK TABLES `mdl_assignfeedback_editpdf_quick` WRITE;
/*!40000 ALTER TABLE `mdl_assignfeedback_editpdf_quick` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assignfeedback_editpdf_quick` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assignfeedback_file`
--

DROP TABLE IF EXISTS `mdl_assignfeedback_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_assignfeedback_file` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assignment` bigint(10) NOT NULL DEFAULT 0,
  `grade` bigint(10) NOT NULL DEFAULT 0,
  `numfiles` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_assifile_ass2_ix` (`assignment`),
  KEY `mdl_assifile_gra_ix` (`grade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores info about the number of files submitted by a student';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assignfeedback_file`
--

LOCK TABLES `mdl_assignfeedback_file` WRITE;
/*!40000 ALTER TABLE `mdl_assignfeedback_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assignfeedback_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assignment`
--

DROP TABLE IF EXISTS `mdl_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_assignment` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `intro` longtext NOT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT 0,
  `assignmenttype` varchar(50) NOT NULL DEFAULT '',
  `resubmit` tinyint(2) NOT NULL DEFAULT 0,
  `preventlate` tinyint(2) NOT NULL DEFAULT 0,
  `emailteachers` tinyint(2) NOT NULL DEFAULT 0,
  `var1` bigint(10) DEFAULT 0,
  `var2` bigint(10) DEFAULT 0,
  `var3` bigint(10) DEFAULT 0,
  `var4` bigint(10) DEFAULT 0,
  `var5` bigint(10) DEFAULT 0,
  `maxbytes` bigint(10) NOT NULL DEFAULT 100000,
  `timedue` bigint(10) NOT NULL DEFAULT 0,
  `timeavailable` bigint(10) NOT NULL DEFAULT 0,
  `grade` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_assi_cou2_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Defines assignments';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assignment`
--

LOCK TABLES `mdl_assignment` WRITE;
/*!40000 ALTER TABLE `mdl_assignment` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assignment_submissions`
--

DROP TABLE IF EXISTS `mdl_assignment_submissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_assignment_submissions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assignment` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `numfiles` bigint(10) NOT NULL DEFAULT 0,
  `data1` longtext DEFAULT NULL,
  `data2` longtext DEFAULT NULL,
  `grade` bigint(11) NOT NULL DEFAULT 0,
  `submissioncomment` longtext NOT NULL,
  `format` smallint(4) NOT NULL DEFAULT 0,
  `teacher` bigint(10) NOT NULL DEFAULT 0,
  `timemarked` bigint(10) NOT NULL DEFAULT 0,
  `mailed` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_assisubm_use2_ix` (`userid`),
  KEY `mdl_assisubm_mai_ix` (`mailed`),
  KEY `mdl_assisubm_tim_ix` (`timemarked`),
  KEY `mdl_assisubm_ass2_ix` (`assignment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Info about submitted assignments';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assignment_submissions`
--

LOCK TABLES `mdl_assignment_submissions` WRITE;
/*!40000 ALTER TABLE `mdl_assignment_submissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assignment_submissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assignment_upgrade`
--

DROP TABLE IF EXISTS `mdl_assignment_upgrade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_assignment_upgrade` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `oldcmid` bigint(10) NOT NULL DEFAULT 0,
  `oldinstance` bigint(10) NOT NULL DEFAULT 0,
  `newcmid` bigint(10) NOT NULL DEFAULT 0,
  `newinstance` bigint(10) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_assiupgr_old_ix` (`oldcmid`),
  KEY `mdl_assiupgr_old2_ix` (`oldinstance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Info about upgraded assignments';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assignment_upgrade`
--

LOCK TABLES `mdl_assignment_upgrade` WRITE;
/*!40000 ALTER TABLE `mdl_assignment_upgrade` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assignment_upgrade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assignsubmission_file`
--

DROP TABLE IF EXISTS `mdl_assignsubmission_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_assignsubmission_file` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assignment` bigint(10) NOT NULL DEFAULT 0,
  `submission` bigint(10) NOT NULL DEFAULT 0,
  `numfiles` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_assifile_ass_ix` (`assignment`),
  KEY `mdl_assifile_sub_ix` (`submission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Info about file submissions for assignments';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assignsubmission_file`
--

LOCK TABLES `mdl_assignsubmission_file` WRITE;
/*!40000 ALTER TABLE `mdl_assignsubmission_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assignsubmission_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assignsubmission_onlinetext`
--

DROP TABLE IF EXISTS `mdl_assignsubmission_onlinetext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_assignsubmission_onlinetext` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assignment` bigint(10) NOT NULL DEFAULT 0,
  `submission` bigint(10) NOT NULL DEFAULT 0,
  `onlinetext` longtext DEFAULT NULL,
  `onlineformat` smallint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_assionli_ass_ix` (`assignment`),
  KEY `mdl_assionli_sub_ix` (`submission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Info about onlinetext submission';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assignsubmission_onlinetext`
--

LOCK TABLES `mdl_assignsubmission_onlinetext` WRITE;
/*!40000 ALTER TABLE `mdl_assignsubmission_onlinetext` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assignsubmission_onlinetext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_auth_oauth2_linked_login`
--

DROP TABLE IF EXISTS `mdl_auth_oauth2_linked_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_auth_oauth2_linked_login` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `issuerid` bigint(10) NOT NULL,
  `username` varchar(255) NOT NULL DEFAULT '',
  `email` longtext NOT NULL,
  `confirmtoken` varchar(64) NOT NULL DEFAULT '',
  `confirmtokenexpires` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_authoautlinklogi_useis_uix` (`userid`,`issuerid`,`username`),
  KEY `mdl_authoautlinklogi_issuse_ix` (`issuerid`,`username`),
  KEY `mdl_authoautlinklogi_use_ix` (`usermodified`),
  KEY `mdl_authoautlinklogi_use2_ix` (`userid`),
  KEY `mdl_authoautlinklogi_iss_ix` (`issuerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Accounts linked to a users Moodle account.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_auth_oauth2_linked_login`
--

LOCK TABLES `mdl_auth_oauth2_linked_login` WRITE;
/*!40000 ALTER TABLE `mdl_auth_oauth2_linked_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_auth_oauth2_linked_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_backup_controllers`
--

DROP TABLE IF EXISTS `mdl_backup_controllers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_backup_controllers` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `backupid` varchar(32) NOT NULL DEFAULT '',
  `operation` varchar(20) NOT NULL DEFAULT 'backup',
  `type` varchar(10) NOT NULL DEFAULT '',
  `itemid` bigint(10) NOT NULL,
  `format` varchar(20) NOT NULL DEFAULT '',
  `interactive` smallint(4) NOT NULL,
  `purpose` smallint(4) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `status` smallint(4) NOT NULL,
  `execution` smallint(4) NOT NULL,
  `executiontime` bigint(10) NOT NULL,
  `checksum` varchar(32) NOT NULL DEFAULT '',
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `controller` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_backcont_bac_uix` (`backupid`),
  KEY `mdl_backcont_typite_ix` (`type`,`itemid`),
  KEY `mdl_backcont_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='To store the backup_controllers as they are used';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_backup_controllers`
--

LOCK TABLES `mdl_backup_controllers` WRITE;
/*!40000 ALTER TABLE `mdl_backup_controllers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_backup_controllers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_backup_courses`
--

DROP TABLE IF EXISTS `mdl_backup_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_backup_courses` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL DEFAULT 0,
  `laststarttime` bigint(10) NOT NULL DEFAULT 0,
  `lastendtime` bigint(10) NOT NULL DEFAULT 0,
  `laststatus` varchar(1) NOT NULL DEFAULT '5',
  `nextstarttime` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_backcour_cou_uix` (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='To store every course backup status';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_backup_courses`
--

LOCK TABLES `mdl_backup_courses` WRITE;
/*!40000 ALTER TABLE `mdl_backup_courses` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_backup_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_backup_logs`
--

DROP TABLE IF EXISTS `mdl_backup_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_backup_logs` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `backupid` varchar(32) NOT NULL DEFAULT '',
  `loglevel` smallint(4) NOT NULL,
  `message` longtext NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_backlogs_bacid_uix` (`backupid`,`id`),
  KEY `mdl_backlogs_bac_ix` (`backupid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='To store all the logs from backup and restore operations (by';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_backup_logs`
--

LOCK TABLES `mdl_backup_logs` WRITE;
/*!40000 ALTER TABLE `mdl_backup_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_backup_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_badge`
--

DROP TABLE IF EXISTS `mdl_badge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_badge` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` longtext DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `usercreated` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  `issuername` varchar(255) NOT NULL DEFAULT '',
  `issuerurl` varchar(255) NOT NULL DEFAULT '',
  `issuercontact` varchar(255) DEFAULT NULL,
  `expiredate` bigint(10) DEFAULT NULL,
  `expireperiod` bigint(10) DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 1,
  `courseid` bigint(10) DEFAULT NULL,
  `message` longtext NOT NULL,
  `messagesubject` longtext NOT NULL,
  `attachment` tinyint(1) NOT NULL DEFAULT 1,
  `notification` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `nextcron` bigint(10) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `imageauthorname` varchar(255) DEFAULT NULL,
  `imageauthoremail` varchar(255) DEFAULT NULL,
  `imageauthorurl` varchar(255) DEFAULT NULL,
  `imagecaption` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_badg_typ_ix` (`type`),
  KEY `mdl_badg_cou_ix` (`courseid`),
  KEY `mdl_badg_use_ix` (`usermodified`),
  KEY `mdl_badg_use2_ix` (`usercreated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED COMMENT='Defines badge';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_badge`
--

LOCK TABLES `mdl_badge` WRITE;
/*!40000 ALTER TABLE `mdl_badge` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_badge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_badge_backpack`
--

DROP TABLE IF EXISTS `mdl_badge_backpack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_badge_backpack` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `email` varchar(100) NOT NULL DEFAULT '',
  `backpackurl` varchar(255) NOT NULL DEFAULT '',
  `backpackuid` bigint(10) NOT NULL,
  `autosync` tinyint(1) NOT NULL DEFAULT 0,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_badgback_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Defines settings for connecting external backpack';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_badge_backpack`
--

LOCK TABLES `mdl_badge_backpack` WRITE;
/*!40000 ALTER TABLE `mdl_badge_backpack` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_badge_backpack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_badge_competencies`
--

DROP TABLE IF EXISTS `mdl_badge_competencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_badge_competencies` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `badgeid` bigint(10) NOT NULL DEFAULT 0,
  `targetname` varchar(255) NOT NULL DEFAULT '',
  `targeturl` varchar(255) NOT NULL DEFAULT '',
  `targetdescription` longtext DEFAULT NULL,
  `targetframework` varchar(255) DEFAULT NULL,
  `targetcode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_badgcomp_bad_ix` (`badgeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Defines competencies alignment for badges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_badge_competencies`
--

LOCK TABLES `mdl_badge_competencies` WRITE;
/*!40000 ALTER TABLE `mdl_badge_competencies` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_badge_competencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_badge_criteria`
--

DROP TABLE IF EXISTS `mdl_badge_criteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_badge_criteria` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `badgeid` bigint(10) NOT NULL DEFAULT 0,
  `criteriatype` bigint(10) DEFAULT NULL,
  `method` tinyint(1) NOT NULL DEFAULT 1,
  `description` longtext DEFAULT NULL,
  `descriptionformat` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_badgcrit_badcri_uix` (`badgeid`,`criteriatype`),
  KEY `mdl_badgcrit_cri_ix` (`criteriatype`),
  KEY `mdl_badgcrit_bad_ix` (`badgeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Defines criteria for issuing badges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_badge_criteria`
--

LOCK TABLES `mdl_badge_criteria` WRITE;
/*!40000 ALTER TABLE `mdl_badge_criteria` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_badge_criteria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_badge_criteria_met`
--

DROP TABLE IF EXISTS `mdl_badge_criteria_met`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_badge_criteria_met` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `issuedid` bigint(10) DEFAULT NULL,
  `critid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `datemet` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_badgcritmet_cri_ix` (`critid`),
  KEY `mdl_badgcritmet_use_ix` (`userid`),
  KEY `mdl_badgcritmet_iss_ix` (`issuedid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Defines criteria that were met for an issued badge';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_badge_criteria_met`
--

LOCK TABLES `mdl_badge_criteria_met` WRITE;
/*!40000 ALTER TABLE `mdl_badge_criteria_met` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_badge_criteria_met` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_badge_criteria_param`
--

DROP TABLE IF EXISTS `mdl_badge_criteria_param`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_badge_criteria_param` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `critid` bigint(10) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_badgcritpara_cri_ix` (`critid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Defines parameters for badges criteria';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_badge_criteria_param`
--

LOCK TABLES `mdl_badge_criteria_param` WRITE;
/*!40000 ALTER TABLE `mdl_badge_criteria_param` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_badge_criteria_param` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_badge_endorsement`
--

DROP TABLE IF EXISTS `mdl_badge_endorsement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_badge_endorsement` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `badgeid` bigint(10) NOT NULL DEFAULT 0,
  `issuername` varchar(255) NOT NULL DEFAULT '',
  `issuerurl` varchar(255) NOT NULL DEFAULT '',
  `issueremail` varchar(255) NOT NULL DEFAULT '',
  `claimid` varchar(255) DEFAULT NULL,
  `claimcomment` longtext DEFAULT NULL,
  `dateissued` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_badgendo_bad_ix` (`badgeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Defines endorsement for badge';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_badge_endorsement`
--

LOCK TABLES `mdl_badge_endorsement` WRITE;
/*!40000 ALTER TABLE `mdl_badge_endorsement` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_badge_endorsement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_badge_external`
--

DROP TABLE IF EXISTS `mdl_badge_external`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_badge_external` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `backpackid` bigint(10) NOT NULL,
  `collectionid` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_badgexte_bac_ix` (`backpackid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Setting for external badges display';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_badge_external`
--

LOCK TABLES `mdl_badge_external` WRITE;
/*!40000 ALTER TABLE `mdl_badge_external` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_badge_external` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_badge_issued`
--

DROP TABLE IF EXISTS `mdl_badge_issued`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_badge_issued` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `badgeid` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `uniquehash` longtext NOT NULL,
  `dateissued` bigint(10) NOT NULL DEFAULT 0,
  `dateexpire` bigint(10) DEFAULT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT 0,
  `issuernotified` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_badgissu_baduse_uix` (`badgeid`,`userid`),
  KEY `mdl_badgissu_bad_ix` (`badgeid`),
  KEY `mdl_badgissu_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Defines issued badges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_badge_issued`
--

LOCK TABLES `mdl_badge_issued` WRITE;
/*!40000 ALTER TABLE `mdl_badge_issued` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_badge_issued` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_badge_manual_award`
--

DROP TABLE IF EXISTS `mdl_badge_manual_award`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_badge_manual_award` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `badgeid` bigint(10) NOT NULL,
  `recipientid` bigint(10) NOT NULL,
  `issuerid` bigint(10) NOT NULL,
  `issuerrole` bigint(10) NOT NULL,
  `datemet` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_badgmanuawar_bad_ix` (`badgeid`),
  KEY `mdl_badgmanuawar_rec_ix` (`recipientid`),
  KEY `mdl_badgmanuawar_iss_ix` (`issuerid`),
  KEY `mdl_badgmanuawar_iss2_ix` (`issuerrole`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Track manual award criteria for badges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_badge_manual_award`
--

LOCK TABLES `mdl_badge_manual_award` WRITE;
/*!40000 ALTER TABLE `mdl_badge_manual_award` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_badge_manual_award` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_badge_related`
--

DROP TABLE IF EXISTS `mdl_badge_related`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_badge_related` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `badgeid` bigint(10) NOT NULL DEFAULT 0,
  `relatedbadgeid` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_badgrela_badrel_uix` (`badgeid`,`relatedbadgeid`),
  KEY `mdl_badgrela_bad_ix` (`badgeid`),
  KEY `mdl_badgrela_rel_ix` (`relatedbadgeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Defines badge related for badges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_badge_related`
--

LOCK TABLES `mdl_badge_related` WRITE;
/*!40000 ALTER TABLE `mdl_badge_related` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_badge_related` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_block`
--

DROP TABLE IF EXISTS `mdl_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_block` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL DEFAULT '',
  `cron` bigint(10) NOT NULL DEFAULT 0,
  `lastcron` bigint(10) NOT NULL DEFAULT 0,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_bloc_nam_uix` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COMMENT='contains all installed blocks';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_block`
--

LOCK TABLES `mdl_block` WRITE;
/*!40000 ALTER TABLE `mdl_block` DISABLE KEYS */;
INSERT INTO `mdl_block` VALUES (1,'activity_modules',0,0,1),(2,'activity_results',0,0,1),(3,'admin_bookmarks',0,0,1),(4,'badges',0,0,1),(5,'blog_menu',0,0,1),(6,'blog_recent',0,0,1),(7,'blog_tags',0,0,1),(8,'calendar_month',0,0,1),(9,'calendar_upcoming',0,0,1),(10,'comments',0,0,1),(11,'community',0,0,1),(12,'completionstatus',0,0,1),(13,'course_list',0,0,1),(14,'course_summary',0,0,1),(15,'feedback',0,0,1),(16,'globalsearch',0,0,1),(17,'glossary_random',0,0,1),(18,'html',0,0,1),(19,'login',0,0,1),(20,'lp',0,0,1),(21,'mentees',0,0,1),(22,'mnet_hosts',0,0,1),(23,'myoverview',0,0,1),(24,'myprofile',0,0,1),(25,'navigation',0,0,1),(26,'news_items',0,0,1),(27,'online_users',0,0,1),(28,'participants',0,0,1),(29,'private_files',0,0,1),(30,'quiz_results',0,0,0),(31,'recent_activity',0,0,1),(32,'recentlyaccessedcourses',0,0,1),(33,'recentlyaccesseditems',0,0,1),(34,'rss_client',0,0,1),(35,'search_forums',0,0,1),(36,'section_links',0,0,1),(37,'selfcompletion',0,0,1),(38,'settings',0,0,1),(39,'site_main_menu',0,0,1),(40,'social_activities',0,0,1),(41,'starredcourses',0,0,1),(42,'tag_flickr',0,0,1),(43,'tag_youtube',0,0,0),(44,'tags',0,0,1),(45,'timeline',0,0,1);
/*!40000 ALTER TABLE `mdl_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_block_community`
--

DROP TABLE IF EXISTS `mdl_block_community`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_block_community` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `coursename` varchar(255) NOT NULL DEFAULT '',
  `coursedescription` longtext DEFAULT NULL,
  `courseurl` varchar(255) NOT NULL DEFAULT '',
  `imageurl` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Community block';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_block_community`
--

LOCK TABLES `mdl_block_community` WRITE;
/*!40000 ALTER TABLE `mdl_block_community` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_block_community` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_block_instances`
--

DROP TABLE IF EXISTS `mdl_block_instances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_block_instances` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `blockname` varchar(40) NOT NULL DEFAULT '',
  `parentcontextid` bigint(10) NOT NULL,
  `showinsubcontexts` smallint(4) NOT NULL,
  `requiredbytheme` smallint(4) NOT NULL DEFAULT 0,
  `pagetypepattern` varchar(64) NOT NULL DEFAULT '',
  `subpagepattern` varchar(16) DEFAULT NULL,
  `defaultregion` varchar(16) NOT NULL DEFAULT '',
  `defaultweight` bigint(10) NOT NULL,
  `configdata` longtext DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_blocinst_parshopagsub_ix` (`parentcontextid`,`showinsubcontexts`,`pagetypepattern`,`subpagepattern`),
  KEY `mdl_blocinst_tim_ix` (`timemodified`),
  KEY `mdl_blocinst_par_ix` (`parentcontextid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='This table stores block instances. The type of block this is';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_block_instances`
--

LOCK TABLES `mdl_block_instances` WRITE;
/*!40000 ALTER TABLE `mdl_block_instances` DISABLE KEYS */;
INSERT INTO `mdl_block_instances` VALUES (1,'admin_bookmarks',1,0,0,'admin-*',NULL,'side-pre',2,'',1601070841,1601070841),(2,'timeline',1,0,0,'my-index','2','side-post',0,'',1601070841,1601070841),(3,'private_files',1,0,0,'my-index','2','side-post',1,'',1601070841,1601070841),(4,'online_users',1,0,0,'my-index','2','side-post',2,'',1601070841,1601070841),(5,'badges',1,0,0,'my-index','2','side-post',3,'',1601070841,1601070841),(6,'calendar_month',1,0,0,'my-index','2','side-post',4,'',1601070841,1601070841),(7,'calendar_upcoming',1,0,0,'my-index','2','side-post',5,'',1601070841,1601070841),(8,'lp',1,0,0,'my-index','2','content',0,'',1601070841,1601070841),(9,'recentlyaccessedcourses',1,0,0,'my-index','2','content',1,'',1601070841,1601070841),(10,'myoverview',1,0,0,'my-index','2','content',2,'',1601070841,1601070841),(11,'timeline',5,0,0,'my-index','3','side-post',0,'',1601071200,1601071200),(12,'private_files',5,0,0,'my-index','3','side-post',1,'',1601071200,1601071200),(13,'online_users',5,0,0,'my-index','3','side-post',2,'',1601071200,1601071200),(14,'badges',5,0,0,'my-index','3','side-post',3,'',1601071200,1601071200),(15,'calendar_month',5,0,0,'my-index','3','side-post',4,'',1601071200,1601071200),(16,'calendar_upcoming',5,0,0,'my-index','3','side-post',5,'',1601071200,1601071200),(17,'lp',5,0,0,'my-index','3','content',0,'',1601071200,1601071200),(18,'recentlyaccessedcourses',5,0,0,'my-index','3','content',1,'',1601071200,1601071200),(19,'myoverview',5,0,0,'my-index','3','content',2,'',1601071200,1601071200);
/*!40000 ALTER TABLE `mdl_block_instances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_block_positions`
--

DROP TABLE IF EXISTS `mdl_block_positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_block_positions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `blockinstanceid` bigint(10) NOT NULL,
  `contextid` bigint(10) NOT NULL,
  `pagetype` varchar(64) NOT NULL DEFAULT '',
  `subpage` varchar(16) NOT NULL DEFAULT '',
  `visible` smallint(4) NOT NULL,
  `region` varchar(16) NOT NULL DEFAULT '',
  `weight` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_blocposi_bloconpagsub_uix` (`blockinstanceid`,`contextid`,`pagetype`,`subpage`),
  KEY `mdl_blocposi_blo_ix` (`blockinstanceid`),
  KEY `mdl_blocposi_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores the position of a sticky block_instance on a another ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_block_positions`
--

LOCK TABLES `mdl_block_positions` WRITE;
/*!40000 ALTER TABLE `mdl_block_positions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_block_positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_block_recent_activity`
--

DROP TABLE IF EXISTS `mdl_block_recent_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_block_recent_activity` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL,
  `cmid` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `action` tinyint(1) NOT NULL,
  `modname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_blocreceacti_coutim_ix` (`courseid`,`timecreated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Recent activity block';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_block_recent_activity`
--

LOCK TABLES `mdl_block_recent_activity` WRITE;
/*!40000 ALTER TABLE `mdl_block_recent_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_block_recent_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_block_recentlyaccesseditems`
--

DROP TABLE IF EXISTS `mdl_block_recentlyaccesseditems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_block_recentlyaccesseditems` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL,
  `cmid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `timeaccess` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_blocrece_usecoucmi_uix` (`userid`,`courseid`,`cmid`),
  KEY `mdl_blocrece_use_ix` (`userid`),
  KEY `mdl_blocrece_cou_ix` (`courseid`),
  KEY `mdl_blocrece_cmi_ix` (`cmid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Most recently accessed items accessed by a user';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_block_recentlyaccesseditems`
--

LOCK TABLES `mdl_block_recentlyaccesseditems` WRITE;
/*!40000 ALTER TABLE `mdl_block_recentlyaccesseditems` DISABLE KEYS */;
INSERT INTO `mdl_block_recentlyaccesseditems` VALUES (1,2,1,2,1601073049);
/*!40000 ALTER TABLE `mdl_block_recentlyaccesseditems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_block_rss_client`
--

DROP TABLE IF EXISTS `mdl_block_rss_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_block_rss_client` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `title` longtext NOT NULL,
  `preferredtitle` varchar(64) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `shared` tinyint(2) NOT NULL DEFAULT 0,
  `url` varchar(255) NOT NULL DEFAULT '',
  `skiptime` bigint(10) NOT NULL DEFAULT 0,
  `skipuntil` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Remote news feed information. Contains the news feed id, the';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_block_rss_client`
--

LOCK TABLES `mdl_block_rss_client` WRITE;
/*!40000 ALTER TABLE `mdl_block_rss_client` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_block_rss_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_blog_association`
--

DROP TABLE IF EXISTS `mdl_blog_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_blog_association` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contextid` bigint(10) NOT NULL,
  `blogid` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_blogasso_con_ix` (`contextid`),
  KEY `mdl_blogasso_blo_ix` (`blogid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Associations of blog entries with courses and module instanc';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_blog_association`
--

LOCK TABLES `mdl_blog_association` WRITE;
/*!40000 ALTER TABLE `mdl_blog_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_blog_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_blog_external`
--

DROP TABLE IF EXISTS `mdl_blog_external`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_blog_external` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` longtext DEFAULT NULL,
  `url` longtext NOT NULL,
  `filtertags` varchar(255) DEFAULT NULL,
  `failedlastsync` tinyint(1) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) DEFAULT NULL,
  `timefetched` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_blogexte_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='External blog links used for RSS copying of blog entries to ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_blog_external`
--

LOCK TABLES `mdl_blog_external` WRITE;
/*!40000 ALTER TABLE `mdl_blog_external` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_blog_external` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_book`
--

DROP TABLE IF EXISTS `mdl_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_book` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `intro` longtext DEFAULT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT 0,
  `numbering` smallint(4) NOT NULL DEFAULT 0,
  `navstyle` smallint(4) NOT NULL DEFAULT 1,
  `customtitles` tinyint(2) NOT NULL DEFAULT 0,
  `revision` bigint(10) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Defines book';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_book`
--

LOCK TABLES `mdl_book` WRITE;
/*!40000 ALTER TABLE `mdl_book` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_book_chapters`
--

DROP TABLE IF EXISTS `mdl_book_chapters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_book_chapters` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `bookid` bigint(10) NOT NULL DEFAULT 0,
  `pagenum` bigint(10) NOT NULL DEFAULT 0,
  `subchapter` bigint(10) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `content` longtext NOT NULL,
  `contentformat` smallint(4) NOT NULL DEFAULT 0,
  `hidden` tinyint(2) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `importsrc` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Defines book_chapters';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_book_chapters`
--

LOCK TABLES `mdl_book_chapters` WRITE;
/*!40000 ALTER TABLE `mdl_book_chapters` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_book_chapters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_cache_filters`
--

DROP TABLE IF EXISTS `mdl_cache_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_cache_filters` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `filter` varchar(32) NOT NULL DEFAULT '',
  `version` bigint(10) NOT NULL DEFAULT 0,
  `md5key` varchar(32) NOT NULL DEFAULT '',
  `rawtext` longtext NOT NULL,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_cachfilt_filmd5_ix` (`filter`,`md5key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='For keeping information about cached data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_cache_filters`
--

LOCK TABLES `mdl_cache_filters` WRITE;
/*!40000 ALTER TABLE `mdl_cache_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_cache_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_cache_flags`
--

DROP TABLE IF EXISTS `mdl_cache_flags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_cache_flags` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `flagtype` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `value` longtext NOT NULL,
  `expiry` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_cachflag_fla_ix` (`flagtype`),
  KEY `mdl_cachflag_nam_ix` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Cache of time-sensitive flags';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_cache_flags`
--

LOCK TABLES `mdl_cache_flags` WRITE;
/*!40000 ALTER TABLE `mdl_cache_flags` DISABLE KEYS */;
INSERT INTO `mdl_cache_flags` VALUES (1,'userpreferenceschanged','2',1601072606,'1',1601079806);
/*!40000 ALTER TABLE `mdl_cache_flags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_capabilities`
--

DROP TABLE IF EXISTS `mdl_capabilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_capabilities` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `captype` varchar(50) NOT NULL DEFAULT '',
  `contextlevel` bigint(10) NOT NULL DEFAULT 0,
  `component` varchar(100) NOT NULL DEFAULT '',
  `riskbitmask` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_capa_nam_uix` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=618 DEFAULT CHARSET=utf8 COMMENT='this defines all capabilities';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_capabilities`
--

LOCK TABLES `mdl_capabilities` WRITE;
/*!40000 ALTER TABLE `mdl_capabilities` DISABLE KEYS */;
INSERT INTO `mdl_capabilities` VALUES (1,'moodle/site:config','write',10,'moodle',62),(2,'moodle/site:configview','read',10,'moodle',0),(3,'moodle/site:readallmessages','read',10,'moodle',8),(4,'moodle/site:manageallmessaging','write',10,'moodle',8),(5,'moodle/site:deleteanymessage','write',10,'moodle',32),(6,'moodle/site:sendmessage','write',10,'moodle',16),(7,'moodle/site:deleteownmessage','write',10,'moodle',0),(8,'moodle/site:approvecourse','write',10,'moodle',4),(9,'moodle/backup:backupcourse','write',50,'moodle',28),(10,'moodle/backup:backupsection','write',50,'moodle',28),(11,'moodle/backup:backupactivity','write',70,'moodle',28),(12,'moodle/backup:backuptargethub','write',50,'moodle',28),(13,'moodle/backup:backuptargetimport','write',50,'moodle',28),(14,'moodle/backup:downloadfile','write',50,'moodle',28),(15,'moodle/backup:configure','write',50,'moodle',28),(16,'moodle/backup:userinfo','read',50,'moodle',8),(17,'moodle/backup:anonymise','read',50,'moodle',8),(18,'moodle/restore:restorecourse','write',50,'moodle',28),(19,'moodle/restore:restoresection','write',50,'moodle',28),(20,'moodle/restore:restoreactivity','write',50,'moodle',28),(21,'moodle/restore:viewautomatedfilearea','write',50,'moodle',28),(22,'moodle/restore:restoretargethub','write',50,'moodle',28),(23,'moodle/restore:restoretargetimport','write',50,'moodle',28),(24,'moodle/restore:uploadfile','write',50,'moodle',28),(25,'moodle/restore:configure','write',50,'moodle',28),(26,'moodle/restore:rolldates','write',50,'moodle',0),(27,'moodle/restore:userinfo','write',50,'moodle',30),(28,'moodle/restore:createuser','write',10,'moodle',24),(29,'moodle/site:manageblocks','write',80,'moodle',20),(30,'moodle/site:accessallgroups','read',50,'moodle',0),(31,'moodle/site:viewfullnames','read',50,'moodle',0),(32,'moodle/site:viewuseridentity','read',50,'moodle',0),(33,'moodle/site:viewreports','read',50,'moodle',8),(34,'moodle/site:trustcontent','write',50,'moodle',4),(35,'moodle/site:uploadusers','write',10,'moodle',24),(36,'moodle/filter:manage','write',50,'moodle',0),(37,'moodle/user:create','write',10,'moodle',24),(38,'moodle/user:delete','write',10,'moodle',40),(39,'moodle/user:update','write',10,'moodle',24),(40,'moodle/user:viewdetails','read',50,'moodle',0),(41,'moodle/user:viewalldetails','read',30,'moodle',8),(42,'moodle/user:viewlastip','read',30,'moodle',8),(43,'moodle/user:viewhiddendetails','read',50,'moodle',8),(44,'moodle/user:loginas','write',50,'moodle',30),(45,'moodle/user:managesyspages','write',10,'moodle',0),(46,'moodle/user:manageblocks','write',30,'moodle',0),(47,'moodle/user:manageownblocks','write',10,'moodle',0),(48,'moodle/user:manageownfiles','write',10,'moodle',0),(49,'moodle/user:ignoreuserquota','write',10,'moodle',0),(50,'moodle/my:configsyspages','write',10,'moodle',0),(51,'moodle/role:assign','write',50,'moodle',28),(52,'moodle/role:review','read',50,'moodle',8),(53,'moodle/role:override','write',50,'moodle',28),(54,'moodle/role:safeoverride','write',50,'moodle',16),(55,'moodle/role:manage','write',10,'moodle',28),(56,'moodle/role:switchroles','read',50,'moodle',12),(57,'moodle/category:manage','write',40,'moodle',4),(58,'moodle/category:viewhiddencategories','read',40,'moodle',0),(59,'moodle/cohort:manage','write',40,'moodle',0),(60,'moodle/cohort:assign','write',40,'moodle',0),(61,'moodle/cohort:view','read',50,'moodle',0),(62,'moodle/course:create','write',40,'moodle',4),(63,'moodle/course:creategroupconversations','write',50,'moodle',4),(64,'moodle/course:request','write',10,'moodle',0),(65,'moodle/course:delete','write',50,'moodle',32),(66,'moodle/course:update','write',50,'moodle',4),(67,'moodle/course:view','read',50,'moodle',0),(68,'moodle/course:enrolreview','read',50,'moodle',8),(69,'moodle/course:enrolconfig','write',50,'moodle',8),(70,'moodle/course:reviewotherusers','read',50,'moodle',0),(71,'moodle/course:bulkmessaging','write',50,'moodle',16),(72,'moodle/course:viewhiddenuserfields','read',50,'moodle',8),(73,'moodle/course:viewhiddencourses','read',50,'moodle',0),(74,'moodle/course:visibility','write',50,'moodle',0),(75,'moodle/course:managefiles','write',50,'moodle',4),(76,'moodle/course:ignoreavailabilityrestrictions','read',70,'moodle',0),(77,'moodle/course:ignorefilesizelimits','write',50,'moodle',0),(78,'moodle/course:manageactivities','write',70,'moodle',4),(79,'moodle/course:activityvisibility','write',70,'moodle',0),(80,'moodle/course:viewhiddenactivities','write',70,'moodle',0),(81,'moodle/course:viewparticipants','read',50,'moodle',0),(82,'moodle/course:changefullname','write',50,'moodle',4),(83,'moodle/course:changeshortname','write',50,'moodle',4),(84,'moodle/course:renameroles','write',50,'moodle',0),(85,'moodle/course:changeidnumber','write',50,'moodle',4),(86,'moodle/course:changecategory','write',50,'moodle',4),(87,'moodle/course:changesummary','write',50,'moodle',4),(88,'moodle/course:setforcedlanguage','write',50,'moodle',0),(89,'moodle/site:viewparticipants','read',10,'moodle',0),(90,'moodle/course:isincompletionreports','read',50,'moodle',0),(91,'moodle/course:viewscales','read',50,'moodle',0),(92,'moodle/course:managescales','write',50,'moodle',0),(93,'moodle/course:managegroups','write',50,'moodle',0),(94,'moodle/course:reset','write',50,'moodle',32),(95,'moodle/course:viewsuspendedusers','read',10,'moodle',0),(96,'moodle/course:tag','write',50,'moodle',16),(97,'moodle/blog:view','read',10,'moodle',0),(98,'moodle/blog:search','read',10,'moodle',0),(99,'moodle/blog:viewdrafts','read',10,'moodle',8),(100,'moodle/blog:create','write',10,'moodle',16),(101,'moodle/blog:manageentries','write',10,'moodle',16),(102,'moodle/blog:manageexternal','write',10,'moodle',16),(103,'moodle/calendar:manageownentries','write',50,'moodle',16),(104,'moodle/calendar:managegroupentries','write',50,'moodle',16),(105,'moodle/calendar:manageentries','write',50,'moodle',16),(106,'moodle/user:editprofile','write',30,'moodle',24),(107,'moodle/user:editownprofile','write',10,'moodle',16),(108,'moodle/user:changeownpassword','write',10,'moodle',0),(109,'moodle/user:readuserposts','read',30,'moodle',0),(110,'moodle/user:readuserblogs','read',30,'moodle',0),(111,'moodle/user:viewuseractivitiesreport','read',30,'moodle',8),(112,'moodle/user:editmessageprofile','write',30,'moodle',16),(113,'moodle/user:editownmessageprofile','write',10,'moodle',0),(114,'moodle/question:managecategory','write',50,'moodle',20),(115,'moodle/question:add','write',50,'moodle',20),(116,'moodle/question:editmine','write',50,'moodle',20),(117,'moodle/question:editall','write',50,'moodle',20),(118,'moodle/question:viewmine','read',50,'moodle',0),(119,'moodle/question:viewall','read',50,'moodle',0),(120,'moodle/question:usemine','read',50,'moodle',0),(121,'moodle/question:useall','read',50,'moodle',0),(122,'moodle/question:movemine','write',50,'moodle',0),(123,'moodle/question:moveall','write',50,'moodle',0),(124,'moodle/question:config','write',10,'moodle',2),(125,'moodle/question:flag','write',50,'moodle',0),(126,'moodle/question:tagmine','write',50,'moodle',0),(127,'moodle/question:tagall','write',50,'moodle',0),(128,'moodle/site:doclinks','read',10,'moodle',0),(129,'moodle/course:sectionvisibility','write',50,'moodle',0),(130,'moodle/course:useremail','write',50,'moodle',0),(131,'moodle/course:viewhiddensections','write',50,'moodle',0),(132,'moodle/course:setcurrentsection','write',50,'moodle',0),(133,'moodle/course:movesections','write',50,'moodle',0),(134,'moodle/site:mnetlogintoremote','read',10,'moodle',0),(135,'moodle/grade:viewall','read',50,'moodle',8),(136,'moodle/grade:view','read',50,'moodle',0),(137,'moodle/grade:viewhidden','read',50,'moodle',8),(138,'moodle/grade:import','write',50,'moodle',12),(139,'moodle/grade:export','read',50,'moodle',8),(140,'moodle/grade:manage','write',50,'moodle',12),(141,'moodle/grade:edit','write',50,'moodle',12),(142,'moodle/grade:managegradingforms','write',50,'moodle',12),(143,'moodle/grade:sharegradingforms','write',10,'moodle',4),(144,'moodle/grade:managesharedforms','write',10,'moodle',4),(145,'moodle/grade:manageoutcomes','write',50,'moodle',0),(146,'moodle/grade:manageletters','write',50,'moodle',0),(147,'moodle/grade:hide','write',50,'moodle',0),(148,'moodle/grade:lock','write',50,'moodle',0),(149,'moodle/grade:unlock','write',50,'moodle',0),(150,'moodle/my:manageblocks','write',10,'moodle',0),(151,'moodle/notes:view','read',50,'moodle',0),(152,'moodle/notes:manage','write',50,'moodle',16),(153,'moodle/tag:manage','write',10,'moodle',16),(154,'moodle/tag:edit','write',10,'moodle',16),(155,'moodle/tag:flag','write',10,'moodle',16),(156,'moodle/tag:editblocks','write',10,'moodle',0),(157,'moodle/block:view','read',80,'moodle',0),(158,'moodle/block:edit','write',80,'moodle',20),(159,'moodle/portfolio:export','read',10,'moodle',0),(160,'moodle/comment:view','read',50,'moodle',0),(161,'moodle/comment:post','write',50,'moodle',24),(162,'moodle/comment:delete','write',50,'moodle',32),(163,'moodle/webservice:createtoken','write',10,'moodle',62),(164,'moodle/webservice:managealltokens','write',10,'moodle',42),(165,'moodle/webservice:createmobiletoken','write',10,'moodle',24),(166,'moodle/rating:view','read',50,'moodle',0),(167,'moodle/rating:viewany','read',50,'moodle',8),(168,'moodle/rating:viewall','read',50,'moodle',8),(169,'moodle/rating:rate','write',50,'moodle',0),(170,'moodle/course:publish','write',10,'moodle',24),(171,'moodle/course:markcomplete','write',50,'moodle',0),(172,'moodle/course:overridecompletion','write',50,'moodle',0),(173,'moodle/community:add','write',10,'moodle',0),(174,'moodle/community:download','write',10,'moodle',0),(175,'moodle/badges:manageglobalsettings','write',10,'moodle',34),(176,'moodle/badges:viewbadges','read',50,'moodle',0),(177,'moodle/badges:manageownbadges','write',30,'moodle',0),(178,'moodle/badges:viewotherbadges','read',30,'moodle',0),(179,'moodle/badges:earnbadge','write',50,'moodle',0),(180,'moodle/badges:createbadge','write',50,'moodle',16),(181,'moodle/badges:deletebadge','write',50,'moodle',32),(182,'moodle/badges:configuredetails','write',50,'moodle',16),(183,'moodle/badges:configurecriteria','write',50,'moodle',4),(184,'moodle/badges:configuremessages','write',50,'moodle',16),(185,'moodle/badges:awardbadge','write',50,'moodle',16),(186,'moodle/badges:revokebadge','write',50,'moodle',16),(187,'moodle/badges:viewawarded','read',50,'moodle',8),(188,'moodle/site:forcelanguage','read',10,'moodle',0),(189,'moodle/search:query','read',10,'moodle',0),(190,'moodle/competency:competencymanage','write',40,'moodle',0),(191,'moodle/competency:competencyview','read',40,'moodle',0),(192,'moodle/competency:competencygrade','write',50,'moodle',0),(193,'moodle/competency:coursecompetencymanage','write',50,'moodle',0),(194,'moodle/competency:coursecompetencyconfigure','write',70,'moodle',0),(195,'moodle/competency:coursecompetencygradable','read',50,'moodle',0),(196,'moodle/competency:coursecompetencyview','read',50,'moodle',0),(197,'moodle/competency:evidencedelete','write',30,'moodle',0),(198,'moodle/competency:planmanage','write',30,'moodle',0),(199,'moodle/competency:planmanagedraft','write',30,'moodle',0),(200,'moodle/competency:planmanageown','write',30,'moodle',0),(201,'moodle/competency:planmanageowndraft','write',30,'moodle',0),(202,'moodle/competency:planview','read',30,'moodle',0),(203,'moodle/competency:planviewdraft','read',30,'moodle',0),(204,'moodle/competency:planviewown','read',30,'moodle',0),(205,'moodle/competency:planviewowndraft','read',30,'moodle',0),(206,'moodle/competency:planrequestreview','write',30,'moodle',0),(207,'moodle/competency:planrequestreviewown','write',30,'moodle',0),(208,'moodle/competency:planreview','write',30,'moodle',0),(209,'moodle/competency:plancomment','write',30,'moodle',0),(210,'moodle/competency:plancommentown','write',30,'moodle',0),(211,'moodle/competency:usercompetencyview','read',30,'moodle',0),(212,'moodle/competency:usercompetencyrequestreview','write',30,'moodle',0),(213,'moodle/competency:usercompetencyrequestreviewown','write',30,'moodle',0),(214,'moodle/competency:usercompetencyreview','write',30,'moodle',0),(215,'moodle/competency:usercompetencycomment','write',30,'moodle',0),(216,'moodle/competency:usercompetencycommentown','write',30,'moodle',0),(217,'moodle/competency:templatemanage','write',40,'moodle',0),(218,'moodle/analytics:listinsights','read',50,'moodle',8),(219,'moodle/analytics:managemodels','write',10,'moodle',2),(220,'moodle/competency:templateview','read',40,'moodle',0),(221,'moodle/competency:userevidencemanage','write',30,'moodle',0),(222,'moodle/competency:userevidencemanageown','write',30,'moodle',0),(223,'moodle/competency:userevidenceview','read',30,'moodle',0),(224,'moodle/site:maintenanceaccess','write',10,'moodle',0),(225,'moodle/site:messageanyuser','write',10,'moodle',16),(226,'moodle/site:managecontextlocks','write',70,'moodle',0),(227,'mod/assign:view','read',70,'mod_assign',0),(228,'mod/assign:submit','write',70,'mod_assign',0),(229,'mod/assign:grade','write',70,'mod_assign',4),(230,'mod/assign:exportownsubmission','read',70,'mod_assign',0),(231,'mod/assign:addinstance','write',50,'mod_assign',4),(232,'mod/assign:editothersubmission','write',70,'mod_assign',41),(233,'mod/assign:grantextension','write',70,'mod_assign',0),(234,'mod/assign:revealidentities','write',70,'mod_assign',0),(235,'mod/assign:reviewgrades','write',70,'mod_assign',0),(236,'mod/assign:releasegrades','write',70,'mod_assign',0),(237,'mod/assign:managegrades','write',70,'mod_assign',0),(238,'mod/assign:manageallocations','write',70,'mod_assign',0),(239,'mod/assign:viewgrades','read',70,'mod_assign',0),(240,'mod/assign:viewblinddetails','write',70,'mod_assign',8),(241,'mod/assign:receivegradernotifications','read',70,'mod_assign',0),(242,'mod/assign:manageoverrides','write',70,'mod_assign',0),(243,'mod/assignment:view','read',70,'mod_assignment',0),(244,'mod/assignment:addinstance','write',50,'mod_assignment',4),(245,'mod/assignment:submit','write',70,'mod_assignment',0),(246,'mod/assignment:grade','write',70,'mod_assignment',4),(247,'mod/assignment:exportownsubmission','read',70,'mod_assignment',0),(248,'mod/book:addinstance','write',50,'mod_book',4),(249,'mod/book:read','read',70,'mod_book',0),(250,'mod/book:viewhiddenchapters','read',70,'mod_book',0),(251,'mod/book:edit','write',70,'mod_book',4),(252,'mod/chat:addinstance','write',50,'mod_chat',4),(253,'mod/chat:chat','write',70,'mod_chat',16),(254,'mod/chat:readlog','read',70,'mod_chat',0),(255,'mod/chat:deletelog','write',70,'mod_chat',0),(256,'mod/chat:exportparticipatedsession','read',70,'mod_chat',8),(257,'mod/chat:exportsession','read',70,'mod_chat',8),(258,'mod/chat:view','read',70,'mod_chat',0),(259,'mod/choice:addinstance','write',50,'mod_choice',4),(260,'mod/choice:choose','write',70,'mod_choice',0),(261,'mod/choice:readresponses','read',70,'mod_choice',0),(262,'mod/choice:deleteresponses','write',70,'mod_choice',0),(263,'mod/choice:downloadresponses','read',70,'mod_choice',0),(264,'mod/choice:view','read',70,'mod_choice',0),(265,'mod/data:addinstance','write',50,'mod_data',4),(266,'mod/data:viewentry','read',70,'mod_data',0),(267,'mod/data:writeentry','write',70,'mod_data',16),(268,'mod/data:comment','write',70,'mod_data',16),(269,'mod/data:rate','write',70,'mod_data',0),(270,'mod/data:viewrating','read',70,'mod_data',0),(271,'mod/data:viewanyrating','read',70,'mod_data',8),(272,'mod/data:viewallratings','read',70,'mod_data',8),(273,'mod/data:approve','write',70,'mod_data',16),(274,'mod/data:manageentries','write',70,'mod_data',16),(275,'mod/data:managecomments','write',70,'mod_data',16),(276,'mod/data:managetemplates','write',70,'mod_data',20),(277,'mod/data:viewalluserpresets','read',70,'mod_data',0),(278,'mod/data:manageuserpresets','write',70,'mod_data',20),(279,'mod/data:exportentry','read',70,'mod_data',8),(280,'mod/data:exportownentry','read',70,'mod_data',0),(281,'mod/data:exportallentries','read',70,'mod_data',8),(282,'mod/data:exportuserinfo','read',70,'mod_data',8),(283,'mod/data:view','read',70,'mod_data',0),(284,'mod/feedback:addinstance','write',50,'mod_feedback',4),(285,'mod/feedback:view','read',70,'mod_feedback',0),(286,'mod/feedback:complete','write',70,'mod_feedback',16),(287,'mod/feedback:viewanalysepage','read',70,'mod_feedback',8),(288,'mod/feedback:deletesubmissions','write',70,'mod_feedback',0),(289,'mod/feedback:mapcourse','write',70,'mod_feedback',0),(290,'mod/feedback:edititems','write',70,'mod_feedback',20),(291,'mod/feedback:createprivatetemplate','write',70,'mod_feedback',16),(292,'mod/feedback:createpublictemplate','write',70,'mod_feedback',16),(293,'mod/feedback:deletetemplate','write',70,'mod_feedback',0),(294,'mod/feedback:viewreports','read',70,'mod_feedback',8),(295,'mod/feedback:receivemail','read',70,'mod_feedback',8),(296,'mod/folder:addinstance','write',50,'mod_folder',4),(297,'mod/folder:view','read',70,'mod_folder',0),(298,'mod/folder:managefiles','write',70,'mod_folder',16),(299,'mod/forum:addinstance','write',50,'mod_forum',4),(300,'mod/forum:viewdiscussion','read',70,'mod_forum',0),(301,'mod/forum:viewhiddentimedposts','read',70,'mod_forum',0),(302,'mod/forum:startdiscussion','write',70,'mod_forum',16),(303,'mod/forum:replypost','write',70,'mod_forum',16),(304,'mod/forum:addnews','write',70,'mod_forum',16),(305,'mod/forum:replynews','write',70,'mod_forum',16),(306,'mod/forum:viewrating','read',70,'mod_forum',0),(307,'mod/forum:viewanyrating','read',70,'mod_forum',8),(308,'mod/forum:viewallratings','read',70,'mod_forum',8),(309,'mod/forum:rate','write',70,'mod_forum',0),(310,'mod/forum:createattachment','write',70,'mod_forum',16),(311,'mod/forum:deleteownpost','write',70,'mod_forum',0),(312,'mod/forum:deleteanypost','write',70,'mod_forum',0),(313,'mod/forum:splitdiscussions','write',70,'mod_forum',0),(314,'mod/forum:movediscussions','write',70,'mod_forum',0),(315,'mod/forum:pindiscussions','write',70,'mod_forum',0),(316,'mod/forum:editanypost','write',70,'mod_forum',16),(317,'mod/forum:viewqandawithoutposting','read',70,'mod_forum',0),(318,'mod/forum:viewsubscribers','read',70,'mod_forum',0),(319,'mod/forum:managesubscriptions','write',70,'mod_forum',16),(320,'mod/forum:postwithoutthrottling','write',70,'mod_forum',16),(321,'mod/forum:exportdiscussion','read',70,'mod_forum',8),(322,'mod/forum:exportpost','read',70,'mod_forum',8),(323,'mod/forum:exportownpost','read',70,'mod_forum',8),(324,'mod/forum:addquestion','write',70,'mod_forum',16),(325,'mod/forum:allowforcesubscribe','read',70,'mod_forum',0),(326,'mod/forum:canposttomygroups','write',70,'mod_forum',0),(327,'mod/forum:canoverridediscussionlock','write',70,'mod_forum',0),(328,'mod/glossary:addinstance','write',50,'mod_glossary',4),(329,'mod/glossary:view','read',70,'mod_glossary',0),(330,'mod/glossary:write','write',70,'mod_glossary',16),(331,'mod/glossary:manageentries','write',70,'mod_glossary',16),(332,'mod/glossary:managecategories','write',70,'mod_glossary',16),(333,'mod/glossary:comment','write',70,'mod_glossary',16),(334,'mod/glossary:managecomments','write',70,'mod_glossary',16),(335,'mod/glossary:import','write',70,'mod_glossary',16),(336,'mod/glossary:export','read',70,'mod_glossary',0),(337,'mod/glossary:approve','write',70,'mod_glossary',16),(338,'mod/glossary:rate','write',70,'mod_glossary',0),(339,'mod/glossary:viewrating','read',70,'mod_glossary',0),(340,'mod/glossary:viewanyrating','read',70,'mod_glossary',8),(341,'mod/glossary:viewallratings','read',70,'mod_glossary',8),(342,'mod/glossary:exportentry','read',70,'mod_glossary',8),(343,'mod/glossary:exportownentry','read',70,'mod_glossary',0),(344,'mod/imscp:view','read',70,'mod_imscp',0),(345,'mod/imscp:addinstance','write',50,'mod_imscp',4),(346,'mod/label:addinstance','write',50,'mod_label',4),(347,'mod/label:view','read',70,'mod_label',0),(348,'mod/lesson:addinstance','write',50,'mod_lesson',4),(349,'mod/lesson:edit','write',70,'mod_lesson',4),(350,'mod/lesson:grade','write',70,'mod_lesson',20),(351,'mod/lesson:viewreports','read',70,'mod_lesson',8),(352,'mod/lesson:manage','write',70,'mod_lesson',0),(353,'mod/lesson:manageoverrides','write',70,'mod_lesson',0),(354,'mod/lesson:view','read',70,'mod_lesson',0),(355,'mod/lti:view','read',70,'mod_lti',0),(356,'mod/lti:addinstance','write',50,'mod_lti',4),(357,'mod/lti:manage','write',70,'mod_lti',8),(358,'mod/lti:admin','write',70,'mod_lti',8),(359,'mod/lti:addcoursetool','write',50,'mod_lti',0),(360,'mod/lti:requesttooladd','write',50,'mod_lti',0),(361,'mod/page:view','read',70,'mod_page',0),(362,'mod/page:addinstance','write',50,'mod_page',4),(363,'mod/quiz:view','read',70,'mod_quiz',0),(364,'mod/quiz:addinstance','write',50,'mod_quiz',4),(365,'mod/quiz:attempt','write',70,'mod_quiz',16),(366,'mod/quiz:reviewmyattempts','read',70,'mod_quiz',0),(367,'mod/quiz:manage','write',70,'mod_quiz',16),(368,'mod/quiz:manageoverrides','write',70,'mod_quiz',0),(369,'mod/quiz:preview','write',70,'mod_quiz',0),(370,'mod/quiz:grade','write',70,'mod_quiz',20),(371,'mod/quiz:regrade','write',70,'mod_quiz',16),(372,'mod/quiz:viewreports','read',70,'mod_quiz',8),(373,'mod/quiz:deleteattempts','write',70,'mod_quiz',32),(374,'mod/quiz:ignoretimelimits','read',70,'mod_quiz',0),(375,'mod/quiz:emailconfirmsubmission','read',70,'mod_quiz',0),(376,'mod/quiz:emailnotifysubmission','read',70,'mod_quiz',0),(377,'mod/quiz:emailwarnoverdue','read',70,'mod_quiz',0),(378,'mod/resource:view','read',70,'mod_resource',0),(379,'mod/resource:addinstance','write',50,'mod_resource',4),(380,'mod/scorm:addinstance','write',50,'mod_scorm',4),(381,'mod/scorm:viewreport','read',70,'mod_scorm',0),(382,'mod/scorm:skipview','read',70,'mod_scorm',0),(383,'mod/scorm:savetrack','write',70,'mod_scorm',0),(384,'mod/scorm:viewscores','read',70,'mod_scorm',0),(385,'mod/scorm:deleteresponses','write',70,'mod_scorm',0),(386,'mod/scorm:deleteownresponses','write',70,'mod_scorm',0),(387,'mod/survey:addinstance','write',50,'mod_survey',4),(388,'mod/survey:participate','read',70,'mod_survey',0),(389,'mod/survey:readresponses','read',70,'mod_survey',0),(390,'mod/survey:download','read',70,'mod_survey',0),(391,'mod/url:view','read',70,'mod_url',0),(392,'mod/url:addinstance','write',50,'mod_url',4),(393,'mod/wiki:addinstance','write',50,'mod_wiki',4),(394,'mod/wiki:viewpage','read',70,'mod_wiki',0),(395,'mod/wiki:editpage','write',70,'mod_wiki',16),(396,'mod/wiki:createpage','write',70,'mod_wiki',16),(397,'mod/wiki:viewcomment','read',70,'mod_wiki',0),(398,'mod/wiki:editcomment','write',70,'mod_wiki',16),(399,'mod/wiki:managecomment','write',70,'mod_wiki',0),(400,'mod/wiki:managefiles','write',70,'mod_wiki',0),(401,'mod/wiki:overridelock','write',70,'mod_wiki',0),(402,'mod/wiki:managewiki','write',70,'mod_wiki',0),(403,'mod/workshop:view','read',70,'mod_workshop',0),(404,'mod/workshop:addinstance','write',50,'mod_workshop',4),(405,'mod/workshop:switchphase','write',70,'mod_workshop',0),(406,'mod/workshop:editdimensions','write',70,'mod_workshop',4),(407,'mod/workshop:submit','write',70,'mod_workshop',0),(408,'mod/workshop:peerassess','write',70,'mod_workshop',0),(409,'mod/workshop:manageexamples','write',70,'mod_workshop',0),(410,'mod/workshop:allocate','write',70,'mod_workshop',0),(411,'mod/workshop:publishsubmissions','write',70,'mod_workshop',0),(412,'mod/workshop:viewauthornames','read',70,'mod_workshop',0),(413,'mod/workshop:viewreviewernames','read',70,'mod_workshop',0),(414,'mod/workshop:viewallsubmissions','read',70,'mod_workshop',0),(415,'mod/workshop:viewpublishedsubmissions','read',70,'mod_workshop',0),(416,'mod/workshop:viewauthorpublished','read',70,'mod_workshop',0),(417,'mod/workshop:viewallassessments','read',70,'mod_workshop',0),(418,'mod/workshop:overridegrades','write',70,'mod_workshop',0),(419,'mod/workshop:ignoredeadlines','write',70,'mod_workshop',0),(420,'mod/workshop:deletesubmissions','write',70,'mod_workshop',0),(421,'mod/workshop:exportsubmissions','read',70,'mod_workshop',0),(422,'auth/oauth2:managelinkedlogins','write',30,'auth_oauth2',0),(423,'enrol/category:synchronised','write',10,'enrol_category',0),(424,'enrol/category:config','write',50,'enrol_category',0),(425,'enrol/cohort:config','write',50,'enrol_cohort',0),(426,'enrol/cohort:unenrol','write',50,'enrol_cohort',0),(427,'enrol/database:unenrol','write',50,'enrol_database',0),(428,'enrol/database:config','write',50,'enrol_database',0),(429,'enrol/flatfile:manage','write',50,'enrol_flatfile',0),(430,'enrol/flatfile:unenrol','write',50,'enrol_flatfile',0),(431,'enrol/guest:config','write',50,'enrol_guest',0),(432,'enrol/imsenterprise:config','write',50,'enrol_imsenterprise',0),(433,'enrol/ldap:manage','write',50,'enrol_ldap',0),(434,'enrol/lti:config','write',50,'enrol_lti',0),(435,'enrol/lti:unenrol','write',50,'enrol_lti',0),(436,'enrol/manual:config','write',50,'enrol_manual',0),(437,'enrol/manual:enrol','write',50,'enrol_manual',0),(438,'enrol/manual:manage','write',50,'enrol_manual',0),(439,'enrol/manual:unenrol','write',50,'enrol_manual',0),(440,'enrol/manual:unenrolself','write',50,'enrol_manual',0),(441,'enrol/meta:config','write',50,'enrol_meta',0),(442,'enrol/meta:selectaslinked','read',50,'enrol_meta',0),(443,'enrol/meta:unenrol','write',50,'enrol_meta',0),(444,'enrol/mnet:config','write',50,'enrol_mnet',0),(445,'enrol/paypal:config','write',50,'enrol_paypal',0),(446,'enrol/paypal:manage','write',50,'enrol_paypal',0),(447,'enrol/paypal:unenrol','write',50,'enrol_paypal',0),(448,'enrol/paypal:unenrolself','write',50,'enrol_paypal',0),(449,'enrol/self:config','write',50,'enrol_self',0),(450,'enrol/self:manage','write',50,'enrol_self',0),(451,'enrol/self:holdkey','write',50,'enrol_self',0),(452,'enrol/self:unenrolself','write',50,'enrol_self',0),(453,'enrol/self:unenrol','write',50,'enrol_self',0),(454,'message/airnotifier:managedevice','write',10,'message_airnotifier',0),(455,'block/activity_modules:addinstance','write',80,'block_activity_modules',20),(456,'block/activity_results:addinstance','write',80,'block_activity_results',20),(457,'block/admin_bookmarks:myaddinstance','write',10,'block_admin_bookmarks',0),(458,'block/admin_bookmarks:addinstance','write',80,'block_admin_bookmarks',20),(459,'block/badges:addinstance','read',80,'block_badges',0),(460,'block/badges:myaddinstance','read',10,'block_badges',8),(461,'block/blog_menu:addinstance','write',80,'block_blog_menu',20),(462,'block/blog_recent:addinstance','write',80,'block_blog_recent',20),(463,'block/blog_tags:addinstance','write',80,'block_blog_tags',20),(464,'block/calendar_month:myaddinstance','write',10,'block_calendar_month',0),(465,'block/calendar_month:addinstance','write',80,'block_calendar_month',20),(466,'block/calendar_upcoming:myaddinstance','write',10,'block_calendar_upcoming',0),(467,'block/calendar_upcoming:addinstance','write',80,'block_calendar_upcoming',20),(468,'block/comments:myaddinstance','write',10,'block_comments',0),(469,'block/comments:addinstance','write',80,'block_comments',20),(470,'block/community:myaddinstance','write',10,'block_community',0),(471,'block/community:addinstance','write',80,'block_community',20),(472,'block/completionstatus:addinstance','write',80,'block_completionstatus',20),(473,'block/course_list:myaddinstance','write',10,'block_course_list',0),(474,'block/course_list:addinstance','write',80,'block_course_list',20),(475,'block/course_summary:addinstance','write',80,'block_course_summary',20),(476,'block/feedback:addinstance','write',80,'block_feedback',20),(477,'block/globalsearch:myaddinstance','write',10,'block_globalsearch',0),(478,'block/globalsearch:addinstance','write',80,'block_globalsearch',0),(479,'block/glossary_random:myaddinstance','write',10,'block_glossary_random',0),(480,'block/glossary_random:addinstance','write',80,'block_glossary_random',20),(481,'block/html:myaddinstance','write',10,'block_html',0),(482,'block/html:addinstance','write',80,'block_html',20),(483,'block/login:addinstance','write',80,'block_login',20),(484,'block/lp:addinstance','write',10,'block_lp',0),(485,'block/lp:myaddinstance','write',10,'block_lp',0),(486,'block/lp:view','read',10,'block_lp',0),(487,'block/mentees:myaddinstance','write',10,'block_mentees',0),(488,'block/mentees:addinstance','write',80,'block_mentees',20),(489,'block/mnet_hosts:myaddinstance','write',10,'block_mnet_hosts',0),(490,'block/mnet_hosts:addinstance','write',80,'block_mnet_hosts',20),(491,'block/myoverview:myaddinstance','write',10,'block_myoverview',0),(492,'block/myoverview:addinstance','write',80,'block_myoverview',20),(493,'block/myprofile:myaddinstance','write',10,'block_myprofile',0),(494,'block/myprofile:addinstance','write',80,'block_myprofile',20),(495,'block/navigation:myaddinstance','write',10,'block_navigation',0),(496,'block/navigation:addinstance','write',80,'block_navigation',20),(497,'block/news_items:myaddinstance','write',10,'block_news_items',0),(498,'block/news_items:addinstance','write',80,'block_news_items',20),(499,'block/online_users:myaddinstance','write',10,'block_online_users',0),(500,'block/online_users:addinstance','write',80,'block_online_users',20),(501,'block/online_users:viewlist','read',80,'block_online_users',0),(502,'block/participants:addinstance','write',80,'block_participants',20),(503,'block/private_files:myaddinstance','write',10,'block_private_files',0),(504,'block/private_files:addinstance','write',80,'block_private_files',20),(505,'block/quiz_results:addinstance','write',80,'block_quiz_results',20),(506,'block/recent_activity:addinstance','write',80,'block_recent_activity',20),(507,'block/recent_activity:viewaddupdatemodule','read',50,'block_recent_activity',0),(508,'block/recent_activity:viewdeletemodule','read',50,'block_recent_activity',0),(509,'block/recentlyaccessedcourses:myaddinstance','write',10,'block_recentlyaccessedcourses',0),(510,'block/recentlyaccessedcourses:addinstance','write',80,'block_recentlyaccessedcourses',0),(511,'block/recentlyaccesseditems:myaddinstance','write',10,'block_recentlyaccesseditems',0),(512,'block/recentlyaccesseditems:addinstance','write',80,'block_recentlyaccesseditems',0),(513,'block/rss_client:myaddinstance','write',10,'block_rss_client',0),(514,'block/rss_client:addinstance','write',80,'block_rss_client',20),(515,'block/rss_client:manageownfeeds','write',80,'block_rss_client',0),(516,'block/rss_client:manageanyfeeds','write',80,'block_rss_client',16),(517,'block/search_forums:addinstance','write',80,'block_search_forums',20),(518,'block/section_links:addinstance','write',80,'block_section_links',20),(519,'block/selfcompletion:addinstance','write',80,'block_selfcompletion',20),(520,'block/settings:myaddinstance','write',10,'block_settings',0),(521,'block/settings:addinstance','write',80,'block_settings',20),(522,'block/site_main_menu:addinstance','write',80,'block_site_main_menu',20),(523,'block/social_activities:addinstance','write',80,'block_social_activities',20),(524,'block/starredcourses:myaddinstance','write',10,'block_starredcourses',0),(525,'block/starredcourses:addinstance','write',80,'block_starredcourses',0),(526,'block/tag_flickr:addinstance','write',80,'block_tag_flickr',20),(527,'block/tag_youtube:addinstance','write',80,'block_tag_youtube',20),(528,'block/tags:myaddinstance','write',10,'block_tags',0),(529,'block/tags:addinstance','write',80,'block_tags',20),(530,'block/timeline:myaddinstance','write',10,'block_timeline',0),(531,'block/timeline:addinstance','write',80,'block_timeline',20),(532,'report/completion:view','read',50,'report_completion',8),(533,'report/courseoverview:view','read',10,'report_courseoverview',8),(534,'report/log:view','read',50,'report_log',8),(535,'report/log:viewtoday','read',50,'report_log',8),(536,'report/loglive:view','read',50,'report_loglive',8),(537,'report/outline:view','read',50,'report_outline',8),(538,'report/outline:viewuserreport','read',50,'report_outline',8),(539,'report/participation:view','read',50,'report_participation',8),(540,'report/performance:view','read',10,'report_performance',2),(541,'report/progress:view','read',50,'report_progress',8),(542,'report/questioninstances:view','read',10,'report_questioninstances',0),(543,'report/security:view','read',10,'report_security',2),(544,'report/stats:view','read',50,'report_stats',8),(545,'report/usersessions:manageownsessions','write',30,'report_usersessions',0),(546,'gradeexport/ods:view','read',50,'gradeexport_ods',8),(547,'gradeexport/ods:publish','read',50,'gradeexport_ods',8),(548,'gradeexport/txt:view','read',50,'gradeexport_txt',8),(549,'gradeexport/txt:publish','read',50,'gradeexport_txt',8),(550,'gradeexport/xls:view','read',50,'gradeexport_xls',8),(551,'gradeexport/xls:publish','read',50,'gradeexport_xls',8),(552,'gradeexport/xml:view','read',50,'gradeexport_xml',8),(553,'gradeexport/xml:publish','read',50,'gradeexport_xml',8),(554,'gradeimport/csv:view','write',50,'gradeimport_csv',0),(555,'gradeimport/direct:view','write',50,'gradeimport_direct',0),(556,'gradeimport/xml:view','write',50,'gradeimport_xml',0),(557,'gradeimport/xml:publish','write',50,'gradeimport_xml',0),(558,'gradereport/grader:view','read',50,'gradereport_grader',8),(559,'gradereport/history:view','read',50,'gradereport_history',8),(560,'gradereport/outcomes:view','read',50,'gradereport_outcomes',8),(561,'gradereport/overview:view','read',50,'gradereport_overview',8),(562,'gradereport/singleview:view','read',50,'gradereport_singleview',8),(563,'gradereport/user:view','read',50,'gradereport_user',8),(564,'webservice/rest:use','read',50,'webservice_rest',0),(565,'webservice/soap:use','read',50,'webservice_soap',0),(566,'webservice/xmlrpc:use','read',50,'webservice_xmlrpc',0),(567,'repository/areafiles:view','read',70,'repository_areafiles',0),(568,'repository/boxnet:view','read',70,'repository_boxnet',0),(569,'repository/coursefiles:view','read',70,'repository_coursefiles',0),(570,'repository/dropbox:view','read',70,'repository_dropbox',0),(571,'repository/equella:view','read',70,'repository_equella',0),(572,'repository/filesystem:view','read',70,'repository_filesystem',0),(573,'repository/flickr:view','read',70,'repository_flickr',0),(574,'repository/flickr_public:view','read',70,'repository_flickr_public',0),(575,'repository/googledocs:view','read',70,'repository_googledocs',0),(576,'repository/local:view','read',70,'repository_local',0),(577,'repository/merlot:view','read',70,'repository_merlot',0),(578,'repository/nextcloud:view','read',70,'repository_nextcloud',0),(579,'repository/onedrive:view','read',70,'repository_onedrive',0),(580,'repository/picasa:view','read',70,'repository_picasa',0),(581,'repository/recent:view','read',70,'repository_recent',0),(582,'repository/s3:view','read',70,'repository_s3',0),(583,'repository/skydrive:view','read',70,'repository_skydrive',0),(584,'repository/upload:view','read',70,'repository_upload',0),(585,'repository/url:view','read',70,'repository_url',0),(586,'repository/user:view','read',70,'repository_user',0),(587,'repository/webdav:view','read',70,'repository_webdav',0),(588,'repository/wikimedia:view','read',70,'repository_wikimedia',0),(589,'repository/youtube:view','read',70,'repository_youtube',0),(590,'tool/customlang:view','read',10,'tool_customlang',2),(591,'tool/customlang:edit','write',10,'tool_customlang',6),(592,'tool/dataprivacy:managedatarequests','write',10,'tool_dataprivacy',60),(593,'tool/dataprivacy:managedataregistry','write',10,'tool_dataprivacy',60),(594,'tool/dataprivacy:makedatarequestsforchildren','write',30,'tool_dataprivacy',24),(595,'tool/dataprivacy:downloadownrequest','read',30,'tool_dataprivacy',0),(596,'tool/dataprivacy:downloadallrequests','read',30,'tool_dataprivacy',8),(597,'tool/lpmigrate:frameworksmigrate','write',10,'tool_lpmigrate',0),(598,'tool/monitor:subscribe','read',50,'tool_monitor',8),(599,'tool/monitor:managerules','write',50,'tool_monitor',4),(600,'tool/monitor:managetool','write',10,'tool_monitor',4),(601,'tool/policy:accept','write',10,'tool_policy',0),(602,'tool/policy:acceptbehalf','write',30,'tool_policy',8),(603,'tool/policy:managedocs','write',10,'tool_policy',0),(604,'tool/policy:viewacceptances','read',10,'tool_policy',0),(605,'tool/recyclebin:deleteitems','write',50,'tool_recyclebin',32),(606,'tool/recyclebin:restoreitems','write',50,'tool_recyclebin',0),(607,'tool/recyclebin:viewitems','read',50,'tool_recyclebin',0),(608,'tool/uploaduser:uploaduserpictures','write',10,'tool_uploaduser',16),(609,'tool/usertours:managetours','write',10,'tool_usertours',4),(610,'booktool/exportimscp:export','read',70,'booktool_exportimscp',0),(611,'booktool/importhtml:import','write',70,'booktool_importhtml',4),(612,'booktool/print:print','read',70,'booktool_print',0),(613,'quiz/grading:viewstudentnames','read',70,'quiz_grading',0),(614,'quiz/grading:viewidnumber','read',70,'quiz_grading',0),(615,'quiz/statistics:view','read',70,'quiz_statistics',0),(616,'atto/recordrtc:recordaudio','write',70,'atto_recordrtc',0),(617,'atto/recordrtc:recordvideo','write',70,'atto_recordrtc',0);
/*!40000 ALTER TABLE `mdl_capabilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_chat`
--

DROP TABLE IF EXISTS `mdl_chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_chat` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `intro` longtext NOT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT 0,
  `keepdays` bigint(11) NOT NULL DEFAULT 0,
  `studentlogs` smallint(4) NOT NULL DEFAULT 0,
  `chattime` bigint(10) NOT NULL DEFAULT 0,
  `schedule` smallint(4) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_chat_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Each of these is a chat room';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_chat`
--

LOCK TABLES `mdl_chat` WRITE;
/*!40000 ALTER TABLE `mdl_chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_chat_messages`
--

DROP TABLE IF EXISTS `mdl_chat_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_chat_messages` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `chatid` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `groupid` bigint(10) NOT NULL DEFAULT 0,
  `issystem` tinyint(1) NOT NULL DEFAULT 0,
  `message` longtext NOT NULL,
  `timestamp` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_chatmess_use_ix` (`userid`),
  KEY `mdl_chatmess_gro_ix` (`groupid`),
  KEY `mdl_chatmess_timcha_ix` (`timestamp`,`chatid`),
  KEY `mdl_chatmess_cha_ix` (`chatid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores all the actual chat messages';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_chat_messages`
--

LOCK TABLES `mdl_chat_messages` WRITE;
/*!40000 ALTER TABLE `mdl_chat_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_chat_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_chat_messages_current`
--

DROP TABLE IF EXISTS `mdl_chat_messages_current`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_chat_messages_current` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `chatid` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `groupid` bigint(10) NOT NULL DEFAULT 0,
  `issystem` tinyint(1) NOT NULL DEFAULT 0,
  `message` longtext NOT NULL,
  `timestamp` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_chatmesscurr_use_ix` (`userid`),
  KEY `mdl_chatmesscurr_gro_ix` (`groupid`),
  KEY `mdl_chatmesscurr_timcha_ix` (`timestamp`,`chatid`),
  KEY `mdl_chatmesscurr_cha_ix` (`chatid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores current session';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_chat_messages_current`
--

LOCK TABLES `mdl_chat_messages_current` WRITE;
/*!40000 ALTER TABLE `mdl_chat_messages_current` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_chat_messages_current` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_chat_users`
--

DROP TABLE IF EXISTS `mdl_chat_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_chat_users` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `chatid` bigint(11) NOT NULL DEFAULT 0,
  `userid` bigint(11) NOT NULL DEFAULT 0,
  `groupid` bigint(11) NOT NULL DEFAULT 0,
  `version` varchar(16) NOT NULL DEFAULT '',
  `ip` varchar(45) NOT NULL DEFAULT '',
  `firstping` bigint(10) NOT NULL DEFAULT 0,
  `lastping` bigint(10) NOT NULL DEFAULT 0,
  `lastmessageping` bigint(10) NOT NULL DEFAULT 0,
  `sid` varchar(32) NOT NULL DEFAULT '',
  `course` bigint(10) NOT NULL DEFAULT 0,
  `lang` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_chatuser_use_ix` (`userid`),
  KEY `mdl_chatuser_las_ix` (`lastping`),
  KEY `mdl_chatuser_gro_ix` (`groupid`),
  KEY `mdl_chatuser_cha_ix` (`chatid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Keeps track of which users are in which chat rooms';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_chat_users`
--

LOCK TABLES `mdl_chat_users` WRITE;
/*!40000 ALTER TABLE `mdl_chat_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_chat_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_choice`
--

DROP TABLE IF EXISTS `mdl_choice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_choice` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `intro` longtext NOT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT 0,
  `publish` tinyint(2) NOT NULL DEFAULT 0,
  `showresults` tinyint(2) NOT NULL DEFAULT 0,
  `display` smallint(4) NOT NULL DEFAULT 0,
  `allowupdate` tinyint(2) NOT NULL DEFAULT 0,
  `allowmultiple` tinyint(2) NOT NULL DEFAULT 0,
  `showunanswered` tinyint(2) NOT NULL DEFAULT 0,
  `includeinactive` tinyint(2) NOT NULL DEFAULT 1,
  `limitanswers` tinyint(2) NOT NULL DEFAULT 0,
  `timeopen` bigint(10) NOT NULL DEFAULT 0,
  `timeclose` bigint(10) NOT NULL DEFAULT 0,
  `showpreview` tinyint(2) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `completionsubmit` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_choi_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Available choices are stored here';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_choice`
--

LOCK TABLES `mdl_choice` WRITE;
/*!40000 ALTER TABLE `mdl_choice` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_choice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_choice_answers`
--

DROP TABLE IF EXISTS `mdl_choice_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_choice_answers` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `choiceid` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `optionid` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_choiansw_use_ix` (`userid`),
  KEY `mdl_choiansw_cho_ix` (`choiceid`),
  KEY `mdl_choiansw_opt_ix` (`optionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='choices performed by users';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_choice_answers`
--

LOCK TABLES `mdl_choice_answers` WRITE;
/*!40000 ALTER TABLE `mdl_choice_answers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_choice_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_choice_options`
--

DROP TABLE IF EXISTS `mdl_choice_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_choice_options` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `choiceid` bigint(10) NOT NULL DEFAULT 0,
  `text` longtext DEFAULT NULL,
  `maxanswers` bigint(10) DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_choiopti_cho_ix` (`choiceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='available options to choice';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_choice_options`
--

LOCK TABLES `mdl_choice_options` WRITE;
/*!40000 ALTER TABLE `mdl_choice_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_choice_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_cohort`
--

DROP TABLE IF EXISTS `mdl_cohort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_cohort` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contextid` bigint(10) NOT NULL,
  `name` varchar(254) NOT NULL DEFAULT '',
  `idnumber` varchar(100) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `descriptionformat` tinyint(2) NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `component` varchar(100) NOT NULL DEFAULT '',
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `theme` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_coho_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Each record represents one cohort (aka site-wide group).';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_cohort`
--

LOCK TABLES `mdl_cohort` WRITE;
/*!40000 ALTER TABLE `mdl_cohort` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_cohort` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_cohort_members`
--

DROP TABLE IF EXISTS `mdl_cohort_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_cohort_members` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `cohortid` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `timeadded` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_cohomemb_cohuse_uix` (`cohortid`,`userid`),
  KEY `mdl_cohomemb_coh_ix` (`cohortid`),
  KEY `mdl_cohomemb_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Link a user to a cohort.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_cohort_members`
--

LOCK TABLES `mdl_cohort_members` WRITE;
/*!40000 ALTER TABLE `mdl_cohort_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_cohort_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_comments`
--

DROP TABLE IF EXISTS `mdl_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_comments` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contextid` bigint(10) NOT NULL,
  `component` varchar(255) DEFAULT NULL,
  `commentarea` varchar(255) NOT NULL DEFAULT '',
  `itemid` bigint(10) NOT NULL,
  `content` longtext NOT NULL,
  `format` tinyint(2) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_comm_concomite_ix` (`contextid`,`commentarea`,`itemid`),
  KEY `mdl_comm_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='moodle comments module';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_comments`
--

LOCK TABLES `mdl_comments` WRITE;
/*!40000 ALTER TABLE `mdl_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency`
--

DROP TABLE IF EXISTS `mdl_competency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_competency` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `shortname` varchar(100) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `descriptionformat` smallint(4) NOT NULL DEFAULT 0,
  `idnumber` varchar(100) DEFAULT NULL,
  `competencyframeworkid` bigint(10) NOT NULL,
  `parentid` bigint(10) NOT NULL DEFAULT 0,
  `path` varchar(255) NOT NULL DEFAULT '',
  `sortorder` bigint(10) NOT NULL,
  `ruletype` varchar(100) DEFAULT NULL,
  `ruleoutcome` tinyint(2) NOT NULL DEFAULT 0,
  `ruleconfig` longtext DEFAULT NULL,
  `scaleid` bigint(10) DEFAULT NULL,
  `scaleconfiguration` longtext DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_comp_comidn_uix` (`competencyframeworkid`,`idnumber`),
  KEY `mdl_comp_rul_ix` (`ruleoutcome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='This table contains the master record of each competency in ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency`
--

LOCK TABLES `mdl_competency` WRITE;
/*!40000 ALTER TABLE `mdl_competency` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_coursecomp`
--

DROP TABLE IF EXISTS `mdl_competency_coursecomp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_competency_coursecomp` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL,
  `competencyid` bigint(10) NOT NULL,
  `ruleoutcome` tinyint(2) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  `sortorder` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_compcour_coucom_uix` (`courseid`,`competencyid`),
  KEY `mdl_compcour_courul_ix` (`courseid`,`ruleoutcome`),
  KEY `mdl_compcour_cou2_ix` (`courseid`),
  KEY `mdl_compcour_com_ix` (`competencyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Link a competency to a course.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_coursecomp`
--

LOCK TABLES `mdl_competency_coursecomp` WRITE;
/*!40000 ALTER TABLE `mdl_competency_coursecomp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_coursecomp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_coursecompsetting`
--

DROP TABLE IF EXISTS `mdl_competency_coursecompsetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_competency_coursecompsetting` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL,
  `pushratingstouserplans` tinyint(2) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_compcour_cou_uix` (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='This table contains the course specific settings for compete';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_coursecompsetting`
--

LOCK TABLES `mdl_competency_coursecompsetting` WRITE;
/*!40000 ALTER TABLE `mdl_competency_coursecompsetting` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_coursecompsetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_evidence`
--

DROP TABLE IF EXISTS `mdl_competency_evidence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_competency_evidence` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `usercompetencyid` bigint(10) NOT NULL,
  `contextid` bigint(10) NOT NULL,
  `action` tinyint(2) NOT NULL,
  `actionuserid` bigint(10) DEFAULT NULL,
  `descidentifier` varchar(255) NOT NULL DEFAULT '',
  `desccomponent` varchar(255) NOT NULL DEFAULT '',
  `desca` longtext DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `grade` bigint(10) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_compevid_use_ix` (`usercompetencyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='The evidence linked to a user competency';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_evidence`
--

LOCK TABLES `mdl_competency_evidence` WRITE;
/*!40000 ALTER TABLE `mdl_competency_evidence` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_evidence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_framework`
--

DROP TABLE IF EXISTS `mdl_competency_framework`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_competency_framework` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `shortname` varchar(100) DEFAULT NULL,
  `contextid` bigint(10) NOT NULL,
  `idnumber` varchar(100) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `descriptionformat` smallint(4) NOT NULL DEFAULT 0,
  `scaleid` bigint(11) DEFAULT NULL,
  `scaleconfiguration` longtext NOT NULL,
  `visible` tinyint(2) NOT NULL DEFAULT 1,
  `taxonomies` varchar(255) NOT NULL DEFAULT '',
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_compfram_idn_uix` (`idnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='List of competency frameworks.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_framework`
--

LOCK TABLES `mdl_competency_framework` WRITE;
/*!40000 ALTER TABLE `mdl_competency_framework` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_framework` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_modulecomp`
--

DROP TABLE IF EXISTS `mdl_competency_modulecomp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_competency_modulecomp` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `cmid` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  `sortorder` bigint(10) NOT NULL,
  `competencyid` bigint(10) NOT NULL,
  `ruleoutcome` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_compmodu_cmicom_uix` (`cmid`,`competencyid`),
  KEY `mdl_compmodu_cmirul_ix` (`cmid`,`ruleoutcome`),
  KEY `mdl_compmodu_cmi_ix` (`cmid`),
  KEY `mdl_compmodu_com_ix` (`competencyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Link a competency to a module.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_modulecomp`
--

LOCK TABLES `mdl_competency_modulecomp` WRITE;
/*!40000 ALTER TABLE `mdl_competency_modulecomp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_modulecomp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_plan`
--

DROP TABLE IF EXISTS `mdl_competency_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_competency_plan` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `description` longtext DEFAULT NULL,
  `descriptionformat` smallint(4) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL,
  `templateid` bigint(10) DEFAULT NULL,
  `origtemplateid` bigint(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `duedate` bigint(10) DEFAULT 0,
  `reviewerid` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `usermodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_compplan_usesta_ix` (`userid`,`status`),
  KEY `mdl_compplan_tem_ix` (`templateid`),
  KEY `mdl_compplan_stadue_ix` (`status`,`duedate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Learning plans';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_plan`
--

LOCK TABLES `mdl_competency_plan` WRITE;
/*!40000 ALTER TABLE `mdl_competency_plan` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_plancomp`
--

DROP TABLE IF EXISTS `mdl_competency_plancomp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_competency_plancomp` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `planid` bigint(10) NOT NULL,
  `competencyid` bigint(10) NOT NULL,
  `sortorder` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `usermodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_compplan_placom_uix` (`planid`,`competencyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Plan competencies';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_plancomp`
--

LOCK TABLES `mdl_competency_plancomp` WRITE;
/*!40000 ALTER TABLE `mdl_competency_plancomp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_plancomp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_relatedcomp`
--

DROP TABLE IF EXISTS `mdl_competency_relatedcomp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_competency_relatedcomp` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `competencyid` bigint(10) NOT NULL,
  `relatedcompetencyid` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `usermodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Related competencies';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_relatedcomp`
--

LOCK TABLES `mdl_competency_relatedcomp` WRITE;
/*!40000 ALTER TABLE `mdl_competency_relatedcomp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_relatedcomp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_template`
--

DROP TABLE IF EXISTS `mdl_competency_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_competency_template` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `shortname` varchar(100) DEFAULT NULL,
  `contextid` bigint(10) NOT NULL,
  `description` longtext DEFAULT NULL,
  `descriptionformat` smallint(4) NOT NULL DEFAULT 0,
  `visible` tinyint(2) NOT NULL DEFAULT 1,
  `duedate` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Learning plan templates.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_template`
--

LOCK TABLES `mdl_competency_template` WRITE;
/*!40000 ALTER TABLE `mdl_competency_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_templatecohort`
--

DROP TABLE IF EXISTS `mdl_competency_templatecohort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_competency_templatecohort` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `templateid` bigint(10) NOT NULL,
  `cohortid` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_comptemp_temcoh_uix` (`templateid`,`cohortid`),
  KEY `mdl_comptemp_tem2_ix` (`templateid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Default comment for the table, please edit me';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_templatecohort`
--

LOCK TABLES `mdl_competency_templatecohort` WRITE;
/*!40000 ALTER TABLE `mdl_competency_templatecohort` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_templatecohort` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_templatecomp`
--

DROP TABLE IF EXISTS `mdl_competency_templatecomp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_competency_templatecomp` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `templateid` bigint(10) NOT NULL,
  `competencyid` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  `sortorder` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_comptemp_tem_ix` (`templateid`),
  KEY `mdl_comptemp_com_ix` (`competencyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Link a competency to a learning plan template.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_templatecomp`
--

LOCK TABLES `mdl_competency_templatecomp` WRITE;
/*!40000 ALTER TABLE `mdl_competency_templatecomp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_templatecomp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_usercomp`
--

DROP TABLE IF EXISTS `mdl_competency_usercomp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_competency_usercomp` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `competencyid` bigint(10) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 0,
  `reviewerid` bigint(10) DEFAULT NULL,
  `proficiency` tinyint(2) DEFAULT NULL,
  `grade` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `usermodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_compuser_usecom_uix` (`userid`,`competencyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='User competencies';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_usercomp`
--

LOCK TABLES `mdl_competency_usercomp` WRITE;
/*!40000 ALTER TABLE `mdl_competency_usercomp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_usercomp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_usercompcourse`
--

DROP TABLE IF EXISTS `mdl_competency_usercompcourse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_competency_usercompcourse` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `courseid` bigint(10) NOT NULL,
  `competencyid` bigint(10) NOT NULL,
  `proficiency` tinyint(2) DEFAULT NULL,
  `grade` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `usermodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_compuser_usecoucom_uix` (`userid`,`courseid`,`competencyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='User competencies in a course';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_usercompcourse`
--

LOCK TABLES `mdl_competency_usercompcourse` WRITE;
/*!40000 ALTER TABLE `mdl_competency_usercompcourse` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_usercompcourse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_usercompplan`
--

DROP TABLE IF EXISTS `mdl_competency_usercompplan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_competency_usercompplan` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `competencyid` bigint(10) NOT NULL,
  `planid` bigint(10) NOT NULL,
  `proficiency` tinyint(2) DEFAULT NULL,
  `grade` bigint(10) DEFAULT NULL,
  `sortorder` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `usermodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_compuser_usecompla_uix` (`userid`,`competencyid`,`planid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='User competencies plans';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_usercompplan`
--

LOCK TABLES `mdl_competency_usercompplan` WRITE;
/*!40000 ALTER TABLE `mdl_competency_usercompplan` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_usercompplan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_userevidence`
--

DROP TABLE IF EXISTS `mdl_competency_userevidence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_competency_userevidence` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `descriptionformat` tinyint(1) NOT NULL,
  `url` longtext NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_compuser_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='The evidence of prior learning';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_userevidence`
--

LOCK TABLES `mdl_competency_userevidence` WRITE;
/*!40000 ALTER TABLE `mdl_competency_userevidence` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_userevidence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_userevidencecomp`
--

DROP TABLE IF EXISTS `mdl_competency_userevidencecomp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_competency_userevidencecomp` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userevidenceid` bigint(10) NOT NULL,
  `competencyid` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_compuser_usecom2_uix` (`userevidenceid`,`competencyid`),
  KEY `mdl_compuser_use2_ix` (`userevidenceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Relationship between user evidence and competencies';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_userevidencecomp`
--

LOCK TABLES `mdl_competency_userevidencecomp` WRITE;
/*!40000 ALTER TABLE `mdl_competency_userevidencecomp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_userevidencecomp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_config`
--

DROP TABLE IF EXISTS `mdl_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_config` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_conf_nam_uix` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=475 DEFAULT CHARSET=utf8 COMMENT='Moodle configuration variables';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_config`
--

LOCK TABLES `mdl_config` WRITE;
/*!40000 ALTER TABLE `mdl_config` DISABLE KEYS */;
INSERT INTO `mdl_config` VALUES (2,'rolesactive','1'),(3,'auth','email'),(4,'enrol_plugins_enabled','manual,guest,self,cohort'),(5,'theme','boost'),(6,'filter_multilang_converted','1'),(7,'siteidentifier','FcniCvJe4EPf4x8sJ1gkA70oWfySUdYllocalhost'),(8,'backup_version','2008111700'),(9,'backup_release','2.0 dev'),(10,'mnet_dispatcher_mode','off'),(11,'sessiontimeout','7200'),(12,'stringfilters',''),(13,'filterall','0'),(14,'texteditors','atto,tinymce,textarea'),(15,'antiviruses',''),(16,'media_plugins_sortorder','videojs,youtube,swf'),(17,'upgrade_extracreditweightsstepignored','1'),(18,'upgrade_calculatedgradeitemsignored','1'),(19,'upgrade_letterboundarycourses','1'),(20,'mnet_localhost_id','1'),(21,'mnet_all_hosts_id','2'),(22,'siteguest','1'),(23,'siteadmins','2'),(24,'themerev','1601070878'),(25,'jsrev','1601070878'),(26,'gdversion','2'),(27,'licenses','unknown,allrightsreserved,public,cc,cc-nd,cc-nc-nd,cc-nc,cc-nc-sa,cc-sa'),(28,'version','2018120301'),(29,'enableoutcomes','0'),(30,'usecomments','1'),(31,'usetags','1'),(32,'enablenotes','1'),(33,'enableportfolios','0'),(34,'enablewebservices','1'),(35,'messaging','1'),(36,'messagingallusers','0'),(37,'messagingdeletereadnotificationsdelay','604800'),(38,'messagingallowemailoverride','0'),(39,'enablestats','0'),(40,'enablerssfeeds','0'),(41,'enableblogs','1'),(42,'enablecompletion','1'),(43,'completiondefault','1'),(44,'enableavailability','1'),(45,'enableplagiarism','0'),(46,'enablebadges','1'),(47,'enableglobalsearch','0'),(48,'allowstealth','0'),(49,'defaultpreference_maildisplay','2'),(50,'defaultpreference_mailformat','1'),(51,'defaultpreference_maildigest','0'),(52,'defaultpreference_autosubscribe','1'),(53,'defaultpreference_trackforums','0'),(54,'autologinguests','0'),(55,'hiddenuserfields',''),(56,'showuseridentity','email'),(57,'fullnamedisplay','language'),(58,'alternativefullnameformat','language'),(59,'maxusersperpage','100'),(60,'enablegravatar','0'),(61,'gravatardefaulturl','mm'),(62,'agedigitalconsentverification','0'),(63,'agedigitalconsentmap','*, 16\nAT, 14\nES, 14\nUS, 13'),(64,'sitepolicy',''),(65,'sitepolicyguest',''),(66,'enablecourserequests','0'),(67,'defaultrequestcategory','1'),(68,'requestcategoryselection','0'),(69,'courserequestnotify',''),(70,'grade_profilereport','user'),(71,'grade_aggregationposition','1'),(72,'grade_includescalesinaggregation','1'),(73,'grade_hiddenasdate','0'),(74,'gradepublishing','0'),(75,'grade_export_exportfeedback','0'),(76,'grade_export_displaytype','1'),(77,'grade_export_decimalpoints','2'),(78,'grade_navmethod','1'),(79,'grade_export_userprofilefields','firstname,lastname,idnumber,institution,department,email'),(80,'grade_export_customprofilefields',''),(81,'recovergradesdefault','0'),(82,'gradeexport',''),(83,'unlimitedgrades','0'),(84,'grade_report_showmin','1'),(85,'gradepointmax','100'),(86,'gradepointdefault','100'),(87,'grade_minmaxtouse','1'),(88,'grade_mygrades_report','overview'),(89,'gradereport_mygradeurl',''),(90,'grade_hideforcedsettings','1'),(91,'grade_aggregation','13'),(92,'grade_aggregation_flag','0'),(93,'grade_aggregations_visible','13'),(94,'grade_aggregateonlygraded','1'),(95,'grade_aggregateonlygraded_flag','2'),(96,'grade_aggregateoutcomes','0'),(97,'grade_aggregateoutcomes_flag','2'),(98,'grade_keephigh','0'),(99,'grade_keephigh_flag','3'),(100,'grade_droplow','0'),(101,'grade_droplow_flag','2'),(102,'grade_overridecat','1'),(103,'grade_displaytype','1'),(104,'grade_decimalpoints','2'),(105,'grade_item_advanced','iteminfo,idnumber,gradepass,plusfactor,multfactor,display,decimals,hiddenuntil,locktime'),(106,'grade_report_studentsperpage','100'),(107,'grade_report_showonlyactiveenrol','1'),(108,'grade_report_quickgrading','1'),(109,'grade_report_showquickfeedback','0'),(110,'grade_report_meanselection','1'),(111,'grade_report_enableajax','0'),(112,'grade_report_showcalculations','1'),(113,'grade_report_showeyecons','0'),(114,'grade_report_showaverages','1'),(115,'grade_report_showlocks','0'),(116,'grade_report_showranges','0'),(117,'grade_report_showanalysisicon','1'),(118,'grade_report_showuserimage','1'),(119,'grade_report_showactivityicons','1'),(120,'grade_report_shownumberofgrades','0'),(121,'grade_report_averagesdisplaytype','inherit'),(122,'grade_report_rangesdisplaytype','inherit'),(123,'grade_report_averagesdecimalpoints','inherit'),(124,'grade_report_rangesdecimalpoints','inherit'),(125,'grade_report_historyperpage','50'),(126,'grade_report_overview_showrank','0'),(127,'grade_report_overview_showtotalsifcontainhidden','0'),(128,'grade_report_user_showrank','0'),(129,'grade_report_user_showpercentage','1'),(130,'grade_report_user_showgrade','1'),(131,'grade_report_user_showfeedback','1'),(132,'grade_report_user_showrange','1'),(133,'grade_report_user_showweight','1'),(134,'grade_report_user_showaverage','0'),(135,'grade_report_user_showlettergrade','0'),(136,'grade_report_user_rangedecimals','0'),(137,'grade_report_user_showhiddenitems','1'),(138,'grade_report_user_showtotalsifcontainhidden','0'),(139,'grade_report_user_showcontributiontocoursetotal','1'),(140,'badges_defaultissuername',''),(141,'badges_defaultissuercontact',''),(142,'badges_badgesalt','badges1601070774'),(143,'badges_allowexternalbackpack','1'),(144,'badges_allowcoursebadges','1'),(145,'timezone','Europe/London'),(146,'forcetimezone','99'),(147,'country','0'),(148,'defaultcity',''),(149,'geoip2file','/bitnami/moodle/moodledata/geoip/GeoLite2-City.mmdb'),(150,'googlemapkey3',''),(151,'allcountrycodes',''),(152,'autolang','1'),(153,'lang','en'),(154,'langmenu','1'),(155,'langlist',''),(156,'langrev','1601070890'),(157,'langcache','1'),(158,'langstringcache','1'),(159,'locale',''),(160,'latinexcelexport','0'),(161,'requiremodintro','0'),(162,'registerauth',''),(163,'authloginviaemail','0'),(164,'allowaccountssameemail','0'),(165,'authpreventaccountcreation','0'),(166,'loginpageautofocus','0'),(167,'guestloginbutton','1'),(168,'limitconcurrentlogins','0'),(169,'alternateloginurl',''),(170,'forgottenpasswordurl',''),(171,'auth_instructions',''),(172,'allowemailaddresses',''),(173,'denyemailaddresses',''),(174,'verifychangedemail','1'),(175,'recaptchapublickey',''),(176,'recaptchaprivatekey',''),(177,'filteruploadedfiles','0'),(178,'filtermatchoneperpage','0'),(179,'filtermatchonepertext','0'),(180,'sitedefaultlicense','allrightsreserved'),(181,'media_default_width','400'),(182,'media_default_height','300'),(183,'portfolio_moderate_filesize_threshold','1048576'),(184,'portfolio_high_filesize_threshold','5242880'),(185,'portfolio_moderate_db_threshold','20'),(186,'portfolio_high_db_threshold','50'),(187,'repositorycacheexpire','120'),(188,'repositorygetfiletimeout','30'),(189,'repositorysyncfiletimeout','1'),(190,'repositorysyncimagetimeout','3'),(191,'repositoryallowexternallinks','1'),(192,'legacyfilesinnewcourses','0'),(193,'legacyfilesaddallowed','1'),(194,'searchengine','simpledb'),(195,'searchindexwhendisabled','0'),(196,'searchindextime','600'),(197,'searchallavailablecourses','0'),(198,'enablewsdocumentation','0'),(199,'allowbeforeblock','0'),(200,'allowedip',''),(201,'blockedip',''),(202,'protectusernames','1'),(203,'forcelogin','0'),(204,'forceloginforprofiles','1'),(205,'forceloginforprofileimage','0'),(206,'opentogoogle','0'),(207,'allowindexing','0'),(208,'maxbytes','0'),(209,'userquota','104857600'),(210,'allowobjectembed','0'),(211,'enabletrusttext','0'),(212,'maxeditingtime','1800'),(213,'extendedusernamechars','0'),(214,'keeptagnamecase','1'),(215,'profilesforenrolledusersonly','1'),(216,'cronclionly','1'),(217,'cronremotepassword',''),(218,'lockoutthreshold','0'),(219,'lockoutwindow','1800'),(220,'lockoutduration','1800'),(221,'passwordpolicy','1'),(222,'minpasswordlength','8'),(223,'minpassworddigits','1'),(224,'minpasswordlower','1'),(225,'minpasswordupper','1'),(226,'minpasswordnonalphanum','1'),(227,'maxconsecutiveidentchars','0'),(228,'passwordreuselimit','0'),(229,'pwresettime','1800'),(230,'passwordchangelogout','0'),(231,'passwordchangetokendeletion','0'),(232,'tokenduration','7257600'),(233,'groupenrolmentkeypolicy','1'),(234,'disableuserimages','0'),(235,'emailchangeconfirmation','1'),(236,'rememberusername','2'),(237,'strictformsrequired','0'),(238,'cookiesecure','1'),(239,'cookiehttponly','0'),(240,'allowframembedding','0'),(241,'curlsecurityblockedhosts',''),(242,'curlsecurityallowedport',''),(243,'displayloginfailures','0'),(244,'notifyloginfailures',''),(245,'notifyloginthreshold','10'),(246,'themelist',''),(247,'themedesignermode','0'),(248,'allowuserthemes','0'),(249,'allowcoursethemes','0'),(250,'allowcategorythemes','0'),(251,'allowcohortthemes','0'),(252,'allowthemechangeonurl','0'),(253,'allowuserblockhiding','1'),(254,'allowblockstodock','1'),(255,'custommenuitems',''),(256,'customusermenuitems','grades,grades|/grade/report/mygrades.php|t/grades\nmessages,message|/message/index.php|t/message\npreferences,moodle|/user/preferences.php|t/preferences'),(257,'enabledevicedetection','1'),(258,'devicedetectregex','[]'),(259,'calendartype','gregorian'),(260,'calendar_adminseesall','0'),(261,'calendar_site_timeformat','0'),(262,'calendar_startwday','1'),(263,'calendar_weekend','65'),(264,'calendar_lookahead','21'),(265,'calendar_maxevents','10'),(266,'enablecalendarexport','1'),(267,'calendar_customexport','1'),(268,'calendar_exportlookahead','365'),(269,'calendar_exportlookback','5'),(270,'calendar_exportsalt','FMJxZ70fIONGXHnFiVNIS0VYXNn9geoA3jgbu21ynGL8h4etWsY0Btk1Lqqu'),(271,'calendar_showicalsource','1'),(272,'useblogassociations','1'),(273,'bloglevel','4'),(274,'useexternalblogs','1'),(275,'externalblogcrontime','86400'),(276,'maxexternalblogsperuser','1'),(277,'blogusecomments','1'),(278,'blogshowcommentscount','1'),(279,'defaulthomepage','1'),(280,'allowguestmymoodle','1'),(281,'navshowfullcoursenames','0'),(282,'navshowcategories','1'),(283,'navshowmycoursecategories','0'),(284,'navshowallcourses','0'),(285,'navsortmycoursessort','sortorder'),(286,'navcourselimit','10'),(287,'usesitenameforsitepages','0'),(288,'linkadmincategories','1'),(289,'linkcoursesections','1'),(290,'navshowfrontpagemods','1'),(291,'navadduserpostslinks','1'),(292,'formatstringstriptags','1'),(293,'emoticons','[{\"text\":\":-)\",\"imagename\":\"s\\/smiley\",\"imagecomponent\":\"core\",\"altidentifier\":\"smiley\",\"altcomponent\":\"core_pix\"},{\"text\":\":)\",\"imagename\":\"s\\/smiley\",\"imagecomponent\":\"core\",\"altidentifier\":\"smiley\",\"altcomponent\":\"core_pix\"},{\"text\":\":-D\",\"imagename\":\"s\\/biggrin\",\"imagecomponent\":\"core\",\"altidentifier\":\"biggrin\",\"altcomponent\":\"core_pix\"},{\"text\":\";-)\",\"imagename\":\"s\\/wink\",\"imagecomponent\":\"core\",\"altidentifier\":\"wink\",\"altcomponent\":\"core_pix\"},{\"text\":\":-\\/\",\"imagename\":\"s\\/mixed\",\"imagecomponent\":\"core\",\"altidentifier\":\"mixed\",\"altcomponent\":\"core_pix\"},{\"text\":\"V-.\",\"imagename\":\"s\\/thoughtful\",\"imagecomponent\":\"core\",\"altidentifier\":\"thoughtful\",\"altcomponent\":\"core_pix\"},{\"text\":\":-P\",\"imagename\":\"s\\/tongueout\",\"imagecomponent\":\"core\",\"altidentifier\":\"tongueout\",\"altcomponent\":\"core_pix\"},{\"text\":\":-p\",\"imagename\":\"s\\/tongueout\",\"imagecomponent\":\"core\",\"altidentifier\":\"tongueout\",\"altcomponent\":\"core_pix\"},{\"text\":\"B-)\",\"imagename\":\"s\\/cool\",\"imagecomponent\":\"core\",\"altidentifier\":\"cool\",\"altcomponent\":\"core_pix\"},{\"text\":\"^-)\",\"imagename\":\"s\\/approve\",\"imagecomponent\":\"core\",\"altidentifier\":\"approve\",\"altcomponent\":\"core_pix\"},{\"text\":\"8-)\",\"imagename\":\"s\\/wideeyes\",\"imagecomponent\":\"core\",\"altidentifier\":\"wideeyes\",\"altcomponent\":\"core_pix\"},{\"text\":\":o)\",\"imagename\":\"s\\/clown\",\"imagecomponent\":\"core\",\"altidentifier\":\"clown\",\"altcomponent\":\"core_pix\"},{\"text\":\":-(\",\"imagename\":\"s\\/sad\",\"imagecomponent\":\"core\",\"altidentifier\":\"sad\",\"altcomponent\":\"core_pix\"},{\"text\":\":(\",\"imagename\":\"s\\/sad\",\"imagecomponent\":\"core\",\"altidentifier\":\"sad\",\"altcomponent\":\"core_pix\"},{\"text\":\"8-.\",\"imagename\":\"s\\/shy\",\"imagecomponent\":\"core\",\"altidentifier\":\"shy\",\"altcomponent\":\"core_pix\"},{\"text\":\":-I\",\"imagename\":\"s\\/blush\",\"imagecomponent\":\"core\",\"altidentifier\":\"blush\",\"altcomponent\":\"core_pix\"},{\"text\":\":-X\",\"imagename\":\"s\\/kiss\",\"imagecomponent\":\"core\",\"altidentifier\":\"kiss\",\"altcomponent\":\"core_pix\"},{\"text\":\"8-o\",\"imagename\":\"s\\/surprise\",\"imagecomponent\":\"core\",\"altidentifier\":\"surprise\",\"altcomponent\":\"core_pix\"},{\"text\":\"P-|\",\"imagename\":\"s\\/blackeye\",\"imagecomponent\":\"core\",\"altidentifier\":\"blackeye\",\"altcomponent\":\"core_pix\"},{\"text\":\"8-[\",\"imagename\":\"s\\/angry\",\"imagecomponent\":\"core\",\"altidentifier\":\"angry\",\"altcomponent\":\"core_pix\"},{\"text\":\"(grr)\",\"imagename\":\"s\\/angry\",\"imagecomponent\":\"core\",\"altidentifier\":\"angry\",\"altcomponent\":\"core_pix\"},{\"text\":\"xx-P\",\"imagename\":\"s\\/dead\",\"imagecomponent\":\"core\",\"altidentifier\":\"dead\",\"altcomponent\":\"core_pix\"},{\"text\":\"|-.\",\"imagename\":\"s\\/sleepy\",\"imagecomponent\":\"core\",\"altidentifier\":\"sleepy\",\"altcomponent\":\"core_pix\"},{\"text\":\"}-]\",\"imagename\":\"s\\/evil\",\"imagecomponent\":\"core\",\"altidentifier\":\"evil\",\"altcomponent\":\"core_pix\"},{\"text\":\"(h)\",\"imagename\":\"s\\/heart\",\"imagecomponent\":\"core\",\"altidentifier\":\"heart\",\"altcomponent\":\"core_pix\"},{\"text\":\"(heart)\",\"imagename\":\"s\\/heart\",\"imagecomponent\":\"core\",\"altidentifier\":\"heart\",\"altcomponent\":\"core_pix\"},{\"text\":\"(y)\",\"imagename\":\"s\\/yes\",\"imagecomponent\":\"core\",\"altidentifier\":\"yes\",\"altcomponent\":\"core\"},{\"text\":\"(n)\",\"imagename\":\"s\\/no\",\"imagecomponent\":\"core\",\"altidentifier\":\"no\",\"altcomponent\":\"core\"},{\"text\":\"(martin)\",\"imagename\":\"s\\/martin\",\"imagecomponent\":\"core\",\"altidentifier\":\"martin\",\"altcomponent\":\"core_pix\"},{\"text\":\"( )\",\"imagename\":\"s\\/egg\",\"imagecomponent\":\"core\",\"altidentifier\":\"egg\",\"altcomponent\":\"core_pix\"}]'),(294,'docroot','https://docs.moodle.org'),(295,'doclang',''),(296,'doctonewwindow','0'),(297,'coursecontactduplicates','0'),(298,'courselistshortnames','0'),(299,'coursesperpage','20'),(300,'courseswithsummarieslimit','10'),(301,'courseoverviewfileslimit','1'),(302,'courseoverviewfilesext','.jpg,.gif,.png'),(303,'coursegraceperiodbefore','0'),(304,'coursegraceperiodafter','0'),(305,'useexternalyui','0'),(306,'yuicomboloading','1'),(307,'cachejs','1'),(308,'modchooserdefault','1'),(309,'additionalhtmlhead',''),(310,'additionalhtmltopofbody',''),(311,'additionalhtmlfooter',''),(312,'pathtophp',''),(313,'pathtodu',''),(314,'aspellpath',''),(315,'pathtodot',''),(316,'pathtogs','/usr/bin/gs'),(317,'pathtopython',''),(318,'supportname','Admin User'),(319,'supportemail',''),(320,'supportpage',''),(321,'dbsessions','0'),(322,'sessioncookie',''),(323,'sessioncookiepath',''),(324,'sessioncookiedomain',''),(325,'statsfirstrun','none'),(326,'statsmaxruntime','0'),(327,'statsruntimedays','31'),(328,'statsuserthreshold','0'),(329,'slasharguments','1'),(330,'getremoteaddrconf','0'),(331,'proxyhost',''),(332,'proxyport','0'),(333,'proxytype','HTTP'),(334,'proxyuser',''),(335,'proxypassword',''),(336,'proxybypass','localhost, 127.0.0.1'),(337,'maintenance_enabled','0'),(338,'maintenance_message',''),(339,'deleteunconfirmed','168'),(340,'deleteincompleteusers','0'),(341,'disablegradehistory','0'),(342,'gradehistorylifetime','0'),(343,'tempdatafoldercleanup','168'),(344,'extramemorylimit','512M'),(345,'maxtimelimit','0'),(346,'curlcache','120'),(347,'curltimeoutkbitrate','56'),(348,'smtphosts',''),(349,'smtpsecure',''),(350,'smtpauthtype','LOGIN'),(351,'smtpuser',''),(352,'smtppass',''),(353,'smtpmaxbulk','1'),(354,'allowedemaildomains',''),(355,'sitemailcharset','0'),(356,'allowusermailcharset','0'),(357,'allowattachments','1'),(358,'mailnewline','LF'),(359,'emailfromvia','1'),(360,'updateautocheck','1'),(361,'updateminmaturity','200'),(362,'updatenotifybuilds','0'),(363,'enablesafebrowserintegration','0'),(364,'dndallowtextandlinks','0'),(365,'pathtosassc',''),(366,'contextlocking','0'),(367,'contextlockappliestoadmin','1'),(368,'forceclean','0'),(369,'debug','0'),(370,'debugdisplay','1'),(371,'debugsmtp','0'),(372,'perfdebug','7'),(373,'debugstringids','0'),(374,'debugvalidators','0'),(375,'debugpageinfo','0'),(376,'profilingenabled','0'),(377,'profilingincluded',''),(378,'profilingexcluded',''),(379,'profilingautofrec','0'),(380,'profilingallowme','0'),(381,'profilingallowall','0'),(382,'profilinglifetime','1440'),(383,'profilingimportprefix','(I)'),(384,'release','3.6.1 (Build: 20181205)'),(385,'branch','36'),(386,'localcachedirpurged','1601070878'),(387,'scheduledtaskreset','1601070878'),(388,'allversionshash','23d93672e54cf7feb659eac5ae0861122bfc554d'),(389,'notloggedinroleid','6'),(390,'guestroleid','6'),(391,'defaultuserroleid','7'),(392,'creatornewroleid','3'),(393,'restorernewroleid','3'),(394,'sitepolicyhandler',''),(395,'gradebookroles','5'),(396,'chat_method','ajax'),(397,'chat_refresh_userlist','10'),(398,'chat_old_ping','35'),(399,'chat_refresh_room','5'),(400,'chat_normal_updatemode','jsupdate'),(401,'chat_serverhost','localhost'),(402,'chat_serverip','127.0.0.1'),(403,'chat_serverport','9111'),(404,'chat_servermax','100'),(405,'data_enablerssfeeds','0'),(406,'feedback_allowfullanonymous','0'),(407,'forum_displaymode','3'),(408,'forum_shortpost','300'),(409,'forum_longpost','600'),(410,'forum_manydiscussions','100'),(411,'forum_maxbytes','512000'),(412,'forum_maxattachments','9'),(413,'forum_subscription','0'),(414,'forum_trackingtype','1'),(415,'forum_trackreadposts','1'),(416,'forum_allowforcedreadtracking','0'),(417,'forum_oldpostdays','14'),(418,'forum_usermarksread','0'),(419,'forum_cleanreadtime','2'),(420,'digestmailtime','17'),(421,'forum_enablerssfeeds','0'),(422,'forum_enabletimedposts','1'),(423,'glossary_entbypage','10'),(424,'glossary_dupentries','0'),(425,'glossary_allowcomments','0'),(426,'glossary_linkbydefault','1'),(427,'glossary_defaultapproval','1'),(428,'glossary_enablerssfeeds','0'),(429,'glossary_linkentries','0'),(430,'glossary_casesensitive','0'),(431,'glossary_fullmatch','0'),(432,'block_course_list_adminview','all'),(433,'block_course_list_hideallcourseslink','0'),(434,'block_html_allowcssclasses','0'),(435,'block_online_users_timetosee','5'),(436,'block_rss_client_num_entries','5'),(437,'block_rss_client_timeout','30'),(438,'pathtounoconv','/usr/bin/unoconv'),(439,'filter_multilang_force_old','0'),(440,'filter_censor_badwords',''),(441,'logguests','1'),(442,'loglifetime','0'),(443,'jabberhost',''),(444,'jabberserver',''),(445,'jabberusername',''),(446,'jabberpassword',''),(447,'jabberport','5222'),(448,'airnotifierurl','https://messages.moodle.net'),(449,'airnotifierport','443'),(450,'airnotifiermobileappname','com.moodle.moodlemobile'),(451,'airnotifierappname','commoodlemoodlemobile'),(452,'airnotifieraccesskey',''),(453,'profileroles','5,4,3'),(454,'coursecontact','3'),(455,'frontpage','6'),(456,'frontpageloggedin','6'),(457,'maxcategorydepth','2'),(458,'frontpagecourselimit','200'),(459,'commentsperpage','15'),(460,'defaultfrontpageroleid','8'),(461,'messageinbound_enabled','0'),(462,'messageinbound_mailbox',''),(463,'messageinbound_domain',''),(464,'messageinbound_host',''),(465,'messageinbound_hostssl','ssl'),(466,'messageinbound_hostuser',''),(467,'messageinbound_hostpass',''),(468,'enablemobilewebservice','0'),(469,'registrationpending','0'),(470,'noreplyaddress','noreply@moodle'),(471,'digestmailtimelast','1601071023'),(472,'forum_lastreadclean','1601071024'),(473,'scorm_updatetimelast','1601071024'),(474,'webserviceprotocols','rest');
/*!40000 ALTER TABLE `mdl_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_config_log`
--

DROP TABLE IF EXISTS `mdl_config_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_config_log` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `plugin` varchar(100) DEFAULT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `value` longtext DEFAULT NULL,
  `oldvalue` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_conflog_tim_ix` (`timemodified`),
  KEY `mdl_conflog_use_ix` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=1593 DEFAULT CHARSET=utf8 COMMENT='Changes done in server configuration through admin UI';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_config_log`
--

LOCK TABLES `mdl_config_log` WRITE;
/*!40000 ALTER TABLE `mdl_config_log` DISABLE KEYS */;
INSERT INTO `mdl_config_log` VALUES (1,0,1601070796,NULL,'enableoutcomes','0',NULL),(2,0,1601070796,NULL,'usecomments','1',NULL),(3,0,1601070796,NULL,'usetags','1',NULL),(4,0,1601070796,NULL,'enablenotes','1',NULL),(5,0,1601070796,NULL,'enableportfolios','0',NULL),(6,0,1601070796,NULL,'enablewebservices','0',NULL),(7,0,1601070796,NULL,'messaging','1',NULL),(8,0,1601070796,NULL,'messagingallusers','0',NULL),(9,0,1601070796,NULL,'messagingdeletereadnotificationsdelay','604800',NULL),(10,0,1601070796,NULL,'messagingallowemailoverride','0',NULL),(11,0,1601070796,NULL,'enablestats','0',NULL),(12,0,1601070796,NULL,'enablerssfeeds','0',NULL),(13,0,1601070796,NULL,'enableblogs','1',NULL),(14,0,1601070796,NULL,'enablecompletion','1',NULL),(15,0,1601070796,NULL,'completiondefault','1',NULL),(16,0,1601070796,NULL,'enableavailability','1',NULL),(17,0,1601070796,NULL,'enableplagiarism','0',NULL),(18,0,1601070796,NULL,'enablebadges','1',NULL),(19,0,1601070796,NULL,'enableglobalsearch','0',NULL),(20,0,1601070796,NULL,'allowstealth','0',NULL),(21,0,1601070796,NULL,'defaultpreference_maildisplay','2',NULL),(22,0,1601070796,NULL,'defaultpreference_mailformat','1',NULL),(23,0,1601070796,NULL,'defaultpreference_maildigest','0',NULL),(24,0,1601070796,NULL,'defaultpreference_autosubscribe','1',NULL),(25,0,1601070796,NULL,'defaultpreference_trackforums','0',NULL),(26,0,1601070796,NULL,'autologinguests','0',NULL),(27,0,1601070796,NULL,'hiddenuserfields','',NULL),(28,0,1601070796,NULL,'showuseridentity','email',NULL),(29,0,1601070796,NULL,'fullnamedisplay','language',NULL),(30,0,1601070796,NULL,'alternativefullnameformat','language',NULL),(31,0,1601070796,NULL,'maxusersperpage','100',NULL),(32,0,1601070796,NULL,'enablegravatar','0',NULL),(33,0,1601070796,NULL,'gravatardefaulturl','mm',NULL),(34,0,1601070796,NULL,'agedigitalconsentverification','0',NULL),(35,0,1601070796,NULL,'agedigitalconsentmap','*, 16\nAT, 14\nES, 14\nUS, 13',NULL),(36,0,1601070796,NULL,'sitepolicy','',NULL),(37,0,1601070796,NULL,'sitepolicyguest','',NULL),(38,0,1601070797,'moodlecourse','visible','1',NULL),(39,0,1601070797,'moodlecourse','format','topics',NULL),(40,0,1601070797,'moodlecourse','maxsections','52',NULL),(41,0,1601070797,'moodlecourse','numsections','4',NULL),(42,0,1601070797,'moodlecourse','hiddensections','0',NULL),(43,0,1601070797,'moodlecourse','coursedisplay','0',NULL),(44,0,1601070797,'moodlecourse','courseenddateenabled','1',NULL),(45,0,1601070797,'moodlecourse','courseduration','31536000',NULL),(46,0,1601070797,'moodlecourse','lang','',NULL),(47,0,1601070797,'moodlecourse','newsitems','5',NULL),(48,0,1601070797,'moodlecourse','showgrades','1',NULL),(49,0,1601070797,'moodlecourse','showreports','0',NULL),(50,0,1601070797,'moodlecourse','maxbytes','0',NULL),(51,0,1601070797,'moodlecourse','enablecompletion','1',NULL),(52,0,1601070797,'moodlecourse','groupmode','0',NULL),(53,0,1601070797,'moodlecourse','groupmodeforce','0',NULL),(54,0,1601070797,NULL,'enablecourserequests','0',NULL),(55,0,1601070797,NULL,'defaultrequestcategory','1',NULL),(56,0,1601070797,NULL,'requestcategoryselection','0',NULL),(57,0,1601070797,NULL,'courserequestnotify','',NULL),(58,0,1601070797,'backup','loglifetime','30',NULL),(59,0,1601070797,'backup','backup_general_users','1',NULL),(60,0,1601070797,'backup','backup_general_users_locked','',NULL),(61,0,1601070797,'backup','backup_general_anonymize','0',NULL),(62,0,1601070797,'backup','backup_general_anonymize_locked','',NULL),(63,0,1601070797,'backup','backup_general_role_assignments','1',NULL),(64,0,1601070797,'backup','backup_general_role_assignments_locked','',NULL),(65,0,1601070797,'backup','backup_general_activities','1',NULL),(66,0,1601070797,'backup','backup_general_activities_locked','',NULL),(67,0,1601070797,'backup','backup_general_blocks','1',NULL),(68,0,1601070797,'backup','backup_general_blocks_locked','',NULL),(69,0,1601070797,'backup','backup_general_filters','1',NULL),(70,0,1601070797,'backup','backup_general_filters_locked','',NULL),(71,0,1601070797,'backup','backup_general_comments','1',NULL),(72,0,1601070797,'backup','backup_general_comments_locked','',NULL),(73,0,1601070797,'backup','backup_general_badges','1',NULL),(74,0,1601070797,'backup','backup_general_badges_locked','',NULL),(75,0,1601070797,'backup','backup_general_calendarevents','1',NULL),(76,0,1601070797,'backup','backup_general_calendarevents_locked','',NULL),(77,0,1601070797,'backup','backup_general_userscompletion','1',NULL),(78,0,1601070797,'backup','backup_general_userscompletion_locked','',NULL),(79,0,1601070797,'backup','backup_general_logs','0',NULL),(80,0,1601070797,'backup','backup_general_logs_locked','',NULL),(81,0,1601070797,'backup','backup_general_histories','0',NULL),(82,0,1601070797,'backup','backup_general_histories_locked','',NULL),(83,0,1601070797,'backup','backup_general_questionbank','1',NULL),(84,0,1601070798,'backup','backup_general_questionbank_locked','',NULL),(85,0,1601070798,'backup','backup_general_groups','1',NULL),(86,0,1601070798,'backup','backup_general_groups_locked','',NULL),(87,0,1601070798,'backup','backup_general_competencies','1',NULL),(88,0,1601070798,'backup','backup_general_competencies_locked','',NULL),(89,0,1601070798,'backup','import_general_maxresults','10',NULL),(90,0,1601070798,'backup','import_general_duplicate_admin_allowed','0',NULL),(91,0,1601070798,'backup','backup_import_activities','1',NULL),(92,0,1601070798,'backup','backup_import_activities_locked','',NULL),(93,0,1601070798,'backup','backup_import_blocks','1',NULL),(94,0,1601070798,'backup','backup_import_blocks_locked','',NULL),(95,0,1601070798,'backup','backup_import_filters','1',NULL),(96,0,1601070798,'backup','backup_import_filters_locked','',NULL),(97,0,1601070798,'backup','backup_import_calendarevents','1',NULL),(98,0,1601070798,'backup','backup_import_calendarevents_locked','',NULL),(99,0,1601070798,'backup','backup_import_questionbank','1',NULL),(100,0,1601070798,'backup','backup_import_questionbank_locked','',NULL),(101,0,1601070798,'backup','backup_import_groups','1',NULL),(102,0,1601070798,'backup','backup_import_groups_locked','',NULL),(103,0,1601070798,'backup','backup_import_competencies','1',NULL),(104,0,1601070798,'backup','backup_import_competencies_locked','',NULL),(105,0,1601070798,'backup','backup_auto_active','0',NULL),(106,0,1601070798,'backup','backup_auto_weekdays','0000000',NULL),(107,0,1601070798,'backup','backup_auto_hour','0',NULL),(108,0,1601070798,'backup','backup_auto_minute','0',NULL),(109,0,1601070798,'backup','backup_auto_storage','0',NULL),(110,0,1601070798,'backup','backup_auto_destination','',NULL),(111,0,1601070798,'backup','backup_auto_max_kept','1',NULL),(112,0,1601070798,'backup','backup_auto_delete_days','0',NULL),(113,0,1601070798,'backup','backup_auto_min_kept','0',NULL),(114,0,1601070798,'backup','backup_shortname','0',NULL),(115,0,1601070798,'backup','backup_auto_skip_hidden','1',NULL),(116,0,1601070798,'backup','backup_auto_skip_modif_days','30',NULL),(117,0,1601070798,'backup','backup_auto_skip_modif_prev','0',NULL),(118,0,1601070798,'backup','backup_auto_users','1',NULL),(119,0,1601070798,'backup','backup_auto_role_assignments','1',NULL),(120,0,1601070798,'backup','backup_auto_activities','1',NULL),(121,0,1601070798,'backup','backup_auto_blocks','1',NULL),(122,0,1601070798,'backup','backup_auto_filters','1',NULL),(123,0,1601070798,'backup','backup_auto_comments','1',NULL),(124,0,1601070798,'backup','backup_auto_badges','1',NULL),(125,0,1601070798,'backup','backup_auto_calendarevents','1',NULL),(126,0,1601070798,'backup','backup_auto_userscompletion','1',NULL),(127,0,1601070798,'backup','backup_auto_logs','0',NULL),(128,0,1601070798,'backup','backup_auto_histories','0',NULL),(129,0,1601070798,'backup','backup_auto_questionbank','1',NULL),(130,0,1601070798,'backup','backup_auto_groups','1',NULL),(131,0,1601070798,'backup','backup_auto_competencies','1',NULL),(132,0,1601070798,'restore','restore_general_users','1',NULL),(133,0,1601070798,'restore','restore_general_users_locked','',NULL),(134,0,1601070798,'restore','restore_general_enrolments','1',NULL),(135,0,1601070798,'restore','restore_general_enrolments_locked','',NULL),(136,0,1601070798,'restore','restore_general_role_assignments','1',NULL),(137,0,1601070798,'restore','restore_general_role_assignments_locked','',NULL),(138,0,1601070798,'restore','restore_general_activities','1',NULL),(139,0,1601070798,'restore','restore_general_activities_locked','',NULL),(140,0,1601070798,'restore','restore_general_blocks','1',NULL),(141,0,1601070798,'restore','restore_general_blocks_locked','',NULL),(142,0,1601070798,'restore','restore_general_filters','1',NULL),(143,0,1601070798,'restore','restore_general_filters_locked','',NULL),(144,0,1601070798,'restore','restore_general_comments','1',NULL),(145,0,1601070798,'restore','restore_general_comments_locked','',NULL),(146,0,1601070798,'restore','restore_general_badges','1',NULL),(147,0,1601070799,'restore','restore_general_badges_locked','',NULL),(148,0,1601070799,'restore','restore_general_calendarevents','1',NULL),(149,0,1601070799,'restore','restore_general_calendarevents_locked','',NULL),(150,0,1601070799,'restore','restore_general_userscompletion','1',NULL),(151,0,1601070799,'restore','restore_general_userscompletion_locked','',NULL),(152,0,1601070799,'restore','restore_general_logs','1',NULL),(153,0,1601070799,'restore','restore_general_logs_locked','',NULL),(154,0,1601070799,'restore','restore_general_histories','1',NULL),(155,0,1601070799,'restore','restore_general_histories_locked','',NULL),(156,0,1601070799,'restore','restore_general_groups','1',NULL),(157,0,1601070799,'restore','restore_general_groups_locked','',NULL),(158,0,1601070799,'restore','restore_general_competencies','1',NULL),(159,0,1601070799,'restore','restore_general_competencies_locked','',NULL),(160,0,1601070799,'restore','restore_merge_overwrite_conf','0',NULL),(161,0,1601070799,'restore','restore_merge_overwrite_conf_locked','',NULL),(162,0,1601070799,'restore','restore_merge_course_fullname','1',NULL),(163,0,1601070799,'restore','restore_merge_course_fullname_locked','',NULL),(164,0,1601070799,'restore','restore_merge_course_shortname','1',NULL),(165,0,1601070799,'restore','restore_merge_course_shortname_locked','',NULL),(166,0,1601070799,'restore','restore_merge_course_startdate','1',NULL),(167,0,1601070799,'restore','restore_merge_course_startdate_locked','',NULL),(168,0,1601070799,'restore','restore_replace_overwrite_conf','0',NULL),(169,0,1601070799,'restore','restore_replace_overwrite_conf_locked','',NULL),(170,0,1601070799,'restore','restore_replace_course_fullname','1',NULL),(171,0,1601070799,'restore','restore_replace_course_fullname_locked','',NULL),(172,0,1601070799,'restore','restore_replace_course_shortname','1',NULL),(173,0,1601070799,'restore','restore_replace_course_shortname_locked','',NULL),(174,0,1601070799,'restore','restore_replace_course_startdate','1',NULL),(175,0,1601070799,'restore','restore_replace_course_startdate_locked','',NULL),(176,0,1601070799,'restore','restore_replace_keep_roles_and_enrolments','0',NULL),(177,0,1601070799,'restore','restore_replace_keep_roles_and_enrolments_locked','',NULL),(178,0,1601070799,'restore','restore_replace_keep_groups_and_groupings','0',NULL),(179,0,1601070799,'restore','restore_replace_keep_groups_and_groupings_locked','',NULL),(180,0,1601070799,NULL,'grade_profilereport','user',NULL),(181,0,1601070799,NULL,'grade_aggregationposition','1',NULL),(182,0,1601070799,NULL,'grade_includescalesinaggregation','1',NULL),(183,0,1601070799,NULL,'grade_hiddenasdate','0',NULL),(184,0,1601070799,NULL,'gradepublishing','0',NULL),(185,0,1601070799,NULL,'grade_export_exportfeedback','0',NULL),(186,0,1601070799,NULL,'grade_export_displaytype','1',NULL),(187,0,1601070799,NULL,'grade_export_decimalpoints','2',NULL),(188,0,1601070799,NULL,'grade_navmethod','1',NULL),(189,0,1601070799,NULL,'grade_export_userprofilefields','firstname,lastname,idnumber,institution,department,email',NULL),(190,0,1601070799,NULL,'grade_export_customprofilefields','',NULL),(191,0,1601070799,NULL,'recovergradesdefault','0',NULL),(192,0,1601070799,NULL,'gradeexport','',NULL),(193,0,1601070799,NULL,'unlimitedgrades','0',NULL),(194,0,1601070799,NULL,'grade_report_showmin','1',NULL),(195,0,1601070799,NULL,'gradepointmax','100',NULL),(196,0,1601070799,NULL,'gradepointdefault','100',NULL),(197,0,1601070799,NULL,'grade_minmaxtouse','1',NULL),(198,0,1601070800,NULL,'grade_mygrades_report','overview',NULL),(199,0,1601070800,NULL,'gradereport_mygradeurl','',NULL),(200,0,1601070800,NULL,'grade_hideforcedsettings','1',NULL),(201,0,1601070800,NULL,'grade_aggregation','13',NULL),(202,0,1601070800,NULL,'grade_aggregation_flag','0',NULL),(203,0,1601070800,NULL,'grade_aggregations_visible','13',NULL),(204,0,1601070800,NULL,'grade_aggregateonlygraded','1',NULL),(205,0,1601070800,NULL,'grade_aggregateonlygraded_flag','2',NULL),(206,0,1601070800,NULL,'grade_aggregateoutcomes','0',NULL),(207,0,1601070800,NULL,'grade_aggregateoutcomes_flag','2',NULL),(208,0,1601070800,NULL,'grade_keephigh','0',NULL),(209,0,1601070800,NULL,'grade_keephigh_flag','3',NULL),(210,0,1601070800,NULL,'grade_droplow','0',NULL),(211,0,1601070800,NULL,'grade_droplow_flag','2',NULL),(212,0,1601070800,NULL,'grade_overridecat','1',NULL),(213,0,1601070800,NULL,'grade_displaytype','1',NULL),(214,0,1601070800,NULL,'grade_decimalpoints','2',NULL),(215,0,1601070800,NULL,'grade_item_advanced','iteminfo,idnumber,gradepass,plusfactor,multfactor,display,decimals,hiddenuntil,locktime',NULL),(216,0,1601070800,NULL,'grade_report_studentsperpage','100',NULL),(217,0,1601070800,NULL,'grade_report_showonlyactiveenrol','1',NULL),(218,0,1601070800,NULL,'grade_report_quickgrading','1',NULL),(219,0,1601070800,NULL,'grade_report_showquickfeedback','0',NULL),(220,0,1601070800,NULL,'grade_report_meanselection','1',NULL),(221,0,1601070800,NULL,'grade_report_enableajax','0',NULL),(222,0,1601070800,NULL,'grade_report_showcalculations','1',NULL),(223,0,1601070800,NULL,'grade_report_showeyecons','0',NULL),(224,0,1601070800,NULL,'grade_report_showaverages','1',NULL),(225,0,1601070800,NULL,'grade_report_showlocks','0',NULL),(226,0,1601070800,NULL,'grade_report_showranges','0',NULL),(227,0,1601070800,NULL,'grade_report_showanalysisicon','1',NULL),(228,0,1601070800,NULL,'grade_report_showuserimage','1',NULL),(229,0,1601070800,NULL,'grade_report_showactivityicons','1',NULL),(230,0,1601070800,NULL,'grade_report_shownumberofgrades','0',NULL),(231,0,1601070800,NULL,'grade_report_averagesdisplaytype','inherit',NULL),(232,0,1601070800,NULL,'grade_report_rangesdisplaytype','inherit',NULL),(233,0,1601070800,NULL,'grade_report_averagesdecimalpoints','inherit',NULL),(234,0,1601070800,NULL,'grade_report_rangesdecimalpoints','inherit',NULL),(235,0,1601070800,NULL,'grade_report_historyperpage','50',NULL),(236,0,1601070800,NULL,'grade_report_overview_showrank','0',NULL),(237,0,1601070800,NULL,'grade_report_overview_showtotalsifcontainhidden','0',NULL),(238,0,1601070800,NULL,'grade_report_user_showrank','0',NULL),(239,0,1601070800,NULL,'grade_report_user_showpercentage','1',NULL),(240,0,1601070800,NULL,'grade_report_user_showgrade','1',NULL),(241,0,1601070800,NULL,'grade_report_user_showfeedback','1',NULL),(242,0,1601070800,NULL,'grade_report_user_showrange','1',NULL),(243,0,1601070800,NULL,'grade_report_user_showweight','1',NULL),(244,0,1601070800,NULL,'grade_report_user_showaverage','0',NULL),(245,0,1601070800,NULL,'grade_report_user_showlettergrade','0',NULL),(246,0,1601070801,NULL,'grade_report_user_rangedecimals','0',NULL),(247,0,1601070801,NULL,'grade_report_user_showhiddenitems','1',NULL),(248,0,1601070801,NULL,'grade_report_user_showtotalsifcontainhidden','0',NULL),(249,0,1601070801,NULL,'grade_report_user_showcontributiontocoursetotal','1',NULL),(250,0,1601070801,'analytics','predictionsprocessor','\\mlbackend_php\\processor',NULL),(251,0,1601070801,'analytics','timesplittings','\\core\\analytics\\time_splitting\\quarters_accum,\\core\\analytics\\time_splitting\\quarters,\\core\\analytics\\time_splitting\\single_range',NULL),(252,0,1601070801,'analytics','modeloutputdir','/bitnami/moodle/moodledata/models',NULL),(253,0,1601070801,'analytics','onlycli','1',NULL),(254,0,1601070801,'analytics','modeltimelimit','1200',NULL),(255,0,1601070801,'core_competency','enabled','1',NULL),(256,0,1601070801,'core_competency','pushcourseratingstouserplans','1',NULL),(257,0,1601070801,NULL,'badges_defaultissuername','',NULL),(258,0,1601070801,NULL,'badges_defaultissuercontact','',NULL),(259,0,1601070801,NULL,'badges_badgesalt','badges1601070774',NULL),(260,0,1601070801,NULL,'badges_allowexternalbackpack','1',NULL),(261,0,1601070801,NULL,'badges_allowcoursebadges','1',NULL),(262,0,1601070802,NULL,'timezone','Europe/London',NULL),(263,0,1601070803,NULL,'forcetimezone','99',NULL),(264,0,1601070803,NULL,'country','0',NULL),(265,0,1601070803,NULL,'defaultcity','',NULL),(266,0,1601070803,NULL,'geoip2file','/bitnami/moodle/moodledata/geoip/GeoLite2-City.mmdb',NULL),(267,0,1601070803,NULL,'googlemapkey3','',NULL),(268,0,1601070803,NULL,'allcountrycodes','',NULL),(269,0,1601070803,NULL,'autolang','1',NULL),(270,0,1601070803,NULL,'lang','en',NULL),(271,0,1601070803,NULL,'langmenu','1',NULL),(272,0,1601070803,NULL,'langlist','',NULL),(273,0,1601070803,NULL,'langcache','1',NULL),(274,0,1601070803,NULL,'langstringcache','1',NULL),(275,0,1601070803,NULL,'locale','',NULL),(276,0,1601070803,NULL,'latinexcelexport','0',NULL),(277,0,1601070803,NULL,'requiremodintro','0',NULL),(278,0,1601070803,NULL,'registerauth','',NULL),(279,0,1601070804,NULL,'authloginviaemail','0',NULL),(280,0,1601070804,NULL,'allowaccountssameemail','0',NULL),(281,0,1601070804,NULL,'authpreventaccountcreation','0',NULL),(282,0,1601070804,NULL,'loginpageautofocus','0',NULL),(283,0,1601070804,NULL,'guestloginbutton','1',NULL),(284,0,1601070804,NULL,'limitconcurrentlogins','0',NULL),(285,0,1601070804,NULL,'alternateloginurl','',NULL),(286,0,1601070804,NULL,'forgottenpasswordurl','',NULL),(287,0,1601070804,NULL,'auth_instructions','',NULL),(288,0,1601070804,NULL,'allowemailaddresses','',NULL),(289,0,1601070804,NULL,'denyemailaddresses','',NULL),(290,0,1601070804,NULL,'verifychangedemail','1',NULL),(291,0,1601070804,NULL,'recaptchapublickey','',NULL),(292,0,1601070804,NULL,'recaptchaprivatekey','',NULL),(293,0,1601070804,'cachestore_apcu','testperformance','0',NULL),(294,0,1601070804,'cachestore_memcached','testservers','',NULL),(295,0,1601070804,'cachestore_mongodb','testserver','',NULL),(296,0,1601070804,'cachestore_redis','test_server','',NULL),(297,0,1601070804,'cachestore_redis','test_password','',NULL),(298,0,1601070804,NULL,'filteruploadedfiles','0',NULL),(299,0,1601070804,NULL,'filtermatchoneperpage','0',NULL),(300,0,1601070804,NULL,'filtermatchonepertext','0',NULL),(301,0,1601070804,NULL,'sitedefaultlicense','allrightsreserved',NULL),(302,0,1601070804,NULL,'media_default_width','400',NULL),(303,0,1601070804,NULL,'media_default_height','300',NULL),(304,0,1601070804,NULL,'portfolio_moderate_filesize_threshold','1048576',NULL),(305,0,1601070804,NULL,'portfolio_high_filesize_threshold','5242880',NULL),(306,0,1601070804,NULL,'portfolio_moderate_db_threshold','20',NULL),(307,0,1601070804,NULL,'portfolio_high_db_threshold','50',NULL),(308,0,1601070804,'question_preview','behaviour','deferredfeedback',NULL),(309,0,1601070804,'question_preview','correctness','1',NULL),(310,0,1601070804,'question_preview','marks','2',NULL),(311,0,1601070804,'question_preview','markdp','2',NULL),(312,0,1601070804,'question_preview','feedback','1',NULL),(313,0,1601070804,'question_preview','generalfeedback','1',NULL),(314,0,1601070804,'question_preview','rightanswer','1',NULL),(315,0,1601070804,'question_preview','history','0',NULL),(316,0,1601070804,NULL,'repositorycacheexpire','120',NULL),(317,0,1601070804,NULL,'repositorygetfiletimeout','30',NULL),(318,0,1601070804,NULL,'repositorysyncfiletimeout','1',NULL),(319,0,1601070804,NULL,'repositorysyncimagetimeout','3',NULL),(320,0,1601070804,NULL,'repositoryallowexternallinks','1',NULL),(321,0,1601070804,NULL,'legacyfilesinnewcourses','0',NULL),(322,0,1601070804,NULL,'legacyfilesaddallowed','1',NULL),(323,0,1601070804,NULL,'searchengine','simpledb',NULL),(324,0,1601070804,NULL,'searchindexwhendisabled','0',NULL),(325,0,1601070804,NULL,'searchindextime','600',NULL),(326,0,1601070804,NULL,'searchallavailablecourses','0',NULL),(327,0,1601070804,NULL,'enablewsdocumentation','0',NULL),(328,0,1601070804,NULL,'allowbeforeblock','0',NULL),(329,0,1601070804,NULL,'allowedip','',NULL),(330,0,1601070805,NULL,'blockedip','',NULL),(331,0,1601070805,NULL,'protectusernames','1',NULL),(332,0,1601070805,NULL,'forcelogin','0',NULL),(333,0,1601070805,NULL,'forceloginforprofiles','1',NULL),(334,0,1601070805,NULL,'forceloginforprofileimage','0',NULL),(335,0,1601070805,NULL,'opentogoogle','0',NULL),(336,0,1601070805,NULL,'allowindexing','0',NULL),(337,0,1601070805,NULL,'maxbytes','0',NULL),(338,0,1601070805,NULL,'userquota','104857600',NULL),(339,0,1601070805,NULL,'allowobjectembed','0',NULL),(340,0,1601070805,NULL,'enabletrusttext','0',NULL),(341,0,1601070805,NULL,'maxeditingtime','1800',NULL),(342,0,1601070805,NULL,'extendedusernamechars','0',NULL),(343,0,1601070805,NULL,'keeptagnamecase','1',NULL),(344,0,1601070805,NULL,'profilesforenrolledusersonly','1',NULL),(345,0,1601070805,NULL,'cronclionly','1',NULL),(346,0,1601070805,NULL,'cronremotepassword','',NULL),(347,0,1601070805,'tool_task','enablerunnow','1',NULL),(348,0,1601070805,NULL,'lockoutthreshold','0',NULL),(349,0,1601070805,NULL,'lockoutwindow','1800',NULL),(350,0,1601070805,NULL,'lockoutduration','1800',NULL),(351,0,1601070805,NULL,'passwordpolicy','1',NULL),(352,0,1601070805,NULL,'minpasswordlength','8',NULL),(353,0,1601070805,NULL,'minpassworddigits','1',NULL),(354,0,1601070805,NULL,'minpasswordlower','1',NULL),(355,0,1601070805,NULL,'minpasswordupper','1',NULL),(356,0,1601070805,NULL,'minpasswordnonalphanum','1',NULL),(357,0,1601070805,NULL,'maxconsecutiveidentchars','0',NULL),(358,0,1601070805,NULL,'passwordreuselimit','0',NULL),(359,0,1601070805,NULL,'pwresettime','1800',NULL),(360,0,1601070805,NULL,'passwordchangelogout','0',NULL),(361,0,1601070805,NULL,'passwordchangetokendeletion','0',NULL),(362,0,1601070805,NULL,'tokenduration','7257600',NULL),(363,0,1601070805,NULL,'groupenrolmentkeypolicy','1',NULL),(364,0,1601070805,NULL,'disableuserimages','0',NULL),(365,0,1601070805,NULL,'emailchangeconfirmation','1',NULL),(366,0,1601070805,NULL,'rememberusername','2',NULL),(367,0,1601070805,NULL,'strictformsrequired','0',NULL),(368,0,1601070805,NULL,'cookiesecure','1',NULL),(369,0,1601070805,NULL,'cookiehttponly','0',NULL),(370,0,1601070805,NULL,'allowframembedding','0',NULL),(371,0,1601070805,NULL,'curlsecurityblockedhosts','',NULL),(372,0,1601070805,NULL,'curlsecurityallowedport','',NULL),(373,0,1601070805,NULL,'displayloginfailures','0',NULL),(374,0,1601070805,NULL,'notifyloginfailures','',NULL),(375,0,1601070805,NULL,'notifyloginthreshold','10',NULL),(376,0,1601070805,NULL,'themelist','',NULL),(377,0,1601070805,NULL,'themedesignermode','0',NULL),(378,0,1601070806,NULL,'allowuserthemes','0',NULL),(379,0,1601070806,NULL,'allowcoursethemes','0',NULL),(380,0,1601070806,NULL,'allowcategorythemes','0',NULL),(381,0,1601070806,NULL,'allowcohortthemes','0',NULL),(382,0,1601070806,NULL,'allowthemechangeonurl','0',NULL),(383,0,1601070806,NULL,'allowuserblockhiding','1',NULL),(384,0,1601070806,NULL,'allowblockstodock','1',NULL),(385,0,1601070806,NULL,'custommenuitems','',NULL),(386,0,1601070806,NULL,'customusermenuitems','grades,grades|/grade/report/mygrades.php|t/grades\nmessages,message|/message/index.php|t/message\npreferences,moodle|/user/preferences.php|t/preferences',NULL),(387,0,1601070806,NULL,'enabledevicedetection','1',NULL),(388,0,1601070806,NULL,'devicedetectregex','[]',NULL),(389,0,1601070806,'theme_boost','preset','default.scss',NULL),(390,0,1601070806,'theme_boost','presetfiles','',NULL),(391,0,1601070806,'theme_boost','backgroundimage','',NULL),(392,0,1601070806,'theme_boost','brandcolor','',NULL),(393,0,1601070806,'theme_boost','scsspre','',NULL),(394,0,1601070806,'theme_boost','scss','',NULL),(395,0,1601070806,'theme_clean','invert','0',NULL),(396,0,1601070806,'theme_clean','logo','',NULL),(397,0,1601070806,'theme_clean','smalllogo','',NULL),(398,0,1601070806,'theme_clean','sitename','1',NULL),(399,0,1601070806,'theme_clean','customcss','',NULL),(400,0,1601070806,'theme_clean','footnote','',NULL),(401,0,1601070806,'theme_more','textcolor','#333366',NULL),(402,0,1601070806,'theme_more','linkcolor','#FF6500',NULL),(403,0,1601070806,'theme_more','bodybackground','',NULL),(404,0,1601070806,'theme_more','backgroundimage','',NULL),(405,0,1601070806,'theme_more','backgroundrepeat','repeat',NULL),(406,0,1601070806,'theme_more','backgroundposition','0',NULL),(407,0,1601070806,'theme_more','backgroundfixed','0',NULL),(408,0,1601070806,'theme_more','contentbackground','#FFFFFF',NULL),(409,0,1601070806,'theme_more','secondarybackground','#FFFFFF',NULL),(410,0,1601070806,'theme_more','invert','1',NULL),(411,0,1601070806,'theme_more','logo','',NULL),(412,0,1601070806,'theme_more','smalllogo','',NULL),(413,0,1601070806,'theme_more','sitename','1',NULL),(414,0,1601070806,'theme_more','customcss','',NULL),(415,0,1601070806,'theme_more','footnote','',NULL),(416,0,1601070806,'core_admin','logo','',NULL),(417,0,1601070806,'core_admin','logocompact','',NULL),(418,0,1601070806,NULL,'calendartype','gregorian',NULL),(419,0,1601070806,NULL,'calendar_adminseesall','0',NULL),(420,0,1601070806,NULL,'calendar_site_timeformat','0',NULL),(421,0,1601070806,NULL,'calendar_startwday','1',NULL),(422,0,1601070806,NULL,'calendar_weekend','65',NULL),(423,0,1601070806,NULL,'calendar_lookahead','21',NULL),(424,0,1601070806,NULL,'calendar_maxevents','10',NULL),(425,0,1601070806,NULL,'enablecalendarexport','1',NULL),(426,0,1601070806,NULL,'calendar_customexport','1',NULL),(427,0,1601070807,NULL,'calendar_exportlookahead','365',NULL),(428,0,1601070807,NULL,'calendar_exportlookback','5',NULL),(429,0,1601070807,NULL,'calendar_exportsalt','DNkSJmwyf3omP4ArJYD1AGzXy1isgB2WvuGZ9ktxXMAAQFDjFz3VYUVxHACU',NULL),(430,0,1601070807,NULL,'calendar_showicalsource','1',NULL),(431,0,1601070807,NULL,'useblogassociations','1',NULL),(432,0,1601070807,NULL,'bloglevel','4',NULL),(433,0,1601070807,NULL,'useexternalblogs','1',NULL),(434,0,1601070807,NULL,'externalblogcrontime','86400',NULL),(435,0,1601070807,NULL,'maxexternalblogsperuser','1',NULL),(436,0,1601070807,NULL,'blogusecomments','1',NULL),(437,0,1601070807,NULL,'blogshowcommentscount','1',NULL),(438,0,1601070807,NULL,'defaulthomepage','1',NULL),(439,0,1601070807,NULL,'allowguestmymoodle','1',NULL),(440,0,1601070807,NULL,'navshowfullcoursenames','0',NULL),(441,0,1601070807,NULL,'navshowcategories','1',NULL),(442,0,1601070807,NULL,'navshowmycoursecategories','0',NULL),(443,0,1601070807,NULL,'navshowallcourses','0',NULL),(444,0,1601070807,NULL,'navsortmycoursessort','sortorder',NULL),(445,0,1601070807,NULL,'navcourselimit','10',NULL),(446,0,1601070807,NULL,'usesitenameforsitepages','0',NULL),(447,0,1601070807,NULL,'linkadmincategories','1',NULL),(448,0,1601070807,NULL,'linkcoursesections','1',NULL),(449,0,1601070807,NULL,'navshowfrontpagemods','1',NULL),(450,0,1601070807,NULL,'navadduserpostslinks','1',NULL),(451,0,1601070807,NULL,'formatstringstriptags','1',NULL),(452,0,1601070807,NULL,'emoticons','[{\"text\":\":-)\",\"imagename\":\"s\\/smiley\",\"imagecomponent\":\"core\",\"altidentifier\":\"smiley\",\"altcomponent\":\"core_pix\"},{\"text\":\":)\",\"imagename\":\"s\\/smiley\",\"imagecomponent\":\"core\",\"altidentifier\":\"smiley\",\"altcomponent\":\"core_pix\"},{\"text\":\":-D\",\"imagename\":\"s\\/biggrin\",\"imagecomponent\":\"core\",\"altidentifier\":\"biggrin\",\"altcomponent\":\"core_pix\"},{\"text\":\";-)\",\"imagename\":\"s\\/wink\",\"imagecomponent\":\"core\",\"altidentifier\":\"wink\",\"altcomponent\":\"core_pix\"},{\"text\":\":-\\/\",\"imagename\":\"s\\/mixed\",\"imagecomponent\":\"core\",\"altidentifier\":\"mixed\",\"altcomponent\":\"core_pix\"},{\"text\":\"V-.\",\"imagename\":\"s\\/thoughtful\",\"imagecomponent\":\"core\",\"altidentifier\":\"thoughtful\",\"altcomponent\":\"core_pix\"},{\"text\":\":-P\",\"imagename\":\"s\\/tongueout\",\"imagecomponent\":\"core\",\"altidentifier\":\"tongueout\",\"altcomponent\":\"core_pix\"},{\"text\":\":-p\",\"imagename\":\"s\\/tongueout\",\"imagecomponent\":\"core\",\"altidentifier\":\"tongueout\",\"altcomponent\":\"core_pix\"},{\"text\":\"B-)\",\"imagename\":\"s\\/cool\",\"imagecomponent\":\"core\",\"altidentifier\":\"cool\",\"altcomponent\":\"core_pix\"},{\"text\":\"^-)\",\"imagename\":\"s\\/approve\",\"imagecomponent\":\"core\",\"altidentifier\":\"approve\",\"altcomponent\":\"core_pix\"},{\"text\":\"8-)\",\"imagename\":\"s\\/wideeyes\",\"imagecomponent\":\"core\",\"altidentifier\":\"wideeyes\",\"altcomponent\":\"core_pix\"},{\"text\":\":o)\",\"imagename\":\"s\\/clown\",\"imagecomponent\":\"core\",\"altidentifier\":\"clown\",\"altcomponent\":\"core_pix\"},{\"text\":\":-(\",\"imagename\":\"s\\/sad\",\"imagecomponent\":\"core\",\"altidentifier\":\"sad\",\"altcomponent\":\"core_pix\"},{\"text\":\":(\",\"imagename\":\"s\\/sad\",\"imagecomponent\":\"core\",\"altidentifier\":\"sad\",\"altcomponent\":\"core_pix\"},{\"text\":\"8-.\",\"imagename\":\"s\\/shy\",\"imagecomponent\":\"core\",\"altidentifier\":\"shy\",\"altcomponent\":\"core_pix\"},{\"text\":\":-I\",\"imagename\":\"s\\/blush\",\"imagecomponent\":\"core\",\"altidentifier\":\"blush\",\"altcomponent\":\"core_pix\"},{\"text\":\":-X\",\"imagename\":\"s\\/kiss\",\"imagecomponent\":\"core\",\"altidentifier\":\"kiss\",\"altcomponent\":\"core_pix\"},{\"text\":\"8-o\",\"imagename\":\"s\\/surprise\",\"imagecomponent\":\"core\",\"altidentifier\":\"surprise\",\"altcomponent\":\"core_pix\"},{\"text\":\"P-|\",\"imagename\":\"s\\/blackeye\",\"imagecomponent\":\"core\",\"altidentifier\":\"blackeye\",\"altcomponent\":\"core_pix\"},{\"text\":\"8-[\",\"imagename\":\"s\\/angry\",\"imagecomponent\":\"core\",\"altidentifier\":\"angry\",\"altcomponent\":\"core_pix\"},{\"text\":\"(grr)\",\"imagename\":\"s\\/angry\",\"imagecomponent\":\"core\",\"altidentifier\":\"angry\",\"altcomponent\":\"core_pix\"},{\"text\":\"xx-P\",\"imagename\":\"s\\/dead\",\"imagecomponent\":\"core\",\"altidentifier\":\"dead\",\"altcomponent\":\"core_pix\"},{\"text\":\"|-.\",\"imagename\":\"s\\/sleepy\",\"imagecomponent\":\"core\",\"altidentifier\":\"sleepy\",\"altcomponent\":\"core_pix\"},{\"text\":\"}-]\",\"imagename\":\"s\\/evil\",\"imagecomponent\":\"core\",\"altidentifier\":\"evil\",\"altcomponent\":\"core_pix\"},{\"text\":\"(h)\",\"imagename\":\"s\\/heart\",\"imagecomponent\":\"core\",\"altidentifier\":\"heart\",\"altcomponent\":\"core_pix\"},{\"text\":\"(heart)\",\"imagename\":\"s\\/heart\",\"imagecomponent\":\"core\",\"altidentifier\":\"heart\",\"altcomponent\":\"core_pix\"},{\"text\":\"(y)\",\"imagename\":\"s\\/yes\",\"imagecomponent\":\"core\",\"altidentifier\":\"yes\",\"altcomponent\":\"core\"},{\"text\":\"(n)\",\"imagename\":\"s\\/no\",\"imagecomponent\":\"core\",\"altidentifier\":\"no\",\"altcomponent\":\"core\"},{\"text\":\"(martin)\",\"imagename\":\"s\\/martin\",\"imagecomponent\":\"core\",\"altidentifier\":\"martin\",\"altcomponent\":\"core_pix\"},{\"text\":\"( )\",\"imagename\":\"s\\/egg\",\"imagecomponent\":\"core\",\"altidentifier\":\"egg\",\"altcomponent\":\"core_pix\"}]',NULL),(453,0,1601070807,NULL,'docroot','https://docs.moodle.org',NULL),(454,0,1601070807,NULL,'doclang','',NULL),(455,0,1601070807,NULL,'doctonewwindow','0',NULL),(456,0,1601070807,NULL,'coursecontactduplicates','0',NULL),(457,0,1601070807,NULL,'courselistshortnames','0',NULL),(458,0,1601070807,NULL,'coursesperpage','20',NULL),(459,0,1601070807,NULL,'courseswithsummarieslimit','10',NULL),(460,0,1601070807,NULL,'courseoverviewfileslimit','1',NULL),(461,0,1601070807,NULL,'courseoverviewfilesext','.jpg,.gif,.png',NULL),(462,0,1601070807,NULL,'coursegraceperiodbefore','0',NULL),(463,0,1601070807,NULL,'coursegraceperiodafter','0',NULL),(464,0,1601070807,NULL,'useexternalyui','0',NULL),(465,0,1601070807,NULL,'yuicomboloading','1',NULL),(466,0,1601070807,NULL,'cachejs','1',NULL),(467,0,1601070807,NULL,'modchooserdefault','1',NULL),(468,0,1601070807,NULL,'additionalhtmlhead','',NULL),(469,0,1601070807,NULL,'additionalhtmltopofbody','',NULL),(470,0,1601070807,NULL,'additionalhtmlfooter','',NULL),(471,0,1601070807,NULL,'pathtophp','',NULL),(472,0,1601070807,NULL,'pathtodu','',NULL),(473,0,1601070807,NULL,'aspellpath','',NULL),(474,0,1601070807,NULL,'pathtodot','',NULL),(475,0,1601070807,NULL,'pathtogs','/usr/bin/gs',NULL),(476,0,1601070807,NULL,'pathtopython','',NULL),(477,0,1601070807,NULL,'supportname','Admin User',NULL),(478,0,1601070807,NULL,'supportemail','',NULL),(479,0,1601070808,NULL,'supportpage','',NULL),(480,0,1601070808,NULL,'dbsessions','0',NULL),(481,0,1601070808,NULL,'sessioncookie','',NULL),(482,0,1601070808,NULL,'sessioncookiepath','',NULL),(483,0,1601070808,NULL,'sessioncookiedomain','',NULL),(484,0,1601070808,NULL,'statsfirstrun','none',NULL),(485,0,1601070808,NULL,'statsmaxruntime','0',NULL),(486,0,1601070808,NULL,'statsruntimedays','31',NULL),(487,0,1601070808,NULL,'statsuserthreshold','0',NULL),(488,0,1601070808,NULL,'slasharguments','1',NULL),(489,0,1601070808,NULL,'getremoteaddrconf','0',NULL),(490,0,1601070808,NULL,'proxyhost','',NULL),(491,0,1601070808,NULL,'proxyport','0',NULL),(492,0,1601070808,NULL,'proxytype','HTTP',NULL),(493,0,1601070808,NULL,'proxyuser','',NULL),(494,0,1601070808,NULL,'proxypassword','',NULL),(495,0,1601070808,NULL,'proxybypass','localhost, 127.0.0.1',NULL),(496,0,1601070808,NULL,'maintenance_enabled','0',NULL),(497,0,1601070808,NULL,'maintenance_message','',NULL),(498,0,1601070808,NULL,'deleteunconfirmed','168',NULL),(499,0,1601070808,NULL,'deleteincompleteusers','0',NULL),(500,0,1601070808,NULL,'disablegradehistory','0',NULL),(501,0,1601070808,NULL,'gradehistorylifetime','0',NULL),(502,0,1601070808,NULL,'tempdatafoldercleanup','168',NULL),(503,0,1601070808,NULL,'extramemorylimit','512M',NULL),(504,0,1601070808,NULL,'maxtimelimit','0',NULL),(505,0,1601070808,NULL,'curlcache','120',NULL),(506,0,1601070808,NULL,'curltimeoutkbitrate','56',NULL),(507,0,1601070808,NULL,'smtphosts','',NULL),(508,0,1601070808,NULL,'smtpsecure','',NULL),(509,0,1601070808,NULL,'smtpauthtype','LOGIN',NULL),(510,0,1601070808,NULL,'smtpuser','',NULL),(511,0,1601070808,NULL,'smtppass','',NULL),(512,0,1601070808,NULL,'smtpmaxbulk','1',NULL),(513,0,1601070808,NULL,'allowedemaildomains','',NULL),(514,0,1601070808,NULL,'sitemailcharset','0',NULL),(515,0,1601070808,NULL,'allowusermailcharset','0',NULL),(516,0,1601070808,NULL,'allowattachments','1',NULL),(517,0,1601070808,NULL,'mailnewline','LF',NULL),(518,0,1601070808,NULL,'emailfromvia','1',NULL),(519,0,1601070808,NULL,'updateautocheck','1',NULL),(520,0,1601070808,NULL,'updateminmaturity','200',NULL),(521,0,1601070808,NULL,'updatenotifybuilds','0',NULL),(522,0,1601070808,NULL,'enablesafebrowserintegration','0',NULL),(523,0,1601070808,NULL,'dndallowtextandlinks','0',NULL),(524,0,1601070808,NULL,'pathtosassc','',NULL),(525,0,1601070808,NULL,'contextlocking','0',NULL),(526,0,1601070808,NULL,'contextlockappliestoadmin','1',NULL),(527,0,1601070808,NULL,'forceclean','0',NULL),(528,0,1601070808,NULL,'debug','0',NULL),(529,0,1601070808,NULL,'debugdisplay','1',NULL),(530,0,1601070808,NULL,'debugsmtp','0',NULL),(531,0,1601070808,NULL,'perfdebug','7',NULL),(532,0,1601070808,NULL,'debugstringids','0',NULL),(533,0,1601070808,NULL,'debugvalidators','0',NULL),(534,0,1601070808,NULL,'debugpageinfo','0',NULL),(535,0,1601070808,NULL,'profilingenabled','0',NULL),(536,0,1601070808,NULL,'profilingincluded','',NULL),(537,0,1601070808,NULL,'profilingexcluded','',NULL),(538,0,1601070808,NULL,'profilingautofrec','0',NULL),(539,0,1601070808,NULL,'profilingallowme','0',NULL),(540,0,1601070808,NULL,'profilingallowall','0',NULL),(541,0,1601070809,NULL,'profilinglifetime','1440',NULL),(542,0,1601070809,NULL,'profilingimportprefix','(I)',NULL),(543,0,1601070842,'activitynames','filter_active','1',''),(544,0,1601070843,'mathjaxloader','filter_active','1',''),(545,0,1601070843,'mediaplugin','filter_active','1',''),(546,2,1601070887,NULL,'notloggedinroleid','6',NULL),(547,2,1601070887,NULL,'guestroleid','6',NULL),(548,2,1601070887,NULL,'defaultuserroleid','7',NULL),(549,2,1601070887,NULL,'creatornewroleid','3',NULL),(550,2,1601070887,NULL,'restorernewroleid','3',NULL),(551,2,1601070887,'tool_dataprivacy','contactdataprotectionofficer','0',NULL),(552,2,1601070887,'tool_dataprivacy','automaticdeletionrequests','1',NULL),(553,2,1601070887,'tool_dataprivacy','privacyrequestexpiry','604800',NULL),(554,2,1601070887,'tool_dataprivacy','requireallenddatesforuserdeletion','1',NULL),(555,2,1601070887,'tool_dataprivacy','showdataretentionsummary','1',NULL),(556,2,1601070887,'tool_log','exportlog','1',NULL),(557,2,1601070887,NULL,'sitepolicyhandler','',NULL),(558,2,1601070887,NULL,'gradebookroles','5',NULL),(559,2,1601070888,'analytics','logstore','logstore_standard',NULL),(560,2,1601070890,'assign','feedback_plugin_for_gradebook','assignfeedback_comments',NULL),(561,2,1601070890,'assign','showrecentsubmissions','0',NULL),(562,2,1601070890,'assign','submissionreceipts','1',NULL),(563,2,1601070890,'assign','submissionstatement','This assignment is my own work, except where I have acknowledged the use of the works of other people.',NULL),(564,2,1601070890,'assign','maxperpage','-1',NULL),(565,2,1601070890,'assign','alwaysshowdescription','1',NULL),(566,2,1601070890,'assign','alwaysshowdescription_adv','',NULL),(567,2,1601070890,'assign','alwaysshowdescription_locked','',NULL),(568,2,1601070890,'assign','allowsubmissionsfromdate','0',NULL),(569,2,1601070890,'assign','allowsubmissionsfromdate_enabled','1',NULL),(570,2,1601070890,'assign','allowsubmissionsfromdate_adv','',NULL),(571,2,1601070890,'assign','duedate','604800',NULL),(572,2,1601070890,'assign','duedate_enabled','1',NULL),(573,2,1601070890,'assign','duedate_adv','',NULL),(574,2,1601070890,'assign','cutoffdate','1209600',NULL),(575,2,1601070890,'assign','cutoffdate_enabled','',NULL),(576,2,1601070890,'assign','cutoffdate_adv','',NULL),(577,2,1601070890,'assign','gradingduedate','1209600',NULL),(578,2,1601070890,'assign','gradingduedate_enabled','1',NULL),(579,2,1601070890,'assign','gradingduedate_adv','',NULL),(580,2,1601070890,'assign','submissiondrafts','0',NULL),(581,2,1601070890,'assign','submissiondrafts_adv','',NULL),(582,2,1601070890,'assign','submissiondrafts_locked','',NULL),(583,2,1601070890,'assign','requiresubmissionstatement','0',NULL),(584,2,1601070890,'assign','requiresubmissionstatement_adv','',NULL),(585,2,1601070890,'assign','requiresubmissionstatement_locked','',NULL),(586,2,1601070890,'assign','attemptreopenmethod','none',NULL),(587,2,1601070890,'assign','attemptreopenmethod_adv','',NULL),(588,2,1601070890,'assign','attemptreopenmethod_locked','',NULL),(589,2,1601070890,'assign','maxattempts','-1',NULL),(590,2,1601070890,'assign','maxattempts_adv','',NULL),(591,2,1601070890,'assign','maxattempts_locked','',NULL),(592,2,1601070890,'assign','teamsubmission','0',NULL),(593,2,1601070890,'assign','teamsubmission_adv','',NULL),(594,2,1601070890,'assign','teamsubmission_locked','',NULL),(595,2,1601070890,'assign','preventsubmissionnotingroup','0',NULL),(596,2,1601070891,'assign','preventsubmissionnotingroup_adv','',NULL),(597,2,1601070891,'assign','preventsubmissionnotingroup_locked','',NULL),(598,2,1601070891,'assign','requireallteammemberssubmit','0',NULL),(599,2,1601070891,'assign','requireallteammemberssubmit_adv','',NULL),(600,2,1601070891,'assign','requireallteammemberssubmit_locked','',NULL),(601,2,1601070891,'assign','teamsubmissiongroupingid','',NULL),(602,2,1601070891,'assign','teamsubmissiongroupingid_adv','',NULL),(603,2,1601070891,'assign','sendnotifications','0',NULL),(604,2,1601070891,'assign','sendnotifications_adv','',NULL),(605,2,1601070891,'assign','sendnotifications_locked','',NULL),(606,2,1601070891,'assign','sendlatenotifications','0',NULL),(607,2,1601070891,'assign','sendlatenotifications_adv','',NULL),(608,2,1601070891,'assign','sendlatenotifications_locked','',NULL),(609,2,1601070891,'assign','sendstudentnotifications','1',NULL),(610,2,1601070891,'assign','sendstudentnotifications_adv','',NULL),(611,2,1601070891,'assign','sendstudentnotifications_locked','',NULL),(612,2,1601070891,'assign','blindmarking','0',NULL),(613,2,1601070891,'assign','blindmarking_adv','',NULL),(614,2,1601070891,'assign','blindmarking_locked','',NULL),(615,2,1601070891,'assign','markingworkflow','0',NULL),(616,2,1601070891,'assign','markingworkflow_adv','',NULL),(617,2,1601070891,'assign','markingworkflow_locked','',NULL),(618,2,1601070891,'assign','markingallocation','0',NULL),(619,2,1601070891,'assign','markingallocation_adv','',NULL),(620,2,1601070891,'assign','markingallocation_locked','',NULL),(621,2,1601070891,'assignsubmission_file','default','1',NULL),(622,2,1601070891,'assignsubmission_file','maxfiles','20',NULL),(623,2,1601070891,'assignsubmission_file','filetypes','',NULL),(624,2,1601070891,'assignsubmission_file','maxbytes','0',NULL),(625,2,1601070891,'assignsubmission_onlinetext','default','0',NULL),(626,2,1601070891,'assignfeedback_comments','default','1',NULL),(627,2,1601070891,'assignfeedback_comments','inline','0',NULL),(628,2,1601070891,'assignfeedback_comments','inline_adv','',NULL),(629,2,1601070891,'assignfeedback_comments','inline_locked','',NULL),(630,2,1601070891,'assignfeedback_editpdf','default','1',NULL),(631,2,1601070891,'assignfeedback_editpdf','stamps','',NULL),(632,2,1601070891,'assignfeedback_file','default','0',NULL),(633,2,1601070891,'assignfeedback_offline','default','0',NULL),(634,2,1601070891,'book','numberingoptions','0,1,2,3',NULL),(635,2,1601070891,'book','navoptions','0,1,2',NULL),(636,2,1601070891,'book','numbering','1',NULL),(637,2,1601070891,'book','navstyle','1',NULL),(638,2,1601070891,NULL,'chat_method','ajax',NULL),(639,2,1601070891,NULL,'chat_refresh_userlist','10',NULL),(640,2,1601070891,NULL,'chat_old_ping','35',NULL),(641,2,1601070891,NULL,'chat_refresh_room','5',NULL),(642,2,1601070891,NULL,'chat_normal_updatemode','jsupdate',NULL),(643,2,1601070891,NULL,'chat_serverhost','localhost',NULL),(644,2,1601070891,NULL,'chat_serverip','127.0.0.1',NULL),(645,2,1601070891,NULL,'chat_serverport','9111',NULL),(646,2,1601070891,NULL,'chat_servermax','100',NULL),(647,2,1601070891,NULL,'data_enablerssfeeds','0',NULL),(648,2,1601070892,NULL,'feedback_allowfullanonymous','0',NULL),(649,2,1601070892,'resource','framesize','130',NULL),(650,2,1601070892,'resource','displayoptions','0,1,4,5,6',NULL),(651,2,1601070892,'resource','printintro','1',NULL),(652,2,1601070892,'resource','display','0',NULL),(653,2,1601070892,'resource','showsize','0',NULL),(654,2,1601070892,'resource','showtype','0',NULL),(655,2,1601070892,'resource','showdate','0',NULL),(656,2,1601070892,'resource','popupwidth','620',NULL),(657,2,1601070892,'resource','popupheight','450',NULL),(658,2,1601070892,'resource','filterfiles','0',NULL),(659,2,1601070892,'folder','showexpanded','1',NULL),(660,2,1601070892,'folder','maxsizetodownload','0',NULL),(661,2,1601070892,NULL,'forum_displaymode','3',NULL),(662,2,1601070892,NULL,'forum_shortpost','300',NULL),(663,2,1601070892,NULL,'forum_longpost','600',NULL),(664,2,1601070892,NULL,'forum_manydiscussions','100',NULL),(665,2,1601070892,NULL,'forum_maxbytes','512000',NULL),(666,2,1601070892,NULL,'forum_maxattachments','9',NULL),(667,2,1601070892,NULL,'forum_subscription','0',NULL),(668,2,1601070892,NULL,'forum_trackingtype','1',NULL),(669,2,1601070892,NULL,'forum_trackreadposts','1',NULL),(670,2,1601070892,NULL,'forum_allowforcedreadtracking','0',NULL),(671,2,1601070892,NULL,'forum_oldpostdays','14',NULL),(672,2,1601070892,NULL,'forum_usermarksread','0',NULL),(673,2,1601070892,NULL,'forum_cleanreadtime','2',NULL),(674,2,1601070892,NULL,'digestmailtime','17',NULL),(675,2,1601070892,NULL,'forum_enablerssfeeds','0',NULL),(676,2,1601070892,NULL,'forum_enabletimedposts','1',NULL),(677,2,1601070892,NULL,'glossary_entbypage','10',NULL),(678,2,1601070892,NULL,'glossary_dupentries','0',NULL),(679,2,1601070892,NULL,'glossary_allowcomments','0',NULL),(680,2,1601070892,NULL,'glossary_linkbydefault','1',NULL),(681,2,1601070892,NULL,'glossary_defaultapproval','1',NULL),(682,2,1601070892,NULL,'glossary_enablerssfeeds','0',NULL),(683,2,1601070892,NULL,'glossary_linkentries','0',NULL),(684,2,1601070892,NULL,'glossary_casesensitive','0',NULL),(685,2,1601070892,NULL,'glossary_fullmatch','0',NULL),(686,2,1601070892,'imscp','keepold','1',NULL),(687,2,1601070892,'imscp','keepold_adv','',NULL),(688,2,1601070892,'label','dndmedia','1',NULL),(689,2,1601070892,'label','dndresizewidth','400',NULL),(690,2,1601070892,'label','dndresizeheight','400',NULL),(691,2,1601070892,'mod_lesson','mediafile','',NULL),(692,2,1601070892,'mod_lesson','mediafile_adv','1',NULL),(693,2,1601070892,'mod_lesson','mediawidth','640',NULL),(694,2,1601070893,'mod_lesson','mediaheight','480',NULL),(695,2,1601070893,'mod_lesson','mediaclose','0',NULL),(696,2,1601070893,'mod_lesson','progressbar','0',NULL),(697,2,1601070893,'mod_lesson','progressbar_adv','',NULL),(698,2,1601070893,'mod_lesson','ongoing','0',NULL),(699,2,1601070893,'mod_lesson','ongoing_adv','1',NULL),(700,2,1601070893,'mod_lesson','displayleftmenu','0',NULL),(701,2,1601070893,'mod_lesson','displayleftmenu_adv','',NULL),(702,2,1601070893,'mod_lesson','displayleftif','0',NULL),(703,2,1601070893,'mod_lesson','displayleftif_adv','1',NULL),(704,2,1601070893,'mod_lesson','slideshow','0',NULL),(705,2,1601070893,'mod_lesson','slideshow_adv','1',NULL),(706,2,1601070893,'mod_lesson','slideshowwidth','640',NULL),(707,2,1601070893,'mod_lesson','slideshowheight','480',NULL),(708,2,1601070893,'mod_lesson','slideshowbgcolor','#FFFFFF',NULL),(709,2,1601070893,'mod_lesson','maxanswers','5',NULL),(710,2,1601070893,'mod_lesson','maxanswers_adv','1',NULL),(711,2,1601070893,'mod_lesson','defaultfeedback','0',NULL),(712,2,1601070893,'mod_lesson','defaultfeedback_adv','1',NULL),(713,2,1601070893,'mod_lesson','activitylink','',NULL),(714,2,1601070893,'mod_lesson','activitylink_adv','1',NULL),(715,2,1601070893,'mod_lesson','timelimit','0',NULL),(716,2,1601070893,'mod_lesson','timelimit_adv','',NULL),(717,2,1601070893,'mod_lesson','password','0',NULL),(718,2,1601070893,'mod_lesson','password_adv','1',NULL),(719,2,1601070893,'mod_lesson','modattempts','0',NULL),(720,2,1601070893,'mod_lesson','modattempts_adv','',NULL),(721,2,1601070893,'mod_lesson','displayreview','0',NULL),(722,2,1601070893,'mod_lesson','displayreview_adv','',NULL),(723,2,1601070893,'mod_lesson','maximumnumberofattempts','1',NULL),(724,2,1601070893,'mod_lesson','maximumnumberofattempts_adv','',NULL),(725,2,1601070893,'mod_lesson','defaultnextpage','0',NULL),(726,2,1601070893,'mod_lesson','defaultnextpage_adv','1',NULL),(727,2,1601070893,'mod_lesson','numberofpagestoshow','1',NULL),(728,2,1601070893,'mod_lesson','numberofpagestoshow_adv','1',NULL),(729,2,1601070893,'mod_lesson','practice','0',NULL),(730,2,1601070893,'mod_lesson','practice_adv','',NULL),(731,2,1601070893,'mod_lesson','customscoring','1',NULL),(732,2,1601070893,'mod_lesson','customscoring_adv','1',NULL),(733,2,1601070893,'mod_lesson','retakesallowed','0',NULL),(734,2,1601070893,'mod_lesson','retakesallowed_adv','',NULL),(735,2,1601070893,'mod_lesson','handlingofretakes','0',NULL),(736,2,1601070893,'mod_lesson','handlingofretakes_adv','1',NULL),(737,2,1601070893,'mod_lesson','minimumnumberofquestions','0',NULL),(738,2,1601070893,'mod_lesson','minimumnumberofquestions_adv','1',NULL),(739,2,1601070893,'page','displayoptions','5',NULL),(740,2,1601070893,'page','printheading','1',NULL),(741,2,1601070893,'page','printintro','0',NULL),(742,2,1601070893,'page','printlastmodified','1',NULL),(743,2,1601070893,'page','display','5',NULL),(744,2,1601070893,'page','popupwidth','620',NULL),(745,2,1601070893,'page','popupheight','450',NULL),(746,2,1601070894,'quiz','timelimit','0',NULL),(747,2,1601070894,'quiz','timelimit_adv','',NULL),(748,2,1601070894,'quiz','overduehandling','autosubmit',NULL),(749,2,1601070894,'quiz','overduehandling_adv','',NULL),(750,2,1601070894,'quiz','graceperiod','86400',NULL),(751,2,1601070894,'quiz','graceperiod_adv','',NULL),(752,2,1601070894,'quiz','graceperiodmin','60',NULL),(753,2,1601070894,'quiz','attempts','0',NULL),(754,2,1601070894,'quiz','attempts_adv','',NULL),(755,2,1601070894,'quiz','grademethod','1',NULL),(756,2,1601070894,'quiz','grademethod_adv','',NULL),(757,2,1601070894,'quiz','maximumgrade','10',NULL),(758,2,1601070894,'quiz','questionsperpage','1',NULL),(759,2,1601070894,'quiz','questionsperpage_adv','',NULL),(760,2,1601070894,'quiz','navmethod','free',NULL),(761,2,1601070894,'quiz','navmethod_adv','1',NULL),(762,2,1601070894,'quiz','shuffleanswers','1',NULL),(763,2,1601070894,'quiz','shuffleanswers_adv','',NULL),(764,2,1601070894,'quiz','preferredbehaviour','deferredfeedback',NULL),(765,2,1601070894,'quiz','canredoquestions','0',NULL),(766,2,1601070894,'quiz','canredoquestions_adv','1',NULL),(767,2,1601070894,'quiz','attemptonlast','0',NULL),(768,2,1601070894,'quiz','attemptonlast_adv','1',NULL),(769,2,1601070894,'quiz','reviewattempt','69904',NULL),(770,2,1601070894,'quiz','reviewcorrectness','69904',NULL),(771,2,1601070894,'quiz','reviewmarks','69904',NULL),(772,2,1601070894,'quiz','reviewspecificfeedback','69904',NULL),(773,2,1601070894,'quiz','reviewgeneralfeedback','69904',NULL),(774,2,1601070894,'quiz','reviewrightanswer','69904',NULL),(775,2,1601070894,'quiz','reviewoverallfeedback','4368',NULL),(776,2,1601070894,'quiz','showuserpicture','0',NULL),(777,2,1601070894,'quiz','showuserpicture_adv','',NULL),(778,2,1601070894,'quiz','decimalpoints','2',NULL),(779,2,1601070894,'quiz','decimalpoints_adv','',NULL),(780,2,1601070894,'quiz','questiondecimalpoints','-1',NULL),(781,2,1601070894,'quiz','questiondecimalpoints_adv','1',NULL),(782,2,1601070894,'quiz','showblocks','0',NULL),(783,2,1601070894,'quiz','showblocks_adv','1',NULL),(784,2,1601070894,'quiz','password','',NULL),(785,2,1601070894,'quiz','password_adv','',NULL),(786,2,1601070894,'quiz','subnet','',NULL),(787,2,1601070894,'quiz','subnet_adv','1',NULL),(788,2,1601070894,'quiz','delay1','0',NULL),(789,2,1601070894,'quiz','delay1_adv','1',NULL),(790,2,1601070894,'quiz','delay2','0',NULL),(791,2,1601070894,'quiz','delay2_adv','1',NULL),(792,2,1601070894,'quiz','browsersecurity','-',NULL),(793,2,1601070894,'quiz','browsersecurity_adv','1',NULL),(794,2,1601070894,'quiz','initialnumfeedbacks','2',NULL),(795,2,1601070895,'quiz','autosaveperiod','60',NULL),(796,2,1601070895,'scorm','displaycoursestructure','0',NULL),(797,2,1601070895,'scorm','displaycoursestructure_adv','',NULL),(798,2,1601070895,'scorm','popup','0',NULL),(799,2,1601070895,'scorm','popup_adv','',NULL),(800,2,1601070895,'scorm','displayactivityname','1',NULL),(801,2,1601070895,'scorm','framewidth','100',NULL),(802,2,1601070895,'scorm','framewidth_adv','1',NULL),(803,2,1601070895,'scorm','frameheight','500',NULL),(804,2,1601070895,'scorm','frameheight_adv','1',NULL),(805,2,1601070895,'scorm','winoptgrp_adv','1',NULL),(806,2,1601070895,'scorm','scrollbars','0',NULL),(807,2,1601070895,'scorm','directories','0',NULL),(808,2,1601070895,'scorm','location','0',NULL),(809,2,1601070895,'scorm','menubar','0',NULL),(810,2,1601070895,'scorm','toolbar','0',NULL),(811,2,1601070895,'scorm','status','0',NULL),(812,2,1601070895,'scorm','skipview','0',NULL),(813,2,1601070895,'scorm','skipview_adv','1',NULL),(814,2,1601070895,'scorm','hidebrowse','0',NULL),(815,2,1601070895,'scorm','hidebrowse_adv','1',NULL),(816,2,1601070895,'scorm','hidetoc','0',NULL),(817,2,1601070895,'scorm','hidetoc_adv','1',NULL),(818,2,1601070895,'scorm','nav','1',NULL),(819,2,1601070895,'scorm','nav_adv','1',NULL),(820,2,1601070895,'scorm','navpositionleft','-100',NULL),(821,2,1601070895,'scorm','navpositionleft_adv','1',NULL),(822,2,1601070895,'scorm','navpositiontop','-100',NULL),(823,2,1601070895,'scorm','navpositiontop_adv','1',NULL),(824,2,1601070895,'scorm','collapsetocwinsize','767',NULL),(825,2,1601070895,'scorm','collapsetocwinsize_adv','1',NULL),(826,2,1601070895,'scorm','displayattemptstatus','1',NULL),(827,2,1601070895,'scorm','displayattemptstatus_adv','',NULL),(828,2,1601070895,'scorm','grademethod','1',NULL),(829,2,1601070895,'scorm','maxgrade','100',NULL),(830,2,1601070895,'scorm','maxattempt','0',NULL),(831,2,1601070895,'scorm','whatgrade','0',NULL),(832,2,1601070895,'scorm','forcecompleted','0',NULL),(833,2,1601070895,'scorm','forcenewattempt','0',NULL),(834,2,1601070895,'scorm','autocommit','0',NULL),(835,2,1601070895,'scorm','masteryoverride','1',NULL),(836,2,1601070895,'scorm','lastattemptlock','0',NULL),(837,2,1601070895,'scorm','auto','0',NULL),(838,2,1601070895,'scorm','updatefreq','0',NULL),(839,2,1601070895,'scorm','scormstandard','0',NULL),(840,2,1601070895,'scorm','allowtypeexternal','0',NULL),(841,2,1601070895,'scorm','allowtypelocalsync','0',NULL),(842,2,1601070895,'scorm','allowtypeexternalaicc','0',NULL),(843,2,1601070895,'scorm','allowaicchacp','0',NULL),(844,2,1601070895,'scorm','aicchacptimeout','30',NULL),(845,2,1601070895,'scorm','aicchacpkeepsessiondata','1',NULL),(846,2,1601070895,'scorm','aiccuserid','1',NULL),(847,2,1601070895,'scorm','forcejavascript','1',NULL),(848,2,1601070895,'scorm','allowapidebug','0',NULL),(849,2,1601070895,'scorm','apidebugmask','.*',NULL),(850,2,1601070895,'scorm','protectpackagedownloads','0',NULL),(851,2,1601070895,'url','framesize','130',NULL),(852,2,1601070895,'url','secretphrase','',NULL),(853,2,1601070895,'url','rolesinparams','0',NULL),(854,2,1601070895,'url','displayoptions','0,1,5,6',NULL),(855,2,1601070895,'url','printintro','1',NULL),(856,2,1601070895,'url','display','0',NULL),(857,2,1601070895,'url','popupwidth','620',NULL),(858,2,1601070895,'url','popupheight','450',NULL),(859,2,1601070895,'workshop','grade','80',NULL),(860,2,1601070895,'workshop','gradinggrade','20',NULL),(861,2,1601070895,'workshop','gradedecimals','0',NULL),(862,2,1601070895,'workshop','maxbytes','0',NULL),(863,2,1601070895,'workshop','strategy','accumulative',NULL),(864,2,1601070896,'workshop','examplesmode','0',NULL),(865,2,1601070896,'workshopallocation_random','numofreviews','5',NULL),(866,2,1601070896,'workshopform_numerrors','grade0','No',NULL),(867,2,1601070896,'workshopform_numerrors','grade1','Yes',NULL),(868,2,1601070896,'workshopeval_best','comparison','5',NULL),(869,2,1601070896,'tool_recyclebin','coursebinenable','1',NULL),(870,2,1601070896,'tool_recyclebin','coursebinexpiry','604800',NULL),(871,2,1601070896,'tool_recyclebin','categorybinenable','1',NULL),(872,2,1601070896,'tool_recyclebin','categorybinexpiry','604800',NULL),(873,2,1601070896,'tool_recyclebin','autohide','1',NULL),(874,2,1601070896,'antivirus_clamav','runningmethod','commandline',NULL),(875,2,1601070896,'antivirus_clamav','pathtoclam','',NULL),(876,2,1601070896,'antivirus_clamav','pathtounixsocket','',NULL),(877,2,1601070896,'antivirus_clamav','clamfailureonupload','donothing',NULL),(878,2,1601070896,'auth_cas','hostname','',NULL),(879,2,1601070896,'auth_cas','baseuri','',NULL),(880,2,1601070896,'auth_cas','port','0',NULL),(881,2,1601070896,'auth_cas','casversion','2.0',NULL),(882,2,1601070896,'auth_cas','language','CAS_Languages_English',NULL),(883,2,1601070896,'auth_cas','proxycas','0',NULL),(884,2,1601070896,'auth_cas','logoutcas','0',NULL),(885,2,1601070896,'auth_cas','multiauth','0',NULL),(886,2,1601070896,'auth_cas','certificate_check','0',NULL),(887,2,1601070896,'auth_cas','certificate_path','',NULL),(888,2,1601070896,'auth_cas','curl_ssl_version','',NULL),(889,2,1601070896,'auth_cas','logout_return_url','',NULL),(890,2,1601070896,'auth_cas','host_url','',NULL),(891,2,1601070896,'auth_cas','ldap_version','3',NULL),(892,2,1601070896,'auth_cas','start_tls','0',NULL),(893,2,1601070896,'auth_cas','ldapencoding','utf-8',NULL),(894,2,1601070896,'auth_cas','pagesize','250',NULL),(895,2,1601070896,'auth_cas','bind_dn','',NULL),(896,2,1601070896,'auth_cas','bind_pw','',NULL),(897,2,1601070896,'auth_cas','user_type','default',NULL),(898,2,1601070896,'auth_cas','contexts','',NULL),(899,2,1601070896,'auth_cas','search_sub','0',NULL),(900,2,1601070896,'auth_cas','opt_deref','0',NULL),(901,2,1601070896,'auth_cas','user_attribute','',NULL),(902,2,1601070896,'auth_cas','memberattribute','',NULL),(903,2,1601070896,'auth_cas','memberattribute_isdn','',NULL),(904,2,1601070896,'auth_cas','objectclass','',NULL),(905,2,1601070896,'auth_cas','attrcreators','',NULL),(906,2,1601070896,'auth_cas','groupecreators','',NULL),(907,2,1601070896,'auth_cas','removeuser','0',NULL),(908,2,1601070896,'auth_cas','field_map_firstname','',NULL),(909,2,1601070896,'auth_cas','field_updatelocal_firstname','oncreate',NULL),(910,2,1601070896,'auth_cas','field_updateremote_firstname','0',NULL),(911,2,1601070896,'auth_cas','field_lock_firstname','unlocked',NULL),(912,2,1601070896,'auth_cas','field_map_lastname','',NULL),(913,2,1601070896,'auth_cas','field_updatelocal_lastname','oncreate',NULL),(914,2,1601070896,'auth_cas','field_updateremote_lastname','0',NULL),(915,2,1601070896,'auth_cas','field_lock_lastname','unlocked',NULL),(916,2,1601070896,'auth_cas','field_map_email','',NULL),(917,2,1601070897,'auth_cas','field_updatelocal_email','oncreate',NULL),(918,2,1601070897,'auth_cas','field_updateremote_email','0',NULL),(919,2,1601070897,'auth_cas','field_lock_email','unlocked',NULL),(920,2,1601070897,'auth_cas','field_map_city','',NULL),(921,2,1601070897,'auth_cas','field_updatelocal_city','oncreate',NULL),(922,2,1601070897,'auth_cas','field_updateremote_city','0',NULL),(923,2,1601070897,'auth_cas','field_lock_city','unlocked',NULL),(924,2,1601070897,'auth_cas','field_map_country','',NULL),(925,2,1601070897,'auth_cas','field_updatelocal_country','oncreate',NULL),(926,2,1601070897,'auth_cas','field_updateremote_country','0',NULL),(927,2,1601070897,'auth_cas','field_lock_country','unlocked',NULL),(928,2,1601070897,'auth_cas','field_map_lang','',NULL),(929,2,1601070897,'auth_cas','field_updatelocal_lang','oncreate',NULL),(930,2,1601070897,'auth_cas','field_updateremote_lang','0',NULL),(931,2,1601070897,'auth_cas','field_lock_lang','unlocked',NULL),(932,2,1601070897,'auth_cas','field_map_description','',NULL),(933,2,1601070897,'auth_cas','field_updatelocal_description','oncreate',NULL),(934,2,1601070897,'auth_cas','field_updateremote_description','0',NULL),(935,2,1601070897,'auth_cas','field_lock_description','unlocked',NULL),(936,2,1601070897,'auth_cas','field_map_url','',NULL),(937,2,1601070897,'auth_cas','field_updatelocal_url','oncreate',NULL),(938,2,1601070897,'auth_cas','field_updateremote_url','0',NULL),(939,2,1601070897,'auth_cas','field_lock_url','unlocked',NULL),(940,2,1601070897,'auth_cas','field_map_idnumber','',NULL),(941,2,1601070897,'auth_cas','field_updatelocal_idnumber','oncreate',NULL),(942,2,1601070897,'auth_cas','field_updateremote_idnumber','0',NULL),(943,2,1601070897,'auth_cas','field_lock_idnumber','unlocked',NULL),(944,2,1601070897,'auth_cas','field_map_institution','',NULL),(945,2,1601070897,'auth_cas','field_updatelocal_institution','oncreate',NULL),(946,2,1601070897,'auth_cas','field_updateremote_institution','0',NULL),(947,2,1601070897,'auth_cas','field_lock_institution','unlocked',NULL),(948,2,1601070897,'auth_cas','field_map_department','',NULL),(949,2,1601070897,'auth_cas','field_updatelocal_department','oncreate',NULL),(950,2,1601070897,'auth_cas','field_updateremote_department','0',NULL),(951,2,1601070897,'auth_cas','field_lock_department','unlocked',NULL),(952,2,1601070897,'auth_cas','field_map_phone1','',NULL),(953,2,1601070897,'auth_cas','field_updatelocal_phone1','oncreate',NULL),(954,2,1601070897,'auth_cas','field_updateremote_phone1','0',NULL),(955,2,1601070897,'auth_cas','field_lock_phone1','unlocked',NULL),(956,2,1601070897,'auth_cas','field_map_phone2','',NULL),(957,2,1601070897,'auth_cas','field_updatelocal_phone2','oncreate',NULL),(958,2,1601070897,'auth_cas','field_updateremote_phone2','0',NULL),(959,2,1601070897,'auth_cas','field_lock_phone2','unlocked',NULL),(960,2,1601070897,'auth_cas','field_map_address','',NULL),(961,2,1601070897,'auth_cas','field_updatelocal_address','oncreate',NULL),(962,2,1601070897,'auth_cas','field_updateremote_address','0',NULL),(963,2,1601070897,'auth_cas','field_lock_address','unlocked',NULL),(964,2,1601070897,'auth_cas','field_map_firstnamephonetic','',NULL),(965,2,1601070897,'auth_cas','field_updatelocal_firstnamephonetic','oncreate',NULL),(966,2,1601070897,'auth_cas','field_updateremote_firstnamephonetic','0',NULL),(967,2,1601070897,'auth_cas','field_lock_firstnamephonetic','unlocked',NULL),(968,2,1601070897,'auth_cas','field_map_lastnamephonetic','',NULL),(969,2,1601070897,'auth_cas','field_updatelocal_lastnamephonetic','oncreate',NULL),(970,2,1601070897,'auth_cas','field_updateremote_lastnamephonetic','0',NULL),(971,2,1601070897,'auth_cas','field_lock_lastnamephonetic','unlocked',NULL),(972,2,1601070897,'auth_cas','field_map_middlename','',NULL),(973,2,1601070897,'auth_cas','field_updatelocal_middlename','oncreate',NULL),(974,2,1601070897,'auth_cas','field_updateremote_middlename','0',NULL),(975,2,1601070897,'auth_cas','field_lock_middlename','unlocked',NULL),(976,2,1601070898,'auth_cas','field_map_alternatename','',NULL),(977,2,1601070898,'auth_cas','field_updatelocal_alternatename','oncreate',NULL),(978,2,1601070898,'auth_cas','field_updateremote_alternatename','0',NULL),(979,2,1601070898,'auth_cas','field_lock_alternatename','unlocked',NULL),(980,2,1601070898,'auth_email','recaptcha','0',NULL),(981,2,1601070898,'auth_email','field_lock_firstname','unlocked',NULL),(982,2,1601070898,'auth_email','field_lock_lastname','unlocked',NULL),(983,2,1601070898,'auth_email','field_lock_email','unlocked',NULL),(984,2,1601070898,'auth_email','field_lock_city','unlocked',NULL),(985,2,1601070898,'auth_email','field_lock_country','unlocked',NULL),(986,2,1601070898,'auth_email','field_lock_lang','unlocked',NULL),(987,2,1601070898,'auth_email','field_lock_description','unlocked',NULL),(988,2,1601070898,'auth_email','field_lock_url','unlocked',NULL),(989,2,1601070898,'auth_email','field_lock_idnumber','unlocked',NULL),(990,2,1601070898,'auth_email','field_lock_institution','unlocked',NULL),(991,2,1601070898,'auth_email','field_lock_department','unlocked',NULL),(992,2,1601070898,'auth_email','field_lock_phone1','unlocked',NULL),(993,2,1601070898,'auth_email','field_lock_phone2','unlocked',NULL),(994,2,1601070898,'auth_email','field_lock_address','unlocked',NULL),(995,2,1601070898,'auth_email','field_lock_firstnamephonetic','unlocked',NULL),(996,2,1601070898,'auth_email','field_lock_lastnamephonetic','unlocked',NULL),(997,2,1601070898,'auth_email','field_lock_middlename','unlocked',NULL),(998,2,1601070898,'auth_email','field_lock_alternatename','unlocked',NULL),(999,2,1601070898,'auth_db','host','127.0.0.1',NULL),(1000,2,1601070898,'auth_db','type','mysqli',NULL),(1001,2,1601070898,'auth_db','sybasequoting','0',NULL),(1002,2,1601070898,'auth_db','name','',NULL),(1003,2,1601070898,'auth_db','user','',NULL),(1004,2,1601070898,'auth_db','pass','',NULL),(1005,2,1601070898,'auth_db','table','',NULL),(1006,2,1601070898,'auth_db','fielduser','',NULL),(1007,2,1601070898,'auth_db','fieldpass','',NULL),(1008,2,1601070898,'auth_db','passtype','plaintext',NULL),(1009,2,1601070898,'auth_db','extencoding','utf-8',NULL),(1010,2,1601070898,'auth_db','setupsql','',NULL),(1011,2,1601070898,'auth_db','debugauthdb','0',NULL),(1012,2,1601070898,'auth_db','changepasswordurl','',NULL),(1013,2,1601070898,'auth_db','removeuser','0',NULL),(1014,2,1601070898,'auth_db','updateusers','0',NULL),(1015,2,1601070898,'auth_db','field_map_firstname','',NULL),(1016,2,1601070898,'auth_db','field_updatelocal_firstname','oncreate',NULL),(1017,2,1601070898,'auth_db','field_updateremote_firstname','0',NULL),(1018,2,1601070898,'auth_db','field_lock_firstname','unlocked',NULL),(1019,2,1601070898,'auth_db','field_map_lastname','',NULL),(1020,2,1601070898,'auth_db','field_updatelocal_lastname','oncreate',NULL),(1021,2,1601070898,'auth_db','field_updateremote_lastname','0',NULL),(1022,2,1601070898,'auth_db','field_lock_lastname','unlocked',NULL),(1023,2,1601070898,'auth_db','field_map_email','',NULL),(1024,2,1601070898,'auth_db','field_updatelocal_email','oncreate',NULL),(1025,2,1601070898,'auth_db','field_updateremote_email','0',NULL),(1026,2,1601070898,'auth_db','field_lock_email','unlocked',NULL),(1027,2,1601070898,'auth_db','field_map_city','',NULL),(1028,2,1601070898,'auth_db','field_updatelocal_city','oncreate',NULL),(1029,2,1601070898,'auth_db','field_updateremote_city','0',NULL),(1030,2,1601070898,'auth_db','field_lock_city','unlocked',NULL),(1031,2,1601070898,'auth_db','field_map_country','',NULL),(1032,2,1601070898,'auth_db','field_updatelocal_country','oncreate',NULL),(1033,2,1601070898,'auth_db','field_updateremote_country','0',NULL),(1034,2,1601070898,'auth_db','field_lock_country','unlocked',NULL),(1035,2,1601070898,'auth_db','field_map_lang','',NULL),(1036,2,1601070899,'auth_db','field_updatelocal_lang','oncreate',NULL),(1037,2,1601070899,'auth_db','field_updateremote_lang','0',NULL),(1038,2,1601070899,'auth_db','field_lock_lang','unlocked',NULL),(1039,2,1601070899,'auth_db','field_map_description','',NULL),(1040,2,1601070899,'auth_db','field_updatelocal_description','oncreate',NULL),(1041,2,1601070899,'auth_db','field_updateremote_description','0',NULL),(1042,2,1601070899,'auth_db','field_lock_description','unlocked',NULL),(1043,2,1601070899,'auth_db','field_map_url','',NULL),(1044,2,1601070899,'auth_db','field_updatelocal_url','oncreate',NULL),(1045,2,1601070899,'auth_db','field_updateremote_url','0',NULL),(1046,2,1601070899,'auth_db','field_lock_url','unlocked',NULL),(1047,2,1601070899,'auth_db','field_map_idnumber','',NULL),(1048,2,1601070899,'auth_db','field_updatelocal_idnumber','oncreate',NULL),(1049,2,1601070899,'auth_db','field_updateremote_idnumber','0',NULL),(1050,2,1601070899,'auth_db','field_lock_idnumber','unlocked',NULL),(1051,2,1601070899,'auth_db','field_map_institution','',NULL),(1052,2,1601070899,'auth_db','field_updatelocal_institution','oncreate',NULL),(1053,2,1601070899,'auth_db','field_updateremote_institution','0',NULL),(1054,2,1601070899,'auth_db','field_lock_institution','unlocked',NULL),(1055,2,1601070899,'auth_db','field_map_department','',NULL),(1056,2,1601070899,'auth_db','field_updatelocal_department','oncreate',NULL),(1057,2,1601070899,'auth_db','field_updateremote_department','0',NULL),(1058,2,1601070899,'auth_db','field_lock_department','unlocked',NULL),(1059,2,1601070899,'auth_db','field_map_phone1','',NULL),(1060,2,1601070899,'auth_db','field_updatelocal_phone1','oncreate',NULL),(1061,2,1601070899,'auth_db','field_updateremote_phone1','0',NULL),(1062,2,1601070899,'auth_db','field_lock_phone1','unlocked',NULL),(1063,2,1601070899,'auth_db','field_map_phone2','',NULL),(1064,2,1601070899,'auth_db','field_updatelocal_phone2','oncreate',NULL),(1065,2,1601070899,'auth_db','field_updateremote_phone2','0',NULL),(1066,2,1601070899,'auth_db','field_lock_phone2','unlocked',NULL),(1067,2,1601070899,'auth_db','field_map_address','',NULL),(1068,2,1601070899,'auth_db','field_updatelocal_address','oncreate',NULL),(1069,2,1601070899,'auth_db','field_updateremote_address','0',NULL),(1070,2,1601070899,'auth_db','field_lock_address','unlocked',NULL),(1071,2,1601070899,'auth_db','field_map_firstnamephonetic','',NULL),(1072,2,1601070899,'auth_db','field_updatelocal_firstnamephonetic','oncreate',NULL),(1073,2,1601070899,'auth_db','field_updateremote_firstnamephonetic','0',NULL),(1074,2,1601070899,'auth_db','field_lock_firstnamephonetic','unlocked',NULL),(1075,2,1601070899,'auth_db','field_map_lastnamephonetic','',NULL),(1076,2,1601070899,'auth_db','field_updatelocal_lastnamephonetic','oncreate',NULL),(1077,2,1601070899,'auth_db','field_updateremote_lastnamephonetic','0',NULL),(1078,2,1601070899,'auth_db','field_lock_lastnamephonetic','unlocked',NULL),(1079,2,1601070899,'auth_db','field_map_middlename','',NULL),(1080,2,1601070899,'auth_db','field_updatelocal_middlename','oncreate',NULL),(1081,2,1601070899,'auth_db','field_updateremote_middlename','0',NULL),(1082,2,1601070899,'auth_db','field_lock_middlename','unlocked',NULL),(1083,2,1601070899,'auth_db','field_map_alternatename','',NULL),(1084,2,1601070899,'auth_db','field_updatelocal_alternatename','oncreate',NULL),(1085,2,1601070899,'auth_db','field_updateremote_alternatename','0',NULL),(1086,2,1601070899,'auth_db','field_lock_alternatename','unlocked',NULL),(1087,2,1601070899,'auth_ldap','host_url','',NULL),(1088,2,1601070899,'auth_ldap','ldap_version','3',NULL),(1089,2,1601070899,'auth_ldap','start_tls','0',NULL),(1090,2,1601070899,'auth_ldap','ldapencoding','utf-8',NULL),(1091,2,1601070899,'auth_ldap','pagesize','250',NULL),(1092,2,1601070899,'auth_ldap','preventpassindb','0',NULL),(1093,2,1601070899,'auth_ldap','bind_dn','',NULL),(1094,2,1601070899,'auth_ldap','bind_pw','',NULL),(1095,2,1601070899,'auth_ldap','user_type','default',NULL),(1096,2,1601070899,'auth_ldap','contexts','',NULL),(1097,2,1601070899,'auth_ldap','search_sub','0',NULL),(1098,2,1601070900,'auth_ldap','opt_deref','0',NULL),(1099,2,1601070900,'auth_ldap','user_attribute','',NULL),(1100,2,1601070900,'auth_ldap','suspended_attribute','',NULL),(1101,2,1601070900,'auth_ldap','memberattribute','',NULL),(1102,2,1601070900,'auth_ldap','memberattribute_isdn','',NULL),(1103,2,1601070900,'auth_ldap','objectclass','',NULL),(1104,2,1601070900,'auth_ldap','forcechangepassword','0',NULL),(1105,2,1601070900,'auth_ldap','stdchangepassword','0',NULL),(1106,2,1601070900,'auth_ldap','passtype','plaintext',NULL),(1107,2,1601070900,'auth_ldap','changepasswordurl','',NULL),(1108,2,1601070900,'auth_ldap','expiration','0',NULL),(1109,2,1601070900,'auth_ldap','expiration_warning','',NULL),(1110,2,1601070900,'auth_ldap','expireattr','',NULL),(1111,2,1601070900,'auth_ldap','gracelogins','0',NULL),(1112,2,1601070900,'auth_ldap','graceattr','',NULL),(1113,2,1601070900,'auth_ldap','auth_user_create','0',NULL),(1114,2,1601070900,'auth_ldap','create_context','',NULL),(1115,2,1601070900,'auth_ldap','managercontext','',NULL),(1116,2,1601070900,'auth_ldap','coursecreatorcontext','',NULL),(1117,2,1601070900,'auth_ldap','removeuser','0',NULL),(1118,2,1601070900,'auth_ldap','sync_suspended','0',NULL),(1119,2,1601070900,'auth_ldap','ntlmsso_enabled','0',NULL),(1120,2,1601070900,'auth_ldap','ntlmsso_subnet','',NULL),(1121,2,1601070900,'auth_ldap','ntlmsso_ie_fastpath','0',NULL),(1122,2,1601070900,'auth_ldap','ntlmsso_type','ntlm',NULL),(1123,2,1601070900,'auth_ldap','ntlmsso_remoteuserformat','',NULL),(1124,2,1601070900,'auth_ldap','field_map_firstname','',NULL),(1125,2,1601070900,'auth_ldap','field_updatelocal_firstname','oncreate',NULL),(1126,2,1601070900,'auth_ldap','field_updateremote_firstname','0',NULL),(1127,2,1601070900,'auth_ldap','field_lock_firstname','unlocked',NULL),(1128,2,1601070900,'auth_ldap','field_map_lastname','',NULL),(1129,2,1601070900,'auth_ldap','field_updatelocal_lastname','oncreate',NULL),(1130,2,1601070900,'auth_ldap','field_updateremote_lastname','0',NULL),(1131,2,1601070900,'auth_ldap','field_lock_lastname','unlocked',NULL),(1132,2,1601070900,'auth_ldap','field_map_email','',NULL),(1133,2,1601070900,'auth_ldap','field_updatelocal_email','oncreate',NULL),(1134,2,1601070900,'auth_ldap','field_updateremote_email','0',NULL),(1135,2,1601070900,'auth_ldap','field_lock_email','unlocked',NULL),(1136,2,1601070900,'auth_ldap','field_map_city','',NULL),(1137,2,1601070900,'auth_ldap','field_updatelocal_city','oncreate',NULL),(1138,2,1601070900,'auth_ldap','field_updateremote_city','0',NULL),(1139,2,1601070900,'auth_ldap','field_lock_city','unlocked',NULL),(1140,2,1601070900,'auth_ldap','field_map_country','',NULL),(1141,2,1601070900,'auth_ldap','field_updatelocal_country','oncreate',NULL),(1142,2,1601070900,'auth_ldap','field_updateremote_country','0',NULL),(1143,2,1601070900,'auth_ldap','field_lock_country','unlocked',NULL),(1144,2,1601070900,'auth_ldap','field_map_lang','',NULL),(1145,2,1601070900,'auth_ldap','field_updatelocal_lang','oncreate',NULL),(1146,2,1601070900,'auth_ldap','field_updateremote_lang','0',NULL),(1147,2,1601070900,'auth_ldap','field_lock_lang','unlocked',NULL),(1148,2,1601070900,'auth_ldap','field_map_description','',NULL),(1149,2,1601070900,'auth_ldap','field_updatelocal_description','oncreate',NULL),(1150,2,1601070900,'auth_ldap','field_updateremote_description','0',NULL),(1151,2,1601070900,'auth_ldap','field_lock_description','unlocked',NULL),(1152,2,1601070900,'auth_ldap','field_map_url','',NULL),(1153,2,1601070900,'auth_ldap','field_updatelocal_url','oncreate',NULL),(1154,2,1601070900,'auth_ldap','field_updateremote_url','0',NULL),(1155,2,1601070900,'auth_ldap','field_lock_url','unlocked',NULL),(1156,2,1601070900,'auth_ldap','field_map_idnumber','',NULL),(1157,2,1601070900,'auth_ldap','field_updatelocal_idnumber','oncreate',NULL),(1158,2,1601070901,'auth_ldap','field_updateremote_idnumber','0',NULL),(1159,2,1601070901,'auth_ldap','field_lock_idnumber','unlocked',NULL),(1160,2,1601070901,'auth_ldap','field_map_institution','',NULL),(1161,2,1601070901,'auth_ldap','field_updatelocal_institution','oncreate',NULL),(1162,2,1601070901,'auth_ldap','field_updateremote_institution','0',NULL),(1163,2,1601070901,'auth_ldap','field_lock_institution','unlocked',NULL),(1164,2,1601070901,'auth_ldap','field_map_department','',NULL),(1165,2,1601070901,'auth_ldap','field_updatelocal_department','oncreate',NULL),(1166,2,1601070901,'auth_ldap','field_updateremote_department','0',NULL),(1167,2,1601070901,'auth_ldap','field_lock_department','unlocked',NULL),(1168,2,1601070901,'auth_ldap','field_map_phone1','',NULL),(1169,2,1601070901,'auth_ldap','field_updatelocal_phone1','oncreate',NULL),(1170,2,1601070901,'auth_ldap','field_updateremote_phone1','0',NULL),(1171,2,1601070901,'auth_ldap','field_lock_phone1','unlocked',NULL),(1172,2,1601070901,'auth_ldap','field_map_phone2','',NULL),(1173,2,1601070901,'auth_ldap','field_updatelocal_phone2','oncreate',NULL),(1174,2,1601070901,'auth_ldap','field_updateremote_phone2','0',NULL),(1175,2,1601070901,'auth_ldap','field_lock_phone2','unlocked',NULL),(1176,2,1601070901,'auth_ldap','field_map_address','',NULL),(1177,2,1601070901,'auth_ldap','field_updatelocal_address','oncreate',NULL),(1178,2,1601070901,'auth_ldap','field_updateremote_address','0',NULL),(1179,2,1601070901,'auth_ldap','field_lock_address','unlocked',NULL),(1180,2,1601070901,'auth_ldap','field_map_firstnamephonetic','',NULL),(1181,2,1601070901,'auth_ldap','field_updatelocal_firstnamephonetic','oncreate',NULL),(1182,2,1601070901,'auth_ldap','field_updateremote_firstnamephonetic','0',NULL),(1183,2,1601070901,'auth_ldap','field_lock_firstnamephonetic','unlocked',NULL),(1184,2,1601070901,'auth_ldap','field_map_lastnamephonetic','',NULL),(1185,2,1601070901,'auth_ldap','field_updatelocal_lastnamephonetic','oncreate',NULL),(1186,2,1601070901,'auth_ldap','field_updateremote_lastnamephonetic','0',NULL),(1187,2,1601070901,'auth_ldap','field_lock_lastnamephonetic','unlocked',NULL),(1188,2,1601070901,'auth_ldap','field_map_middlename','',NULL),(1189,2,1601070901,'auth_ldap','field_updatelocal_middlename','oncreate',NULL),(1190,2,1601070901,'auth_ldap','field_updateremote_middlename','0',NULL),(1191,2,1601070901,'auth_ldap','field_lock_middlename','unlocked',NULL),(1192,2,1601070901,'auth_ldap','field_map_alternatename','',NULL),(1193,2,1601070901,'auth_ldap','field_updatelocal_alternatename','oncreate',NULL),(1194,2,1601070901,'auth_ldap','field_updateremote_alternatename','0',NULL),(1195,2,1601070901,'auth_ldap','field_lock_alternatename','unlocked',NULL),(1196,2,1601070901,'auth_manual','expiration','0',NULL),(1197,2,1601070901,'auth_manual','expirationtime','30',NULL),(1198,2,1601070901,'auth_manual','expiration_warning','0',NULL),(1199,2,1601070901,'auth_manual','field_lock_firstname','unlocked',NULL),(1200,2,1601070901,'auth_manual','field_lock_lastname','unlocked',NULL),(1201,2,1601070901,'auth_manual','field_lock_email','unlocked',NULL),(1202,2,1601070901,'auth_manual','field_lock_city','unlocked',NULL),(1203,2,1601070901,'auth_manual','field_lock_country','unlocked',NULL),(1204,2,1601070901,'auth_manual','field_lock_lang','unlocked',NULL),(1205,2,1601070901,'auth_manual','field_lock_description','unlocked',NULL),(1206,2,1601070901,'auth_manual','field_lock_url','unlocked',NULL),(1207,2,1601070901,'auth_manual','field_lock_idnumber','unlocked',NULL),(1208,2,1601070901,'auth_manual','field_lock_institution','unlocked',NULL),(1209,2,1601070901,'auth_manual','field_lock_department','unlocked',NULL),(1210,2,1601070901,'auth_manual','field_lock_phone1','unlocked',NULL),(1211,2,1601070901,'auth_manual','field_lock_phone2','unlocked',NULL),(1212,2,1601070901,'auth_manual','field_lock_address','unlocked',NULL),(1213,2,1601070901,'auth_manual','field_lock_firstnamephonetic','unlocked',NULL),(1214,2,1601070901,'auth_manual','field_lock_lastnamephonetic','unlocked',NULL),(1215,2,1601070901,'auth_manual','field_lock_middlename','unlocked',NULL),(1216,2,1601070901,'auth_manual','field_lock_alternatename','unlocked',NULL),(1217,2,1601070901,'auth_mnet','rpc_negotiation_timeout','30',NULL),(1218,2,1601070902,'auth_none','field_lock_firstname','unlocked',NULL),(1219,2,1601070902,'auth_none','field_lock_lastname','unlocked',NULL),(1220,2,1601070902,'auth_none','field_lock_email','unlocked',NULL),(1221,2,1601070902,'auth_none','field_lock_city','unlocked',NULL),(1222,2,1601070902,'auth_none','field_lock_country','unlocked',NULL),(1223,2,1601070902,'auth_none','field_lock_lang','unlocked',NULL),(1224,2,1601070902,'auth_none','field_lock_description','unlocked',NULL),(1225,2,1601070902,'auth_none','field_lock_url','unlocked',NULL),(1226,2,1601070902,'auth_none','field_lock_idnumber','unlocked',NULL),(1227,2,1601070902,'auth_none','field_lock_institution','unlocked',NULL),(1228,2,1601070902,'auth_none','field_lock_department','unlocked',NULL),(1229,2,1601070902,'auth_none','field_lock_phone1','unlocked',NULL),(1230,2,1601070902,'auth_none','field_lock_phone2','unlocked',NULL),(1231,2,1601070902,'auth_none','field_lock_address','unlocked',NULL),(1232,2,1601070902,'auth_none','field_lock_firstnamephonetic','unlocked',NULL),(1233,2,1601070902,'auth_none','field_lock_lastnamephonetic','unlocked',NULL),(1234,2,1601070902,'auth_none','field_lock_middlename','unlocked',NULL),(1235,2,1601070902,'auth_none','field_lock_alternatename','unlocked',NULL),(1236,2,1601070902,'auth_oauth2','field_lock_firstname','unlocked',NULL),(1237,2,1601070902,'auth_oauth2','field_lock_lastname','unlocked',NULL),(1238,2,1601070902,'auth_oauth2','field_lock_email','unlocked',NULL),(1239,2,1601070902,'auth_oauth2','field_lock_city','unlocked',NULL),(1240,2,1601070902,'auth_oauth2','field_lock_country','unlocked',NULL),(1241,2,1601070902,'auth_oauth2','field_lock_lang','unlocked',NULL),(1242,2,1601070902,'auth_oauth2','field_lock_description','unlocked',NULL),(1243,2,1601070902,'auth_oauth2','field_lock_url','unlocked',NULL),(1244,2,1601070902,'auth_oauth2','field_lock_idnumber','unlocked',NULL),(1245,2,1601070902,'auth_oauth2','field_lock_institution','unlocked',NULL),(1246,2,1601070902,'auth_oauth2','field_lock_department','unlocked',NULL),(1247,2,1601070902,'auth_oauth2','field_lock_phone1','unlocked',NULL),(1248,2,1601070902,'auth_oauth2','field_lock_phone2','unlocked',NULL),(1249,2,1601070902,'auth_oauth2','field_lock_address','unlocked',NULL),(1250,2,1601070902,'auth_oauth2','field_lock_firstnamephonetic','unlocked',NULL),(1251,2,1601070902,'auth_oauth2','field_lock_lastnamephonetic','unlocked',NULL),(1252,2,1601070902,'auth_oauth2','field_lock_middlename','unlocked',NULL),(1253,2,1601070902,'auth_oauth2','field_lock_alternatename','unlocked',NULL),(1254,2,1601070902,'auth_shibboleth','user_attribute','',NULL),(1255,2,1601070902,'auth_shibboleth','convert_data','',NULL),(1256,2,1601070902,'auth_shibboleth','alt_login','off',NULL),(1257,2,1601070902,'auth_shibboleth','organization_selection','urn:mace:organization1:providerID, Example Organization 1\n        https://another.idp-id.com/shibboleth, Other Example Organization, /Shibboleth.sso/DS/SWITCHaai\n        urn:mace:organization2:providerID, Example Organization 2, /Shibboleth.sso/WAYF/SWITCHaai',NULL),(1258,2,1601070902,'auth_shibboleth','logout_handler','',NULL),(1259,2,1601070902,'auth_shibboleth','logout_return_url','',NULL),(1260,2,1601070902,'auth_shibboleth','login_name','Shibboleth Login',NULL),(1261,2,1601070902,'auth_shibboleth','auth_logo','',NULL),(1262,2,1601070902,'auth_shibboleth','auth_instructions','Use the <a href=\"http://localhost:80/auth/shibboleth/index.php\">Shibboleth login</a> to get access via Shibboleth, if your institution supports it.<br />Otherwise, use the normal login form shown here.',NULL),(1263,2,1601070902,'auth_shibboleth','changepasswordurl','',NULL),(1264,2,1601070902,'auth_shibboleth','field_map_firstname','',NULL),(1265,2,1601070902,'auth_shibboleth','field_updatelocal_firstname','oncreate',NULL),(1266,2,1601070902,'auth_shibboleth','field_lock_firstname','unlocked',NULL),(1267,2,1601070902,'auth_shibboleth','field_map_lastname','',NULL),(1268,2,1601070902,'auth_shibboleth','field_updatelocal_lastname','oncreate',NULL),(1269,2,1601070902,'auth_shibboleth','field_lock_lastname','unlocked',NULL),(1270,2,1601070902,'auth_shibboleth','field_map_email','',NULL),(1271,2,1601070902,'auth_shibboleth','field_updatelocal_email','oncreate',NULL),(1272,2,1601070902,'auth_shibboleth','field_lock_email','unlocked',NULL),(1273,2,1601070902,'auth_shibboleth','field_map_city','',NULL),(1274,2,1601070902,'auth_shibboleth','field_updatelocal_city','oncreate',NULL),(1275,2,1601070903,'auth_shibboleth','field_lock_city','unlocked',NULL),(1276,2,1601070903,'auth_shibboleth','field_map_country','',NULL),(1277,2,1601070903,'auth_shibboleth','field_updatelocal_country','oncreate',NULL),(1278,2,1601070903,'auth_shibboleth','field_lock_country','unlocked',NULL),(1279,2,1601070903,'auth_shibboleth','field_map_lang','',NULL),(1280,2,1601070903,'auth_shibboleth','field_updatelocal_lang','oncreate',NULL),(1281,2,1601070903,'auth_shibboleth','field_lock_lang','unlocked',NULL),(1282,2,1601070903,'auth_shibboleth','field_map_description','',NULL),(1283,2,1601070903,'auth_shibboleth','field_updatelocal_description','oncreate',NULL),(1284,2,1601070903,'auth_shibboleth','field_lock_description','unlocked',NULL),(1285,2,1601070903,'auth_shibboleth','field_map_url','',NULL),(1286,2,1601070903,'auth_shibboleth','field_updatelocal_url','oncreate',NULL),(1287,2,1601070903,'auth_shibboleth','field_lock_url','unlocked',NULL),(1288,2,1601070903,'auth_shibboleth','field_map_idnumber','',NULL),(1289,2,1601070903,'auth_shibboleth','field_updatelocal_idnumber','oncreate',NULL),(1290,2,1601070903,'auth_shibboleth','field_lock_idnumber','unlocked',NULL),(1291,2,1601070903,'auth_shibboleth','field_map_institution','',NULL),(1292,2,1601070903,'auth_shibboleth','field_updatelocal_institution','oncreate',NULL),(1293,2,1601070903,'auth_shibboleth','field_lock_institution','unlocked',NULL),(1294,2,1601070903,'auth_shibboleth','field_map_department','',NULL),(1295,2,1601070903,'auth_shibboleth','field_updatelocal_department','oncreate',NULL),(1296,2,1601070903,'auth_shibboleth','field_lock_department','unlocked',NULL),(1297,2,1601070903,'auth_shibboleth','field_map_phone1','',NULL),(1298,2,1601070903,'auth_shibboleth','field_updatelocal_phone1','oncreate',NULL),(1299,2,1601070903,'auth_shibboleth','field_lock_phone1','unlocked',NULL),(1300,2,1601070903,'auth_shibboleth','field_map_phone2','',NULL),(1301,2,1601070903,'auth_shibboleth','field_updatelocal_phone2','oncreate',NULL),(1302,2,1601070903,'auth_shibboleth','field_lock_phone2','unlocked',NULL),(1303,2,1601070903,'auth_shibboleth','field_map_address','',NULL),(1304,2,1601070903,'auth_shibboleth','field_updatelocal_address','oncreate',NULL),(1305,2,1601070903,'auth_shibboleth','field_lock_address','unlocked',NULL),(1306,2,1601070903,'auth_shibboleth','field_map_firstnamephonetic','',NULL),(1307,2,1601070903,'auth_shibboleth','field_updatelocal_firstnamephonetic','oncreate',NULL),(1308,2,1601070903,'auth_shibboleth','field_lock_firstnamephonetic','unlocked',NULL),(1309,2,1601070903,'auth_shibboleth','field_map_lastnamephonetic','',NULL),(1310,2,1601070903,'auth_shibboleth','field_updatelocal_lastnamephonetic','oncreate',NULL),(1311,2,1601070903,'auth_shibboleth','field_lock_lastnamephonetic','unlocked',NULL),(1312,2,1601070903,'auth_shibboleth','field_map_middlename','',NULL),(1313,2,1601070903,'auth_shibboleth','field_updatelocal_middlename','oncreate',NULL),(1314,2,1601070903,'auth_shibboleth','field_lock_middlename','unlocked',NULL),(1315,2,1601070903,'auth_shibboleth','field_map_alternatename','',NULL),(1316,2,1601070903,'auth_shibboleth','field_updatelocal_alternatename','oncreate',NULL),(1317,2,1601070903,'auth_shibboleth','field_lock_alternatename','unlocked',NULL),(1318,2,1601070903,'block_activity_results','config_showbest','3',NULL),(1319,2,1601070903,'block_activity_results','config_showbest_locked','',NULL),(1320,2,1601070903,'block_activity_results','config_showworst','0',NULL),(1321,2,1601070903,'block_activity_results','config_showworst_locked','',NULL),(1322,2,1601070903,'block_activity_results','config_usegroups','0',NULL),(1323,2,1601070903,'block_activity_results','config_usegroups_locked','',NULL),(1324,2,1601070903,'block_activity_results','config_nameformat','1',NULL),(1325,2,1601070903,'block_activity_results','config_nameformat_locked','',NULL),(1326,2,1601070903,'block_activity_results','config_gradeformat','1',NULL),(1327,2,1601070903,'block_activity_results','config_gradeformat_locked','',NULL),(1328,2,1601070903,'block_activity_results','config_decimalpoints','2',NULL),(1329,2,1601070903,'block_activity_results','config_decimalpoints_locked','',NULL),(1330,2,1601070903,NULL,'block_course_list_adminview','all',NULL),(1331,2,1601070903,NULL,'block_course_list_hideallcourseslink','0',NULL),(1332,2,1601070903,NULL,'block_html_allowcssclasses','0',NULL),(1333,2,1601070903,NULL,'block_online_users_timetosee','5',NULL),(1334,2,1601070904,NULL,'block_rss_client_num_entries','5',NULL),(1335,2,1601070904,NULL,'block_rss_client_timeout','30',NULL),(1336,2,1601070904,'block_section_links','numsections1','22',NULL),(1337,2,1601070904,'block_section_links','incby1','2',NULL),(1338,2,1601070904,'block_section_links','numsections2','40',NULL),(1339,2,1601070904,'block_section_links','incby2','5',NULL),(1340,2,1601070904,'block_tag_youtube','apikey','',NULL),(1341,2,1601070904,'format_singleactivity','activitytype','forum',NULL),(1342,2,1601070904,'fileconverter_googledrive','issuerid','',NULL),(1343,2,1601070904,NULL,'pathtounoconv','/usr/bin/unoconv',NULL),(1344,2,1601070904,'enrol_cohort','roleid','5',NULL),(1345,2,1601070904,'enrol_cohort','unenrolaction','0',NULL),(1346,2,1601070904,'enrol_meta','nosyncroleids','',NULL),(1347,2,1601070904,'enrol_meta','syncall','1',NULL),(1348,2,1601070904,'enrol_meta','unenrolaction','3',NULL),(1349,2,1601070904,'enrol_meta','coursesort','sortorder',NULL),(1350,2,1601070904,'enrol_database','dbtype','',NULL),(1351,2,1601070904,'enrol_database','dbhost','localhost',NULL),(1352,2,1601070904,'enrol_database','dbuser','',NULL),(1353,2,1601070904,'enrol_database','dbpass','',NULL),(1354,2,1601070904,'enrol_database','dbname','',NULL),(1355,2,1601070904,'enrol_database','dbencoding','utf-8',NULL),(1356,2,1601070904,'enrol_database','dbsetupsql','',NULL),(1357,2,1601070904,'enrol_database','dbsybasequoting','0',NULL),(1358,2,1601070904,'enrol_database','debugdb','0',NULL),(1359,2,1601070904,'enrol_database','localcoursefield','idnumber',NULL),(1360,2,1601070904,'enrol_database','localuserfield','idnumber',NULL),(1361,2,1601070904,'enrol_database','localrolefield','shortname',NULL),(1362,2,1601070904,'enrol_database','localcategoryfield','id',NULL),(1363,2,1601070904,'enrol_database','remoteenroltable','',NULL),(1364,2,1601070904,'enrol_database','remotecoursefield','',NULL),(1365,2,1601070904,'enrol_database','remoteuserfield','',NULL),(1366,2,1601070904,'enrol_database','remoterolefield','',NULL),(1367,2,1601070904,'enrol_database','remoteotheruserfield','',NULL),(1368,2,1601070904,'enrol_database','defaultrole','5',NULL),(1369,2,1601070904,'enrol_database','ignorehiddencourses','0',NULL),(1370,2,1601070904,'enrol_database','unenrolaction','0',NULL),(1371,2,1601070904,'enrol_database','newcoursetable','',NULL),(1372,2,1601070904,'enrol_database','newcoursefullname','fullname',NULL),(1373,2,1601070904,'enrol_database','newcourseshortname','shortname',NULL),(1374,2,1601070904,'enrol_database','newcourseidnumber','idnumber',NULL),(1375,2,1601070904,'enrol_database','newcoursecategory','',NULL),(1376,2,1601070904,'enrol_database','defaultcategory','1',NULL),(1377,2,1601070904,'enrol_database','templatecourse','',NULL),(1378,2,1601070904,'enrol_flatfile','location','',NULL),(1379,2,1601070904,'enrol_flatfile','encoding','UTF-8',NULL),(1380,2,1601070904,'enrol_flatfile','mailstudents','0',NULL),(1381,2,1601070904,'enrol_flatfile','mailteachers','0',NULL),(1382,2,1601070904,'enrol_flatfile','mailadmins','0',NULL),(1383,2,1601070904,'enrol_flatfile','unenrolaction','3',NULL),(1384,2,1601070904,'enrol_flatfile','expiredaction','3',NULL),(1385,2,1601070904,'enrol_guest','requirepassword','0',NULL),(1386,2,1601070904,'enrol_guest','usepasswordpolicy','0',NULL),(1387,2,1601070904,'enrol_guest','showhint','0',NULL),(1388,2,1601070905,'enrol_guest','defaultenrol','1',NULL),(1389,2,1601070905,'enrol_guest','status','1',NULL),(1390,2,1601070905,'enrol_guest','status_adv','',NULL),(1391,2,1601070905,'enrol_imsenterprise','imsfilelocation','',NULL),(1392,2,1601070905,'enrol_imsenterprise','logtolocation','',NULL),(1393,2,1601070905,'enrol_imsenterprise','mailadmins','0',NULL),(1394,2,1601070905,'enrol_imsenterprise','createnewusers','0',NULL),(1395,2,1601070905,'enrol_imsenterprise','imsupdateusers','0',NULL),(1396,2,1601070905,'enrol_imsenterprise','imsdeleteusers','0',NULL),(1397,2,1601070905,'enrol_imsenterprise','fixcaseusernames','0',NULL),(1398,2,1601070905,'enrol_imsenterprise','fixcasepersonalnames','0',NULL),(1399,2,1601070905,'enrol_imsenterprise','imssourcedidfallback','0',NULL),(1400,2,1601070905,'enrol_imsenterprise','imsrolemap01','5',NULL),(1401,2,1601070905,'enrol_imsenterprise','imsrolemap02','3',NULL),(1402,2,1601070905,'enrol_imsenterprise','imsrolemap03','3',NULL),(1403,2,1601070905,'enrol_imsenterprise','imsrolemap04','5',NULL),(1404,2,1601070905,'enrol_imsenterprise','imsrolemap05','0',NULL),(1405,2,1601070905,'enrol_imsenterprise','imsrolemap06','4',NULL),(1406,2,1601070905,'enrol_imsenterprise','imsrolemap07','0',NULL),(1407,2,1601070905,'enrol_imsenterprise','imsrolemap08','4',NULL),(1408,2,1601070905,'enrol_imsenterprise','truncatecoursecodes','0',NULL),(1409,2,1601070905,'enrol_imsenterprise','createnewcourses','0',NULL),(1410,2,1601070905,'enrol_imsenterprise','updatecourses','0',NULL),(1411,2,1601070905,'enrol_imsenterprise','createnewcategories','0',NULL),(1412,2,1601070905,'enrol_imsenterprise','nestedcategories','0',NULL),(1413,2,1601070905,'enrol_imsenterprise','categoryidnumber','0',NULL),(1414,2,1601070905,'enrol_imsenterprise','categoryseparator','',NULL),(1415,2,1601070905,'enrol_imsenterprise','imsunenrol','0',NULL),(1416,2,1601070905,'enrol_imsenterprise','imscoursemapshortname','coursecode',NULL),(1417,2,1601070905,'enrol_imsenterprise','imscoursemapfullname','short',NULL),(1418,2,1601070905,'enrol_imsenterprise','imscoursemapsummary','ignore',NULL),(1419,2,1601070905,'enrol_imsenterprise','imsrestricttarget','',NULL),(1420,2,1601070905,'enrol_imsenterprise','imscapitafix','0',NULL),(1421,2,1601070905,'enrol_ldap','host_url','',NULL),(1422,2,1601070905,'enrol_ldap','start_tls','0',NULL),(1423,2,1601070905,'enrol_ldap','ldap_version','3',NULL),(1424,2,1601070905,'enrol_ldap','ldapencoding','utf-8',NULL),(1425,2,1601070905,'enrol_ldap','pagesize','250',NULL),(1426,2,1601070905,'enrol_ldap','bind_dn','',NULL),(1427,2,1601070905,'enrol_ldap','bind_pw','',NULL),(1428,2,1601070905,'enrol_ldap','course_search_sub','0',NULL),(1429,2,1601070905,'enrol_ldap','memberattribute_isdn','0',NULL),(1430,2,1601070905,'enrol_ldap','user_contexts','',NULL),(1431,2,1601070905,'enrol_ldap','user_search_sub','0',NULL),(1432,2,1601070905,'enrol_ldap','user_type','default',NULL),(1433,2,1601070905,'enrol_ldap','opt_deref','0',NULL),(1434,2,1601070905,'enrol_ldap','idnumber_attribute','',NULL),(1435,2,1601070905,'enrol_ldap','objectclass','',NULL),(1436,2,1601070905,'enrol_ldap','course_idnumber','',NULL),(1437,2,1601070905,'enrol_ldap','course_shortname','',NULL),(1438,2,1601070905,'enrol_ldap','course_fullname','',NULL),(1439,2,1601070905,'enrol_ldap','course_summary','',NULL),(1440,2,1601070905,'enrol_ldap','ignorehiddencourses','0',NULL),(1441,2,1601070905,'enrol_ldap','unenrolaction','0',NULL),(1442,2,1601070905,'enrol_ldap','autocreate','0',NULL),(1443,2,1601070905,'enrol_ldap','category','1',NULL),(1444,2,1601070905,'enrol_ldap','template','',NULL),(1445,2,1601070905,'enrol_ldap','course_shortname_updateonsync','0',NULL),(1446,2,1601070905,'enrol_ldap','course_fullname_updateonsync','0',NULL),(1447,2,1601070905,'enrol_ldap','course_summary_updateonsync','0',NULL),(1448,2,1601070905,'enrol_ldap','nested_groups','0',NULL),(1449,2,1601070905,'enrol_ldap','group_memberofattribute','',NULL),(1450,2,1601070906,'enrol_manual','expiredaction','1',NULL),(1451,2,1601070906,'enrol_manual','expirynotifyhour','6',NULL),(1452,2,1601070906,'enrol_manual','defaultenrol','1',NULL),(1453,2,1601070906,'enrol_manual','status','0',NULL),(1454,2,1601070906,'enrol_manual','roleid','5',NULL),(1455,2,1601070906,'enrol_manual','enrolstart','4',NULL),(1456,2,1601070906,'enrol_manual','enrolperiod','0',NULL),(1457,2,1601070906,'enrol_manual','expirynotify','0',NULL),(1458,2,1601070906,'enrol_manual','expirythreshold','86400',NULL),(1459,2,1601070906,'enrol_mnet','roleid','5',NULL),(1460,2,1601070906,'enrol_mnet','roleid_adv','1',NULL),(1461,2,1601070906,'enrol_paypal','paypalbusiness','',NULL),(1462,2,1601070906,'enrol_paypal','mailstudents','0',NULL),(1463,2,1601070906,'enrol_paypal','mailteachers','0',NULL),(1464,2,1601070906,'enrol_paypal','mailadmins','0',NULL),(1465,2,1601070906,'enrol_paypal','expiredaction','3',NULL),(1466,2,1601070906,'enrol_paypal','status','1',NULL),(1467,2,1601070906,'enrol_paypal','cost','0',NULL),(1468,2,1601070906,'enrol_paypal','currency','USD',NULL),(1469,2,1601070906,'enrol_paypal','roleid','5',NULL),(1470,2,1601070906,'enrol_paypal','enrolperiod','0',NULL),(1471,2,1601070906,'enrol_lti','emaildisplay','2',NULL),(1472,2,1601070906,'enrol_lti','city','',NULL),(1473,2,1601070906,'enrol_lti','country','',NULL),(1474,2,1601070906,'enrol_lti','timezone','99',NULL),(1475,2,1601070906,'enrol_lti','lang','en',NULL),(1476,2,1601070906,'enrol_lti','institution','',NULL),(1477,2,1601070906,'enrol_self','requirepassword','0',NULL),(1478,2,1601070906,'enrol_self','usepasswordpolicy','0',NULL),(1479,2,1601070906,'enrol_self','showhint','0',NULL),(1480,2,1601070906,'enrol_self','expiredaction','1',NULL),(1481,2,1601070906,'enrol_self','expirynotifyhour','6',NULL),(1482,2,1601070906,'enrol_self','defaultenrol','1',NULL),(1483,2,1601070906,'enrol_self','status','1',NULL),(1484,2,1601070906,'enrol_self','newenrols','1',NULL),(1485,2,1601070906,'enrol_self','groupkey','0',NULL),(1486,2,1601070906,'enrol_self','roleid','5',NULL),(1487,2,1601070906,'enrol_self','enrolperiod','0',NULL),(1488,2,1601070906,'enrol_self','expirynotify','0',NULL),(1489,2,1601070906,'enrol_self','expirythreshold','86400',NULL),(1490,2,1601070906,'enrol_self','longtimenosee','0',NULL),(1491,2,1601070906,'enrol_self','maxenrolled','0',NULL),(1492,2,1601070906,'enrol_self','sendcoursewelcomemessage','1',NULL),(1493,2,1601070906,'filter_urltolink','formats','0',NULL),(1494,2,1601070906,'filter_urltolink','embedimages','1',NULL),(1495,2,1601070906,'filter_emoticon','formats','1,4,0',NULL),(1496,2,1601070906,'filter_mathjaxloader','httpsurl','https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.2/MathJax.js',NULL),(1497,2,1601070906,'filter_mathjaxloader','texfiltercompatibility','0',NULL),(1498,2,1601070906,'filter_mathjaxloader','mathjaxconfig','\nMathJax.Hub.Config({\n    config: [\"Accessible.js\", \"Safe.js\"],\n    errorSettings: { message: [\"!\"] },\n    skipStartupTypeset: true,\n    messageStyle: \"none\"\n});\n',NULL),(1499,2,1601070906,'filter_mathjaxloader','additionaldelimiters','',NULL),(1500,2,1601070906,NULL,'filter_multilang_force_old','0',NULL),(1501,2,1601070906,'filter_tex','latexpreamble','\\usepackage[latin1]{inputenc}\n\\usepackage{amsmath}\n\\usepackage{amsfonts}\n\\RequirePackage{amsmath,amssymb,latexsym}\n',NULL),(1502,2,1601070906,'filter_tex','latexbackground','#FFFFFF',NULL),(1503,2,1601070906,'filter_tex','density','120',NULL),(1504,2,1601070906,'filter_tex','pathlatex','/usr/bin/latex',NULL),(1505,2,1601070906,'filter_tex','pathdvips','/usr/bin/dvips',NULL),(1506,2,1601070906,'filter_tex','pathconvert','/usr/bin/convert',NULL),(1507,2,1601070906,'filter_tex','pathdvisvgm','/usr/bin/dvisvgm',NULL),(1508,2,1601070906,'filter_tex','pathmimetex','',NULL),(1509,2,1601070906,'filter_tex','convertformat','gif',NULL),(1510,2,1601070906,NULL,'filter_censor_badwords','',NULL),(1511,2,1601070906,'logstore_database','dbdriver','',NULL),(1512,2,1601070907,'logstore_database','dbhost','',NULL),(1513,2,1601070907,'logstore_database','dbuser','',NULL),(1514,2,1601070907,'logstore_database','dbpass','',NULL),(1515,2,1601070907,'logstore_database','dbname','',NULL),(1516,2,1601070907,'logstore_database','dbtable','',NULL),(1517,2,1601070907,'logstore_database','dbpersist','0',NULL),(1518,2,1601070907,'logstore_database','dbsocket','',NULL),(1519,2,1601070907,'logstore_database','dbport','',NULL),(1520,2,1601070907,'logstore_database','dbschema','',NULL),(1521,2,1601070907,'logstore_database','dbcollation','',NULL),(1522,2,1601070907,'logstore_database','dbhandlesoptions','0',NULL),(1523,2,1601070907,'logstore_database','buffersize','50',NULL),(1524,2,1601070907,'logstore_database','logguests','0',NULL),(1525,2,1601070907,'logstore_database','includelevels','1,2,0',NULL),(1526,2,1601070907,'logstore_database','includeactions','c,r,u,d',NULL),(1527,2,1601070907,'logstore_legacy','loglegacy','0',NULL),(1528,2,1601070907,NULL,'logguests','1',NULL),(1529,2,1601070907,NULL,'loglifetime','0',NULL),(1530,2,1601070907,'logstore_standard','logguests','1',NULL),(1531,2,1601070907,'logstore_standard','loglifetime','0',NULL),(1532,2,1601070907,'logstore_standard','buffersize','50',NULL),(1533,2,1601070907,'media_videojs','videoextensions','html_video,.f4v,.flv',NULL),(1534,2,1601070907,'media_videojs','audioextensions','html_audio',NULL),(1535,2,1601070907,'media_videojs','rtmp','0',NULL),(1536,2,1601070907,'media_videojs','useflash','0',NULL),(1537,2,1601070907,'media_videojs','youtube','1',NULL),(1538,2,1601070907,'media_videojs','videocssclass','video-js',NULL),(1539,2,1601070907,'media_videojs','audiocssclass','video-js',NULL),(1540,2,1601070907,'media_videojs','limitsize','1',NULL),(1541,2,1601070907,NULL,'jabberhost','',NULL),(1542,2,1601070907,NULL,'jabberserver','',NULL),(1543,2,1601070907,NULL,'jabberusername','',NULL),(1544,2,1601070907,NULL,'jabberpassword','',NULL),(1545,2,1601070907,NULL,'jabberport','5222',NULL),(1546,2,1601070907,NULL,'airnotifierurl','https://messages.moodle.net',NULL),(1547,2,1601070907,NULL,'airnotifierport','443',NULL),(1548,2,1601070907,NULL,'airnotifiermobileappname','com.moodle.moodlemobile',NULL),(1549,2,1601070907,NULL,'airnotifierappname','commoodlemoodlemobile',NULL),(1550,2,1601070907,NULL,'airnotifieraccesskey','',NULL),(1551,2,1601070907,'qtype_multichoice','answerhowmany','1',NULL),(1552,2,1601070907,'qtype_multichoice','shuffleanswers','1',NULL),(1553,2,1601070907,'qtype_multichoice','answernumbering','abc',NULL),(1554,2,1601070907,'editor_atto','toolbar','collapse = collapse\nstyle1 = title, bold, italic\nlist = unorderedlist, orderedlist\nlinks = link\nfiles = image, media, recordrtc, managefiles\nstyle2 = underline, strike, subscript, superscript\nalign = align\nindent = indent\ninsert = equation, charmap, table, clear\nundo = undo\naccessibility = accessibilitychecker, accessibilityhelper\nother = html',NULL),(1555,2,1601070907,'editor_atto','autosavefrequency','60',NULL),(1556,2,1601070907,'atto_collapse','showgroups','5',NULL),(1557,2,1601070907,'atto_equation','librarygroup1','\n\\cdot\n\\times\n\\ast\n\\div\n\\diamond\n\\pm\n\\mp\n\\oplus\n\\ominus\n\\otimes\n\\oslash\n\\odot\n\\circ\n\\bullet\n\\asymp\n\\equiv\n\\subseteq\n\\supseteq\n\\leq\n\\geq\n\\preceq\n\\succeq\n\\sim\n\\simeq\n\\approx\n\\subset\n\\supset\n\\ll\n\\gg\n\\prec\n\\succ\n\\infty\n\\in\n\\ni\n\\forall\n\\exists\n\\neq\n',NULL),(1558,2,1601070907,'atto_equation','librarygroup2','\n\\leftarrow\n\\rightarrow\n\\uparrow\n\\downarrow\n\\leftrightarrow\n\\nearrow\n\\searrow\n\\swarrow\n\\nwarrow\n\\Leftarrow\n\\Rightarrow\n\\Uparrow\n\\Downarrow\n\\Leftrightarrow\n',NULL),(1559,2,1601070907,'atto_equation','librarygroup3','\n\\alpha\n\\beta\n\\gamma\n\\delta\n\\epsilon\n\\zeta\n\\eta\n\\theta\n\\iota\n\\kappa\n\\lambda\n\\mu\n\\nu\n\\xi\n\\pi\n\\rho\n\\sigma\n\\tau\n\\upsilon\n\\phi\n\\chi\n\\psi\n\\omega\n\\Gamma\n\\Delta\n\\Theta\n\\Lambda\n\\Xi\n\\Pi\n\\Sigma\n\\Upsilon\n\\Phi\n\\Psi\n\\Omega\n',NULL),(1560,2,1601070907,'atto_equation','librarygroup4','\n\\sum{a,b}\n\\sqrt[a]{b+c}\n\\int_{a}^{b}{c}\n\\iint_{a}^{b}{c}\n\\iiint_{a}^{b}{c}\n\\oint{a}\n(a)\n[a]\n\\lbrace{a}\\rbrace\n\\left| \\begin{matrix} a_1 & a_2 \\ a_3 & a_4 \\end{matrix} \\right|\n\\frac{a}{b+c}\n\\vec{a}\n\\binom {a} {b}\n{a \\brack b}\n{a \\brace b}\n',NULL),(1561,2,1601070907,'atto_recordrtc','allowedtypes','both',NULL),(1562,2,1601070907,'atto_recordrtc','audiobitrate','128000',NULL),(1563,2,1601070907,'atto_recordrtc','videobitrate','2500000',NULL),(1564,2,1601070907,'atto_recordrtc','timelimit','120',NULL),(1565,2,1601070908,'atto_table','allowborders','0',NULL),(1566,2,1601070908,'atto_table','allowbackgroundcolour','0',NULL),(1567,2,1601070908,'atto_table','allowwidth','0',NULL),(1568,2,1601070908,'editor_tinymce','customtoolbar','wrap,formatselect,wrap,bold,italic,wrap,bullist,numlist,wrap,link,unlink,wrap,image\n\nundo,redo,wrap,underline,strikethrough,sub,sup,wrap,justifyleft,justifycenter,justifyright,wrap,outdent,indent,wrap,forecolor,backcolor,wrap,ltr,rtl\n\nfontselect,fontsizeselect,wrap,code,search,replace,wrap,nonbreaking,charmap,table,wrap,cleanup,removeformat,pastetext,pasteword,wrap,fullscreen',NULL),(1569,2,1601070908,'editor_tinymce','fontselectlist','Trebuchet=Trebuchet MS,Verdana,Arial,Helvetica,sans-serif;Arial=arial,helvetica,sans-serif;Courier New=courier new,courier,monospace;Georgia=georgia,times new roman,times,serif;Tahoma=tahoma,arial,helvetica,sans-serif;Times New Roman=times new roman,times,serif;Verdana=verdana,arial,helvetica,sans-serif;Impact=impact;Wingdings=wingdings',NULL),(1570,2,1601070908,'editor_tinymce','customconfig','',NULL),(1571,2,1601070908,'tinymce_moodleemoticon','requireemoticon','1',NULL),(1572,2,1601070908,'tinymce_spellchecker','spellengine','',NULL),(1573,2,1601070908,'tinymce_spellchecker','spelllanguagelist','+English=en,Danish=da,Dutch=nl,Finnish=fi,French=fr,German=de,Italian=it,Polish=pl,Portuguese=pt,Spanish=es,Swedish=sv',NULL),(1574,2,1601070908,NULL,'profileroles','5,4,3',NULL),(1575,2,1601070908,NULL,'calendar_exportsalt','FMJxZ70fIONGXHnFiVNIS0VYXNn9geoA3jgbu21ynGL8h4etWsY0Btk1Lqqu','DNkSJmwyf3omP4ArJYD1AGzXy1isgB2WvuGZ9ktxXMAAQFDjFz3VYUVxHACU'),(1576,2,1601070908,NULL,'coursecontact','3',NULL),(1577,2,1601070908,NULL,'frontpage','6',NULL),(1578,2,1601070908,NULL,'frontpageloggedin','6',NULL),(1579,2,1601070908,NULL,'maxcategorydepth','2',NULL),(1580,2,1601070908,NULL,'frontpagecourselimit','200',NULL),(1581,2,1601070908,NULL,'commentsperpage','15',NULL),(1582,2,1601070908,NULL,'defaultfrontpageroleid','8',NULL),(1583,2,1601070909,NULL,'messageinbound_enabled','0',NULL),(1584,2,1601070909,NULL,'messageinbound_mailbox','',NULL),(1585,2,1601070909,NULL,'messageinbound_domain','',NULL),(1586,2,1601070909,NULL,'messageinbound_host','',NULL),(1587,2,1601070909,NULL,'messageinbound_hostssl','ssl',NULL),(1588,2,1601070909,NULL,'messageinbound_hostuser','',NULL),(1589,2,1601070909,NULL,'messageinbound_hostpass','',NULL),(1590,2,1601070909,NULL,'enablemobilewebservice','0',NULL),(1591,2,1601070909,'tool_mobile','apppolicy','',NULL),(1592,2,1601071519,NULL,'enablewebservices','1','0');
/*!40000 ALTER TABLE `mdl_config_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_config_plugins`
--

DROP TABLE IF EXISTS `mdl_config_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_config_plugins` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `plugin` varchar(100) NOT NULL DEFAULT 'core',
  `name` varchar(100) NOT NULL DEFAULT '',
  `value` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_confplug_plunam_uix` (`plugin`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=1888 DEFAULT CHARSET=utf8 COMMENT='Moodle modules and plugins configuration variables';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_config_plugins`
--

LOCK TABLES `mdl_config_plugins` WRITE;
/*!40000 ALTER TABLE `mdl_config_plugins` DISABLE KEYS */;
INSERT INTO `mdl_config_plugins` VALUES (1,'question','multichoice_sortorder','1'),(2,'question','truefalse_sortorder','2'),(3,'question','match_sortorder','3'),(4,'question','shortanswer_sortorder','4'),(5,'question','numerical_sortorder','5'),(6,'question','essay_sortorder','6'),(7,'moodlecourse','visible','1'),(8,'moodlecourse','format','topics'),(9,'moodlecourse','maxsections','52'),(10,'moodlecourse','numsections','4'),(11,'moodlecourse','hiddensections','0'),(12,'moodlecourse','coursedisplay','0'),(13,'moodlecourse','courseenddateenabled','1'),(14,'moodlecourse','courseduration','31536000'),(15,'moodlecourse','lang',''),(16,'moodlecourse','newsitems','5'),(17,'moodlecourse','showgrades','1'),(18,'moodlecourse','showreports','0'),(19,'moodlecourse','maxbytes','0'),(20,'moodlecourse','enablecompletion','1'),(21,'moodlecourse','groupmode','0'),(22,'moodlecourse','groupmodeforce','0'),(23,'backup','loglifetime','30'),(24,'backup','backup_general_users','1'),(25,'backup','backup_general_users_locked',''),(26,'backup','backup_general_anonymize','0'),(27,'backup','backup_general_anonymize_locked',''),(28,'backup','backup_general_role_assignments','1'),(29,'backup','backup_general_role_assignments_locked',''),(30,'backup','backup_general_activities','1'),(31,'backup','backup_general_activities_locked',''),(32,'backup','backup_general_blocks','1'),(33,'backup','backup_general_blocks_locked',''),(34,'backup','backup_general_filters','1'),(35,'backup','backup_general_filters_locked',''),(36,'backup','backup_general_comments','1'),(37,'backup','backup_general_comments_locked',''),(38,'backup','backup_general_badges','1'),(39,'backup','backup_general_badges_locked',''),(40,'backup','backup_general_calendarevents','1'),(41,'backup','backup_general_calendarevents_locked',''),(42,'backup','backup_general_userscompletion','1'),(43,'backup','backup_general_userscompletion_locked',''),(44,'backup','backup_general_logs','0'),(45,'backup','backup_general_logs_locked',''),(46,'backup','backup_general_histories','0'),(47,'backup','backup_general_histories_locked',''),(48,'backup','backup_general_questionbank','1'),(49,'backup','backup_general_questionbank_locked',''),(50,'backup','backup_general_groups','1'),(51,'backup','backup_general_groups_locked',''),(52,'backup','backup_general_competencies','1'),(53,'backup','backup_general_competencies_locked',''),(54,'backup','import_general_maxresults','10'),(55,'backup','import_general_duplicate_admin_allowed','0'),(56,'backup','backup_import_activities','1'),(57,'backup','backup_import_activities_locked',''),(58,'backup','backup_import_blocks','1'),(59,'backup','backup_import_blocks_locked',''),(60,'backup','backup_import_filters','1'),(61,'backup','backup_import_filters_locked',''),(62,'backup','backup_import_calendarevents','1'),(63,'backup','backup_import_calendarevents_locked',''),(64,'backup','backup_import_questionbank','1'),(65,'backup','backup_import_questionbank_locked',''),(66,'backup','backup_import_groups','1'),(67,'backup','backup_import_groups_locked',''),(68,'backup','backup_import_competencies','1'),(69,'backup','backup_import_competencies_locked',''),(70,'backup','backup_auto_active','0'),(71,'backup','backup_auto_weekdays','0000000'),(72,'backup','backup_auto_hour','0'),(73,'backup','backup_auto_minute','0'),(74,'backup','backup_auto_storage','0'),(75,'backup','backup_auto_destination',''),(76,'backup','backup_auto_max_kept','1'),(77,'backup','backup_auto_delete_days','0'),(78,'backup','backup_auto_min_kept','0'),(79,'backup','backup_shortname','0'),(80,'backup','backup_auto_skip_hidden','1'),(81,'backup','backup_auto_skip_modif_days','30'),(82,'backup','backup_auto_skip_modif_prev','0'),(83,'backup','backup_auto_users','1'),(84,'backup','backup_auto_role_assignments','1'),(85,'backup','backup_auto_activities','1'),(86,'backup','backup_auto_blocks','1'),(87,'backup','backup_auto_filters','1'),(88,'backup','backup_auto_comments','1'),(89,'backup','backup_auto_badges','1'),(90,'backup','backup_auto_calendarevents','1'),(91,'backup','backup_auto_userscompletion','1'),(92,'backup','backup_auto_logs','0'),(93,'backup','backup_auto_histories','0'),(94,'backup','backup_auto_questionbank','1'),(95,'backup','backup_auto_groups','1'),(96,'backup','backup_auto_competencies','1'),(97,'restore','restore_general_users','1'),(98,'restore','restore_general_users_locked',''),(99,'restore','restore_general_enrolments','1'),(100,'restore','restore_general_enrolments_locked',''),(101,'restore','restore_general_role_assignments','1'),(102,'restore','restore_general_role_assignments_locked',''),(103,'restore','restore_general_activities','1'),(104,'restore','restore_general_activities_locked',''),(105,'restore','restore_general_blocks','1'),(106,'restore','restore_general_blocks_locked',''),(107,'restore','restore_general_filters','1'),(108,'restore','restore_general_filters_locked',''),(109,'restore','restore_general_comments','1'),(110,'restore','restore_general_comments_locked',''),(111,'restore','restore_general_badges','1'),(112,'restore','restore_general_badges_locked',''),(113,'restore','restore_general_calendarevents','1'),(114,'restore','restore_general_calendarevents_locked',''),(115,'restore','restore_general_userscompletion','1'),(116,'restore','restore_general_userscompletion_locked',''),(117,'restore','restore_general_logs','1'),(118,'restore','restore_general_logs_locked',''),(119,'restore','restore_general_histories','1'),(120,'restore','restore_general_histories_locked',''),(121,'restore','restore_general_groups','1'),(122,'restore','restore_general_groups_locked',''),(123,'restore','restore_general_competencies','1'),(124,'restore','restore_general_competencies_locked',''),(125,'restore','restore_merge_overwrite_conf','0'),(126,'restore','restore_merge_overwrite_conf_locked',''),(127,'restore','restore_merge_course_fullname','1'),(128,'restore','restore_merge_course_fullname_locked',''),(129,'restore','restore_merge_course_shortname','1'),(130,'restore','restore_merge_course_shortname_locked',''),(131,'restore','restore_merge_course_startdate','1'),(132,'restore','restore_merge_course_startdate_locked',''),(133,'restore','restore_replace_overwrite_conf','0'),(134,'restore','restore_replace_overwrite_conf_locked',''),(135,'restore','restore_replace_course_fullname','1'),(136,'restore','restore_replace_course_fullname_locked',''),(137,'restore','restore_replace_course_shortname','1'),(138,'restore','restore_replace_course_shortname_locked',''),(139,'restore','restore_replace_course_startdate','1'),(140,'restore','restore_replace_course_startdate_locked',''),(141,'restore','restore_replace_keep_roles_and_enrolments','0'),(142,'restore','restore_replace_keep_roles_and_enrolments_locked',''),(143,'restore','restore_replace_keep_groups_and_groupings','0'),(144,'restore','restore_replace_keep_groups_and_groupings_locked',''),(145,'analytics','predictionsprocessor','\\mlbackend_php\\processor'),(146,'analytics','timesplittings','\\core\\analytics\\time_splitting\\quarters_accum,\\core\\analytics\\time_splitting\\quarters,\\core\\analytics\\time_splitting\\single_range'),(147,'analytics','modeloutputdir','/bitnami/moodle/moodledata/models'),(148,'analytics','onlycli','1'),(149,'analytics','modeltimelimit','1200'),(150,'core_competency','enabled','1'),(151,'core_competency','pushcourseratingstouserplans','1'),(152,'cachestore_apcu','testperformance','0'),(153,'cachestore_memcached','testservers',''),(154,'cachestore_mongodb','testserver',''),(155,'cachestore_redis','test_server',''),(156,'cachestore_redis','test_password',''),(157,'question_preview','behaviour','deferredfeedback'),(158,'question_preview','correctness','1'),(159,'question_preview','marks','2'),(160,'question_preview','markdp','2'),(161,'question_preview','feedback','1'),(162,'question_preview','generalfeedback','1'),(163,'question_preview','rightanswer','1'),(164,'question_preview','history','0'),(165,'tool_task','enablerunnow','1'),(166,'theme_boost','preset','default.scss'),(167,'theme_boost','presetfiles',''),(168,'theme_boost','backgroundimage',''),(169,'theme_boost','brandcolor',''),(170,'theme_boost','scsspre',''),(171,'theme_boost','scss',''),(172,'theme_clean','invert','0'),(173,'theme_clean','logo',''),(174,'theme_clean','smalllogo',''),(175,'theme_clean','sitename','1'),(176,'theme_clean','customcss',''),(177,'theme_clean','footnote',''),(178,'theme_more','textcolor','#333366'),(179,'theme_more','linkcolor','#FF6500'),(180,'theme_more','bodybackground',''),(181,'theme_more','backgroundimage',''),(182,'theme_more','backgroundrepeat','repeat'),(183,'theme_more','backgroundposition','0'),(184,'theme_more','backgroundfixed','0'),(185,'theme_more','contentbackground','#FFFFFF'),(186,'theme_more','secondarybackground','#FFFFFF'),(187,'theme_more','invert','1'),(188,'theme_more','logo',''),(189,'theme_more','smalllogo',''),(190,'theme_more','sitename','1'),(191,'theme_more','customcss',''),(192,'theme_more','footnote',''),(193,'core_admin','logo',''),(194,'core_admin','logocompact',''),(195,'antivirus_clamav','version','2018120300'),(196,'availability_completion','version','2018120300'),(197,'availability_date','version','2018120300'),(198,'availability_grade','version','2018120300'),(199,'availability_group','version','2018120300'),(200,'availability_grouping','version','2018120300'),(201,'availability_profile','version','2018120300'),(202,'qtype_calculated','version','2018120300'),(203,'qtype_calculatedmulti','version','2018120300'),(204,'qtype_calculatedsimple','version','2018120300'),(205,'qtype_ddimageortext','version','2018120300'),(206,'qtype_ddmarker','version','2018120300'),(207,'qtype_ddwtos','version','2018120300'),(208,'qtype_description','version','2018120300'),(209,'qtype_essay','version','2018120300'),(210,'qtype_gapselect','version','2018120300'),(211,'qtype_match','version','2018120300'),(212,'qtype_missingtype','version','2018120300'),(213,'qtype_multianswer','version','2018120300'),(214,'qtype_multichoice','version','2018120300'),(215,'qtype_numerical','version','2018120300'),(216,'qtype_random','version','2018120300'),(217,'qtype_randomsamatch','version','2018120300'),(218,'qtype_shortanswer','version','2018120300'),(219,'qtype_truefalse','version','2018120300'),(220,'mod_assign','version','2018120300'),(221,'mod_assignment','version','2018120300'),(223,'mod_book','version','2018120300'),(224,'mod_chat','version','2018120300'),(225,'mod_choice','version','2018120300'),(226,'mod_data','version','2018120300'),(227,'mod_feedback','version','2018120300'),(229,'mod_folder','version','2018120300'),(231,'mod_forum','version','2018120300'),(232,'mod_glossary','version','2018120300'),(233,'mod_imscp','version','2018120300'),(235,'mod_label','version','2018120300'),(236,'mod_lesson','version','2018120300'),(237,'mod_lti','version','2018120300'),(238,'mod_page','version','2018120300'),(240,'mod_quiz','version','2018120300'),(241,'mod_resource','version','2018120300'),(242,'mod_scorm','version','2018120300'),(243,'mod_survey','version','2018120300'),(245,'mod_url','version','2018120300'),(247,'mod_wiki','version','2018120300'),(249,'mod_workshop','version','2018120300'),(250,'auth_cas','version','2018120300'),(252,'auth_db','version','2018120300'),(254,'auth_email','version','2018120300'),(255,'auth_ldap','version','2018120300'),(257,'auth_lti','version','2018120300'),(258,'auth_manual','version','2018120300'),(259,'auth_mnet','version','2018120300'),(261,'auth_nologin','version','2018120300'),(262,'auth_none','version','2018120300'),(263,'auth_oauth2','version','2018120300'),(264,'auth_shibboleth','version','2018120300'),(266,'auth_webservice','version','2018120300'),(267,'calendartype_gregorian','version','2018120300'),(268,'enrol_category','version','2018120300'),(270,'enrol_cohort','version','2018120300'),(271,'enrol_database','version','2018120300'),(273,'enrol_flatfile','version','2018120300'),(275,'enrol_flatfile','map_1','manager'),(276,'enrol_flatfile','map_2','coursecreator'),(277,'enrol_flatfile','map_3','editingteacher'),(278,'enrol_flatfile','map_4','teacher'),(279,'enrol_flatfile','map_5','student'),(280,'enrol_flatfile','map_6','guest'),(281,'enrol_flatfile','map_7','user'),(282,'enrol_flatfile','map_8','frontpage'),(283,'enrol_guest','version','2018120300'),(284,'enrol_imsenterprise','version','2018120300'),(286,'enrol_ldap','version','2018120300'),(288,'enrol_lti','version','2018120300'),(289,'enrol_manual','version','2018120300'),(291,'enrol_meta','version','2018120300'),(293,'enrol_mnet','version','2018120300'),(294,'enrol_paypal','version','2018120300'),(295,'enrol_self','version','2018120300'),(297,'message_airnotifier','version','2018120300'),(299,'message','airnotifier_provider_enrol_flatfile_flatfile_enrolment_permitted','permitted'),(300,'message','airnotifier_provider_enrol_imsenterprise_imsenterprise_enrolment_permitted','permitted'),(301,'message','airnotifier_provider_enrol_manual_expiry_notification_permitted','permitted'),(302,'message','airnotifier_provider_enrol_paypal_paypal_enrolment_permitted','permitted'),(303,'message','airnotifier_provider_enrol_self_expiry_notification_permitted','permitted'),(304,'message','airnotifier_provider_mod_assign_assign_notification_permitted','permitted'),(305,'message','airnotifier_provider_mod_assignment_assignment_updates_permitted','permitted'),(306,'message','airnotifier_provider_mod_feedback_submission_permitted','permitted'),(307,'message','airnotifier_provider_mod_feedback_message_permitted','permitted'),(308,'message','airnotifier_provider_mod_forum_posts_permitted','permitted'),(309,'message','airnotifier_provider_mod_forum_digests_permitted','permitted'),(310,'message','airnotifier_provider_mod_lesson_graded_essay_permitted','permitted'),(311,'message','airnotifier_provider_mod_quiz_submission_permitted','permitted'),(312,'message','airnotifier_provider_mod_quiz_confirmation_permitted','permitted'),(313,'message','airnotifier_provider_mod_quiz_attempt_overdue_permitted','permitted'),(314,'message','airnotifier_provider_moodle_notices_permitted','permitted'),(315,'message','airnotifier_provider_moodle_errors_permitted','permitted'),(316,'message','airnotifier_provider_moodle_availableupdate_permitted','permitted'),(317,'message','airnotifier_provider_moodle_instantmessage_permitted','permitted'),(318,'message','airnotifier_provider_moodle_backup_permitted','permitted'),(319,'message','airnotifier_provider_moodle_courserequested_permitted','permitted'),(320,'message','airnotifier_provider_moodle_courserequestapproved_permitted','permitted'),(321,'message','airnotifier_provider_moodle_courserequestrejected_permitted','permitted'),(322,'message','airnotifier_provider_moodle_badgerecipientnotice_permitted','permitted'),(323,'message','airnotifier_provider_moodle_badgecreatornotice_permitted','permitted'),(324,'message','airnotifier_provider_moodle_competencyplancomment_permitted','permitted'),(325,'message','airnotifier_provider_moodle_competencyusercompcomment_permitted','permitted'),(326,'message','airnotifier_provider_moodle_insights_permitted','permitted'),(327,'message','airnotifier_provider_moodle_messagecontactrequests_permitted','permitted'),(328,'message_email','version','2018120300'),(330,'message','email_provider_enrol_flatfile_flatfile_enrolment_permitted','permitted'),(331,'message','message_provider_enrol_flatfile_flatfile_enrolment_loggedin','email'),(332,'message','message_provider_enrol_flatfile_flatfile_enrolment_loggedoff','email'),(333,'message','email_provider_enrol_imsenterprise_imsenterprise_enrolment_permitted','permitted'),(334,'message','message_provider_enrol_imsenterprise_imsenterprise_enrolment_loggedin','email'),(335,'message','message_provider_enrol_imsenterprise_imsenterprise_enrolment_loggedoff','email'),(336,'message','email_provider_enrol_manual_expiry_notification_permitted','permitted'),(337,'message','message_provider_enrol_manual_expiry_notification_loggedin','email'),(338,'message','message_provider_enrol_manual_expiry_notification_loggedoff','email'),(339,'message','email_provider_enrol_paypal_paypal_enrolment_permitted','permitted'),(340,'message','message_provider_enrol_paypal_paypal_enrolment_loggedin','email'),(341,'message','message_provider_enrol_paypal_paypal_enrolment_loggedoff','email'),(342,'message','email_provider_enrol_self_expiry_notification_permitted','permitted'),(343,'message','message_provider_enrol_self_expiry_notification_loggedin','email'),(344,'message','message_provider_enrol_self_expiry_notification_loggedoff','email'),(345,'message','email_provider_mod_assign_assign_notification_permitted','permitted'),(346,'message','message_provider_mod_assign_assign_notification_loggedin','email'),(347,'message','message_provider_mod_assign_assign_notification_loggedoff','email'),(348,'message','email_provider_mod_assignment_assignment_updates_permitted','permitted'),(349,'message','message_provider_mod_assignment_assignment_updates_loggedin','email'),(350,'message','message_provider_mod_assignment_assignment_updates_loggedoff','email'),(351,'message','email_provider_mod_feedback_submission_permitted','permitted'),(352,'message','message_provider_mod_feedback_submission_loggedin','email'),(353,'message','message_provider_mod_feedback_submission_loggedoff','email'),(354,'message','email_provider_mod_feedback_message_permitted','permitted'),(355,'message','message_provider_mod_feedback_message_loggedin','email'),(356,'message','message_provider_mod_feedback_message_loggedoff','email'),(357,'message','email_provider_mod_forum_posts_permitted','permitted'),(358,'message','message_provider_mod_forum_posts_loggedin','email'),(359,'message','message_provider_mod_forum_posts_loggedoff','email'),(360,'message','email_provider_mod_forum_digests_permitted','permitted'),(361,'message','message_provider_mod_forum_digests_loggedin','email'),(362,'message','message_provider_mod_forum_digests_loggedoff','email'),(363,'message','email_provider_mod_lesson_graded_essay_permitted','permitted'),(364,'message','message_provider_mod_lesson_graded_essay_loggedin','email'),(365,'message','message_provider_mod_lesson_graded_essay_loggedoff','email'),(366,'message','email_provider_mod_quiz_submission_permitted','permitted'),(367,'message','message_provider_mod_quiz_submission_loggedin','email'),(368,'message','message_provider_mod_quiz_submission_loggedoff','email'),(369,'message','email_provider_mod_quiz_confirmation_permitted','permitted'),(370,'message','message_provider_mod_quiz_confirmation_loggedin','email'),(371,'message','message_provider_mod_quiz_confirmation_loggedoff','email'),(372,'message','email_provider_mod_quiz_attempt_overdue_permitted','permitted'),(373,'message','message_provider_mod_quiz_attempt_overdue_loggedin','email'),(374,'message','message_provider_mod_quiz_attempt_overdue_loggedoff','email'),(375,'message','email_provider_moodle_notices_permitted','permitted'),(376,'message','message_provider_moodle_notices_loggedin','email'),(377,'message','message_provider_moodle_notices_loggedoff','email'),(378,'message','email_provider_moodle_errors_permitted','permitted'),(379,'message','message_provider_moodle_errors_loggedin','email'),(380,'message','message_provider_moodle_errors_loggedoff','email'),(381,'message','email_provider_moodle_availableupdate_permitted','permitted'),(382,'message','message_provider_moodle_availableupdate_loggedin','email'),(383,'message','message_provider_moodle_availableupdate_loggedoff','email'),(384,'message','email_provider_moodle_instantmessage_permitted','permitted'),(385,'message','message_provider_moodle_instantmessage_loggedoff','popup,email'),(386,'message','email_provider_moodle_backup_permitted','permitted'),(387,'message','message_provider_moodle_backup_loggedin','email'),(388,'message','message_provider_moodle_backup_loggedoff','email'),(389,'message','email_provider_moodle_courserequested_permitted','permitted'),(390,'message','message_provider_moodle_courserequested_loggedin','email'),(391,'message','message_provider_moodle_courserequested_loggedoff','email'),(392,'message','email_provider_moodle_courserequestapproved_permitted','permitted'),(393,'message','message_provider_moodle_courserequestapproved_loggedin','email'),(394,'message','message_provider_moodle_courserequestapproved_loggedoff','email'),(395,'message','email_provider_moodle_courserequestrejected_permitted','permitted'),(396,'message','message_provider_moodle_courserequestrejected_loggedin','email'),(397,'message','message_provider_moodle_courserequestrejected_loggedoff','email'),(398,'message','email_provider_moodle_badgerecipientnotice_permitted','permitted'),(399,'message','message_provider_moodle_badgerecipientnotice_loggedoff','popup,email'),(400,'message','email_provider_moodle_badgecreatornotice_permitted','permitted'),(401,'message','message_provider_moodle_badgecreatornotice_loggedoff','email'),(402,'message','email_provider_moodle_competencyplancomment_permitted','permitted'),(403,'message','message_provider_moodle_competencyplancomment_loggedin','email'),(404,'message','message_provider_moodle_competencyplancomment_loggedoff','email'),(405,'message','email_provider_moodle_competencyusercompcomment_permitted','permitted'),(406,'message','message_provider_moodle_competencyusercompcomment_loggedin','email'),(407,'message','message_provider_moodle_competencyusercompcomment_loggedoff','email'),(408,'message','email_provider_moodle_insights_permitted','permitted'),(409,'message','message_provider_moodle_insights_loggedin','email'),(410,'message','message_provider_moodle_insights_loggedoff','email'),(411,'message','email_provider_moodle_messagecontactrequests_permitted','permitted'),(412,'message','message_provider_moodle_messagecontactrequests_loggedoff','popup,email'),(413,'message_jabber','version','2018120300'),(415,'message','jabber_provider_enrol_flatfile_flatfile_enrolment_permitted','permitted'),(416,'message','jabber_provider_enrol_imsenterprise_imsenterprise_enrolment_permitted','permitted'),(417,'message','jabber_provider_enrol_manual_expiry_notification_permitted','permitted'),(418,'message','jabber_provider_enrol_paypal_paypal_enrolment_permitted','permitted'),(419,'message','jabber_provider_enrol_self_expiry_notification_permitted','permitted'),(420,'message','jabber_provider_mod_assign_assign_notification_permitted','permitted'),(421,'message','jabber_provider_mod_assignment_assignment_updates_permitted','permitted'),(422,'message','jabber_provider_mod_feedback_submission_permitted','permitted'),(423,'message','jabber_provider_mod_feedback_message_permitted','permitted'),(424,'message','jabber_provider_mod_forum_posts_permitted','permitted'),(425,'message','jabber_provider_mod_forum_digests_permitted','permitted'),(426,'message','jabber_provider_mod_lesson_graded_essay_permitted','permitted'),(427,'message','jabber_provider_mod_quiz_submission_permitted','permitted'),(428,'message','jabber_provider_mod_quiz_confirmation_permitted','permitted'),(429,'message','jabber_provider_mod_quiz_attempt_overdue_permitted','permitted'),(430,'message','jabber_provider_moodle_notices_permitted','permitted'),(431,'message','jabber_provider_moodle_errors_permitted','permitted'),(432,'message','jabber_provider_moodle_availableupdate_permitted','permitted'),(433,'message','jabber_provider_moodle_instantmessage_permitted','permitted'),(434,'message','jabber_provider_moodle_backup_permitted','permitted'),(435,'message','jabber_provider_moodle_courserequested_permitted','permitted'),(436,'message','jabber_provider_moodle_courserequestapproved_permitted','permitted'),(437,'message','jabber_provider_moodle_courserequestrejected_permitted','permitted'),(438,'message','jabber_provider_moodle_badgerecipientnotice_permitted','permitted'),(439,'message','jabber_provider_moodle_badgecreatornotice_permitted','permitted'),(440,'message','jabber_provider_moodle_competencyplancomment_permitted','permitted'),(441,'message','jabber_provider_moodle_competencyusercompcomment_permitted','permitted'),(442,'message','jabber_provider_moodle_insights_permitted','permitted'),(443,'message','jabber_provider_moodle_messagecontactrequests_permitted','permitted'),(444,'message_popup','version','2018120300'),(446,'message','popup_provider_enrol_flatfile_flatfile_enrolment_permitted','permitted'),(447,'message','popup_provider_enrol_imsenterprise_imsenterprise_enrolment_permitted','permitted'),(448,'message','popup_provider_enrol_manual_expiry_notification_permitted','permitted'),(449,'message','popup_provider_enrol_paypal_paypal_enrolment_permitted','permitted'),(450,'message','popup_provider_enrol_self_expiry_notification_permitted','permitted'),(451,'message','popup_provider_mod_assign_assign_notification_permitted','permitted'),(452,'message','popup_provider_mod_assignment_assignment_updates_permitted','permitted'),(453,'message','popup_provider_mod_feedback_submission_permitted','permitted'),(454,'message','popup_provider_mod_feedback_message_permitted','permitted'),(455,'message','popup_provider_mod_forum_posts_permitted','permitted'),(456,'message','popup_provider_mod_forum_digests_permitted','permitted'),(457,'message','popup_provider_mod_lesson_graded_essay_permitted','permitted'),(458,'message','popup_provider_mod_quiz_submission_permitted','permitted'),(459,'message','popup_provider_mod_quiz_confirmation_permitted','permitted'),(460,'message','popup_provider_mod_quiz_attempt_overdue_permitted','permitted'),(461,'message','popup_provider_moodle_notices_permitted','permitted'),(462,'message','popup_provider_moodle_errors_permitted','permitted'),(463,'message','popup_provider_moodle_availableupdate_permitted','permitted'),(464,'message','popup_provider_moodle_instantmessage_permitted','permitted'),(465,'message','message_provider_moodle_instantmessage_loggedin','popup'),(466,'message','popup_provider_moodle_backup_permitted','permitted'),(467,'message','popup_provider_moodle_courserequested_permitted','permitted'),(468,'message','popup_provider_moodle_courserequestapproved_permitted','permitted'),(469,'message','popup_provider_moodle_courserequestrejected_permitted','permitted'),(470,'message','popup_provider_moodle_badgerecipientnotice_permitted','permitted'),(471,'message','message_provider_moodle_badgerecipientnotice_loggedin','popup'),(472,'message','popup_provider_moodle_badgecreatornotice_permitted','permitted'),(473,'message','popup_provider_moodle_competencyplancomment_permitted','permitted'),(474,'message','popup_provider_moodle_competencyusercompcomment_permitted','permitted'),(475,'message','popup_provider_moodle_insights_permitted','permitted'),(476,'message','popup_provider_moodle_messagecontactrequests_permitted','permitted'),(477,'message','message_provider_moodle_messagecontactrequests_loggedin','popup'),(478,'block_activity_modules','version','2018120300'),(479,'block_activity_results','version','2018120300'),(480,'block_admin_bookmarks','version','2018120300'),(481,'block_badges','version','2018120300'),(482,'block_blog_menu','version','2018120300'),(483,'block_blog_recent','version','2018120300'),(484,'block_blog_tags','version','2018120300'),(485,'block_calendar_month','version','2018120300'),(486,'block_calendar_upcoming','version','2018120300'),(487,'block_comments','version','2018120300'),(488,'block_community','version','2018120300'),(489,'block_completionstatus','version','2018120300'),(490,'block_course_list','version','2018120300'),(491,'block_course_summary','version','2018120300'),(492,'block_feedback','version','2018120300'),(494,'block_globalsearch','version','2018120300'),(495,'block_glossary_random','version','2018120300'),(496,'block_html','version','2018120300'),(497,'block_login','version','2018120300'),(498,'block_lp','version','2018120300'),(499,'block_mentees','version','2018120300'),(500,'block_mnet_hosts','version','2018120300'),(501,'block_myoverview','version','2018120300'),(502,'block_myprofile','version','2018120300'),(503,'block_navigation','version','2018120300'),(504,'block_news_items','version','2018120300'),(505,'block_online_users','version','2018120300'),(506,'block_participants','version','2018120300'),(507,'block_private_files','version','2018120300'),(508,'block_quiz_results','version','2018120300'),(510,'block_recent_activity','version','2018120300'),(511,'block_recentlyaccessedcourses','version','2018120300'),(513,'block_recentlyaccesseditems','version','2018120301'),(514,'block_rss_client','version','2018120300'),(515,'block_search_forums','version','2018120300'),(516,'block_section_links','version','2018120300'),(517,'block_selfcompletion','version','2018120300'),(518,'block_settings','version','2018120300'),(519,'block_site_main_menu','version','2018120300'),(520,'block_social_activities','version','2018120300'),(521,'block_starredcourses','version','2018120300'),(522,'block_tag_flickr','version','2018120300'),(523,'block_tag_youtube','version','2018120300'),(525,'block_tags','version','2018120300'),(526,'block_timeline','version','2018120300'),(528,'media_html5audio','version','2018120300'),(529,'media_html5video','version','2018120300'),(530,'media_swf','version','2018120300'),(531,'media_videojs','version','2018120300'),(532,'media_vimeo','version','2018120300'),(533,'media_youtube','version','2018120300'),(534,'filter_activitynames','version','2018120300'),(536,'filter_algebra','version','2018120300'),(537,'filter_censor','version','2018120300'),(538,'filter_data','version','2018120300'),(540,'filter_emailprotect','version','2018120300'),(541,'filter_emoticon','version','2018120300'),(542,'filter_glossary','version','2018120300'),(544,'filter_mathjaxloader','version','2018120300'),(546,'filter_mediaplugin','version','2018120300'),(548,'filter_multilang','version','2018120300'),(549,'filter_tex','version','2018120300'),(551,'filter_tidy','version','2018120300'),(552,'filter_urltolink','version','2018120300'),(553,'editor_atto','version','2018120300'),(555,'editor_textarea','version','2018120300'),(556,'editor_tinymce','version','2018120300'),(557,'format_singleactivity','version','2018120300'),(558,'format_social','version','2018120300'),(559,'format_topics','version','2018120300'),(560,'format_weeks','version','2018120300'),(561,'dataformat_csv','version','2018120300'),(562,'dataformat_excel','version','2018120300'),(563,'dataformat_html','version','2018120300'),(564,'dataformat_json','version','2018120300'),(565,'dataformat_ods','version','2018120300'),(566,'profilefield_checkbox','version','2018120300'),(567,'profilefield_datetime','version','2018120300'),(568,'profilefield_menu','version','2018120300'),(569,'profilefield_text','version','2018120300'),(570,'profilefield_textarea','version','2018120300'),(571,'report_backups','version','2018120300'),(572,'report_competency','version','2018120300'),(573,'report_completion','version','2018120300'),(575,'report_configlog','version','2018120300'),(576,'report_courseoverview','version','2018120300'),(577,'report_eventlist','version','2018120300'),(578,'report_insights','version','2018120300'),(579,'report_log','version','2018120300'),(581,'report_loglive','version','2018120300'),(582,'report_outline','version','2018120300'),(584,'report_participation','version','2018120300'),(586,'report_performance','version','2018120300'),(587,'report_progress','version','2018120300'),(589,'report_questioninstances','version','2018120300'),(590,'report_security','version','2018120300'),(591,'report_stats','version','2018120300'),(593,'report_usersessions','version','2018120300'),(594,'gradeexport_ods','version','2018120300'),(595,'gradeexport_txt','version','2018120300'),(596,'gradeexport_xls','version','2018120300'),(597,'gradeexport_xml','version','2018120300'),(598,'gradeimport_csv','version','2018120300'),(599,'gradeimport_direct','version','2018120300'),(600,'gradeimport_xml','version','2018120300'),(601,'gradereport_grader','version','2018120300'),(602,'gradereport_history','version','2018120300'),(603,'gradereport_outcomes','version','2018120300'),(604,'gradereport_overview','version','2018120300'),(605,'gradereport_singleview','version','2018120300'),(606,'gradereport_user','version','2018120300'),(607,'gradingform_guide','version','2018120300'),(608,'gradingform_rubric','version','2018120300'),(609,'mlbackend_php','version','2018120300'),(610,'mlbackend_python','version','2018120300'),(611,'mnetservice_enrol','version','2018120300'),(612,'webservice_rest','version','2018120300'),(613,'webservice_soap','version','2018120300'),(614,'webservice_xmlrpc','version','2018120300'),(615,'repository_areafiles','version','2018120300'),(617,'areafiles','enablecourseinstances','0'),(618,'areafiles','enableuserinstances','0'),(619,'repository_boxnet','version','2018120300'),(620,'repository_coursefiles','version','2018120300'),(621,'repository_dropbox','version','2018120300'),(622,'repository_equella','version','2018120300'),(623,'repository_filesystem','version','2018120300'),(624,'repository_flickr','version','2018120300'),(625,'repository_flickr_public','version','2018120300'),(626,'repository_googledocs','version','2018120300'),(627,'repository_local','version','2018120300'),(629,'local','enablecourseinstances','0'),(630,'local','enableuserinstances','0'),(631,'repository_merlot','version','2018120300'),(632,'repository_nextcloud','version','2018120300'),(633,'repository_onedrive','version','2018120300'),(634,'repository_picasa','version','2018120300'),(635,'repository_recent','version','2018120300'),(637,'recent','enablecourseinstances','0'),(638,'recent','enableuserinstances','0'),(639,'repository_s3','version','2018120300'),(640,'repository_skydrive','version','2018120300'),(641,'repository_upload','version','2018120300'),(643,'upload','enablecourseinstances','0'),(644,'upload','enableuserinstances','0'),(645,'repository_url','version','2018120300'),(647,'url','enablecourseinstances','0'),(648,'url','enableuserinstances','0'),(649,'repository_user','version','2018120300'),(651,'user','enablecourseinstances','0'),(652,'user','enableuserinstances','0'),(653,'repository_webdav','version','2018120300'),(654,'repository_wikimedia','version','2018120300'),(656,'wikimedia','enablecourseinstances','0'),(657,'wikimedia','enableuserinstances','0'),(658,'repository_youtube','version','2018120300'),(660,'portfolio_boxnet','version','2018120300'),(661,'portfolio_download','version','2018120300'),(662,'portfolio_flickr','version','2018120300'),(663,'portfolio_googledocs','version','2018120300'),(664,'portfolio_mahara','version','2018120300'),(665,'portfolio_picasa','version','2018120300'),(666,'search_simpledb','version','2018120300'),(668,'search_solr','version','2018120300'),(669,'qbehaviour_adaptive','version','2018120300'),(670,'qbehaviour_adaptivenopenalty','version','2018120300'),(671,'qbehaviour_deferredcbm','version','2018120300'),(672,'qbehaviour_deferredfeedback','version','2018120300'),(673,'qbehaviour_immediatecbm','version','2018120300'),(674,'qbehaviour_immediatefeedback','version','2018120300'),(675,'qbehaviour_informationitem','version','2018120300'),(676,'qbehaviour_interactive','version','2018120300'),(677,'qbehaviour_interactivecountback','version','2018120300'),(678,'qbehaviour_manualgraded','version','2018120300'),(680,'question','disabledbehaviours','manualgraded'),(681,'qbehaviour_missing','version','2018120300'),(682,'qformat_aiken','version','2018120300'),(683,'qformat_blackboard_six','version','2018120300'),(684,'qformat_examview','version','2018120300'),(685,'qformat_gift','version','2018120300'),(686,'qformat_missingword','version','2018120300'),(687,'qformat_multianswer','version','2018120300'),(688,'qformat_webct','version','2018120300'),(689,'qformat_xhtml','version','2018120300'),(690,'qformat_xml','version','2018120300'),(691,'tool_analytics','version','2018120300'),(692,'tool_availabilityconditions','version','2018120300'),(693,'tool_behat','version','2018120300'),(694,'tool_capability','version','2018120300'),(695,'tool_cohortroles','version','2018120300'),(696,'tool_customlang','version','2018120300'),(698,'tool_dataprivacy','version','2018120300'),(699,'message','airnotifier_provider_tool_dataprivacy_contactdataprotectionofficer_permitted','permitted'),(700,'message','email_provider_tool_dataprivacy_contactdataprotectionofficer_permitted','permitted'),(701,'message','jabber_provider_tool_dataprivacy_contactdataprotectionofficer_permitted','permitted'),(702,'message','popup_provider_tool_dataprivacy_contactdataprotectionofficer_permitted','permitted'),(703,'message','message_provider_tool_dataprivacy_contactdataprotectionofficer_loggedin','email,popup'),(704,'message','message_provider_tool_dataprivacy_contactdataprotectionofficer_loggedoff','email,popup'),(705,'message','airnotifier_provider_tool_dataprivacy_datarequestprocessingresults_permitted','permitted'),(706,'message','email_provider_tool_dataprivacy_datarequestprocessingresults_permitted','permitted'),(707,'message','jabber_provider_tool_dataprivacy_datarequestprocessingresults_permitted','permitted'),(708,'message','popup_provider_tool_dataprivacy_datarequestprocessingresults_permitted','permitted'),(709,'message','message_provider_tool_dataprivacy_datarequestprocessingresults_loggedin','email,popup'),(710,'message','message_provider_tool_dataprivacy_datarequestprocessingresults_loggedoff','email,popup'),(711,'message','airnotifier_provider_tool_dataprivacy_notifyexceptions_permitted','permitted'),(712,'message','email_provider_tool_dataprivacy_notifyexceptions_permitted','permitted'),(713,'message','jabber_provider_tool_dataprivacy_notifyexceptions_permitted','permitted'),(714,'message','popup_provider_tool_dataprivacy_notifyexceptions_permitted','permitted'),(715,'message','message_provider_tool_dataprivacy_notifyexceptions_loggedin','email'),(716,'message','message_provider_tool_dataprivacy_notifyexceptions_loggedoff','email'),(717,'tool_dbtransfer','version','2018120300'),(718,'tool_filetypes','version','2018120300'),(719,'tool_generator','version','2018120300'),(720,'tool_health','version','2018120300'),(721,'tool_httpsreplace','version','2018120300'),(722,'tool_innodb','version','2018120300'),(723,'tool_installaddon','version','2018120300'),(724,'tool_langimport','version','2018120300'),(725,'tool_log','version','2018120300'),(727,'tool_log','enabled_stores','logstore_standard'),(728,'tool_lp','version','2018120300'),(729,'tool_lpimportcsv','version','2018120300'),(730,'tool_lpmigrate','version','2018120300'),(731,'tool_messageinbound','version','2018120300'),(732,'message','airnotifier_provider_tool_messageinbound_invalidrecipienthandler_permitted','permitted'),(733,'message','email_provider_tool_messageinbound_invalidrecipienthandler_permitted','permitted'),(734,'message','jabber_provider_tool_messageinbound_invalidrecipienthandler_permitted','permitted'),(735,'message','popup_provider_tool_messageinbound_invalidrecipienthandler_permitted','permitted'),(736,'message','message_provider_tool_messageinbound_invalidrecipienthandler_loggedin','email'),(737,'message','message_provider_tool_messageinbound_invalidrecipienthandler_loggedoff','email'),(738,'message','airnotifier_provider_tool_messageinbound_messageprocessingerror_permitted','permitted'),(739,'message','email_provider_tool_messageinbound_messageprocessingerror_permitted','permitted'),(740,'message','jabber_provider_tool_messageinbound_messageprocessingerror_permitted','permitted'),(741,'message','popup_provider_tool_messageinbound_messageprocessingerror_permitted','permitted'),(742,'message','message_provider_tool_messageinbound_messageprocessingerror_loggedin','email'),(743,'message','message_provider_tool_messageinbound_messageprocessingerror_loggedoff','email'),(744,'message','airnotifier_provider_tool_messageinbound_messageprocessingsuccess_permitted','permitted'),(745,'message','email_provider_tool_messageinbound_messageprocessingsuccess_permitted','permitted'),(746,'message','jabber_provider_tool_messageinbound_messageprocessingsuccess_permitted','permitted'),(747,'message','popup_provider_tool_messageinbound_messageprocessingsuccess_permitted','permitted'),(748,'message','message_provider_tool_messageinbound_messageprocessingsuccess_loggedin','email'),(749,'message','message_provider_tool_messageinbound_messageprocessingsuccess_loggedoff','email'),(750,'tool_mobile','version','2018120300'),(751,'tool_monitor','version','2018120300'),(752,'message','airnotifier_provider_tool_monitor_notification_permitted','permitted'),(753,'message','email_provider_tool_monitor_notification_permitted','permitted'),(754,'message','jabber_provider_tool_monitor_notification_permitted','permitted'),(755,'message','popup_provider_tool_monitor_notification_permitted','permitted'),(756,'message','message_provider_tool_monitor_notification_loggedin','email'),(757,'message','message_provider_tool_monitor_notification_loggedoff','email'),(758,'tool_multilangupgrade','version','2018120300'),(759,'tool_oauth2','version','2018120300'),(760,'tool_phpunit','version','2018120300'),(761,'tool_policy','version','2018120300'),(762,'tool_profiling','version','2018120300'),(763,'tool_recyclebin','version','2018120300'),(764,'tool_replace','version','2018120300'),(765,'tool_spamcleaner','version','2018120300'),(766,'tool_task','version','2018120300'),(767,'tool_templatelibrary','version','2018120300'),(768,'tool_unsuproles','version','2018120300'),(770,'tool_uploadcourse','version','2018120300'),(771,'tool_uploaduser','version','2018120300'),(772,'tool_usertours','version','2018120300'),(774,'tool_xmldb','version','2018120300'),(775,'cachestore_apcu','version','2018120300'),(776,'cachestore_file','version','2018120300'),(777,'cachestore_memcached','version','2018120300'),(778,'cachestore_mongodb','version','2018120300'),(779,'cachestore_redis','version','2018120300'),(780,'cachestore_session','version','2018120300'),(781,'cachestore_static','version','2018120300'),(782,'cachelock_file','version','2018120300'),(783,'fileconverter_googledrive','version','2018120300'),(784,'fileconverter_unoconv','version','2018120300'),(786,'theme_boost','version','2018120300'),(787,'theme_bootstrapbase','version','2018120300'),(788,'theme_clean','version','2018120300'),(789,'theme_more','version','2018120300'),(791,'assignsubmission_comments','version','2018120300'),(793,'assignsubmission_file','sortorder','1'),(794,'assignsubmission_comments','sortorder','2'),(795,'assignsubmission_onlinetext','sortorder','0'),(796,'assignsubmission_file','version','2018120300'),(797,'assignsubmission_onlinetext','version','2018120300'),(799,'assignfeedback_comments','version','2018120300'),(801,'assignfeedback_comments','sortorder','0'),(802,'assignfeedback_editpdf','sortorder','1'),(803,'assignfeedback_file','sortorder','3'),(804,'assignfeedback_offline','sortorder','2'),(805,'assignfeedback_editpdf','version','2018120300'),(807,'assignfeedback_file','version','2018120300'),(809,'assignfeedback_offline','version','2018120300'),(810,'assignment_offline','version','2018120300'),(811,'assignment_online','version','2018120300'),(812,'assignment_upload','version','2018120300'),(813,'assignment_uploadsingle','version','2018120300'),(814,'booktool_exportimscp','version','2018120300'),(815,'booktool_importhtml','version','2018120300'),(816,'booktool_print','version','2018120300'),(817,'datafield_checkbox','version','2018120300'),(818,'datafield_date','version','2018120300'),(819,'datafield_file','version','2018120300'),(820,'datafield_latlong','version','2018120300'),(821,'datafield_menu','version','2018120300'),(822,'datafield_multimenu','version','2018120300'),(823,'datafield_number','version','2018120300'),(824,'datafield_picture','version','2018120300'),(825,'datafield_radiobutton','version','2018120300'),(826,'datafield_text','version','2018120300'),(827,'datafield_textarea','version','2018120300'),(828,'datafield_url','version','2018120300'),(829,'datapreset_imagegallery','version','2018120300'),(830,'ltiservice_gradebookservices','version','2018120300'),(831,'ltiservice_memberships','version','2018120300'),(832,'ltiservice_profile','version','2018120300'),(833,'ltiservice_toolproxy','version','2018120300'),(834,'ltiservice_toolsettings','version','2018120300'),(835,'quiz_grading','version','2018120300'),(837,'quiz_overview','version','2018120300'),(839,'quiz_responses','version','2018120300'),(841,'quiz_statistics','version','2018120300'),(843,'quizaccess_delaybetweenattempts','version','2018120300'),(844,'quizaccess_ipaddress','version','2018120300'),(845,'quizaccess_numattempts','version','2018120300'),(846,'quizaccess_offlineattempts','version','2018120300'),(847,'quizaccess_openclosedate','version','2018120300'),(848,'quizaccess_password','version','2018120300'),(849,'quizaccess_safebrowser','version','2018120300'),(850,'quizaccess_securewindow','version','2018120300'),(851,'quizaccess_timelimit','version','2018120300'),(852,'scormreport_basic','version','2018120300'),(853,'scormreport_graphs','version','2018120300'),(854,'scormreport_interactions','version','2018120300'),(855,'scormreport_objectives','version','2018120300'),(856,'workshopform_accumulative','version','2018120300'),(858,'workshopform_comments','version','2018120300'),(860,'workshopform_numerrors','version','2018120300'),(862,'workshopform_rubric','version','2018120300'),(864,'workshopallocation_manual','version','2018120300'),(865,'workshopallocation_random','version','2018120300'),(866,'workshopallocation_scheduled','version','2018120300'),(867,'workshopeval_best','version','2018120300'),(868,'atto_accessibilitychecker','version','2018120300'),(869,'atto_accessibilityhelper','version','2018120300'),(870,'atto_align','version','2018120300'),(871,'atto_backcolor','version','2018120300'),(872,'atto_bold','version','2018120300'),(873,'atto_charmap','version','2018120300'),(874,'atto_clear','version','2018120300'),(875,'atto_collapse','version','2018120300'),(876,'atto_emoticon','version','2018120300'),(877,'atto_equation','version','2018120300'),(878,'atto_fontcolor','version','2018120300'),(879,'atto_html','version','2018120300'),(880,'atto_image','version','2018120300'),(881,'atto_indent','version','2018120300'),(882,'atto_italic','version','2018120300'),(883,'atto_link','version','2018120300'),(884,'atto_managefiles','version','2018120300'),(885,'atto_media','version','2018120300'),(886,'atto_noautolink','version','2018120300'),(887,'atto_orderedlist','version','2018120300'),(888,'atto_recordrtc','version','2018120300'),(889,'atto_rtl','version','2018120300'),(890,'atto_strike','version','2018120300'),(891,'atto_subscript','version','2018120300'),(892,'atto_superscript','version','2018120300'),(893,'atto_table','version','2018120300'),(894,'atto_title','version','2018120300'),(895,'atto_underline','version','2018120300'),(896,'atto_undo','version','2018120300'),(897,'atto_unorderedlist','version','2018120300'),(898,'tinymce_ctrlhelp','version','2018120300'),(899,'tinymce_managefiles','version','2018120300'),(900,'tinymce_moodleemoticon','version','2018120300'),(901,'tinymce_moodleimage','version','2018120300'),(902,'tinymce_moodlemedia','version','2018120300'),(903,'tinymce_moodlenolink','version','2018120300'),(904,'tinymce_pdw','version','2018120300'),(905,'tinymce_spellchecker','version','2018120300'),(907,'tinymce_wrap','version','2018120300'),(908,'logstore_database','version','2018120300'),(909,'logstore_legacy','version','2018120300'),(910,'logstore_standard','version','2018120300'),(911,'tool_dataprivacy','contactdataprotectionofficer','0'),(912,'tool_dataprivacy','automaticdeletionrequests','1'),(913,'tool_dataprivacy','privacyrequestexpiry','604800'),(914,'tool_dataprivacy','requireallenddatesforuserdeletion','1'),(915,'tool_dataprivacy','showdataretentionsummary','1'),(916,'tool_log','exportlog','1'),(917,'analytics','logstore','logstore_standard'),(918,'assign','feedback_plugin_for_gradebook','assignfeedback_comments'),(919,'assign','showrecentsubmissions','0'),(920,'assign','submissionreceipts','1'),(921,'assign','submissionstatement','This assignment is my own work, except where I have acknowledged the use of the works of other people.'),(922,'assign','maxperpage','-1'),(923,'assign','alwaysshowdescription','1'),(924,'assign','alwaysshowdescription_adv',''),(925,'assign','alwaysshowdescription_locked',''),(926,'assign','allowsubmissionsfromdate','0'),(927,'assign','allowsubmissionsfromdate_enabled','1'),(928,'assign','allowsubmissionsfromdate_adv',''),(929,'assign','duedate','604800'),(930,'assign','duedate_enabled','1'),(931,'assign','duedate_adv',''),(932,'assign','cutoffdate','1209600'),(933,'assign','cutoffdate_enabled',''),(934,'assign','cutoffdate_adv',''),(935,'assign','gradingduedate','1209600'),(936,'assign','gradingduedate_enabled','1'),(937,'assign','gradingduedate_adv',''),(938,'assign','submissiondrafts','0'),(939,'assign','submissiondrafts_adv',''),(940,'assign','submissiondrafts_locked',''),(941,'assign','requiresubmissionstatement','0'),(942,'assign','requiresubmissionstatement_adv',''),(943,'assign','requiresubmissionstatement_locked',''),(944,'assign','attemptreopenmethod','none'),(945,'assign','attemptreopenmethod_adv',''),(946,'assign','attemptreopenmethod_locked',''),(947,'assign','maxattempts','-1'),(948,'assign','maxattempts_adv',''),(949,'assign','maxattempts_locked',''),(950,'assign','teamsubmission','0'),(951,'assign','teamsubmission_adv',''),(952,'assign','teamsubmission_locked',''),(953,'assign','preventsubmissionnotingroup','0'),(954,'assign','preventsubmissionnotingroup_adv',''),(955,'assign','preventsubmissionnotingroup_locked',''),(956,'assign','requireallteammemberssubmit','0'),(957,'assign','requireallteammemberssubmit_adv',''),(958,'assign','requireallteammemberssubmit_locked',''),(959,'assign','teamsubmissiongroupingid',''),(960,'assign','teamsubmissiongroupingid_adv',''),(961,'assign','sendnotifications','0'),(962,'assign','sendnotifications_adv',''),(963,'assign','sendnotifications_locked',''),(964,'assign','sendlatenotifications','0'),(965,'assign','sendlatenotifications_adv',''),(966,'assign','sendlatenotifications_locked',''),(967,'assign','sendstudentnotifications','1'),(968,'assign','sendstudentnotifications_adv',''),(969,'assign','sendstudentnotifications_locked',''),(970,'assign','blindmarking','0'),(971,'assign','blindmarking_adv',''),(972,'assign','blindmarking_locked',''),(973,'assign','markingworkflow','0'),(974,'assign','markingworkflow_adv',''),(975,'assign','markingworkflow_locked',''),(976,'assign','markingallocation','0'),(977,'assign','markingallocation_adv',''),(978,'assign','markingallocation_locked',''),(979,'assignsubmission_file','default','1'),(980,'assignsubmission_file','maxfiles','20'),(981,'assignsubmission_file','filetypes',''),(982,'assignsubmission_file','maxbytes','0'),(983,'assignsubmission_onlinetext','default','0'),(984,'assignfeedback_comments','default','1'),(985,'assignfeedback_comments','inline','0'),(986,'assignfeedback_comments','inline_adv',''),(987,'assignfeedback_comments','inline_locked',''),(988,'assignfeedback_editpdf','default','1'),(989,'assignfeedback_editpdf','stamps',''),(990,'assignfeedback_file','default','0'),(991,'assignfeedback_offline','default','0'),(992,'book','numberingoptions','0,1,2,3'),(993,'book','navoptions','0,1,2'),(994,'book','numbering','1'),(995,'book','navstyle','1'),(996,'resource','framesize','130'),(997,'resource','displayoptions','0,1,4,5,6'),(998,'resource','printintro','1'),(999,'resource','display','0'),(1000,'resource','showsize','0'),(1001,'resource','showtype','0'),(1002,'resource','showdate','0'),(1003,'resource','popupwidth','620'),(1004,'resource','popupheight','450'),(1005,'resource','filterfiles','0'),(1006,'folder','showexpanded','1'),(1007,'folder','maxsizetodownload','0'),(1008,'imscp','keepold','1'),(1009,'imscp','keepold_adv',''),(1010,'label','dndmedia','1'),(1011,'label','dndresizewidth','400'),(1012,'label','dndresizeheight','400'),(1013,'mod_lesson','mediafile',''),(1014,'mod_lesson','mediafile_adv','1'),(1015,'mod_lesson','mediawidth','640'),(1016,'mod_lesson','mediaheight','480'),(1017,'mod_lesson','mediaclose','0'),(1018,'mod_lesson','progressbar','0'),(1019,'mod_lesson','progressbar_adv',''),(1020,'mod_lesson','ongoing','0'),(1021,'mod_lesson','ongoing_adv','1'),(1022,'mod_lesson','displayleftmenu','0'),(1023,'mod_lesson','displayleftmenu_adv',''),(1024,'mod_lesson','displayleftif','0'),(1025,'mod_lesson','displayleftif_adv','1'),(1026,'mod_lesson','slideshow','0'),(1027,'mod_lesson','slideshow_adv','1'),(1028,'mod_lesson','slideshowwidth','640'),(1029,'mod_lesson','slideshowheight','480'),(1030,'mod_lesson','slideshowbgcolor','#FFFFFF'),(1031,'mod_lesson','maxanswers','5'),(1032,'mod_lesson','maxanswers_adv','1'),(1033,'mod_lesson','defaultfeedback','0'),(1034,'mod_lesson','defaultfeedback_adv','1'),(1035,'mod_lesson','activitylink',''),(1036,'mod_lesson','activitylink_adv','1'),(1037,'mod_lesson','timelimit','0'),(1038,'mod_lesson','timelimit_adv',''),(1039,'mod_lesson','password','0'),(1040,'mod_lesson','password_adv','1'),(1041,'mod_lesson','modattempts','0'),(1042,'mod_lesson','modattempts_adv',''),(1043,'mod_lesson','displayreview','0'),(1044,'mod_lesson','displayreview_adv',''),(1045,'mod_lesson','maximumnumberofattempts','1'),(1046,'mod_lesson','maximumnumberofattempts_adv',''),(1047,'mod_lesson','defaultnextpage','0'),(1048,'mod_lesson','defaultnextpage_adv','1'),(1049,'mod_lesson','numberofpagestoshow','1'),(1050,'mod_lesson','numberofpagestoshow_adv','1'),(1051,'mod_lesson','practice','0'),(1052,'mod_lesson','practice_adv',''),(1053,'mod_lesson','customscoring','1'),(1054,'mod_lesson','customscoring_adv','1'),(1055,'mod_lesson','retakesallowed','0'),(1056,'mod_lesson','retakesallowed_adv',''),(1057,'mod_lesson','handlingofretakes','0'),(1058,'mod_lesson','handlingofretakes_adv','1'),(1059,'mod_lesson','minimumnumberofquestions','0'),(1060,'mod_lesson','minimumnumberofquestions_adv','1'),(1061,'page','displayoptions','5'),(1062,'page','printheading','1'),(1063,'page','printintro','0'),(1064,'page','printlastmodified','1'),(1065,'page','display','5'),(1066,'page','popupwidth','620'),(1067,'page','popupheight','450'),(1068,'quiz','timelimit','0'),(1069,'quiz','timelimit_adv',''),(1070,'quiz','overduehandling','autosubmit'),(1071,'quiz','overduehandling_adv',''),(1072,'quiz','graceperiod','86400'),(1073,'quiz','graceperiod_adv',''),(1074,'quiz','graceperiodmin','60'),(1075,'quiz','attempts','0'),(1076,'quiz','attempts_adv',''),(1077,'quiz','grademethod','1'),(1078,'quiz','grademethod_adv',''),(1079,'quiz','maximumgrade','10'),(1080,'quiz','questionsperpage','1'),(1081,'quiz','questionsperpage_adv',''),(1082,'quiz','navmethod','free'),(1083,'quiz','navmethod_adv','1'),(1084,'quiz','shuffleanswers','1'),(1085,'quiz','shuffleanswers_adv',''),(1086,'quiz','preferredbehaviour','deferredfeedback'),(1087,'quiz','canredoquestions','0'),(1088,'quiz','canredoquestions_adv','1'),(1089,'quiz','attemptonlast','0'),(1090,'quiz','attemptonlast_adv','1'),(1091,'quiz','reviewattempt','69904'),(1092,'quiz','reviewcorrectness','69904'),(1093,'quiz','reviewmarks','69904'),(1094,'quiz','reviewspecificfeedback','69904'),(1095,'quiz','reviewgeneralfeedback','69904'),(1096,'quiz','reviewrightanswer','69904'),(1097,'quiz','reviewoverallfeedback','4368'),(1098,'quiz','showuserpicture','0'),(1099,'quiz','showuserpicture_adv',''),(1100,'quiz','decimalpoints','2'),(1101,'quiz','decimalpoints_adv',''),(1102,'quiz','questiondecimalpoints','-1'),(1103,'quiz','questiondecimalpoints_adv','1'),(1104,'quiz','showblocks','0'),(1105,'quiz','showblocks_adv','1'),(1106,'quiz','password',''),(1107,'quiz','password_adv',''),(1108,'quiz','subnet',''),(1109,'quiz','subnet_adv','1'),(1110,'quiz','delay1','0'),(1111,'quiz','delay1_adv','1'),(1112,'quiz','delay2','0'),(1113,'quiz','delay2_adv','1'),(1114,'quiz','browsersecurity','-'),(1115,'quiz','browsersecurity_adv','1'),(1116,'quiz','initialnumfeedbacks','2'),(1117,'quiz','autosaveperiod','60'),(1118,'scorm','displaycoursestructure','0'),(1119,'scorm','displaycoursestructure_adv',''),(1120,'scorm','popup','0'),(1121,'scorm','popup_adv',''),(1122,'scorm','displayactivityname','1'),(1123,'scorm','framewidth','100'),(1124,'scorm','framewidth_adv','1'),(1125,'scorm','frameheight','500'),(1126,'scorm','frameheight_adv','1'),(1127,'scorm','winoptgrp_adv','1'),(1128,'scorm','scrollbars','0'),(1129,'scorm','directories','0'),(1130,'scorm','location','0'),(1131,'scorm','menubar','0'),(1132,'scorm','toolbar','0'),(1133,'scorm','status','0'),(1134,'scorm','skipview','0'),(1135,'scorm','skipview_adv','1'),(1136,'scorm','hidebrowse','0'),(1137,'scorm','hidebrowse_adv','1'),(1138,'scorm','hidetoc','0'),(1139,'scorm','hidetoc_adv','1'),(1140,'scorm','nav','1'),(1141,'scorm','nav_adv','1'),(1142,'scorm','navpositionleft','-100'),(1143,'scorm','navpositionleft_adv','1'),(1144,'scorm','navpositiontop','-100'),(1145,'scorm','navpositiontop_adv','1'),(1146,'scorm','collapsetocwinsize','767'),(1147,'scorm','collapsetocwinsize_adv','1'),(1148,'scorm','displayattemptstatus','1'),(1149,'scorm','displayattemptstatus_adv',''),(1150,'scorm','grademethod','1'),(1151,'scorm','maxgrade','100'),(1152,'scorm','maxattempt','0'),(1153,'scorm','whatgrade','0'),(1154,'scorm','forcecompleted','0'),(1155,'scorm','forcenewattempt','0'),(1156,'scorm','autocommit','0'),(1157,'scorm','masteryoverride','1'),(1158,'scorm','lastattemptlock','0'),(1159,'scorm','auto','0'),(1160,'scorm','updatefreq','0'),(1161,'scorm','scormstandard','0'),(1162,'scorm','allowtypeexternal','0'),(1163,'scorm','allowtypelocalsync','0'),(1164,'scorm','allowtypeexternalaicc','0'),(1165,'scorm','allowaicchacp','0'),(1166,'scorm','aicchacptimeout','30'),(1167,'scorm','aicchacpkeepsessiondata','1'),(1168,'scorm','aiccuserid','1'),(1169,'scorm','forcejavascript','1'),(1170,'scorm','allowapidebug','0'),(1171,'scorm','apidebugmask','.*'),(1172,'scorm','protectpackagedownloads','0'),(1173,'url','framesize','130'),(1174,'url','secretphrase',''),(1175,'url','rolesinparams','0'),(1176,'url','displayoptions','0,1,5,6'),(1177,'url','printintro','1'),(1178,'url','display','0'),(1179,'url','popupwidth','620'),(1180,'url','popupheight','450'),(1181,'workshop','grade','80'),(1182,'workshop','gradinggrade','20'),(1183,'workshop','gradedecimals','0'),(1184,'workshop','maxbytes','0'),(1185,'workshop','strategy','accumulative'),(1186,'workshop','examplesmode','0'),(1187,'workshopallocation_random','numofreviews','5'),(1188,'workshopform_numerrors','grade0','No'),(1189,'workshopform_numerrors','grade1','Yes'),(1190,'workshopeval_best','comparison','5'),(1191,'tool_recyclebin','coursebinenable','1'),(1192,'tool_recyclebin','coursebinexpiry','604800'),(1193,'tool_recyclebin','categorybinenable','1'),(1194,'tool_recyclebin','categorybinexpiry','604800'),(1195,'tool_recyclebin','autohide','1'),(1196,'antivirus_clamav','runningmethod','commandline'),(1197,'antivirus_clamav','pathtoclam',''),(1198,'antivirus_clamav','pathtounixsocket',''),(1199,'antivirus_clamav','clamfailureonupload','donothing'),(1200,'auth_cas','hostname',''),(1201,'auth_cas','baseuri',''),(1202,'auth_cas','port','0'),(1203,'auth_cas','casversion','2.0'),(1204,'auth_cas','language','CAS_Languages_English'),(1205,'auth_cas','proxycas','0'),(1206,'auth_cas','logoutcas','0'),(1207,'auth_cas','multiauth','0'),(1208,'auth_cas','certificate_check','0'),(1209,'auth_cas','certificate_path',''),(1210,'auth_cas','curl_ssl_version',''),(1211,'auth_cas','logout_return_url',''),(1212,'auth_cas','host_url',''),(1213,'auth_cas','ldap_version','3'),(1214,'auth_cas','start_tls','0'),(1215,'auth_cas','ldapencoding','utf-8'),(1216,'auth_cas','pagesize','250'),(1217,'auth_cas','bind_dn',''),(1218,'auth_cas','bind_pw',''),(1219,'auth_cas','user_type','default'),(1220,'auth_cas','contexts',''),(1221,'auth_cas','search_sub','0'),(1222,'auth_cas','opt_deref','0'),(1223,'auth_cas','user_attribute',''),(1224,'auth_cas','memberattribute',''),(1225,'auth_cas','memberattribute_isdn',''),(1226,'auth_cas','objectclass',''),(1227,'auth_cas','attrcreators',''),(1228,'auth_cas','groupecreators',''),(1229,'auth_cas','removeuser','0'),(1230,'auth_cas','field_map_firstname',''),(1231,'auth_cas','field_updatelocal_firstname','oncreate'),(1232,'auth_cas','field_updateremote_firstname','0'),(1233,'auth_cas','field_lock_firstname','unlocked'),(1234,'auth_cas','field_map_lastname',''),(1235,'auth_cas','field_updatelocal_lastname','oncreate'),(1236,'auth_cas','field_updateremote_lastname','0'),(1237,'auth_cas','field_lock_lastname','unlocked'),(1238,'auth_cas','field_map_email',''),(1239,'auth_cas','field_updatelocal_email','oncreate'),(1240,'auth_cas','field_updateremote_email','0'),(1241,'auth_cas','field_lock_email','unlocked'),(1242,'auth_cas','field_map_city',''),(1243,'auth_cas','field_updatelocal_city','oncreate'),(1244,'auth_cas','field_updateremote_city','0'),(1245,'auth_cas','field_lock_city','unlocked'),(1246,'auth_cas','field_map_country',''),(1247,'auth_cas','field_updatelocal_country','oncreate'),(1248,'auth_cas','field_updateremote_country','0'),(1249,'auth_cas','field_lock_country','unlocked'),(1250,'auth_cas','field_map_lang',''),(1251,'auth_cas','field_updatelocal_lang','oncreate'),(1252,'auth_cas','field_updateremote_lang','0'),(1253,'auth_cas','field_lock_lang','unlocked'),(1254,'auth_cas','field_map_description',''),(1255,'auth_cas','field_updatelocal_description','oncreate'),(1256,'auth_cas','field_updateremote_description','0'),(1257,'auth_cas','field_lock_description','unlocked'),(1258,'auth_cas','field_map_url',''),(1259,'auth_cas','field_updatelocal_url','oncreate'),(1260,'auth_cas','field_updateremote_url','0'),(1261,'auth_cas','field_lock_url','unlocked'),(1262,'auth_cas','field_map_idnumber',''),(1263,'auth_cas','field_updatelocal_idnumber','oncreate'),(1264,'auth_cas','field_updateremote_idnumber','0'),(1265,'auth_cas','field_lock_idnumber','unlocked'),(1266,'auth_cas','field_map_institution',''),(1267,'auth_cas','field_updatelocal_institution','oncreate'),(1268,'auth_cas','field_updateremote_institution','0'),(1269,'auth_cas','field_lock_institution','unlocked'),(1270,'auth_cas','field_map_department',''),(1271,'auth_cas','field_updatelocal_department','oncreate'),(1272,'auth_cas','field_updateremote_department','0'),(1273,'auth_cas','field_lock_department','unlocked'),(1274,'auth_cas','field_map_phone1',''),(1275,'auth_cas','field_updatelocal_phone1','oncreate'),(1276,'auth_cas','field_updateremote_phone1','0'),(1277,'auth_cas','field_lock_phone1','unlocked'),(1278,'auth_cas','field_map_phone2',''),(1279,'auth_cas','field_updatelocal_phone2','oncreate'),(1280,'auth_cas','field_updateremote_phone2','0'),(1281,'auth_cas','field_lock_phone2','unlocked'),(1282,'auth_cas','field_map_address',''),(1283,'auth_cas','field_updatelocal_address','oncreate'),(1284,'auth_cas','field_updateremote_address','0'),(1285,'auth_cas','field_lock_address','unlocked'),(1286,'auth_cas','field_map_firstnamephonetic',''),(1287,'auth_cas','field_updatelocal_firstnamephonetic','oncreate'),(1288,'auth_cas','field_updateremote_firstnamephonetic','0'),(1289,'auth_cas','field_lock_firstnamephonetic','unlocked'),(1290,'auth_cas','field_map_lastnamephonetic',''),(1291,'auth_cas','field_updatelocal_lastnamephonetic','oncreate'),(1292,'auth_cas','field_updateremote_lastnamephonetic','0'),(1293,'auth_cas','field_lock_lastnamephonetic','unlocked'),(1294,'auth_cas','field_map_middlename',''),(1295,'auth_cas','field_updatelocal_middlename','oncreate'),(1296,'auth_cas','field_updateremote_middlename','0'),(1297,'auth_cas','field_lock_middlename','unlocked'),(1298,'auth_cas','field_map_alternatename',''),(1299,'auth_cas','field_updatelocal_alternatename','oncreate'),(1300,'auth_cas','field_updateremote_alternatename','0'),(1301,'auth_cas','field_lock_alternatename','unlocked'),(1302,'auth_email','recaptcha','0'),(1303,'auth_email','field_lock_firstname','unlocked'),(1304,'auth_email','field_lock_lastname','unlocked'),(1305,'auth_email','field_lock_email','unlocked'),(1306,'auth_email','field_lock_city','unlocked'),(1307,'auth_email','field_lock_country','unlocked'),(1308,'auth_email','field_lock_lang','unlocked'),(1309,'auth_email','field_lock_description','unlocked'),(1310,'auth_email','field_lock_url','unlocked'),(1311,'auth_email','field_lock_idnumber','unlocked'),(1312,'auth_email','field_lock_institution','unlocked'),(1313,'auth_email','field_lock_department','unlocked'),(1314,'auth_email','field_lock_phone1','unlocked'),(1315,'auth_email','field_lock_phone2','unlocked'),(1316,'auth_email','field_lock_address','unlocked'),(1317,'auth_email','field_lock_firstnamephonetic','unlocked'),(1318,'auth_email','field_lock_lastnamephonetic','unlocked'),(1319,'auth_email','field_lock_middlename','unlocked'),(1320,'auth_email','field_lock_alternatename','unlocked'),(1321,'auth_db','host','127.0.0.1'),(1322,'auth_db','type','mysqli'),(1323,'auth_db','sybasequoting','0'),(1324,'auth_db','name',''),(1325,'auth_db','user',''),(1326,'auth_db','pass',''),(1327,'auth_db','table',''),(1328,'auth_db','fielduser',''),(1329,'auth_db','fieldpass',''),(1330,'auth_db','passtype','plaintext'),(1331,'auth_db','extencoding','utf-8'),(1332,'auth_db','setupsql',''),(1333,'auth_db','debugauthdb','0'),(1334,'auth_db','changepasswordurl',''),(1335,'auth_db','removeuser','0'),(1336,'auth_db','updateusers','0'),(1337,'auth_db','field_map_firstname',''),(1338,'auth_db','field_updatelocal_firstname','oncreate'),(1339,'auth_db','field_updateremote_firstname','0'),(1340,'auth_db','field_lock_firstname','unlocked'),(1341,'auth_db','field_map_lastname',''),(1342,'auth_db','field_updatelocal_lastname','oncreate'),(1343,'auth_db','field_updateremote_lastname','0'),(1344,'auth_db','field_lock_lastname','unlocked'),(1345,'auth_db','field_map_email',''),(1346,'auth_db','field_updatelocal_email','oncreate'),(1347,'auth_db','field_updateremote_email','0'),(1348,'auth_db','field_lock_email','unlocked'),(1349,'auth_db','field_map_city',''),(1350,'auth_db','field_updatelocal_city','oncreate'),(1351,'auth_db','field_updateremote_city','0'),(1352,'auth_db','field_lock_city','unlocked'),(1353,'auth_db','field_map_country',''),(1354,'auth_db','field_updatelocal_country','oncreate'),(1355,'auth_db','field_updateremote_country','0'),(1356,'auth_db','field_lock_country','unlocked'),(1357,'auth_db','field_map_lang',''),(1358,'auth_db','field_updatelocal_lang','oncreate'),(1359,'auth_db','field_updateremote_lang','0'),(1360,'auth_db','field_lock_lang','unlocked'),(1361,'auth_db','field_map_description',''),(1362,'auth_db','field_updatelocal_description','oncreate'),(1363,'auth_db','field_updateremote_description','0'),(1364,'auth_db','field_lock_description','unlocked'),(1365,'auth_db','field_map_url',''),(1366,'auth_db','field_updatelocal_url','oncreate'),(1367,'auth_db','field_updateremote_url','0'),(1368,'auth_db','field_lock_url','unlocked'),(1369,'auth_db','field_map_idnumber',''),(1370,'auth_db','field_updatelocal_idnumber','oncreate'),(1371,'auth_db','field_updateremote_idnumber','0'),(1372,'auth_db','field_lock_idnumber','unlocked'),(1373,'auth_db','field_map_institution',''),(1374,'auth_db','field_updatelocal_institution','oncreate'),(1375,'auth_db','field_updateremote_institution','0'),(1376,'auth_db','field_lock_institution','unlocked'),(1377,'auth_db','field_map_department',''),(1378,'auth_db','field_updatelocal_department','oncreate'),(1379,'auth_db','field_updateremote_department','0'),(1380,'auth_db','field_lock_department','unlocked'),(1381,'auth_db','field_map_phone1',''),(1382,'auth_db','field_updatelocal_phone1','oncreate'),(1383,'auth_db','field_updateremote_phone1','0'),(1384,'auth_db','field_lock_phone1','unlocked'),(1385,'auth_db','field_map_phone2',''),(1386,'auth_db','field_updatelocal_phone2','oncreate'),(1387,'auth_db','field_updateremote_phone2','0'),(1388,'auth_db','field_lock_phone2','unlocked'),(1389,'auth_db','field_map_address',''),(1390,'auth_db','field_updatelocal_address','oncreate'),(1391,'auth_db','field_updateremote_address','0'),(1392,'auth_db','field_lock_address','unlocked'),(1393,'auth_db','field_map_firstnamephonetic',''),(1394,'auth_db','field_updatelocal_firstnamephonetic','oncreate'),(1395,'auth_db','field_updateremote_firstnamephonetic','0'),(1396,'auth_db','field_lock_firstnamephonetic','unlocked'),(1397,'auth_db','field_map_lastnamephonetic',''),(1398,'auth_db','field_updatelocal_lastnamephonetic','oncreate'),(1399,'auth_db','field_updateremote_lastnamephonetic','0'),(1400,'auth_db','field_lock_lastnamephonetic','unlocked'),(1401,'auth_db','field_map_middlename',''),(1402,'auth_db','field_updatelocal_middlename','oncreate'),(1403,'auth_db','field_updateremote_middlename','0'),(1404,'auth_db','field_lock_middlename','unlocked'),(1405,'auth_db','field_map_alternatename',''),(1406,'auth_db','field_updatelocal_alternatename','oncreate'),(1407,'auth_db','field_updateremote_alternatename','0'),(1408,'auth_db','field_lock_alternatename','unlocked'),(1409,'auth_ldap','host_url',''),(1410,'auth_ldap','ldap_version','3'),(1411,'auth_ldap','start_tls','0'),(1412,'auth_ldap','ldapencoding','utf-8'),(1413,'auth_ldap','pagesize','250'),(1414,'auth_ldap','preventpassindb','0'),(1415,'auth_ldap','bind_dn',''),(1416,'auth_ldap','bind_pw',''),(1417,'auth_ldap','user_type','default'),(1418,'auth_ldap','contexts',''),(1419,'auth_ldap','search_sub','0'),(1420,'auth_ldap','opt_deref','0'),(1421,'auth_ldap','user_attribute',''),(1422,'auth_ldap','suspended_attribute',''),(1423,'auth_ldap','memberattribute',''),(1424,'auth_ldap','memberattribute_isdn',''),(1425,'auth_ldap','objectclass',''),(1426,'auth_ldap','forcechangepassword','0'),(1427,'auth_ldap','stdchangepassword','0'),(1428,'auth_ldap','passtype','plaintext'),(1429,'auth_ldap','changepasswordurl',''),(1430,'auth_ldap','expiration','0'),(1431,'auth_ldap','expiration_warning',''),(1432,'auth_ldap','expireattr',''),(1433,'auth_ldap','gracelogins','0'),(1434,'auth_ldap','graceattr',''),(1435,'auth_ldap','auth_user_create','0'),(1436,'auth_ldap','create_context',''),(1437,'auth_ldap','managercontext',''),(1438,'auth_ldap','coursecreatorcontext',''),(1439,'auth_ldap','removeuser','0'),(1440,'auth_ldap','sync_suspended','0'),(1441,'auth_ldap','ntlmsso_enabled','0'),(1442,'auth_ldap','ntlmsso_subnet',''),(1443,'auth_ldap','ntlmsso_ie_fastpath','0'),(1444,'auth_ldap','ntlmsso_type','ntlm'),(1445,'auth_ldap','ntlmsso_remoteuserformat',''),(1446,'auth_ldap','field_map_firstname',''),(1447,'auth_ldap','field_updatelocal_firstname','oncreate'),(1448,'auth_ldap','field_updateremote_firstname','0'),(1449,'auth_ldap','field_lock_firstname','unlocked'),(1450,'auth_ldap','field_map_lastname',''),(1451,'auth_ldap','field_updatelocal_lastname','oncreate'),(1452,'auth_ldap','field_updateremote_lastname','0'),(1453,'auth_ldap','field_lock_lastname','unlocked'),(1454,'auth_ldap','field_map_email',''),(1455,'auth_ldap','field_updatelocal_email','oncreate'),(1456,'auth_ldap','field_updateremote_email','0'),(1457,'auth_ldap','field_lock_email','unlocked'),(1458,'auth_ldap','field_map_city',''),(1459,'auth_ldap','field_updatelocal_city','oncreate'),(1460,'auth_ldap','field_updateremote_city','0'),(1461,'auth_ldap','field_lock_city','unlocked'),(1462,'auth_ldap','field_map_country',''),(1463,'auth_ldap','field_updatelocal_country','oncreate'),(1464,'auth_ldap','field_updateremote_country','0'),(1465,'auth_ldap','field_lock_country','unlocked'),(1466,'auth_ldap','field_map_lang',''),(1467,'auth_ldap','field_updatelocal_lang','oncreate'),(1468,'auth_ldap','field_updateremote_lang','0'),(1469,'auth_ldap','field_lock_lang','unlocked'),(1470,'auth_ldap','field_map_description',''),(1471,'auth_ldap','field_updatelocal_description','oncreate'),(1472,'auth_ldap','field_updateremote_description','0'),(1473,'auth_ldap','field_lock_description','unlocked'),(1474,'auth_ldap','field_map_url',''),(1475,'auth_ldap','field_updatelocal_url','oncreate'),(1476,'auth_ldap','field_updateremote_url','0'),(1477,'auth_ldap','field_lock_url','unlocked'),(1478,'auth_ldap','field_map_idnumber',''),(1479,'auth_ldap','field_updatelocal_idnumber','oncreate'),(1480,'auth_ldap','field_updateremote_idnumber','0'),(1481,'auth_ldap','field_lock_idnumber','unlocked'),(1482,'auth_ldap','field_map_institution',''),(1483,'auth_ldap','field_updatelocal_institution','oncreate'),(1484,'auth_ldap','field_updateremote_institution','0'),(1485,'auth_ldap','field_lock_institution','unlocked'),(1486,'auth_ldap','field_map_department',''),(1487,'auth_ldap','field_updatelocal_department','oncreate'),(1488,'auth_ldap','field_updateremote_department','0'),(1489,'auth_ldap','field_lock_department','unlocked'),(1490,'auth_ldap','field_map_phone1',''),(1491,'auth_ldap','field_updatelocal_phone1','oncreate'),(1492,'auth_ldap','field_updateremote_phone1','0'),(1493,'auth_ldap','field_lock_phone1','unlocked'),(1494,'auth_ldap','field_map_phone2',''),(1495,'auth_ldap','field_updatelocal_phone2','oncreate'),(1496,'auth_ldap','field_updateremote_phone2','0'),(1497,'auth_ldap','field_lock_phone2','unlocked'),(1498,'auth_ldap','field_map_address',''),(1499,'auth_ldap','field_updatelocal_address','oncreate'),(1500,'auth_ldap','field_updateremote_address','0'),(1501,'auth_ldap','field_lock_address','unlocked'),(1502,'auth_ldap','field_map_firstnamephonetic',''),(1503,'auth_ldap','field_updatelocal_firstnamephonetic','oncreate'),(1504,'auth_ldap','field_updateremote_firstnamephonetic','0'),(1505,'auth_ldap','field_lock_firstnamephonetic','unlocked'),(1506,'auth_ldap','field_map_lastnamephonetic',''),(1507,'auth_ldap','field_updatelocal_lastnamephonetic','oncreate'),(1508,'auth_ldap','field_updateremote_lastnamephonetic','0'),(1509,'auth_ldap','field_lock_lastnamephonetic','unlocked'),(1510,'auth_ldap','field_map_middlename',''),(1511,'auth_ldap','field_updatelocal_middlename','oncreate'),(1512,'auth_ldap','field_updateremote_middlename','0'),(1513,'auth_ldap','field_lock_middlename','unlocked'),(1514,'auth_ldap','field_map_alternatename',''),(1515,'auth_ldap','field_updatelocal_alternatename','oncreate'),(1516,'auth_ldap','field_updateremote_alternatename','0'),(1517,'auth_ldap','field_lock_alternatename','unlocked'),(1518,'auth_manual','expiration','0'),(1519,'auth_manual','expirationtime','30'),(1520,'auth_manual','expiration_warning','0'),(1521,'auth_manual','field_lock_firstname','unlocked'),(1522,'auth_manual','field_lock_lastname','unlocked'),(1523,'auth_manual','field_lock_email','unlocked'),(1524,'auth_manual','field_lock_city','unlocked'),(1525,'auth_manual','field_lock_country','unlocked'),(1526,'auth_manual','field_lock_lang','unlocked'),(1527,'auth_manual','field_lock_description','unlocked'),(1528,'auth_manual','field_lock_url','unlocked'),(1529,'auth_manual','field_lock_idnumber','unlocked'),(1530,'auth_manual','field_lock_institution','unlocked'),(1531,'auth_manual','field_lock_department','unlocked'),(1532,'auth_manual','field_lock_phone1','unlocked'),(1533,'auth_manual','field_lock_phone2','unlocked'),(1534,'auth_manual','field_lock_address','unlocked'),(1535,'auth_manual','field_lock_firstnamephonetic','unlocked'),(1536,'auth_manual','field_lock_lastnamephonetic','unlocked'),(1537,'auth_manual','field_lock_middlename','unlocked'),(1538,'auth_manual','field_lock_alternatename','unlocked'),(1539,'auth_mnet','rpc_negotiation_timeout','30'),(1540,'auth_none','field_lock_firstname','unlocked'),(1541,'auth_none','field_lock_lastname','unlocked'),(1542,'auth_none','field_lock_email','unlocked'),(1543,'auth_none','field_lock_city','unlocked'),(1544,'auth_none','field_lock_country','unlocked'),(1545,'auth_none','field_lock_lang','unlocked'),(1546,'auth_none','field_lock_description','unlocked'),(1547,'auth_none','field_lock_url','unlocked'),(1548,'auth_none','field_lock_idnumber','unlocked'),(1549,'auth_none','field_lock_institution','unlocked'),(1550,'auth_none','field_lock_department','unlocked'),(1551,'auth_none','field_lock_phone1','unlocked'),(1552,'auth_none','field_lock_phone2','unlocked'),(1553,'auth_none','field_lock_address','unlocked'),(1554,'auth_none','field_lock_firstnamephonetic','unlocked'),(1555,'auth_none','field_lock_lastnamephonetic','unlocked'),(1556,'auth_none','field_lock_middlename','unlocked'),(1557,'auth_none','field_lock_alternatename','unlocked'),(1558,'auth_oauth2','field_lock_firstname','unlocked'),(1559,'auth_oauth2','field_lock_lastname','unlocked'),(1560,'auth_oauth2','field_lock_email','unlocked'),(1561,'auth_oauth2','field_lock_city','unlocked'),(1562,'auth_oauth2','field_lock_country','unlocked'),(1563,'auth_oauth2','field_lock_lang','unlocked'),(1564,'auth_oauth2','field_lock_description','unlocked'),(1565,'auth_oauth2','field_lock_url','unlocked'),(1566,'auth_oauth2','field_lock_idnumber','unlocked'),(1567,'auth_oauth2','field_lock_institution','unlocked'),(1568,'auth_oauth2','field_lock_department','unlocked'),(1569,'auth_oauth2','field_lock_phone1','unlocked'),(1570,'auth_oauth2','field_lock_phone2','unlocked'),(1571,'auth_oauth2','field_lock_address','unlocked'),(1572,'auth_oauth2','field_lock_firstnamephonetic','unlocked'),(1573,'auth_oauth2','field_lock_lastnamephonetic','unlocked'),(1574,'auth_oauth2','field_lock_middlename','unlocked'),(1575,'auth_oauth2','field_lock_alternatename','unlocked'),(1576,'auth_shibboleth','user_attribute',''),(1577,'auth_shibboleth','convert_data',''),(1578,'auth_shibboleth','alt_login','off'),(1579,'auth_shibboleth','organization_selection','urn:mace:organization1:providerID, Example Organization 1\n        https://another.idp-id.com/shibboleth, Other Example Organization, /Shibboleth.sso/DS/SWITCHaai\n        urn:mace:organization2:providerID, Example Organization 2, /Shibboleth.sso/WAYF/SWITCHaai'),(1580,'auth_shibboleth','logout_handler',''),(1581,'auth_shibboleth','logout_return_url',''),(1582,'auth_shibboleth','login_name','Shibboleth Login'),(1583,'auth_shibboleth','auth_logo',''),(1584,'auth_shibboleth','auth_instructions','Use the <a href=\"http://localhost:80/auth/shibboleth/index.php\">Shibboleth login</a> to get access via Shibboleth, if your institution supports it.<br />Otherwise, use the normal login form shown here.'),(1585,'auth_shibboleth','changepasswordurl',''),(1586,'auth_shibboleth','field_map_firstname',''),(1587,'auth_shibboleth','field_updatelocal_firstname','oncreate'),(1588,'auth_shibboleth','field_lock_firstname','unlocked'),(1589,'auth_shibboleth','field_map_lastname',''),(1590,'auth_shibboleth','field_updatelocal_lastname','oncreate'),(1591,'auth_shibboleth','field_lock_lastname','unlocked'),(1592,'auth_shibboleth','field_map_email',''),(1593,'auth_shibboleth','field_updatelocal_email','oncreate'),(1594,'auth_shibboleth','field_lock_email','unlocked'),(1595,'auth_shibboleth','field_map_city',''),(1596,'auth_shibboleth','field_updatelocal_city','oncreate'),(1597,'auth_shibboleth','field_lock_city','unlocked'),(1598,'auth_shibboleth','field_map_country',''),(1599,'auth_shibboleth','field_updatelocal_country','oncreate'),(1600,'auth_shibboleth','field_lock_country','unlocked'),(1601,'auth_shibboleth','field_map_lang',''),(1602,'auth_shibboleth','field_updatelocal_lang','oncreate'),(1603,'auth_shibboleth','field_lock_lang','unlocked'),(1604,'auth_shibboleth','field_map_description',''),(1605,'auth_shibboleth','field_updatelocal_description','oncreate'),(1606,'auth_shibboleth','field_lock_description','unlocked'),(1607,'auth_shibboleth','field_map_url',''),(1608,'auth_shibboleth','field_updatelocal_url','oncreate'),(1609,'auth_shibboleth','field_lock_url','unlocked'),(1610,'auth_shibboleth','field_map_idnumber',''),(1611,'auth_shibboleth','field_updatelocal_idnumber','oncreate'),(1612,'auth_shibboleth','field_lock_idnumber','unlocked'),(1613,'auth_shibboleth','field_map_institution',''),(1614,'auth_shibboleth','field_updatelocal_institution','oncreate'),(1615,'auth_shibboleth','field_lock_institution','unlocked'),(1616,'auth_shibboleth','field_map_department',''),(1617,'auth_shibboleth','field_updatelocal_department','oncreate'),(1618,'auth_shibboleth','field_lock_department','unlocked'),(1619,'auth_shibboleth','field_map_phone1',''),(1620,'auth_shibboleth','field_updatelocal_phone1','oncreate'),(1621,'auth_shibboleth','field_lock_phone1','unlocked'),(1622,'auth_shibboleth','field_map_phone2',''),(1623,'auth_shibboleth','field_updatelocal_phone2','oncreate'),(1624,'auth_shibboleth','field_lock_phone2','unlocked'),(1625,'auth_shibboleth','field_map_address',''),(1626,'auth_shibboleth','field_updatelocal_address','oncreate'),(1627,'auth_shibboleth','field_lock_address','unlocked'),(1628,'auth_shibboleth','field_map_firstnamephonetic',''),(1629,'auth_shibboleth','field_updatelocal_firstnamephonetic','oncreate'),(1630,'auth_shibboleth','field_lock_firstnamephonetic','unlocked'),(1631,'auth_shibboleth','field_map_lastnamephonetic',''),(1632,'auth_shibboleth','field_updatelocal_lastnamephonetic','oncreate'),(1633,'auth_shibboleth','field_lock_lastnamephonetic','unlocked'),(1634,'auth_shibboleth','field_map_middlename',''),(1635,'auth_shibboleth','field_updatelocal_middlename','oncreate'),(1636,'auth_shibboleth','field_lock_middlename','unlocked'),(1637,'auth_shibboleth','field_map_alternatename',''),(1638,'auth_shibboleth','field_updatelocal_alternatename','oncreate'),(1639,'auth_shibboleth','field_lock_alternatename','unlocked'),(1640,'block_activity_results','config_showbest','3'),(1641,'block_activity_results','config_showbest_locked',''),(1642,'block_activity_results','config_showworst','0'),(1643,'block_activity_results','config_showworst_locked',''),(1644,'block_activity_results','config_usegroups','0'),(1645,'block_activity_results','config_usegroups_locked',''),(1646,'block_activity_results','config_nameformat','1'),(1647,'block_activity_results','config_nameformat_locked',''),(1648,'block_activity_results','config_gradeformat','1'),(1649,'block_activity_results','config_gradeformat_locked',''),(1650,'block_activity_results','config_decimalpoints','2'),(1651,'block_activity_results','config_decimalpoints_locked',''),(1652,'block_section_links','numsections1','22'),(1653,'block_section_links','incby1','2'),(1654,'block_section_links','numsections2','40'),(1655,'block_section_links','incby2','5'),(1656,'block_tag_youtube','apikey',''),(1657,'format_singleactivity','activitytype','forum'),(1658,'fileconverter_googledrive','issuerid',''),(1659,'enrol_cohort','roleid','5'),(1660,'enrol_cohort','unenrolaction','0'),(1661,'enrol_meta','nosyncroleids',''),(1662,'enrol_meta','syncall','1'),(1663,'enrol_meta','unenrolaction','3'),(1664,'enrol_meta','coursesort','sortorder'),(1665,'enrol_database','dbtype',''),(1666,'enrol_database','dbhost','localhost'),(1667,'enrol_database','dbuser',''),(1668,'enrol_database','dbpass',''),(1669,'enrol_database','dbname',''),(1670,'enrol_database','dbencoding','utf-8'),(1671,'enrol_database','dbsetupsql',''),(1672,'enrol_database','dbsybasequoting','0'),(1673,'enrol_database','debugdb','0'),(1674,'enrol_database','localcoursefield','idnumber'),(1675,'enrol_database','localuserfield','idnumber'),(1676,'enrol_database','localrolefield','shortname'),(1677,'enrol_database','localcategoryfield','id'),(1678,'enrol_database','remoteenroltable',''),(1679,'enrol_database','remotecoursefield',''),(1680,'enrol_database','remoteuserfield',''),(1681,'enrol_database','remoterolefield',''),(1682,'enrol_database','remoteotheruserfield',''),(1683,'enrol_database','defaultrole','5'),(1684,'enrol_database','ignorehiddencourses','0'),(1685,'enrol_database','unenrolaction','0'),(1686,'enrol_database','newcoursetable',''),(1687,'enrol_database','newcoursefullname','fullname'),(1688,'enrol_database','newcourseshortname','shortname'),(1689,'enrol_database','newcourseidnumber','idnumber'),(1690,'enrol_database','newcoursecategory',''),(1691,'enrol_database','defaultcategory','1'),(1692,'enrol_database','templatecourse',''),(1693,'enrol_flatfile','location',''),(1694,'enrol_flatfile','encoding','UTF-8'),(1695,'enrol_flatfile','mailstudents','0'),(1696,'enrol_flatfile','mailteachers','0'),(1697,'enrol_flatfile','mailadmins','0'),(1698,'enrol_flatfile','unenrolaction','3'),(1699,'enrol_flatfile','expiredaction','3'),(1700,'enrol_guest','requirepassword','0'),(1701,'enrol_guest','usepasswordpolicy','0'),(1702,'enrol_guest','showhint','0'),(1703,'enrol_guest','defaultenrol','1'),(1704,'enrol_guest','status','1'),(1705,'enrol_guest','status_adv',''),(1706,'enrol_imsenterprise','imsfilelocation',''),(1707,'enrol_imsenterprise','logtolocation',''),(1708,'enrol_imsenterprise','mailadmins','0'),(1709,'enrol_imsenterprise','createnewusers','0'),(1710,'enrol_imsenterprise','imsupdateusers','0'),(1711,'enrol_imsenterprise','imsdeleteusers','0'),(1712,'enrol_imsenterprise','fixcaseusernames','0'),(1713,'enrol_imsenterprise','fixcasepersonalnames','0'),(1714,'enrol_imsenterprise','imssourcedidfallback','0'),(1715,'enrol_imsenterprise','imsrolemap01','5'),(1716,'enrol_imsenterprise','imsrolemap02','3'),(1717,'enrol_imsenterprise','imsrolemap03','3'),(1718,'enrol_imsenterprise','imsrolemap04','5'),(1719,'enrol_imsenterprise','imsrolemap05','0'),(1720,'enrol_imsenterprise','imsrolemap06','4'),(1721,'enrol_imsenterprise','imsrolemap07','0'),(1722,'enrol_imsenterprise','imsrolemap08','4'),(1723,'enrol_imsenterprise','truncatecoursecodes','0'),(1724,'enrol_imsenterprise','createnewcourses','0'),(1725,'enrol_imsenterprise','updatecourses','0'),(1726,'enrol_imsenterprise','createnewcategories','0'),(1727,'enrol_imsenterprise','nestedcategories','0'),(1728,'enrol_imsenterprise','categoryidnumber','0'),(1729,'enrol_imsenterprise','categoryseparator',''),(1730,'enrol_imsenterprise','imsunenrol','0'),(1731,'enrol_imsenterprise','imscoursemapshortname','coursecode'),(1732,'enrol_imsenterprise','imscoursemapfullname','short'),(1733,'enrol_imsenterprise','imscoursemapsummary','ignore'),(1734,'enrol_imsenterprise','imsrestricttarget',''),(1735,'enrol_imsenterprise','imscapitafix','0'),(1736,'enrol_ldap','host_url',''),(1737,'enrol_ldap','start_tls','0'),(1738,'enrol_ldap','ldap_version','3'),(1739,'enrol_ldap','ldapencoding','utf-8'),(1740,'enrol_ldap','pagesize','250'),(1741,'enrol_ldap','bind_dn',''),(1742,'enrol_ldap','bind_pw',''),(1743,'enrol_ldap','course_search_sub','0'),(1744,'enrol_ldap','memberattribute_isdn','0'),(1745,'enrol_ldap','user_contexts',''),(1746,'enrol_ldap','user_search_sub','0'),(1747,'enrol_ldap','user_type','default'),(1748,'enrol_ldap','opt_deref','0'),(1749,'enrol_ldap','idnumber_attribute',''),(1750,'enrol_ldap','objectclass',''),(1751,'enrol_ldap','course_idnumber',''),(1752,'enrol_ldap','course_shortname',''),(1753,'enrol_ldap','course_fullname',''),(1754,'enrol_ldap','course_summary',''),(1755,'enrol_ldap','ignorehiddencourses','0'),(1756,'enrol_ldap','unenrolaction','0'),(1757,'enrol_ldap','autocreate','0'),(1758,'enrol_ldap','category','1'),(1759,'enrol_ldap','template',''),(1760,'enrol_ldap','course_shortname_updateonsync','0'),(1761,'enrol_ldap','course_fullname_updateonsync','0'),(1762,'enrol_ldap','course_summary_updateonsync','0'),(1763,'enrol_ldap','nested_groups','0'),(1764,'enrol_ldap','group_memberofattribute',''),(1765,'enrol_manual','expiredaction','1'),(1766,'enrol_manual','expirynotifyhour','6'),(1767,'enrol_manual','defaultenrol','1'),(1768,'enrol_manual','status','0'),(1769,'enrol_manual','roleid','5'),(1770,'enrol_manual','enrolstart','4'),(1771,'enrol_manual','enrolperiod','0'),(1772,'enrol_manual','expirynotify','0'),(1773,'enrol_manual','expirythreshold','86400'),(1774,'enrol_mnet','roleid','5'),(1775,'enrol_mnet','roleid_adv','1'),(1776,'enrol_paypal','paypalbusiness',''),(1777,'enrol_paypal','mailstudents','0'),(1778,'enrol_paypal','mailteachers','0'),(1779,'enrol_paypal','mailadmins','0'),(1780,'enrol_paypal','expiredaction','3'),(1781,'enrol_paypal','status','1'),(1782,'enrol_paypal','cost','0'),(1783,'enrol_paypal','currency','USD'),(1784,'enrol_paypal','roleid','5'),(1785,'enrol_paypal','enrolperiod','0'),(1786,'enrol_lti','emaildisplay','2'),(1787,'enrol_lti','city',''),(1788,'enrol_lti','country',''),(1789,'enrol_lti','timezone','99'),(1790,'enrol_lti','lang','en'),(1791,'enrol_lti','institution',''),(1792,'enrol_self','requirepassword','0'),(1793,'enrol_self','usepasswordpolicy','0'),(1794,'enrol_self','showhint','0'),(1795,'enrol_self','expiredaction','1'),(1796,'enrol_self','expirynotifyhour','6'),(1797,'enrol_self','defaultenrol','1'),(1798,'enrol_self','status','1'),(1799,'enrol_self','newenrols','1'),(1800,'enrol_self','groupkey','0'),(1801,'enrol_self','roleid','5'),(1802,'enrol_self','enrolperiod','0'),(1803,'enrol_self','expirynotify','0'),(1804,'enrol_self','expirythreshold','86400'),(1805,'enrol_self','longtimenosee','0'),(1806,'enrol_self','maxenrolled','0'),(1807,'enrol_self','sendcoursewelcomemessage','1'),(1808,'filter_urltolink','formats','0'),(1809,'filter_urltolink','embedimages','1'),(1810,'filter_emoticon','formats','1,4,0'),(1811,'filter_mathjaxloader','httpsurl','https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.2/MathJax.js'),(1812,'filter_mathjaxloader','texfiltercompatibility','0'),(1813,'filter_mathjaxloader','mathjaxconfig','\nMathJax.Hub.Config({\n    config: [\"Accessible.js\", \"Safe.js\"],\n    errorSettings: { message: [\"!\"] },\n    skipStartupTypeset: true,\n    messageStyle: \"none\"\n});\n'),(1814,'filter_mathjaxloader','additionaldelimiters',''),(1815,'filter_tex','latexpreamble','\\usepackage[latin1]{inputenc}\n\\usepackage{amsmath}\n\\usepackage{amsfonts}\n\\RequirePackage{amsmath,amssymb,latexsym}\n'),(1816,'filter_tex','latexbackground','#FFFFFF'),(1817,'filter_tex','density','120'),(1818,'filter_tex','pathlatex','/usr/bin/latex'),(1819,'filter_tex','pathdvips','/usr/bin/dvips'),(1820,'filter_tex','pathconvert','/usr/bin/convert'),(1821,'filter_tex','pathdvisvgm','/usr/bin/dvisvgm'),(1822,'filter_tex','pathmimetex',''),(1823,'filter_tex','convertformat','gif'),(1824,'logstore_database','dbdriver',''),(1825,'logstore_database','dbhost',''),(1826,'logstore_database','dbuser',''),(1827,'logstore_database','dbpass',''),(1828,'logstore_database','dbname',''),(1829,'logstore_database','dbtable',''),(1830,'logstore_database','dbpersist','0'),(1831,'logstore_database','dbsocket',''),(1832,'logstore_database','dbport',''),(1833,'logstore_database','dbschema',''),(1834,'logstore_database','dbcollation',''),(1835,'logstore_database','dbhandlesoptions','0'),(1836,'logstore_database','buffersize','50'),(1837,'logstore_database','logguests','0'),(1838,'logstore_database','includelevels','1,2,0'),(1839,'logstore_database','includeactions','c,r,u,d'),(1840,'logstore_legacy','loglegacy','0'),(1841,'logstore_standard','logguests','1'),(1842,'logstore_standard','loglifetime','0'),(1843,'logstore_standard','buffersize','50'),(1844,'media_videojs','videoextensions','html_video,.f4v,.flv'),(1845,'media_videojs','audioextensions','html_audio'),(1846,'media_videojs','rtmp','0'),(1847,'media_videojs','useflash','0'),(1848,'media_videojs','youtube','1'),(1849,'media_videojs','videocssclass','video-js'),(1850,'media_videojs','audiocssclass','video-js'),(1851,'media_videojs','limitsize','1'),(1852,'qtype_multichoice','answerhowmany','1'),(1853,'qtype_multichoice','shuffleanswers','1'),(1854,'qtype_multichoice','answernumbering','abc'),(1855,'editor_atto','toolbar','collapse = collapse\nstyle1 = title, bold, italic\nlist = unorderedlist, orderedlist\nlinks = link\nfiles = image, media, recordrtc, managefiles\nstyle2 = underline, strike, subscript, superscript\nalign = align\nindent = indent\ninsert = equation, charmap, table, clear\nundo = undo\naccessibility = accessibilitychecker, accessibilityhelper\nother = html'),(1856,'editor_atto','autosavefrequency','60'),(1857,'atto_collapse','showgroups','5'),(1858,'atto_equation','librarygroup1','\n\\cdot\n\\times\n\\ast\n\\div\n\\diamond\n\\pm\n\\mp\n\\oplus\n\\ominus\n\\otimes\n\\oslash\n\\odot\n\\circ\n\\bullet\n\\asymp\n\\equiv\n\\subseteq\n\\supseteq\n\\leq\n\\geq\n\\preceq\n\\succeq\n\\sim\n\\simeq\n\\approx\n\\subset\n\\supset\n\\ll\n\\gg\n\\prec\n\\succ\n\\infty\n\\in\n\\ni\n\\forall\n\\exists\n\\neq\n'),(1859,'atto_equation','librarygroup2','\n\\leftarrow\n\\rightarrow\n\\uparrow\n\\downarrow\n\\leftrightarrow\n\\nearrow\n\\searrow\n\\swarrow\n\\nwarrow\n\\Leftarrow\n\\Rightarrow\n\\Uparrow\n\\Downarrow\n\\Leftrightarrow\n'),(1860,'atto_equation','librarygroup3','\n\\alpha\n\\beta\n\\gamma\n\\delta\n\\epsilon\n\\zeta\n\\eta\n\\theta\n\\iota\n\\kappa\n\\lambda\n\\mu\n\\nu\n\\xi\n\\pi\n\\rho\n\\sigma\n\\tau\n\\upsilon\n\\phi\n\\chi\n\\psi\n\\omega\n\\Gamma\n\\Delta\n\\Theta\n\\Lambda\n\\Xi\n\\Pi\n\\Sigma\n\\Upsilon\n\\Phi\n\\Psi\n\\Omega\n'),(1861,'atto_equation','librarygroup4','\n\\sum{a,b}\n\\sqrt[a]{b+c}\n\\int_{a}^{b}{c}\n\\iint_{a}^{b}{c}\n\\iiint_{a}^{b}{c}\n\\oint{a}\n(a)\n[a]\n\\lbrace{a}\\rbrace\n\\left| \\begin{matrix} a_1 & a_2 \\ a_3 & a_4 \\end{matrix} \\right|\n\\frac{a}{b+c}\n\\vec{a}\n\\binom {a} {b}\n{a \\brack b}\n{a \\brace b}\n'),(1862,'atto_recordrtc','allowedtypes','both'),(1863,'atto_recordrtc','audiobitrate','128000'),(1864,'atto_recordrtc','videobitrate','2500000'),(1865,'atto_recordrtc','timelimit','120'),(1866,'atto_table','allowborders','0'),(1867,'atto_table','allowbackgroundcolour','0'),(1868,'atto_table','allowwidth','0'),(1869,'editor_tinymce','customtoolbar','wrap,formatselect,wrap,bold,italic,wrap,bullist,numlist,wrap,link,unlink,wrap,image\n\nundo,redo,wrap,underline,strikethrough,sub,sup,wrap,justifyleft,justifycenter,justifyright,wrap,outdent,indent,wrap,forecolor,backcolor,wrap,ltr,rtl\n\nfontselect,fontsizeselect,wrap,code,search,replace,wrap,nonbreaking,charmap,table,wrap,cleanup,removeformat,pastetext,pasteword,wrap,fullscreen'),(1870,'editor_tinymce','fontselectlist','Trebuchet=Trebuchet MS,Verdana,Arial,Helvetica,sans-serif;Arial=arial,helvetica,sans-serif;Courier New=courier new,courier,monospace;Georgia=georgia,times new roman,times,serif;Tahoma=tahoma,arial,helvetica,sans-serif;Times New Roman=times new roman,times,serif;Verdana=verdana,arial,helvetica,sans-serif;Impact=impact;Wingdings=wingdings'),(1871,'editor_tinymce','customconfig',''),(1872,'tinymce_moodleemoticon','requireemoticon','1'),(1873,'tinymce_spellchecker','spellengine',''),(1874,'tinymce_spellchecker','spelllanguagelist','+English=en,Danish=da,Dutch=nl,Finnish=fi,French=fr,German=de,Italian=it,Polish=pl,Portuguese=pt,Spanish=es,Swedish=sv'),(1875,'tool_mobile','apppolicy',''),(1876,'theme_boost','themerev','1601071024'),(1877,'quiz_statistics','lastcron','1601071023'),(1878,'workshopallocation_scheduled','lastcron','1601073001'),(1879,'repository_dropbox','lastcron','1601073061'),(1880,'repository_filesystem','lastcron','1601073061'),(1881,'theme_bootstrapbase','themerev','1601071073'),(1882,'theme_clean','themerev','1601071086'),(1883,'theme_more','themerev','1601071099'),(1884,'core_plugin','recentfetch','1601071207'),(1885,'core_plugin','recentresponse','{\"status\":\"OK\",\"provider\":\"https:\\/\\/download.moodle.org\\/api\\/1.3\\/updates.php\",\"apiver\":\"1.3\",\"timegenerated\":1601071766,\"ticket\":\"JUM5JTkxYyVGNjQlRDQlMkMlN0QlRTElOTYlOEYlODElRTEwQiVCMyUxRCU5OSVDRSVBOSUwN2IlOUNyJTJDJUI5JUZGQm8lQTklN0QlMEIlRDklMTclMUIlODUlN0IlOEMlODlM\",\"forbranch\":\"3.6\",\"forversion\":\"2018120301\",\"updates\":{\"core\":[{\"version\":2018120310,\"release\":\"3.6.10 (Build: 20200511)\",\"branch\":\"3.6\",\"maturity\":200,\"url\":\"https:\\/\\/download.moodle.org\",\"download\":\"https:\\/\\/download.moodle.org\\/download.php\\/direct\\/stable36\\/moodle-3.6.10.zip\"},{\"version\":2020061502.02,\"release\":\"3.9.2+ (Build: 20200924)\",\"branch\":\"3.9\",\"maturity\":200,\"url\":\"https:\\/\\/download.moodle.org\",\"download\":\"https:\\/\\/download.moodle.org\\/download.php\\/direct\\/stable39\\/moodle-latest-39.zip\"},{\"version\":2019111805.02,\"release\":\"3.8.5+ (Build: 20200924)\",\"branch\":\"3.8\",\"maturity\":200,\"url\":\"https:\\/\\/download.moodle.org\",\"download\":\"https:\\/\\/download.moodle.org\\/download.php\\/direct\\/stable38\\/moodle-latest-38.zip\"},{\"version\":2019052008,\"release\":\"3.7.8 (Build: 20200914)\",\"branch\":\"3.7\",\"maturity\":200,\"url\":\"https:\\/\\/download.moodle.org\",\"download\":\"https:\\/\\/download.moodle.org\\/download.php\\/direct\\/stable37\\/moodle-3.7.8.zip\"},{\"version\":2021052500.16,\"release\":\"4.0dev (Build: 20200924)\",\"branch\":\"4.00\",\"maturity\":50,\"url\":\"https:\\/\\/download.moodle.org\",\"download\":\"https:\\/\\/download.moodle.org\\/download.php\\/direct\\/moodle\\/moodle-latest.zip\"}]}}'),(1886,'enrol_manual','expirynotifylast','1601071208'),(1887,'enrol_self','expirynotifylast','1601071208');
/*!40000 ALTER TABLE `mdl_config_plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_context`
--

DROP TABLE IF EXISTS `mdl_context`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_context` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contextlevel` bigint(10) NOT NULL DEFAULT 0,
  `instanceid` bigint(10) NOT NULL DEFAULT 0,
  `path` varchar(255) DEFAULT NULL,
  `depth` tinyint(2) NOT NULL DEFAULT 0,
  `locked` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_cont_conins_uix` (`contextlevel`,`instanceid`),
  KEY `mdl_cont_ins_ix` (`instanceid`),
  KEY `mdl_cont_pat_ix` (`path`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='one of these must be set';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_context`
--

LOCK TABLES `mdl_context` WRITE;
/*!40000 ALTER TABLE `mdl_context` DISABLE KEYS */;
INSERT INTO `mdl_context` VALUES (1,10,0,'/1',1,0),(2,50,1,'/1/2',2,0),(3,40,1,'/1/3',2,0),(4,30,1,'/1/4',2,0),(5,30,2,'/1/5',2,0),(6,80,1,'/1/6',2,0),(7,80,2,'/1/7',2,0),(8,80,3,'/1/8',2,0),(9,80,4,'/1/9',2,0),(10,80,5,'/1/10',2,0),(11,80,6,'/1/11',2,0),(12,80,7,'/1/12',2,0),(13,80,8,'/1/13',2,0),(14,80,9,'/1/14',2,0),(15,80,10,'/1/15',2,0),(16,80,11,'/1/5/16',3,0),(17,80,12,'/1/5/17',3,0),(18,80,13,'/1/5/18',3,0),(19,80,14,'/1/5/19',3,0),(20,80,15,'/1/5/20',3,0),(21,80,16,'/1/5/21',3,0),(22,80,17,'/1/5/22',3,0),(23,80,18,'/1/5/23',3,0),(24,80,19,'/1/5/24',3,0),(25,50,2,'/1/3/25',3,0),(26,70,1,'/1/3/25/26',4,0);
/*!40000 ALTER TABLE `mdl_context` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_context_temp`
--

DROP TABLE IF EXISTS `mdl_context_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_context_temp` (
  `id` bigint(10) NOT NULL,
  `path` varchar(255) NOT NULL DEFAULT '',
  `depth` tinyint(2) NOT NULL,
  `locked` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Used by build_context_path() in upgrade and cron to keep con';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_context_temp`
--

LOCK TABLES `mdl_context_temp` WRITE;
/*!40000 ALTER TABLE `mdl_context_temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_context_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course`
--

DROP TABLE IF EXISTS `mdl_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_course` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `category` bigint(10) NOT NULL DEFAULT 0,
  `sortorder` bigint(10) NOT NULL DEFAULT 0,
  `fullname` varchar(254) NOT NULL DEFAULT '',
  `shortname` varchar(255) NOT NULL DEFAULT '',
  `idnumber` varchar(100) NOT NULL DEFAULT '',
  `summary` longtext DEFAULT NULL,
  `summaryformat` tinyint(2) NOT NULL DEFAULT 0,
  `format` varchar(21) NOT NULL DEFAULT 'topics',
  `showgrades` tinyint(2) NOT NULL DEFAULT 1,
  `newsitems` mediumint(5) NOT NULL DEFAULT 1,
  `startdate` bigint(10) NOT NULL DEFAULT 0,
  `enddate` bigint(10) NOT NULL DEFAULT 0,
  `marker` bigint(10) NOT NULL DEFAULT 0,
  `maxbytes` bigint(10) NOT NULL DEFAULT 0,
  `legacyfiles` smallint(4) NOT NULL DEFAULT 0,
  `showreports` smallint(4) NOT NULL DEFAULT 0,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `visibleold` tinyint(1) NOT NULL DEFAULT 1,
  `groupmode` smallint(4) NOT NULL DEFAULT 0,
  `groupmodeforce` smallint(4) NOT NULL DEFAULT 0,
  `defaultgroupingid` bigint(10) NOT NULL DEFAULT 0,
  `lang` varchar(30) NOT NULL DEFAULT '',
  `calendartype` varchar(30) NOT NULL DEFAULT '',
  `theme` varchar(50) NOT NULL DEFAULT '',
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `requested` tinyint(1) NOT NULL DEFAULT 0,
  `enablecompletion` tinyint(1) NOT NULL DEFAULT 0,
  `completionnotify` tinyint(1) NOT NULL DEFAULT 0,
  `cacherev` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_cour_cat_ix` (`category`),
  KEY `mdl_cour_idn_ix` (`idnumber`),
  KEY `mdl_cour_sho_ix` (`shortname`),
  KEY `mdl_cour_sor_ix` (`sortorder`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Central course table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course`
--

LOCK TABLES `mdl_course` WRITE;
/*!40000 ALTER TABLE `mdl_course` DISABLE KEYS */;
INSERT INTO `mdl_course` VALUES (1,0,1,'\"New Site\"','\"New Site\"','','Moodle powered by Bitnami',0,'site',1,3,0,0,0,0,0,0,1,1,0,0,0,'','','',1601070774,1601070908,0,0,0,1601070908),(2,1,10001,'Test course for ayudante virtual','Test course','','<p>Curso de prueba para el ayudante virtual</p>',1,'topics',1,5,1601074800,1632610800,0,0,0,0,1,1,0,0,0,'','','',1601072819,1601072819,0,1,0,1601072826);
/*!40000 ALTER TABLE `mdl_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_categories`
--

DROP TABLE IF EXISTS `mdl_course_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_course_categories` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `idnumber` varchar(100) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `descriptionformat` tinyint(2) NOT NULL DEFAULT 0,
  `parent` bigint(10) NOT NULL DEFAULT 0,
  `sortorder` bigint(10) NOT NULL DEFAULT 0,
  `coursecount` bigint(10) NOT NULL DEFAULT 0,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `visibleold` tinyint(1) NOT NULL DEFAULT 1,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `depth` bigint(10) NOT NULL DEFAULT 0,
  `path` varchar(255) NOT NULL DEFAULT '',
  `theme` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_courcate_par_ix` (`parent`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Course categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_categories`
--

LOCK TABLES `mdl_course_categories` WRITE;
/*!40000 ALTER TABLE `mdl_course_categories` DISABLE KEYS */;
INSERT INTO `mdl_course_categories` VALUES (1,'Miscellaneous',NULL,NULL,0,0,10000,1,1,1,1601070774,1,'/1',NULL);
/*!40000 ALTER TABLE `mdl_course_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_completion_aggr_methd`
--

DROP TABLE IF EXISTS `mdl_course_completion_aggr_methd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_course_completion_aggr_methd` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `criteriatype` bigint(10) DEFAULT NULL,
  `method` tinyint(1) NOT NULL DEFAULT 0,
  `value` decimal(10,5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_courcompaggrmeth_coucr_uix` (`course`,`criteriatype`),
  KEY `mdl_courcompaggrmeth_cou_ix` (`course`),
  KEY `mdl_courcompaggrmeth_cri_ix` (`criteriatype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Course completion aggregation methods for criteria';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_completion_aggr_methd`
--

LOCK TABLES `mdl_course_completion_aggr_methd` WRITE;
/*!40000 ALTER TABLE `mdl_course_completion_aggr_methd` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_course_completion_aggr_methd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_completion_crit_compl`
--

DROP TABLE IF EXISTS `mdl_course_completion_crit_compl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_course_completion_crit_compl` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `criteriaid` bigint(10) NOT NULL DEFAULT 0,
  `gradefinal` decimal(10,5) DEFAULT NULL,
  `unenroled` bigint(10) DEFAULT NULL,
  `timecompleted` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_courcompcritcomp_useco_uix` (`userid`,`course`,`criteriaid`),
  KEY `mdl_courcompcritcomp_use_ix` (`userid`),
  KEY `mdl_courcompcritcomp_cou_ix` (`course`),
  KEY `mdl_courcompcritcomp_cri_ix` (`criteriaid`),
  KEY `mdl_courcompcritcomp_tim_ix` (`timecompleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Course completion user records';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_completion_crit_compl`
--

LOCK TABLES `mdl_course_completion_crit_compl` WRITE;
/*!40000 ALTER TABLE `mdl_course_completion_crit_compl` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_course_completion_crit_compl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_completion_criteria`
--

DROP TABLE IF EXISTS `mdl_course_completion_criteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_course_completion_criteria` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `criteriatype` bigint(10) NOT NULL DEFAULT 0,
  `module` varchar(100) DEFAULT NULL,
  `moduleinstance` bigint(10) DEFAULT NULL,
  `courseinstance` bigint(10) DEFAULT NULL,
  `enrolperiod` bigint(10) DEFAULT NULL,
  `timeend` bigint(10) DEFAULT NULL,
  `gradepass` decimal(10,5) DEFAULT NULL,
  `role` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_courcompcrit_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Course completion criteria';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_completion_criteria`
--

LOCK TABLES `mdl_course_completion_criteria` WRITE;
/*!40000 ALTER TABLE `mdl_course_completion_criteria` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_course_completion_criteria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_completion_defaults`
--

DROP TABLE IF EXISTS `mdl_course_completion_defaults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_course_completion_defaults` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL,
  `module` bigint(10) NOT NULL,
  `completion` tinyint(1) NOT NULL DEFAULT 0,
  `completionview` tinyint(1) NOT NULL DEFAULT 0,
  `completionusegrade` tinyint(1) NOT NULL DEFAULT 0,
  `completionexpected` bigint(10) NOT NULL DEFAULT 0,
  `customrules` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_courcompdefa_coumod_uix` (`course`,`module`),
  KEY `mdl_courcompdefa_mod_ix` (`module`),
  KEY `mdl_courcompdefa_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Default settings for activities completion';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_completion_defaults`
--

LOCK TABLES `mdl_course_completion_defaults` WRITE;
/*!40000 ALTER TABLE `mdl_course_completion_defaults` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_course_completion_defaults` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_completions`
--

DROP TABLE IF EXISTS `mdl_course_completions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_course_completions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `timeenrolled` bigint(10) NOT NULL DEFAULT 0,
  `timestarted` bigint(10) NOT NULL DEFAULT 0,
  `timecompleted` bigint(10) DEFAULT NULL,
  `reaggregate` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_courcomp_usecou_uix` (`userid`,`course`),
  KEY `mdl_courcomp_use_ix` (`userid`),
  KEY `mdl_courcomp_cou_ix` (`course`),
  KEY `mdl_courcomp_tim_ix` (`timecompleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Course completion records';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_completions`
--

LOCK TABLES `mdl_course_completions` WRITE;
/*!40000 ALTER TABLE `mdl_course_completions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_course_completions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_format_options`
--

DROP TABLE IF EXISTS `mdl_course_format_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_course_format_options` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL,
  `format` varchar(21) NOT NULL DEFAULT '',
  `sectionid` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(100) NOT NULL DEFAULT '',
  `value` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_courformopti_couforsec_uix` (`courseid`,`format`,`sectionid`,`name`),
  KEY `mdl_courformopti_cou_ix` (`courseid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Stores format-specific options for the course or course sect';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_format_options`
--

LOCK TABLES `mdl_course_format_options` WRITE;
/*!40000 ALTER TABLE `mdl_course_format_options` DISABLE KEYS */;
INSERT INTO `mdl_course_format_options` VALUES (1,1,'site',0,'numsections','1'),(2,2,'topics',0,'hiddensections','0'),(3,2,'topics',0,'coursedisplay','0');
/*!40000 ALTER TABLE `mdl_course_format_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_modules`
--

DROP TABLE IF EXISTS `mdl_course_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_course_modules` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `module` bigint(10) NOT NULL DEFAULT 0,
  `instance` bigint(10) NOT NULL DEFAULT 0,
  `section` bigint(10) NOT NULL DEFAULT 0,
  `idnumber` varchar(100) DEFAULT NULL,
  `added` bigint(10) NOT NULL DEFAULT 0,
  `score` smallint(4) NOT NULL DEFAULT 0,
  `indent` mediumint(5) NOT NULL DEFAULT 0,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `visibleoncoursepage` tinyint(1) NOT NULL DEFAULT 1,
  `visibleold` tinyint(1) NOT NULL DEFAULT 1,
  `groupmode` smallint(4) NOT NULL DEFAULT 0,
  `groupingid` bigint(10) NOT NULL DEFAULT 0,
  `completion` tinyint(1) NOT NULL DEFAULT 0,
  `completiongradeitemnumber` bigint(10) DEFAULT NULL,
  `completionview` tinyint(1) NOT NULL DEFAULT 0,
  `completionexpected` bigint(10) NOT NULL DEFAULT 0,
  `showdescription` tinyint(1) NOT NULL DEFAULT 0,
  `availability` longtext DEFAULT NULL,
  `deletioninprogress` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_courmodu_vis_ix` (`visible`),
  KEY `mdl_courmodu_cou_ix` (`course`),
  KEY `mdl_courmodu_mod_ix` (`module`),
  KEY `mdl_courmodu_ins_ix` (`instance`),
  KEY `mdl_courmodu_idncou_ix` (`idnumber`,`course`),
  KEY `mdl_courmodu_gro_ix` (`groupingid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='course_modules table retrofitted from MySQL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_modules`
--

LOCK TABLES `mdl_course_modules` WRITE;
/*!40000 ALTER TABLE `mdl_course_modules` DISABLE KEYS */;
INSERT INTO `mdl_course_modules` VALUES (1,2,9,1,1,NULL,1601072819,0,0,1,1,1,0,0,0,NULL,0,0,0,NULL,0);
/*!40000 ALTER TABLE `mdl_course_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_modules_completion`
--

DROP TABLE IF EXISTS `mdl_course_modules_completion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_course_modules_completion` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `coursemoduleid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `completionstate` tinyint(1) NOT NULL,
  `viewed` tinyint(1) DEFAULT NULL,
  `overrideby` bigint(10) DEFAULT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_courmoducomp_usecou_uix` (`userid`,`coursemoduleid`),
  KEY `mdl_courmoducomp_cou_ix` (`coursemoduleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores the completion state (completed or not completed, etc';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_modules_completion`
--

LOCK TABLES `mdl_course_modules_completion` WRITE;
/*!40000 ALTER TABLE `mdl_course_modules_completion` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_course_modules_completion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_published`
--

DROP TABLE IF EXISTS `mdl_course_published`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_course_published` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `huburl` varchar(255) DEFAULT NULL,
  `courseid` bigint(10) NOT NULL,
  `timepublished` bigint(10) NOT NULL,
  `enrollable` tinyint(1) NOT NULL DEFAULT 1,
  `hubcourseid` bigint(10) NOT NULL,
  `status` tinyint(1) DEFAULT 0,
  `timechecked` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Information about how and when an local courses were publish';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_published`
--

LOCK TABLES `mdl_course_published` WRITE;
/*!40000 ALTER TABLE `mdl_course_published` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_course_published` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_request`
--

DROP TABLE IF EXISTS `mdl_course_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_course_request` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(254) NOT NULL DEFAULT '',
  `shortname` varchar(100) NOT NULL DEFAULT '',
  `summary` longtext NOT NULL,
  `summaryformat` tinyint(2) NOT NULL DEFAULT 0,
  `category` bigint(10) NOT NULL DEFAULT 0,
  `reason` longtext NOT NULL,
  `requester` bigint(10) NOT NULL DEFAULT 0,
  `password` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_courrequ_sho_ix` (`shortname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='course requests';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_request`
--

LOCK TABLES `mdl_course_request` WRITE;
/*!40000 ALTER TABLE `mdl_course_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_course_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_sections`
--

DROP TABLE IF EXISTS `mdl_course_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_course_sections` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `section` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `summary` longtext DEFAULT NULL,
  `summaryformat` tinyint(2) NOT NULL DEFAULT 0,
  `sequence` longtext DEFAULT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `availability` longtext DEFAULT NULL,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_coursect_cousec_uix` (`course`,`section`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='to define the sections for each course';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_sections`
--

LOCK TABLES `mdl_course_sections` WRITE;
/*!40000 ALTER TABLE `mdl_course_sections` DISABLE KEYS */;
INSERT INTO `mdl_course_sections` VALUES (1,2,0,NULL,'',1,'1',1,NULL,1601072819),(2,2,1,NULL,'',1,'',1,NULL,1601072819),(3,2,2,NULL,'',1,'',1,NULL,1601072819),(4,2,3,NULL,'',1,'',1,NULL,1601072819),(5,2,4,NULL,'',1,'',1,NULL,1601072819);
/*!40000 ALTER TABLE `mdl_course_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_data`
--

DROP TABLE IF EXISTS `mdl_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_data` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `intro` longtext NOT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT 0,
  `comments` smallint(4) NOT NULL DEFAULT 0,
  `timeavailablefrom` bigint(10) NOT NULL DEFAULT 0,
  `timeavailableto` bigint(10) NOT NULL DEFAULT 0,
  `timeviewfrom` bigint(10) NOT NULL DEFAULT 0,
  `timeviewto` bigint(10) NOT NULL DEFAULT 0,
  `requiredentries` int(8) NOT NULL DEFAULT 0,
  `requiredentriestoview` int(8) NOT NULL DEFAULT 0,
  `maxentries` int(8) NOT NULL DEFAULT 0,
  `rssarticles` smallint(4) NOT NULL DEFAULT 0,
  `singletemplate` longtext DEFAULT NULL,
  `listtemplate` longtext DEFAULT NULL,
  `listtemplateheader` longtext DEFAULT NULL,
  `listtemplatefooter` longtext DEFAULT NULL,
  `addtemplate` longtext DEFAULT NULL,
  `rsstemplate` longtext DEFAULT NULL,
  `rsstitletemplate` longtext DEFAULT NULL,
  `csstemplate` longtext DEFAULT NULL,
  `jstemplate` longtext DEFAULT NULL,
  `asearchtemplate` longtext DEFAULT NULL,
  `approval` smallint(4) NOT NULL DEFAULT 0,
  `manageapproved` smallint(4) NOT NULL DEFAULT 1,
  `scale` bigint(10) NOT NULL DEFAULT 0,
  `assessed` bigint(10) NOT NULL DEFAULT 0,
  `assesstimestart` bigint(10) NOT NULL DEFAULT 0,
  `assesstimefinish` bigint(10) NOT NULL DEFAULT 0,
  `defaultsort` bigint(10) NOT NULL DEFAULT 0,
  `defaultsortdir` smallint(4) NOT NULL DEFAULT 0,
  `editany` smallint(4) NOT NULL DEFAULT 0,
  `notification` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `config` longtext DEFAULT NULL,
  `completionentries` bigint(10) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_data_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED COMMENT='all database activities';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_data`
--

LOCK TABLES `mdl_data` WRITE;
/*!40000 ALTER TABLE `mdl_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_data_content`
--

DROP TABLE IF EXISTS `mdl_data_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_data_content` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `fieldid` bigint(10) NOT NULL DEFAULT 0,
  `recordid` bigint(10) NOT NULL DEFAULT 0,
  `content` longtext DEFAULT NULL,
  `content1` longtext DEFAULT NULL,
  `content2` longtext DEFAULT NULL,
  `content3` longtext DEFAULT NULL,
  `content4` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_datacont_rec_ix` (`recordid`),
  KEY `mdl_datacont_fie_ix` (`fieldid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='the content introduced in each record/fields';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_data_content`
--

LOCK TABLES `mdl_data_content` WRITE;
/*!40000 ALTER TABLE `mdl_data_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_data_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_data_fields`
--

DROP TABLE IF EXISTS `mdl_data_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_data_fields` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `dataid` bigint(10) NOT NULL DEFAULT 0,
  `type` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `param1` longtext DEFAULT NULL,
  `param2` longtext DEFAULT NULL,
  `param3` longtext DEFAULT NULL,
  `param4` longtext DEFAULT NULL,
  `param5` longtext DEFAULT NULL,
  `param6` longtext DEFAULT NULL,
  `param7` longtext DEFAULT NULL,
  `param8` longtext DEFAULT NULL,
  `param9` longtext DEFAULT NULL,
  `param10` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_datafiel_typdat_ix` (`type`,`dataid`),
  KEY `mdl_datafiel_dat_ix` (`dataid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED COMMENT='every field available';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_data_fields`
--

LOCK TABLES `mdl_data_fields` WRITE;
/*!40000 ALTER TABLE `mdl_data_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_data_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_data_records`
--

DROP TABLE IF EXISTS `mdl_data_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_data_records` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `groupid` bigint(10) NOT NULL DEFAULT 0,
  `dataid` bigint(10) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `approved` smallint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_datareco_dat_ix` (`dataid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='every record introduced';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_data_records`
--

LOCK TABLES `mdl_data_records` WRITE;
/*!40000 ALTER TABLE `mdl_data_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_data_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_editor_atto_autosave`
--

DROP TABLE IF EXISTS `mdl_editor_atto_autosave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_editor_atto_autosave` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `elementid` varchar(255) NOT NULL DEFAULT '',
  `contextid` bigint(10) NOT NULL,
  `pagehash` varchar(64) NOT NULL DEFAULT '',
  `userid` bigint(10) NOT NULL,
  `drafttext` longtext NOT NULL,
  `draftid` bigint(10) DEFAULT NULL,
  `pageinstance` varchar(64) NOT NULL DEFAULT '',
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_editattoauto_eleconuse_uix` (`elementid`,`contextid`,`userid`,`pagehash`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='Draft text that is auto-saved every 5 seconds while an edito';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_editor_atto_autosave`
--

LOCK TABLES `mdl_editor_atto_autosave` WRITE;
/*!40000 ALTER TABLE `mdl_editor_atto_autosave` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_editor_atto_autosave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol`
--

DROP TABLE IF EXISTS `mdl_enrol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_enrol` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `enrol` varchar(20) NOT NULL DEFAULT '',
  `status` bigint(10) NOT NULL DEFAULT 0,
  `courseid` bigint(10) NOT NULL,
  `sortorder` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `enrolperiod` bigint(10) DEFAULT 0,
  `enrolstartdate` bigint(10) DEFAULT 0,
  `enrolenddate` bigint(10) DEFAULT 0,
  `expirynotify` tinyint(1) DEFAULT 0,
  `expirythreshold` bigint(10) DEFAULT 0,
  `notifyall` tinyint(1) DEFAULT 0,
  `password` varchar(50) DEFAULT NULL,
  `cost` varchar(20) DEFAULT NULL,
  `currency` varchar(3) DEFAULT NULL,
  `roleid` bigint(10) DEFAULT 0,
  `customint1` bigint(10) DEFAULT NULL,
  `customint2` bigint(10) DEFAULT NULL,
  `customint3` bigint(10) DEFAULT NULL,
  `customint4` bigint(10) DEFAULT NULL,
  `customint5` bigint(10) DEFAULT NULL,
  `customint6` bigint(10) DEFAULT NULL,
  `customint7` bigint(10) DEFAULT NULL,
  `customint8` bigint(10) DEFAULT NULL,
  `customchar1` varchar(255) DEFAULT NULL,
  `customchar2` varchar(255) DEFAULT NULL,
  `customchar3` varchar(1333) DEFAULT NULL,
  `customdec1` decimal(12,7) DEFAULT NULL,
  `customdec2` decimal(12,7) DEFAULT NULL,
  `customtext1` longtext DEFAULT NULL,
  `customtext2` longtext DEFAULT NULL,
  `customtext3` longtext DEFAULT NULL,
  `customtext4` longtext DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_enro_enr_ix` (`enrol`),
  KEY `mdl_enro_cou_ix` (`courseid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Instances of enrolment plugins used in courses, fields marke';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol`
--

LOCK TABLES `mdl_enrol` WRITE;
/*!40000 ALTER TABLE `mdl_enrol` DISABLE KEYS */;
INSERT INTO `mdl_enrol` VALUES (1,'manual',0,2,0,NULL,0,0,0,0,86400,0,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1601072819,1601072819),(2,'guest',1,2,1,NULL,0,0,0,0,0,0,'',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1601072819,1601072819),(3,'self',1,2,2,NULL,0,0,0,0,86400,0,NULL,NULL,NULL,5,0,0,0,1,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1601072819,1601072819);
/*!40000 ALTER TABLE `mdl_enrol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_flatfile`
--

DROP TABLE IF EXISTS `mdl_enrol_flatfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_enrol_flatfile` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `action` varchar(30) NOT NULL DEFAULT '',
  `roleid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `courseid` bigint(10) NOT NULL,
  `timestart` bigint(10) NOT NULL DEFAULT 0,
  `timeend` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_enroflat_cou_ix` (`courseid`),
  KEY `mdl_enroflat_use_ix` (`userid`),
  KEY `mdl_enroflat_rol_ix` (`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='enrol_flatfile table retrofitted from MySQL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_flatfile`
--

LOCK TABLES `mdl_enrol_flatfile` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_flatfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_flatfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_lti_lti2_consumer`
--

DROP TABLE IF EXISTS `mdl_enrol_lti_lti2_consumer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_enrol_lti_lti2_consumer` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `consumerkey256` varchar(255) NOT NULL DEFAULT '',
  `consumerkey` longtext DEFAULT NULL,
  `secret` varchar(1024) NOT NULL DEFAULT '',
  `ltiversion` varchar(10) DEFAULT NULL,
  `consumername` varchar(255) DEFAULT NULL,
  `consumerversion` varchar(255) DEFAULT NULL,
  `consumerguid` varchar(1024) DEFAULT NULL,
  `profile` longtext DEFAULT NULL,
  `toolproxy` longtext DEFAULT NULL,
  `settings` longtext DEFAULT NULL,
  `protected` tinyint(1) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `enablefrom` bigint(10) DEFAULT NULL,
  `enableuntil` bigint(10) DEFAULT NULL,
  `lastaccess` bigint(10) DEFAULT NULL,
  `created` bigint(10) NOT NULL,
  `updated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_enroltilti2cons_con_uix` (`consumerkey256`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED COMMENT='LTI consumers interacting with moodle';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_lti_lti2_consumer`
--

LOCK TABLES `mdl_enrol_lti_lti2_consumer` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_lti_lti2_consumer` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_lti_lti2_consumer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_lti_lti2_context`
--

DROP TABLE IF EXISTS `mdl_enrol_lti_lti2_context`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_enrol_lti_lti2_context` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `consumerid` bigint(11) NOT NULL,
  `lticontextkey` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(100) DEFAULT NULL,
  `settings` longtext DEFAULT NULL,
  `created` bigint(10) NOT NULL,
  `updated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_enroltilti2cont_con_ix` (`consumerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Information about a specific LTI contexts from the consumers';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_lti_lti2_context`
--

LOCK TABLES `mdl_enrol_lti_lti2_context` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_lti_lti2_context` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_lti_lti2_context` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_lti_lti2_nonce`
--

DROP TABLE IF EXISTS `mdl_enrol_lti_lti2_nonce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_enrol_lti_lti2_nonce` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `consumerid` bigint(11) NOT NULL,
  `value` varchar(64) NOT NULL DEFAULT '',
  `expires` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_enroltilti2nonc_con_ix` (`consumerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Nonce used for authentication between moodle and a consumer';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_lti_lti2_nonce`
--

LOCK TABLES `mdl_enrol_lti_lti2_nonce` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_lti_lti2_nonce` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_lti_lti2_nonce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_lti_lti2_resource_link`
--

DROP TABLE IF EXISTS `mdl_enrol_lti_lti2_resource_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_enrol_lti_lti2_resource_link` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `contextid` bigint(11) DEFAULT NULL,
  `consumerid` bigint(11) DEFAULT NULL,
  `ltiresourcelinkkey` varchar(255) NOT NULL DEFAULT '',
  `settings` longtext DEFAULT NULL,
  `primaryresourcelinkid` bigint(11) DEFAULT NULL,
  `shareapproved` tinyint(1) DEFAULT NULL,
  `created` bigint(10) NOT NULL,
  `updated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_enroltilti2resolink_con_ix` (`contextid`),
  KEY `mdl_enroltilti2resolink_pri_ix` (`primaryresourcelinkid`),
  KEY `mdl_enroltilti2resolink_co2_ix` (`consumerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Link from the consumer to the tool';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_lti_lti2_resource_link`
--

LOCK TABLES `mdl_enrol_lti_lti2_resource_link` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_lti_lti2_resource_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_lti_lti2_resource_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_lti_lti2_share_key`
--

DROP TABLE IF EXISTS `mdl_enrol_lti_lti2_share_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_enrol_lti_lti2_share_key` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `sharekey` varchar(32) NOT NULL DEFAULT '',
  `resourcelinkid` bigint(11) NOT NULL,
  `autoapprove` tinyint(1) NOT NULL,
  `expires` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_enroltilti2sharkey_sha_uix` (`sharekey`),
  UNIQUE KEY `mdl_enroltilti2sharkey_res_uix` (`resourcelinkid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Resource link share key';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_lti_lti2_share_key`
--

LOCK TABLES `mdl_enrol_lti_lti2_share_key` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_lti_lti2_share_key` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_lti_lti2_share_key` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_lti_lti2_tool_proxy`
--

DROP TABLE IF EXISTS `mdl_enrol_lti_lti2_tool_proxy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_enrol_lti_lti2_tool_proxy` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `toolproxykey` varchar(32) NOT NULL DEFAULT '',
  `consumerid` bigint(11) NOT NULL,
  `toolproxy` longtext NOT NULL,
  `created` bigint(10) NOT NULL,
  `updated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_enroltilti2toolprox_to_uix` (`toolproxykey`),
  KEY `mdl_enroltilti2toolprox_con_ix` (`consumerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='A tool proxy between moodle and a consumer';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_lti_lti2_tool_proxy`
--

LOCK TABLES `mdl_enrol_lti_lti2_tool_proxy` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_lti_lti2_tool_proxy` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_lti_lti2_tool_proxy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_lti_lti2_user_result`
--

DROP TABLE IF EXISTS `mdl_enrol_lti_lti2_user_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_enrol_lti_lti2_user_result` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `resourcelinkid` bigint(11) NOT NULL,
  `ltiuserkey` varchar(255) NOT NULL DEFAULT '',
  `ltiresultsourcedid` varchar(1024) NOT NULL DEFAULT '',
  `created` bigint(10) NOT NULL,
  `updated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_enroltilti2userresu_res_ix` (`resourcelinkid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Results for each user for each resource link';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_lti_lti2_user_result`
--

LOCK TABLES `mdl_enrol_lti_lti2_user_result` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_lti_lti2_user_result` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_lti_lti2_user_result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_lti_tool_consumer_map`
--

DROP TABLE IF EXISTS `mdl_enrol_lti_tool_consumer_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_enrol_lti_tool_consumer_map` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `toolid` bigint(11) NOT NULL,
  `consumerid` bigint(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_enroltitoolconsmap_too_ix` (`toolid`),
  KEY `mdl_enroltitoolconsmap_con_ix` (`consumerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Table that maps the published tool to tool consumers.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_lti_tool_consumer_map`
--

LOCK TABLES `mdl_enrol_lti_tool_consumer_map` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_lti_tool_consumer_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_lti_tool_consumer_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_lti_tools`
--

DROP TABLE IF EXISTS `mdl_enrol_lti_tools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_enrol_lti_tools` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `enrolid` bigint(10) NOT NULL,
  `contextid` bigint(10) NOT NULL,
  `institution` varchar(40) NOT NULL DEFAULT '',
  `lang` varchar(30) NOT NULL DEFAULT 'en',
  `timezone` varchar(100) NOT NULL DEFAULT '99',
  `maxenrolled` bigint(10) NOT NULL DEFAULT 0,
  `maildisplay` tinyint(2) NOT NULL DEFAULT 2,
  `city` varchar(120) NOT NULL DEFAULT '',
  `country` varchar(2) NOT NULL DEFAULT '',
  `gradesync` tinyint(1) NOT NULL DEFAULT 0,
  `gradesynccompletion` tinyint(1) NOT NULL DEFAULT 0,
  `membersync` tinyint(1) NOT NULL DEFAULT 0,
  `membersyncmode` tinyint(1) NOT NULL DEFAULT 0,
  `roleinstructor` bigint(10) NOT NULL,
  `rolelearner` bigint(10) NOT NULL,
  `secret` longtext DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_enroltitool_enr_ix` (`enrolid`),
  KEY `mdl_enroltitool_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='List of tools provided to the remote system';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_lti_tools`
--

LOCK TABLES `mdl_enrol_lti_tools` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_lti_tools` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_lti_tools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_lti_users`
--

DROP TABLE IF EXISTS `mdl_enrol_lti_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_enrol_lti_users` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `toolid` bigint(10) NOT NULL,
  `serviceurl` longtext DEFAULT NULL,
  `sourceid` longtext DEFAULT NULL,
  `consumerkey` longtext DEFAULT NULL,
  `consumersecret` longtext DEFAULT NULL,
  `membershipsurl` longtext DEFAULT NULL,
  `membershipsid` longtext DEFAULT NULL,
  `lastgrade` decimal(10,5) DEFAULT NULL,
  `lastaccess` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_enroltiuser_use_ix` (`userid`),
  KEY `mdl_enroltiuser_too_ix` (`toolid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='User access log and gradeback data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_lti_users`
--

LOCK TABLES `mdl_enrol_lti_users` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_lti_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_lti_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_paypal`
--

DROP TABLE IF EXISTS `mdl_enrol_paypal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_enrol_paypal` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `business` varchar(255) NOT NULL DEFAULT '',
  `receiver_email` varchar(255) NOT NULL DEFAULT '',
  `receiver_id` varchar(255) NOT NULL DEFAULT '',
  `item_name` varchar(255) NOT NULL DEFAULT '',
  `courseid` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `instanceid` bigint(10) NOT NULL DEFAULT 0,
  `memo` varchar(255) NOT NULL DEFAULT '',
  `tax` varchar(255) NOT NULL DEFAULT '',
  `option_name1` varchar(255) NOT NULL DEFAULT '',
  `option_selection1_x` varchar(255) NOT NULL DEFAULT '',
  `option_name2` varchar(255) NOT NULL DEFAULT '',
  `option_selection2_x` varchar(255) NOT NULL DEFAULT '',
  `payment_status` varchar(255) NOT NULL DEFAULT '',
  `pending_reason` varchar(255) NOT NULL DEFAULT '',
  `reason_code` varchar(30) NOT NULL DEFAULT '',
  `txn_id` varchar(255) NOT NULL DEFAULT '',
  `parent_txn_id` varchar(255) NOT NULL DEFAULT '',
  `payment_type` varchar(30) NOT NULL DEFAULT '',
  `timeupdated` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_enropayp_bus_ix` (`business`),
  KEY `mdl_enropayp_rec_ix` (`receiver_email`),
  KEY `mdl_enropayp_cou_ix` (`courseid`),
  KEY `mdl_enropayp_use_ix` (`userid`),
  KEY `mdl_enropayp_ins_ix` (`instanceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED COMMENT='Holds all known information about PayPal transactions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_paypal`
--

LOCK TABLES `mdl_enrol_paypal` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_paypal` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_paypal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_event`
--

DROP TABLE IF EXISTS `mdl_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_event` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` longtext NOT NULL,
  `description` longtext NOT NULL,
  `format` smallint(4) NOT NULL DEFAULT 0,
  `categoryid` bigint(10) NOT NULL DEFAULT 0,
  `courseid` bigint(10) NOT NULL DEFAULT 0,
  `groupid` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `repeatid` bigint(10) NOT NULL DEFAULT 0,
  `modulename` varchar(20) NOT NULL DEFAULT '',
  `instance` bigint(10) NOT NULL DEFAULT 0,
  `type` smallint(4) NOT NULL DEFAULT 0,
  `eventtype` varchar(20) NOT NULL DEFAULT '',
  `timestart` bigint(10) NOT NULL DEFAULT 0,
  `timeduration` bigint(10) NOT NULL DEFAULT 0,
  `timesort` bigint(10) DEFAULT NULL,
  `visible` smallint(4) NOT NULL DEFAULT 1,
  `uuid` varchar(255) NOT NULL DEFAULT '',
  `sequence` bigint(10) NOT NULL DEFAULT 1,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `subscriptionid` bigint(10) DEFAULT NULL,
  `priority` bigint(10) DEFAULT NULL,
  `location` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_even_cou_ix` (`courseid`),
  KEY `mdl_even_use_ix` (`userid`),
  KEY `mdl_even_tim_ix` (`timestart`),
  KEY `mdl_even_tim2_ix` (`timeduration`),
  KEY `mdl_even_uui_ix` (`uuid`),
  KEY `mdl_even_typtim_ix` (`type`,`timesort`),
  KEY `mdl_even_grocoucatvisuse_ix` (`groupid`,`courseid`,`categoryid`,`visible`,`userid`),
  KEY `mdl_even_cat_ix` (`categoryid`),
  KEY `mdl_even_sub_ix` (`subscriptionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='For everything with a time associated to it';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_event`
--

LOCK TABLES `mdl_event` WRITE;
/*!40000 ALTER TABLE `mdl_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_event_subscriptions`
--

DROP TABLE IF EXISTS `mdl_event_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_event_subscriptions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL DEFAULT '',
  `categoryid` bigint(10) NOT NULL DEFAULT 0,
  `courseid` bigint(10) NOT NULL DEFAULT 0,
  `groupid` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `eventtype` varchar(20) NOT NULL DEFAULT '',
  `pollinterval` bigint(10) NOT NULL DEFAULT 0,
  `lastupdated` bigint(10) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tracks subscriptions to remote calendars.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_event_subscriptions`
--

LOCK TABLES `mdl_event_subscriptions` WRITE;
/*!40000 ALTER TABLE `mdl_event_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_event_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_events_handlers`
--

DROP TABLE IF EXISTS `mdl_events_handlers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_events_handlers` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `eventname` varchar(166) NOT NULL DEFAULT '',
  `component` varchar(166) NOT NULL DEFAULT '',
  `handlerfile` varchar(255) NOT NULL DEFAULT '',
  `handlerfunction` longtext DEFAULT NULL,
  `schedule` varchar(255) DEFAULT NULL,
  `status` bigint(10) NOT NULL DEFAULT 0,
  `internal` tinyint(2) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_evenhand_evecom_uix` (`eventname`,`component`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='This table is for storing which components requests what typ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_events_handlers`
--

LOCK TABLES `mdl_events_handlers` WRITE;
/*!40000 ALTER TABLE `mdl_events_handlers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_events_handlers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_events_queue`
--

DROP TABLE IF EXISTS `mdl_events_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_events_queue` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `eventdata` longtext NOT NULL,
  `stackdump` longtext DEFAULT NULL,
  `userid` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_evenqueu_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='This table is for storing queued events. It stores only one ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_events_queue`
--

LOCK TABLES `mdl_events_queue` WRITE;
/*!40000 ALTER TABLE `mdl_events_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_events_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_events_queue_handlers`
--

DROP TABLE IF EXISTS `mdl_events_queue_handlers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_events_queue_handlers` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `queuedeventid` bigint(10) NOT NULL,
  `handlerid` bigint(10) NOT NULL,
  `status` bigint(10) DEFAULT NULL,
  `errormessage` longtext DEFAULT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_evenqueuhand_que_ix` (`queuedeventid`),
  KEY `mdl_evenqueuhand_han_ix` (`handlerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='This is the list of queued handlers for processing. The even';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_events_queue_handlers`
--

LOCK TABLES `mdl_events_queue_handlers` WRITE;
/*!40000 ALTER TABLE `mdl_events_queue_handlers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_events_queue_handlers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_external_functions`
--

DROP TABLE IF EXISTS `mdl_external_functions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_external_functions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `classname` varchar(100) NOT NULL DEFAULT '',
  `methodname` varchar(100) NOT NULL DEFAULT '',
  `classpath` varchar(255) DEFAULT NULL,
  `component` varchar(100) NOT NULL DEFAULT '',
  `capabilities` varchar(255) DEFAULT NULL,
  `services` varchar(1333) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_extefunc_nam_uix` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=535 DEFAULT CHARSET=utf8 COMMENT='list of all external functions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_external_functions`
--

LOCK TABLES `mdl_external_functions` WRITE;
/*!40000 ALTER TABLE `mdl_external_functions` DISABLE KEYS */;
INSERT INTO `mdl_external_functions` VALUES (1,'core_auth_confirm_user','core_auth_external','confirm_user',NULL,'moodle','',NULL),(2,'core_auth_request_password_reset','core_auth_external','request_password_reset',NULL,'moodle','',NULL),(3,'core_auth_is_minor','core_auth_external','is_minor',NULL,'moodle','',NULL),(4,'core_auth_is_age_digital_consent_verification_enabled','core_auth_external','is_age_digital_consent_verification_enabled',NULL,'moodle','',NULL),(5,'core_auth_resend_confirmation_email','core_auth_external','resend_confirmation_email',NULL,'moodle','',NULL),(6,'core_badges_get_user_badges','core_badges_external','get_user_badges',NULL,'moodle','moodle/badges:viewotherbadges','moodle_mobile_app'),(7,'core_blog_get_entries','core_blog\\external','get_entries',NULL,'moodle','','moodle_mobile_app'),(8,'core_blog_view_entries','core_blog\\external','view_entries',NULL,'moodle','','moodle_mobile_app'),(9,'core_calendar_get_calendar_monthly_view','core_calendar_external','get_calendar_monthly_view','calendar/externallib.php','moodle','','moodle_mobile_app'),(10,'core_calendar_get_calendar_day_view','core_calendar_external','get_calendar_day_view','calendar/externallib.php','moodle','','moodle_mobile_app'),(11,'core_calendar_get_calendar_upcoming_view','core_calendar_external','get_calendar_upcoming_view','calendar/externallib.php','moodle','','moodle_mobile_app'),(12,'core_calendar_update_event_start_day','core_calendar_external','update_event_start_day','calendar/externallib.php','moodle','moodle/calendar:manageentries, moodle/calendar:manageownentries, moodle/calendar:managegroupentries',NULL),(13,'core_calendar_create_calendar_events','core_calendar_external','create_calendar_events','calendar/externallib.php','moodle','moodle/calendar:manageentries, moodle/calendar:manageownentries, moodle/calendar:managegroupentries','moodle_mobile_app'),(14,'core_calendar_delete_calendar_events','core_calendar_external','delete_calendar_events','calendar/externallib.php','moodle','moodle/calendar:manageentries, moodle/calendar:manageownentries, moodle/calendar:managegroupentries','moodle_mobile_app'),(15,'core_calendar_get_calendar_events','core_calendar_external','get_calendar_events','calendar/externallib.php','moodle','moodle/calendar:manageentries, moodle/calendar:manageownentries, moodle/calendar:managegroupentries','moodle_mobile_app'),(16,'core_calendar_get_action_events_by_timesort','core_calendar_external','get_calendar_action_events_by_timesort','calendar/externallib.php','moodle','moodle/calendar:manageentries, moodle/calendar:manageownentries, moodle/calendar:managegroupentries','moodle_mobile_app'),(17,'core_calendar_get_action_events_by_course','core_calendar_external','get_calendar_action_events_by_course','calendar/externallib.php','moodle','moodle/calendar:manageentries, moodle/calendar:manageownentries, moodle/calendar:managegroupentries','moodle_mobile_app'),(18,'core_calendar_get_action_events_by_courses','core_calendar_external','get_calendar_action_events_by_courses','calendar/externallib.php','moodle','moodle/calendar:manageentries, moodle/calendar:manageownentries, moodle/calendar:managegroupentries','moodle_mobile_app'),(19,'core_calendar_get_calendar_event_by_id','core_calendar_external','get_calendar_event_by_id','calendar/externallib.php','moodle','moodle/calendar:manageentries, moodle/calendar:manageownentries, moodle/calendar:managegroupentries','moodle_mobile_app'),(20,'core_calendar_submit_create_update_form','core_calendar_external','submit_create_update_form','calendar/externallib.php','moodle','moodle/calendar:manageentries, moodle/calendar:manageownentries, moodle/calendar:managegroupentries',NULL),(21,'core_cohort_add_cohort_members','core_cohort_external','add_cohort_members','cohort/externallib.php','moodle','moodle/cohort:assign',NULL),(22,'core_cohort_create_cohorts','core_cohort_external','create_cohorts','cohort/externallib.php','moodle','moodle/cohort:manage',NULL),(23,'core_cohort_delete_cohort_members','core_cohort_external','delete_cohort_members','cohort/externallib.php','moodle','moodle/cohort:assign',NULL),(24,'core_cohort_delete_cohorts','core_cohort_external','delete_cohorts','cohort/externallib.php','moodle','moodle/cohort:manage',NULL),(25,'core_cohort_get_cohort_members','core_cohort_external','get_cohort_members','cohort/externallib.php','moodle','moodle/cohort:view',NULL),(26,'core_cohort_search_cohorts','core_cohort_external','search_cohorts','cohort/externallib.php','moodle','moodle/cohort:view',NULL),(27,'core_cohort_get_cohorts','core_cohort_external','get_cohorts','cohort/externallib.php','moodle','moodle/cohort:view',NULL),(28,'core_cohort_update_cohorts','core_cohort_external','update_cohorts','cohort/externallib.php','moodle','moodle/cohort:manage',NULL),(29,'core_comment_get_comments','core_comment_external','get_comments',NULL,'moodle','moodle/comment:view','moodle_mobile_app'),(30,'core_completion_get_activities_completion_status','core_completion_external','get_activities_completion_status',NULL,'moodle','','moodle_mobile_app'),(31,'core_completion_get_course_completion_status','core_completion_external','get_course_completion_status',NULL,'moodle','report/completion:view','moodle_mobile_app'),(32,'core_completion_mark_course_self_completed','core_completion_external','mark_course_self_completed',NULL,'moodle','','moodle_mobile_app'),(33,'core_completion_update_activity_completion_status_manually','core_completion_external','update_activity_completion_status_manually',NULL,'moodle','','moodle_mobile_app'),(34,'core_completion_override_activity_completion_status','core_completion_external','override_activity_completion_status',NULL,'moodle','moodle/course:overridecompletion',NULL),(35,'core_course_create_categories','core_course_external','create_categories','course/externallib.php','moodle','moodle/category:manage',NULL),(36,'core_course_create_courses','core_course_external','create_courses','course/externallib.php','moodle','moodle/course:create, moodle/course:visibility',NULL),(37,'core_course_delete_categories','core_course_external','delete_categories','course/externallib.php','moodle','moodle/category:manage',NULL),(38,'core_course_delete_courses','core_course_external','delete_courses','course/externallib.php','moodle','moodle/course:delete',NULL),(39,'core_course_delete_modules','core_course_external','delete_modules','course/externallib.php','moodle','moodle/course:manageactivities',NULL),(40,'core_course_duplicate_course','core_course_external','duplicate_course','course/externallib.php','moodle','moodle/backup:backupcourse, moodle/restore:restorecourse, moodle/course:create',NULL),(41,'core_course_get_categories','core_course_external','get_categories','course/externallib.php','moodle','moodle/category:viewhiddencategories','moodle_mobile_app'),(42,'core_course_get_contents','core_course_external','get_course_contents','course/externallib.php','moodle','moodle/course:update, moodle/course:viewhiddencourses','moodle_mobile_app'),(43,'core_course_get_course_module','core_course_external','get_course_module','course/externallib.php','moodle','','moodle_mobile_app'),(44,'core_course_get_course_module_by_instance','core_course_external','get_course_module_by_instance','course/externallib.php','moodle','','moodle_mobile_app'),(45,'core_course_get_module','core_course_external','get_module','course/externallib.php','moodle','',NULL),(46,'core_course_edit_module','core_course_external','edit_module','course/externallib.php','moodle','',NULL),(47,'core_course_edit_section','core_course_external','edit_section','course/externallib.php','moodle','',NULL),(48,'core_course_get_courses','core_course_external','get_courses','course/externallib.php','moodle','moodle/course:view, moodle/course:update, moodle/course:viewhiddencourses','moodle_mobile_app'),(49,'core_course_import_course','core_course_external','import_course','course/externallib.php','moodle','moodle/backup:backuptargetimport, moodle/restore:restoretargetimport',NULL),(50,'core_course_search_courses','core_course_external','search_courses','course/externallib.php','moodle','','moodle_mobile_app'),(51,'core_course_update_categories','core_course_external','update_categories','course/externallib.php','moodle','moodle/category:manage',NULL),(52,'core_course_update_courses','core_course_external','update_courses','course/externallib.php','moodle','moodle/course:update, moodle/course:changecategory, moodle/course:changefullname, moodle/course:changeshortname, moodle/course:changeidnumber, moodle/course:changesummary, moodle/course:visibility',NULL),(53,'core_course_view_course','core_course_external','view_course','course/externallib.php','moodle','','moodle_mobile_app'),(54,'core_course_get_activities_overview','core_course_external','get_activities_overview','course/externallib.php','moodle','','moodle_mobile_app'),(55,'core_course_get_user_navigation_options','core_course_external','get_user_navigation_options','course/externallib.php','moodle','','moodle_mobile_app'),(56,'core_course_get_user_administration_options','core_course_external','get_user_administration_options','course/externallib.php','moodle','','moodle_mobile_app'),(57,'core_course_get_courses_by_field','core_course_external','get_courses_by_field','course/externallib.php','moodle','','moodle_mobile_app'),(58,'core_course_check_updates','core_course_external','check_updates','course/externallib.php','moodle','','moodle_mobile_app'),(59,'core_course_get_updates_since','core_course_external','get_updates_since','course/externallib.php','moodle','','moodle_mobile_app'),(60,'core_course_get_enrolled_courses_by_timeline_classification','core_course_external','get_enrolled_courses_by_timeline_classification','course/externallib.php','moodle','','moodle_mobile_app'),(61,'core_course_get_recent_courses','core_course_external','get_recent_courses','course/externallib.php','moodle','','moodle_mobile_app'),(62,'core_course_set_favourite_courses','core_course_external','set_favourite_courses','course/externallib.php','moodle','','moodle_mobile_app'),(63,'core_enrol_get_course_enrolment_methods','core_enrol_external','get_course_enrolment_methods','enrol/externallib.php','moodle','','moodle_mobile_app'),(64,'core_enrol_get_enrolled_users','core_enrol_external','get_enrolled_users','enrol/externallib.php','moodle','moodle/user:viewdetails, moodle/user:viewhiddendetails, moodle/course:useremail, moodle/user:update, moodle/site:accessallgroups','moodle_mobile_app'),(65,'core_enrol_get_enrolled_users_with_capability','core_enrol_external','get_enrolled_users_with_capability','enrol/externallib.php','moodle','',NULL),(66,'core_enrol_get_potential_users','core_enrol_external','get_potential_users','enrol/externallib.php','moodle','moodle/course:enrolreview',NULL),(67,'core_enrol_get_users_courses','core_enrol_external','get_users_courses','enrol/externallib.php','moodle','moodle/course:viewparticipants','moodle_mobile_app'),(68,'core_enrol_edit_user_enrolment','core_enrol_external','edit_user_enrolment','enrol/externallib.php','moodle','',NULL),(69,'core_enrol_unenrol_user_enrolment','core_enrol_external','unenrol_user_enrolment','enrol/externallib.php','moodle','',NULL),(70,'core_fetch_notifications','core_external','fetch_notifications','lib/external/externallib.php','moodle','',NULL),(71,'core_files_get_files','core_files_external','get_files','files/externallib.php','moodle','','moodle_mobile_app'),(72,'core_files_upload','core_files_external','upload','files/externallib.php','moodle','',NULL),(73,'core_form_get_filetypes_browser_data','core_form\\external','get_filetypes_browser_data',NULL,'moodle','',NULL),(74,'core_get_component_strings','core_external','get_component_strings','lib/external/externallib.php','moodle','','moodle_mobile_app'),(75,'core_get_fragment','core_external','get_fragment','lib/external/externallib.php','moodle','',NULL),(76,'core_get_string','core_external','get_string','lib/external/externallib.php','moodle','',NULL),(77,'core_get_strings','core_external','get_strings','lib/external/externallib.php','moodle','',NULL),(78,'core_get_user_dates','core_external','get_user_dates','lib/external/externallib.php','moodle','',NULL),(79,'core_grades_get_grades','core_grades_external','get_grades',NULL,'moodle','moodle/grade:view, moodle/grade:viewall, moodle/grade:viewhidden',NULL),(80,'core_grades_update_grades','core_grades_external','update_grades',NULL,'moodle','',NULL),(81,'core_grading_get_definitions','core_grading_external','get_definitions',NULL,'moodle','',NULL),(82,'core_grading_get_gradingform_instances','core_grading_external','get_gradingform_instances',NULL,'moodle','',NULL),(83,'core_grading_save_definitions','core_grading_external','save_definitions',NULL,'moodle','',NULL),(84,'core_group_add_group_members','core_group_external','add_group_members','group/externallib.php','moodle','moodle/course:managegroups',NULL),(85,'core_group_assign_grouping','core_group_external','assign_grouping','group/externallib.php','moodle','',NULL),(86,'core_group_create_groupings','core_group_external','create_groupings','group/externallib.php','moodle','',NULL),(87,'core_group_create_groups','core_group_external','create_groups','group/externallib.php','moodle','moodle/course:managegroups',NULL),(88,'core_group_delete_group_members','core_group_external','delete_group_members','group/externallib.php','moodle','moodle/course:managegroups',NULL),(89,'core_group_delete_groupings','core_group_external','delete_groupings','group/externallib.php','moodle','',NULL),(90,'core_group_delete_groups','core_group_external','delete_groups','group/externallib.php','moodle','moodle/course:managegroups',NULL),(91,'core_group_get_activity_allowed_groups','core_group_external','get_activity_allowed_groups','group/externallib.php','moodle','','moodle_mobile_app'),(92,'core_group_get_activity_groupmode','core_group_external','get_activity_groupmode','group/externallib.php','moodle','','moodle_mobile_app'),(93,'core_group_get_course_groupings','core_group_external','get_course_groupings','group/externallib.php','moodle','',NULL),(94,'core_group_get_course_groups','core_group_external','get_course_groups','group/externallib.php','moodle','moodle/course:managegroups',NULL),(95,'core_group_get_course_user_groups','core_group_external','get_course_user_groups','group/externallib.php','moodle','moodle/course:managegroups','moodle_mobile_app'),(96,'core_group_get_group_members','core_group_external','get_group_members','group/externallib.php','moodle','moodle/course:managegroups',NULL),(97,'core_group_get_groupings','core_group_external','get_groupings','group/externallib.php','moodle','',NULL),(98,'core_group_get_groups','core_group_external','get_groups','group/externallib.php','moodle','moodle/course:managegroups',NULL),(99,'core_group_unassign_grouping','core_group_external','unassign_grouping','group/externallib.php','moodle','',NULL),(100,'core_group_update_groupings','core_group_external','update_groupings','group/externallib.php','moodle','',NULL),(101,'core_group_update_groups','core_group_external','update_groups','group/externallib.php','moodle','moodle/course:managegroups',NULL),(102,'core_message_block_user','core_message_external','block_user','message/externallib.php','moodle','','moodle_mobile_app'),(103,'core_message_block_contacts','core_message_external','block_contacts','message/externallib.php','moodle','','moodle_mobile_app'),(104,'core_message_create_contacts','core_message_external','create_contacts','message/externallib.php','moodle','','moodle_mobile_app'),(105,'core_message_get_contact_requests','core_message_external','get_contact_requests','message/externallib.php','moodle','','moodle_mobile_app'),(106,'core_message_create_contact_request','core_message_external','create_contact_request','message/externallib.php','moodle','','moodle_mobile_app'),(107,'core_message_confirm_contact_request','core_message_external','confirm_contact_request','message/externallib.php','moodle','','moodle_mobile_app'),(108,'core_message_decline_contact_request','core_message_external','decline_contact_request','message/externallib.php','moodle','','moodle_mobile_app'),(109,'core_message_get_received_contact_requests_count','core_message_external','get_received_contact_requests_count','message/externallib.php','moodle','','moodle_mobile_app'),(110,'core_message_delete_contacts','core_message_external','delete_contacts','message/externallib.php','moodle','','moodle_mobile_app'),(111,'core_message_delete_conversation','core_message_external','delete_conversation','message/externallib.php','moodle','moodle/site:deleteownmessage','moodle_mobile_app'),(112,'core_message_delete_conversations_by_id','core_message_external','delete_conversations_by_id','message/externallib.php','moodle','moodle/site:deleteownmessage','moodle_mobile_app'),(113,'core_message_delete_message','core_message_external','delete_message','message/externallib.php','moodle','moodle/site:deleteownmessage','moodle_mobile_app'),(114,'core_message_get_blocked_users','core_message_external','get_blocked_users','message/externallib.php','moodle','','moodle_mobile_app'),(115,'core_message_data_for_messagearea_search_messages','core_message_external','data_for_messagearea_search_messages','message/externallib.php','moodle','','moodle_mobile_app'),(116,'core_message_data_for_messagearea_search_users','core_message_external','data_for_messagearea_search_users','message/externallib.php','moodle','',NULL),(117,'core_message_data_for_messagearea_search_users_in_course','core_message_external','data_for_messagearea_search_users_in_course','message/externallib.php','moodle','',NULL),(118,'core_message_message_search_users','core_message_external','message_search_users','message/externallib.php','moodle','','moodle_mobile_app'),(119,'core_message_data_for_messagearea_conversations','core_message_external','data_for_messagearea_conversations','message/externallib.php','moodle','','moodle_mobile_app'),(120,'core_message_data_for_messagearea_contacts','core_message_external','data_for_messagearea_contacts','message/externallib.php','moodle','','moodle_mobile_app'),(121,'core_message_data_for_messagearea_messages','core_message_external','data_for_messagearea_messages','message/externallib.php','moodle','','moodle_mobile_app'),(122,'core_message_data_for_messagearea_get_most_recent_message','core_message_external','data_for_messagearea_get_most_recent_message','message/externallib.php','moodle','',NULL),(123,'core_message_data_for_messagearea_get_profile','core_message_external','data_for_messagearea_get_profile','message/externallib.php','moodle','',NULL),(124,'core_message_get_contacts','core_message_external','get_contacts','message/externallib.php','moodle','','moodle_mobile_app'),(125,'core_message_get_user_contacts','core_message_external','get_user_contacts','message/externallib.php','moodle','','moodle_mobile_app'),(126,'core_message_get_conversations','core_message_external','get_conversations','message/externallib.php','moodle','','moodle_mobile_app'),(127,'core_message_get_conversation','core_message_external','get_conversation','message/externallib.php','moodle','','moodle_mobile_app'),(128,'core_message_get_conversation_between_users','core_message_external','get_conversation_between_users','message/externallib.php','moodle','','moodle_mobile_app'),(129,'core_message_get_messages','core_message_external','get_messages','message/externallib.php','moodle','','moodle_mobile_app'),(130,'core_message_get_conversation_counts','core_message_external','get_conversation_counts','message/externallib.php','moodle','','moodle_mobile_app'),(131,'core_message_get_unread_conversation_counts','core_message_external','get_unread_conversation_counts','message/externallib.php','moodle','','moodle_mobile_app'),(132,'core_message_get_conversation_members','core_message_external','get_conversation_members','message/externallib.php','moodle','','moodle_mobile_app'),(133,'core_message_get_member_info','core_message_external','get_member_info','message/externallib.php','moodle','','moodle_mobile_app'),(134,'core_message_get_unread_conversations_count','core_message_external','get_unread_conversations_count','message/externallib.php','moodle','','moodle_mobile_app'),(135,'core_message_mark_all_notifications_as_read','core_message_external','mark_all_notifications_as_read','message/externallib.php','moodle','','moodle_mobile_app'),(136,'core_message_mark_all_messages_as_read','core_message_external','mark_all_messages_as_read','message/externallib.php','moodle','','moodle_mobile_app'),(137,'core_message_mark_all_conversation_messages_as_read','core_message_external','mark_all_conversation_messages_as_read','message/externallib.php','moodle','','moodle_mobile_app'),(138,'core_message_mark_message_read','core_message_external','mark_message_read','message/externallib.php','moodle','','moodle_mobile_app'),(139,'core_message_mark_notification_read','core_message_external','mark_notification_read','message/externallib.php','moodle','','moodle_mobile_app'),(140,'core_message_message_processor_config_form','core_message_external','message_processor_config_form','message/externallib.php','moodle','','moodle_mobile_app'),(141,'core_message_get_message_processor','core_message_external','get_message_processor','message/externallib.php','moodle','',NULL),(142,'core_message_search_contacts','core_message_external','search_contacts','message/externallib.php','moodle','','moodle_mobile_app'),(143,'core_message_send_instant_messages','core_message_external','send_instant_messages','message/externallib.php','moodle','moodle/site:sendmessage','moodle_mobile_app'),(144,'core_message_send_messages_to_conversation','core_message_external','send_messages_to_conversation','message/externallib.php','moodle','moodle/site:sendmessage','moodle_mobile_app'),(145,'core_message_get_conversation_messages','core_message_external','get_conversation_messages','message/externallib.php','moodle','','moodle_mobile_app'),(146,'core_message_unblock_user','core_message_external','unblock_user','message/externallib.php','moodle','','moodle_mobile_app'),(147,'core_message_unblock_contacts','core_message_external','unblock_contacts','message/externallib.php','moodle','','moodle_mobile_app'),(148,'core_message_get_user_notification_preferences','core_message_external','get_user_notification_preferences','message/externallib.php','moodle','moodle/user:editownmessageprofile','moodle_mobile_app'),(149,'core_message_get_user_message_preferences','core_message_external','get_user_message_preferences','message/externallib.php','moodle','moodle/user:editownmessageprofile','moodle_mobile_app'),(150,'core_message_set_favourite_conversations','core_message_external','set_favourite_conversations','message/externallib.php','moodle','','moodle_mobile_app'),(151,'core_message_unset_favourite_conversations','core_message_external','unset_favourite_conversations','message/externallib.php','moodle','','moodle_mobile_app'),(152,'core_notes_create_notes','core_notes_external','create_notes','notes/externallib.php','moodle','moodle/notes:manage','moodle_mobile_app'),(153,'core_notes_delete_notes','core_notes_external','delete_notes','notes/externallib.php','moodle','moodle/notes:manage','moodle_mobile_app'),(154,'core_notes_get_course_notes','core_notes_external','get_course_notes','notes/externallib.php','moodle','moodle/notes:view','moodle_mobile_app'),(155,'core_notes_get_notes','core_notes_external','get_notes','notes/externallib.php','moodle','moodle/notes:view',NULL),(156,'core_notes_update_notes','core_notes_external','update_notes','notes/externallib.php','moodle','moodle/notes:manage',NULL),(157,'core_notes_view_notes','core_notes_external','view_notes','notes/externallib.php','moodle','moodle/notes:view','moodle_mobile_app'),(158,'core_output_load_template','core\\output\\external','load_template',NULL,'moodle','',NULL),(159,'core_output_load_fontawesome_icon_map','core\\output\\external','load_fontawesome_icon_map',NULL,'moodle','',NULL),(160,'core_question_update_flag','core_question_external','update_flag',NULL,'moodle','moodle/question:flag','moodle_mobile_app'),(161,'core_question_submit_tags_form','core_question_external','submit_tags_form',NULL,'moodle','',NULL),(162,'core_question_get_random_question_summaries','core_question_external','get_random_question_summaries',NULL,'moodle','',NULL),(163,'core_rating_get_item_ratings','core_rating_external','get_item_ratings',NULL,'moodle','moodle/rating:view','moodle_mobile_app'),(164,'core_rating_add_rating','core_rating_external','add_rating',NULL,'moodle','moodle/rating:rate','moodle_mobile_app'),(165,'core_role_assign_roles','core_role_external','assign_roles','enrol/externallib.php','moodle','moodle/role:assign',NULL),(166,'core_role_unassign_roles','core_role_external','unassign_roles','enrol/externallib.php','moodle','moodle/role:assign',NULL),(167,'core_search_get_relevant_users','\\core_search\\external','get_relevant_users',NULL,'moodle','',NULL),(168,'core_tag_get_tagindex','core_tag_external','get_tagindex',NULL,'moodle','',NULL),(169,'core_tag_get_tags','core_tag_external','get_tags',NULL,'moodle','',NULL),(170,'core_tag_update_tags','core_tag_external','update_tags',NULL,'moodle','',NULL),(171,'core_update_inplace_editable','core_external','update_inplace_editable','lib/external/externallib.php','moodle','',NULL),(172,'core_user_add_user_device','core_user_external','add_user_device','user/externallib.php','moodle','','moodle_mobile_app'),(173,'core_user_add_user_private_files','core_user_external','add_user_private_files','user/externallib.php','moodle','moodle/user:manageownfiles','moodle_mobile_app'),(174,'core_user_create_users','core_user_external','create_users','user/externallib.php','moodle','moodle/user:create',NULL),(175,'core_user_delete_users','core_user_external','delete_users','user/externallib.php','moodle','moodle/user:delete',NULL),(176,'core_user_get_course_user_profiles','core_user_external','get_course_user_profiles','user/externallib.php','moodle','moodle/user:viewdetails, moodle/user:viewhiddendetails, moodle/course:useremail, moodle/user:update, moodle/site:accessallgroups','moodle_mobile_app'),(177,'core_user_get_users','core_user_external','get_users','user/externallib.php','moodle','moodle/user:viewdetails, moodle/user:viewhiddendetails, moodle/course:useremail, moodle/user:update',NULL),(178,'core_user_get_users_by_field','core_user_external','get_users_by_field','user/externallib.php','moodle','moodle/user:viewdetails, moodle/user:viewhiddendetails, moodle/course:useremail, moodle/user:update','moodle_mobile_app'),(179,'core_user_remove_user_device','core_user_external','remove_user_device','user/externallib.php','moodle','','moodle_mobile_app'),(180,'core_user_update_users','core_user_external','update_users','user/externallib.php','moodle','moodle/user:update',NULL),(181,'core_user_update_user_preferences','core_user_external','update_user_preferences','user/externallib.php','moodle','moodle/user:editownmessageprofile, moodle/user:editmessageprofile','moodle_mobile_app'),(182,'core_user_view_user_list','core_user_external','view_user_list','user/externallib.php','moodle','moodle/course:viewparticipants','moodle_mobile_app'),(183,'core_user_view_user_profile','core_user_external','view_user_profile','user/externallib.php','moodle','moodle/user:viewdetails','moodle_mobile_app'),(184,'core_user_get_user_preferences','core_user_external','get_user_preferences','user/externallib.php','moodle','','moodle_mobile_app'),(185,'core_user_update_picture','core_user_external','update_picture','user/externallib.php','moodle','moodle/user:editownprofile, moodle/user:editprofile','moodle_mobile_app'),(186,'core_user_set_user_preferences','core_user_external','set_user_preferences','user/externallib.php','moodle','moodle/site:config','moodle_mobile_app'),(187,'core_user_agree_site_policy','core_user_external','agree_site_policy','user/externallib.php','moodle','','moodle_mobile_app'),(188,'core_user_get_private_files_info','core_user_external','get_private_files_info','user/externallib.php','moodle','moodle/user:manageownfiles','moodle_mobile_app'),(189,'core_competency_create_competency_framework','core_competency\\external','create_competency_framework',NULL,'moodle','moodle/competency:competencymanage',NULL),(190,'core_competency_read_competency_framework','core_competency\\external','read_competency_framework',NULL,'moodle','moodle/competency:competencyview',NULL),(191,'core_competency_duplicate_competency_framework','core_competency\\external','duplicate_competency_framework',NULL,'moodle','moodle/competency:competencymanage',NULL),(192,'core_competency_delete_competency_framework','core_competency\\external','delete_competency_framework',NULL,'moodle','moodle/competency:competencymanage',NULL),(193,'core_competency_update_competency_framework','core_competency\\external','update_competency_framework',NULL,'moodle','moodle/competency:competencymanage',NULL),(194,'core_competency_list_competency_frameworks','core_competency\\external','list_competency_frameworks',NULL,'moodle','moodle/competency:competencyview',NULL),(195,'core_competency_count_competency_frameworks','core_competency\\external','count_competency_frameworks',NULL,'moodle','moodle/competency:competencyview',NULL),(196,'core_competency_competency_framework_viewed','core_competency\\external','competency_framework_viewed',NULL,'moodle','moodle/competency:competencyview',NULL),(197,'core_competency_create_competency','core_competency\\external','create_competency',NULL,'moodle','moodle/competency:competencymanage',NULL),(198,'core_competency_read_competency','core_competency\\external','read_competency',NULL,'moodle','moodle/competency:competencyview',NULL),(199,'core_competency_competency_viewed','core_competency\\external','competency_viewed',NULL,'moodle','moodle/competency:competencyview','moodle_mobile_app'),(200,'core_competency_delete_competency','core_competency\\external','delete_competency',NULL,'moodle','moodle/competency:competencymanage',NULL),(201,'core_competency_update_competency','core_competency\\external','update_competency',NULL,'moodle','moodle/competency:competencymanage',NULL),(202,'core_competency_list_competencies','core_competency\\external','list_competencies',NULL,'moodle','moodle/competency:competencyview',NULL),(203,'core_competency_list_competencies_in_template','core_competency\\external','list_competencies_in_template',NULL,'moodle','moodle/competency:competencyview',NULL),(204,'core_competency_count_competencies','core_competency\\external','count_competencies',NULL,'moodle','moodle/competency:competencyview',NULL),(205,'core_competency_count_competencies_in_template','core_competency\\external','count_competencies_in_template',NULL,'moodle','moodle/competency:competencyview',NULL),(206,'core_competency_search_competencies','core_competency\\external','search_competencies',NULL,'moodle','moodle/competency:competencyview',NULL),(207,'core_competency_set_parent_competency','core_competency\\external','set_parent_competency',NULL,'moodle','moodle/competency:competencymanage',NULL),(208,'core_competency_move_up_competency','core_competency\\external','move_up_competency',NULL,'moodle','moodle/competency:competencymanage',NULL),(209,'core_competency_move_down_competency','core_competency\\external','move_down_competency',NULL,'moodle','moodle/competency:competencymanage',NULL),(210,'core_competency_list_course_competencies','core_competency\\external','list_course_competencies',NULL,'moodle','moodle/competency:coursecompetencyview','moodle_mobile_app'),(211,'core_competency_count_competencies_in_course','core_competency\\external','count_competencies_in_course',NULL,'moodle','moodle/competency:coursecompetencyview',NULL),(212,'core_competency_count_courses_using_competency','core_competency\\external','count_courses_using_competency',NULL,'moodle','moodle/competency:coursecompetencyview',NULL),(213,'core_competency_add_competency_to_course','core_competency\\external','add_competency_to_course',NULL,'moodle','moodle/competency:coursecompetencymanage',NULL),(214,'core_competency_add_competency_to_template','core_competency\\external','add_competency_to_template',NULL,'moodle','moodle/competency:templatemanage',NULL),(215,'core_competency_remove_competency_from_course','core_competency\\external','remove_competency_from_course',NULL,'moodle','moodle/competency:coursecompetencymanage',NULL),(216,'core_competency_set_course_competency_ruleoutcome','core_competency\\external','set_course_competency_ruleoutcome',NULL,'moodle','moodle/competency:coursecompetencymanage',NULL),(217,'core_competency_remove_competency_from_template','core_competency\\external','remove_competency_from_template',NULL,'moodle','moodle/competency:templatemanage',NULL),(218,'core_competency_reorder_course_competency','core_competency\\external','reorder_course_competency',NULL,'moodle','moodle/competency:coursecompetencymanage',NULL),(219,'core_competency_reorder_template_competency','core_competency\\external','reorder_template_competency',NULL,'moodle','moodle/competency:templatemanage',NULL),(220,'core_competency_create_template','core_competency\\external','create_template',NULL,'moodle','moodle/competency:templatemanage',NULL),(221,'core_competency_duplicate_template','core_competency\\external','duplicate_template',NULL,'moodle','moodle/competency:templatemanage',NULL),(222,'core_competency_read_template','core_competency\\external','read_template',NULL,'moodle','moodle/competency:templateview',NULL),(223,'core_competency_delete_template','core_competency\\external','delete_template',NULL,'moodle','moodle/competency:templatemanage',NULL),(224,'core_competency_update_template','core_competency\\external','update_template',NULL,'moodle','moodle/competency:templatemanage',NULL),(225,'core_competency_list_templates','core_competency\\external','list_templates',NULL,'moodle','moodle/competency:templateview',NULL),(226,'core_competency_list_templates_using_competency','core_competency\\external','list_templates_using_competency',NULL,'moodle','moodle/competency:templateview',NULL),(227,'core_competency_count_templates','core_competency\\external','count_templates',NULL,'moodle','moodle/competency:templateview',NULL),(228,'core_competency_count_templates_using_competency','core_competency\\external','count_templates_using_competency',NULL,'moodle','moodle/competency:templateview',NULL),(229,'core_competency_create_plan','core_competency\\external','create_plan',NULL,'moodle','moodle/competency:planmanage',NULL),(230,'core_competency_update_plan','core_competency\\external','update_plan',NULL,'moodle','moodle/competency:planmanage',NULL),(231,'core_competency_complete_plan','core_competency\\external','complete_plan',NULL,'moodle','moodle/competency:planmanage',NULL),(232,'core_competency_reopen_plan','core_competency\\external','reopen_plan',NULL,'moodle','moodle/competency:planmanage',NULL),(233,'core_competency_read_plan','core_competency\\external','read_plan',NULL,'moodle','moodle/competency:planviewown',NULL),(234,'core_competency_delete_plan','core_competency\\external','delete_plan',NULL,'moodle','moodle/competency:planmanage',NULL),(235,'core_competency_list_user_plans','core_competency\\external','list_user_plans',NULL,'moodle','moodle/competency:planviewown',NULL),(236,'core_competency_list_plan_competencies','core_competency\\external','list_plan_competencies',NULL,'moodle','moodle/competency:planviewown',NULL),(237,'core_competency_add_competency_to_plan','core_competency\\external','add_competency_to_plan',NULL,'moodle','moodle/competency:planmanage',NULL),(238,'core_competency_remove_competency_from_plan','core_competency\\external','remove_competency_from_plan',NULL,'moodle','moodle/competency:planmanage',NULL),(239,'core_competency_reorder_plan_competency','core_competency\\external','reorder_plan_competency',NULL,'moodle','moodle/competency:planmanage',NULL),(240,'core_competency_plan_request_review','core_competency\\external','plan_request_review',NULL,'moodle','moodle/competency:planmanagedraft',NULL),(241,'core_competency_plan_start_review','core_competency\\external','plan_start_review',NULL,'moodle','moodle/competency:planmanage',NULL),(242,'core_competency_plan_stop_review','core_competency\\external','plan_stop_review',NULL,'moodle','moodle/competency:planmanage',NULL),(243,'core_competency_plan_cancel_review_request','core_competency\\external','plan_cancel_review_request',NULL,'moodle','moodle/competency:planmanagedraft',NULL),(244,'core_competency_approve_plan','core_competency\\external','approve_plan',NULL,'moodle','moodle/competency:planmanage',NULL),(245,'core_competency_unapprove_plan','core_competency\\external','unapprove_plan',NULL,'moodle','moodle/competency:planmanage',NULL),(246,'core_competency_template_has_related_data','core_competency\\external','template_has_related_data',NULL,'moodle','moodle/competency:templateview',NULL),(247,'core_competency_get_scale_values','core_competency\\external','get_scale_values',NULL,'moodle','moodle/competency:competencymanage','moodle_mobile_app'),(248,'core_competency_add_related_competency','core_competency\\external','add_related_competency',NULL,'moodle','moodle/competency:competencymanage',NULL),(249,'core_competency_remove_related_competency','core_competency\\external','remove_related_competency',NULL,'moodle','moodle/competency:competencymanage',NULL),(250,'core_competency_read_user_evidence','core_competency\\external','read_user_evidence',NULL,'moodle','moodle/competency:userevidenceview',NULL),(251,'core_competency_delete_user_evidence','core_competency\\external','delete_user_evidence',NULL,'moodle','moodle/competency:userevidencemanageown',NULL),(252,'core_competency_create_user_evidence_competency','core_competency\\external','create_user_evidence_competency',NULL,'moodle','moodle/competency:userevidencemanageown, moodle/competency:competencyview',NULL),(253,'core_competency_delete_user_evidence_competency','core_competency\\external','delete_user_evidence_competency',NULL,'moodle','moodle/competency:userevidencemanageown',NULL),(254,'core_competency_user_competency_cancel_review_request','core_competency\\external','user_competency_cancel_review_request',NULL,'moodle','moodle/competency:userevidencemanageown',NULL),(255,'core_competency_user_competency_request_review','core_competency\\external','user_competency_request_review',NULL,'moodle','moodle/competency:userevidencemanageown',NULL),(256,'core_competency_user_competency_start_review','core_competency\\external','user_competency_start_review',NULL,'moodle','moodle/competency:competencygrade',NULL),(257,'core_competency_user_competency_stop_review','core_competency\\external','user_competency_stop_review',NULL,'moodle','moodle/competency:competencygrade',NULL),(258,'core_competency_user_competency_viewed','core_competency\\external','user_competency_viewed',NULL,'moodle','moodle/competency:usercompetencyview','moodle_mobile_app'),(259,'core_competency_user_competency_viewed_in_plan','core_competency\\external','user_competency_viewed_in_plan',NULL,'moodle','moodle/competency:usercompetencyview','moodle_mobile_app'),(260,'core_competency_user_competency_viewed_in_course','core_competency\\external','user_competency_viewed_in_course',NULL,'moodle','moodle/competency:usercompetencyview','moodle_mobile_app'),(261,'core_competency_user_competency_plan_viewed','core_competency\\external','user_competency_plan_viewed',NULL,'moodle','moodle/competency:usercompetencyview','moodle_mobile_app'),(262,'core_competency_grade_competency','core_competency\\external','grade_competency',NULL,'moodle','moodle/competency:competencygrade',NULL),(263,'core_competency_grade_competency_in_plan','core_competency\\external','grade_competency_in_plan',NULL,'moodle','moodle/competency:competencygrade',NULL),(264,'core_competency_grade_competency_in_course','core_competency\\external','grade_competency_in_course',NULL,'moodle','moodle/competency:competencygrade','moodle_mobile_app'),(265,'core_competency_unlink_plan_from_template','core_competency\\external','unlink_plan_from_template',NULL,'moodle','moodle/competency:planmanage',NULL),(266,'core_competency_template_viewed','core_competency\\external','template_viewed',NULL,'moodle','moodle/competency:templateview',NULL),(267,'core_competency_request_review_of_user_evidence_linked_competencies','core_competency\\external','request_review_of_user_evidence_linked_competencies',NULL,'moodle','moodle/competency:userevidencemanageown',NULL),(268,'core_competency_update_course_competency_settings','core_competency\\external','update_course_competency_settings',NULL,'moodle','moodle/competency:coursecompetencyconfigure',NULL),(269,'core_competency_delete_evidence','core_competency\\external','delete_evidence',NULL,'moodle','moodle/competency:evidencedelete','moodle_mobile_app'),(270,'core_webservice_get_site_info','core_webservice_external','get_site_info','webservice/externallib.php','moodle','','moodle_mobile_app'),(271,'core_block_get_course_blocks','core_block_external','get_course_blocks',NULL,'moodle','','moodle_mobile_app'),(272,'core_block_get_dashboard_blocks','core_block_external','get_dashboard_blocks',NULL,'moodle','','moodle_mobile_app'),(273,'core_filters_get_available_in_context','core_filters\\external','get_available_in_context',NULL,'moodle','','moodle_mobile_app'),(274,'mod_assign_copy_previous_attempt','mod_assign_external','copy_previous_attempt','mod/assign/externallib.php','mod_assign','mod/assign:view, mod/assign:submit',NULL),(275,'mod_assign_get_grades','mod_assign_external','get_grades','mod/assign/externallib.php','mod_assign','','moodle_mobile_app'),(276,'mod_assign_get_assignments','mod_assign_external','get_assignments','mod/assign/externallib.php','mod_assign','','moodle_mobile_app'),(277,'mod_assign_get_submissions','mod_assign_external','get_submissions','mod/assign/externallib.php','mod_assign','','moodle_mobile_app'),(278,'mod_assign_get_user_flags','mod_assign_external','get_user_flags','mod/assign/externallib.php','mod_assign','','moodle_mobile_app'),(279,'mod_assign_set_user_flags','mod_assign_external','set_user_flags','mod/assign/externallib.php','mod_assign','mod/assign:grade','moodle_mobile_app'),(280,'mod_assign_get_user_mappings','mod_assign_external','get_user_mappings','mod/assign/externallib.php','mod_assign','','moodle_mobile_app'),(281,'mod_assign_revert_submissions_to_draft','mod_assign_external','revert_submissions_to_draft','mod/assign/externallib.php','mod_assign','','moodle_mobile_app'),(282,'mod_assign_lock_submissions','mod_assign_external','lock_submissions','mod/assign/externallib.php','mod_assign','','moodle_mobile_app'),(283,'mod_assign_unlock_submissions','mod_assign_external','unlock_submissions','mod/assign/externallib.php','mod_assign','','moodle_mobile_app'),(284,'mod_assign_save_submission','mod_assign_external','save_submission','mod/assign/externallib.php','mod_assign','','moodle_mobile_app'),(285,'mod_assign_submit_for_grading','mod_assign_external','submit_for_grading','mod/assign/externallib.php','mod_assign','','moodle_mobile_app'),(286,'mod_assign_save_grade','mod_assign_external','save_grade','mod/assign/externallib.php','mod_assign','','moodle_mobile_app'),(287,'mod_assign_save_grades','mod_assign_external','save_grades','mod/assign/externallib.php','mod_assign','','moodle_mobile_app'),(288,'mod_assign_save_user_extensions','mod_assign_external','save_user_extensions','mod/assign/externallib.php','mod_assign','','moodle_mobile_app'),(289,'mod_assign_reveal_identities','mod_assign_external','reveal_identities','mod/assign/externallib.php','mod_assign','','moodle_mobile_app'),(290,'mod_assign_view_grading_table','mod_assign_external','view_grading_table','mod/assign/externallib.php','mod_assign','mod/assign:view, mod/assign:viewgrades','moodle_mobile_app'),(291,'mod_assign_view_submission_status','mod_assign_external','view_submission_status','mod/assign/externallib.php','mod_assign','mod/assign:view','moodle_mobile_app'),(292,'mod_assign_get_submission_status','mod_assign_external','get_submission_status','mod/assign/externallib.php','mod_assign','mod/assign:view','moodle_mobile_app'),(293,'mod_assign_list_participants','mod_assign_external','list_participants','mod/assign/externallib.php','mod_assign','mod/assign:view, mod/assign:viewgrades','moodle_mobile_app'),(294,'mod_assign_submit_grading_form','mod_assign_external','submit_grading_form','mod/assign/externallib.php','mod_assign','mod/assign:grade','moodle_mobile_app'),(295,'mod_assign_get_participant','mod_assign_external','get_participant','mod/assign/externallib.php','mod_assign','mod/assign:view, mod/assign:viewgrades','moodle_mobile_app'),(296,'mod_assign_view_assign','mod_assign_external','view_assign','mod/assign/externallib.php','mod_assign','mod/assign:view','moodle_mobile_app'),(297,'mod_book_view_book','mod_book_external','view_book',NULL,'mod_book','mod/book:read','moodle_mobile_app'),(298,'mod_book_get_books_by_courses','mod_book_external','get_books_by_courses',NULL,'mod_book','','moodle_mobile_app'),(299,'mod_chat_login_user','mod_chat_external','login_user',NULL,'mod_chat','mod/chat:chat','moodle_mobile_app'),(300,'mod_chat_get_chat_users','mod_chat_external','get_chat_users',NULL,'mod_chat','mod/chat:chat','moodle_mobile_app'),(301,'mod_chat_send_chat_message','mod_chat_external','send_chat_message',NULL,'mod_chat','mod/chat:chat','moodle_mobile_app'),(302,'mod_chat_get_chat_latest_messages','mod_chat_external','get_chat_latest_messages',NULL,'mod_chat','mod/chat:chat','moodle_mobile_app'),(303,'mod_chat_view_chat','mod_chat_external','view_chat',NULL,'mod_chat','mod/chat:chat','moodle_mobile_app'),(304,'mod_chat_get_chats_by_courses','mod_chat_external','get_chats_by_courses',NULL,'mod_chat','','moodle_mobile_app'),(305,'mod_chat_get_sessions','mod_chat_external','get_sessions',NULL,'mod_chat','','moodle_mobile_app'),(306,'mod_chat_get_session_messages','mod_chat_external','get_session_messages',NULL,'mod_chat','','moodle_mobile_app'),(307,'mod_choice_get_choice_results','mod_choice_external','get_choice_results',NULL,'mod_choice','','moodle_mobile_app'),(308,'mod_choice_get_choice_options','mod_choice_external','get_choice_options',NULL,'mod_choice','mod/choice:choose','moodle_mobile_app'),(309,'mod_choice_submit_choice_response','mod_choice_external','submit_choice_response',NULL,'mod_choice','mod/choice:choose','moodle_mobile_app'),(310,'mod_choice_view_choice','mod_choice_external','view_choice',NULL,'mod_choice','','moodle_mobile_app'),(311,'mod_choice_get_choices_by_courses','mod_choice_external','get_choices_by_courses',NULL,'mod_choice','','moodle_mobile_app'),(312,'mod_choice_delete_choice_responses','mod_choice_external','delete_choice_responses',NULL,'mod_choice','mod/choice:choose','moodle_mobile_app'),(313,'mod_data_get_databases_by_courses','mod_data_external','get_databases_by_courses',NULL,'mod_data','mod/data:viewentry','moodle_mobile_app'),(314,'mod_data_view_database','mod_data_external','view_database',NULL,'mod_data','mod/data:viewentry','moodle_mobile_app'),(315,'mod_data_get_data_access_information','mod_data_external','get_data_access_information',NULL,'mod_data','mod/data:viewentry','moodle_mobile_app'),(316,'mod_data_get_entries','mod_data_external','get_entries',NULL,'mod_data','mod/data:viewentry','moodle_mobile_app'),(317,'mod_data_get_entry','mod_data_external','get_entry',NULL,'mod_data','mod/data:viewentry','moodle_mobile_app'),(318,'mod_data_get_fields','mod_data_external','get_fields',NULL,'mod_data','mod/data:viewentry','moodle_mobile_app'),(319,'mod_data_search_entries','mod_data_external','search_entries',NULL,'mod_data','mod/data:viewentry','moodle_mobile_app'),(320,'mod_data_approve_entry','mod_data_external','approve_entry',NULL,'mod_data','mod/data:approve','moodle_mobile_app'),(321,'mod_data_delete_entry','mod_data_external','delete_entry',NULL,'mod_data','mod/data:manageentries','moodle_mobile_app'),(322,'mod_data_add_entry','mod_data_external','add_entry',NULL,'mod_data','mod/data:writeentry','moodle_mobile_app'),(323,'mod_data_update_entry','mod_data_external','update_entry',NULL,'mod_data','mod/data:writeentry','moodle_mobile_app'),(324,'mod_feedback_get_feedbacks_by_courses','mod_feedback_external','get_feedbacks_by_courses',NULL,'mod_feedback','mod/feedback:view','moodle_mobile_app'),(325,'mod_feedback_get_feedback_access_information','mod_feedback_external','get_feedback_access_information',NULL,'mod_feedback','mod/feedback:view','moodle_mobile_app'),(326,'mod_feedback_view_feedback','mod_feedback_external','view_feedback',NULL,'mod_feedback','mod/feedback:view','moodle_mobile_app'),(327,'mod_feedback_get_current_completed_tmp','mod_feedback_external','get_current_completed_tmp',NULL,'mod_feedback','mod/feedback:view','moodle_mobile_app'),(328,'mod_feedback_get_items','mod_feedback_external','get_items',NULL,'mod_feedback','mod/feedback:view','moodle_mobile_app'),(329,'mod_feedback_launch_feedback','mod_feedback_external','launch_feedback',NULL,'mod_feedback','mod/feedback:complete','moodle_mobile_app'),(330,'mod_feedback_get_page_items','mod_feedback_external','get_page_items',NULL,'mod_feedback','mod/feedback:complete','moodle_mobile_app'),(331,'mod_feedback_process_page','mod_feedback_external','process_page',NULL,'mod_feedback','mod/feedback:complete','moodle_mobile_app'),(332,'mod_feedback_get_analysis','mod_feedback_external','get_analysis',NULL,'mod_feedback','mod/feedback:viewanalysepage','moodle_mobile_app'),(333,'mod_feedback_get_unfinished_responses','mod_feedback_external','get_unfinished_responses',NULL,'mod_feedback','mod/feedback:view','moodle_mobile_app'),(334,'mod_feedback_get_finished_responses','mod_feedback_external','get_finished_responses',NULL,'mod_feedback','mod/feedback:view','moodle_mobile_app'),(335,'mod_feedback_get_non_respondents','mod_feedback_external','get_non_respondents',NULL,'mod_feedback','mod/feedback:viewreports','moodle_mobile_app'),(336,'mod_feedback_get_responses_analysis','mod_feedback_external','get_responses_analysis',NULL,'mod_feedback','mod/feedback:viewreports','moodle_mobile_app'),(337,'mod_feedback_get_last_completed','mod_feedback_external','get_last_completed',NULL,'mod_feedback','mod/feedback:view','moodle_mobile_app'),(338,'mod_folder_view_folder','mod_folder_external','view_folder',NULL,'mod_folder','mod/folder:view','moodle_mobile_app'),(339,'mod_folder_get_folders_by_courses','mod_folder_external','get_folders_by_courses',NULL,'mod_folder','mod/folder:view','moodle_mobile_app'),(340,'mod_forum_get_forums_by_courses','mod_forum_external','get_forums_by_courses','mod/forum/externallib.php','mod_forum','mod/forum:viewdiscussion','moodle_mobile_app'),(341,'mod_forum_get_forum_discussion_posts','mod_forum_external','get_forum_discussion_posts','mod/forum/externallib.php','mod_forum','mod/forum:viewdiscussion, mod/forum:viewqandawithoutposting','moodle_mobile_app'),(342,'mod_forum_get_forum_discussions_paginated','mod_forum_external','get_forum_discussions_paginated','mod/forum/externallib.php','mod_forum','mod/forum:viewdiscussion, mod/forum:viewqandawithoutposting','moodle_mobile_app'),(343,'mod_forum_view_forum','mod_forum_external','view_forum','mod/forum/externallib.php','mod_forum','mod/forum:viewdiscussion','moodle_mobile_app'),(344,'mod_forum_view_forum_discussion','mod_forum_external','view_forum_discussion','mod/forum/externallib.php','mod_forum','mod/forum:viewdiscussion','moodle_mobile_app'),(345,'mod_forum_add_discussion_post','mod_forum_external','add_discussion_post','mod/forum/externallib.php','mod_forum','mod/forum:replypost','moodle_mobile_app'),(346,'mod_forum_add_discussion','mod_forum_external','add_discussion','mod/forum/externallib.php','mod_forum','mod/forum:startdiscussion','moodle_mobile_app'),(347,'mod_forum_can_add_discussion','mod_forum_external','can_add_discussion','mod/forum/externallib.php','mod_forum','','moodle_mobile_app'),(348,'mod_glossary_get_glossaries_by_courses','mod_glossary_external','get_glossaries_by_courses',NULL,'mod_glossary','mod/glossary:view','moodle_mobile_app'),(349,'mod_glossary_view_glossary','mod_glossary_external','view_glossary',NULL,'mod_glossary','mod/glossary:view','moodle_mobile_app'),(350,'mod_glossary_view_entry','mod_glossary_external','view_entry',NULL,'mod_glossary','mod/glossary:view','moodle_mobile_app'),(351,'mod_glossary_get_entries_by_letter','mod_glossary_external','get_entries_by_letter',NULL,'mod_glossary','mod/glossary:view','moodle_mobile_app'),(352,'mod_glossary_get_entries_by_date','mod_glossary_external','get_entries_by_date',NULL,'mod_glossary','mod/glossary:view','moodle_mobile_app'),(353,'mod_glossary_get_categories','mod_glossary_external','get_categories',NULL,'mod_glossary','mod/glossary:view','moodle_mobile_app'),(354,'mod_glossary_get_entries_by_category','mod_glossary_external','get_entries_by_category',NULL,'mod_glossary','mod/glossary:view','moodle_mobile_app'),(355,'mod_glossary_get_authors','mod_glossary_external','get_authors',NULL,'mod_glossary','mod/glossary:view','moodle_mobile_app'),(356,'mod_glossary_get_entries_by_author','mod_glossary_external','get_entries_by_author',NULL,'mod_glossary','mod/glossary:view','moodle_mobile_app'),(357,'mod_glossary_get_entries_by_author_id','mod_glossary_external','get_entries_by_author_id',NULL,'mod_glossary','mod/glossary:view','moodle_mobile_app'),(358,'mod_glossary_get_entries_by_search','mod_glossary_external','get_entries_by_search',NULL,'mod_glossary','mod/glossary:view','moodle_mobile_app'),(359,'mod_glossary_get_entries_by_term','mod_glossary_external','get_entries_by_term',NULL,'mod_glossary','mod/glossary:view','moodle_mobile_app'),(360,'mod_glossary_get_entries_to_approve','mod_glossary_external','get_entries_to_approve',NULL,'mod_glossary','mod/glossary:approve','moodle_mobile_app'),(361,'mod_glossary_get_entry_by_id','mod_glossary_external','get_entry_by_id',NULL,'mod_glossary','mod/glossary:view','moodle_mobile_app'),(362,'mod_glossary_add_entry','mod_glossary_external','add_entry',NULL,'mod_glossary','mod/glossary:write','moodle_mobile_app'),(363,'mod_imscp_view_imscp','mod_imscp_external','view_imscp',NULL,'mod_imscp','mod/imscp:view','moodle_mobile_app'),(364,'mod_imscp_get_imscps_by_courses','mod_imscp_external','get_imscps_by_courses',NULL,'mod_imscp','mod/imscp:view','moodle_mobile_app'),(365,'mod_label_get_labels_by_courses','mod_label_external','get_labels_by_courses',NULL,'mod_label','mod/label:view','moodle_mobile_app'),(366,'mod_lesson_get_lessons_by_courses','mod_lesson_external','get_lessons_by_courses',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(367,'mod_lesson_get_lesson_access_information','mod_lesson_external','get_lesson_access_information',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(368,'mod_lesson_view_lesson','mod_lesson_external','view_lesson',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(369,'mod_lesson_get_questions_attempts','mod_lesson_external','get_questions_attempts',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(370,'mod_lesson_get_user_grade','mod_lesson_external','get_user_grade',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(371,'mod_lesson_get_user_attempt_grade','mod_lesson_external','get_user_attempt_grade',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(372,'mod_lesson_get_content_pages_viewed','mod_lesson_external','get_content_pages_viewed',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(373,'mod_lesson_get_user_timers','mod_lesson_external','get_user_timers',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(374,'mod_lesson_get_pages','mod_lesson_external','get_pages',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(375,'mod_lesson_launch_attempt','mod_lesson_external','launch_attempt',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(376,'mod_lesson_get_page_data','mod_lesson_external','get_page_data',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(377,'mod_lesson_process_page','mod_lesson_external','process_page',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(378,'mod_lesson_finish_attempt','mod_lesson_external','finish_attempt',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(379,'mod_lesson_get_attempts_overview','mod_lesson_external','get_attempts_overview',NULL,'mod_lesson','mod/lesson:viewreports','moodle_mobile_app'),(380,'mod_lesson_get_user_attempt','mod_lesson_external','get_user_attempt',NULL,'mod_lesson','mod/lesson:viewreports','moodle_mobile_app'),(381,'mod_lesson_get_pages_possible_jumps','mod_lesson_external','get_pages_possible_jumps',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(382,'mod_lesson_get_lesson','mod_lesson_external','get_lesson',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(383,'mod_lti_get_tool_launch_data','mod_lti_external','get_tool_launch_data',NULL,'mod_lti','mod/lti:view','moodle_mobile_app'),(384,'mod_lti_get_ltis_by_courses','mod_lti_external','get_ltis_by_courses',NULL,'mod_lti','mod/lti:view','moodle_mobile_app'),(385,'mod_lti_view_lti','mod_lti_external','view_lti',NULL,'mod_lti','mod/lti:view','moodle_mobile_app'),(386,'mod_lti_get_tool_proxies','mod_lti_external','get_tool_proxies',NULL,'mod_lti','moodle/site:config',NULL),(387,'mod_lti_create_tool_proxy','mod_lti_external','create_tool_proxy',NULL,'mod_lti','moodle/site:config',NULL),(388,'mod_lti_delete_tool_proxy','mod_lti_external','delete_tool_proxy',NULL,'mod_lti','moodle/site:config',NULL),(389,'mod_lti_get_tool_proxy_registration_request','mod_lti_external','get_tool_proxy_registration_request',NULL,'mod_lti','moodle/site:config',NULL),(390,'mod_lti_get_tool_types','mod_lti_external','get_tool_types',NULL,'mod_lti','moodle/site:config',NULL),(391,'mod_lti_create_tool_type','mod_lti_external','create_tool_type',NULL,'mod_lti','moodle/site:config',NULL),(392,'mod_lti_update_tool_type','mod_lti_external','update_tool_type',NULL,'mod_lti','moodle/site:config',NULL),(393,'mod_lti_delete_tool_type','mod_lti_external','delete_tool_type',NULL,'mod_lti','moodle/site:config',NULL),(394,'mod_lti_is_cartridge','mod_lti_external','is_cartridge',NULL,'mod_lti','moodle/site:config',NULL),(395,'mod_page_view_page','mod_page_external','view_page',NULL,'mod_page','mod/page:view','moodle_mobile_app'),(396,'mod_page_get_pages_by_courses','mod_page_external','get_pages_by_courses',NULL,'mod_page','mod/page:view','moodle_mobile_app'),(397,'mod_quiz_get_quizzes_by_courses','mod_quiz_external','get_quizzes_by_courses',NULL,'mod_quiz','mod/quiz:view','moodle_mobile_app'),(398,'mod_quiz_view_quiz','mod_quiz_external','view_quiz',NULL,'mod_quiz','mod/quiz:view','moodle_mobile_app'),(399,'mod_quiz_get_user_attempts','mod_quiz_external','get_user_attempts',NULL,'mod_quiz','mod/quiz:view','moodle_mobile_app'),(400,'mod_quiz_get_user_best_grade','mod_quiz_external','get_user_best_grade',NULL,'mod_quiz','mod/quiz:view','moodle_mobile_app'),(401,'mod_quiz_get_combined_review_options','mod_quiz_external','get_combined_review_options',NULL,'mod_quiz','mod/quiz:view','moodle_mobile_app'),(402,'mod_quiz_start_attempt','mod_quiz_external','start_attempt',NULL,'mod_quiz','mod/quiz:attempt','moodle_mobile_app'),(403,'mod_quiz_get_attempt_data','mod_quiz_external','get_attempt_data',NULL,'mod_quiz','mod/quiz:attempt','moodle_mobile_app'),(404,'mod_quiz_get_attempt_summary','mod_quiz_external','get_attempt_summary',NULL,'mod_quiz','mod/quiz:attempt','moodle_mobile_app'),(405,'mod_quiz_save_attempt','mod_quiz_external','save_attempt',NULL,'mod_quiz','mod/quiz:attempt','moodle_mobile_app'),(406,'mod_quiz_process_attempt','mod_quiz_external','process_attempt',NULL,'mod_quiz','mod/quiz:attempt','moodle_mobile_app'),(407,'mod_quiz_get_attempt_review','mod_quiz_external','get_attempt_review',NULL,'mod_quiz','mod/quiz:reviewmyattempts','moodle_mobile_app'),(408,'mod_quiz_view_attempt','mod_quiz_external','view_attempt',NULL,'mod_quiz','mod/quiz:attempt','moodle_mobile_app'),(409,'mod_quiz_view_attempt_summary','mod_quiz_external','view_attempt_summary',NULL,'mod_quiz','mod/quiz:attempt','moodle_mobile_app'),(410,'mod_quiz_view_attempt_review','mod_quiz_external','view_attempt_review',NULL,'mod_quiz','mod/quiz:reviewmyattempts','moodle_mobile_app'),(411,'mod_quiz_get_quiz_feedback_for_grade','mod_quiz_external','get_quiz_feedback_for_grade',NULL,'mod_quiz','mod/quiz:view','moodle_mobile_app'),(412,'mod_quiz_get_quiz_access_information','mod_quiz_external','get_quiz_access_information',NULL,'mod_quiz','mod/quiz:view','moodle_mobile_app'),(413,'mod_quiz_get_attempt_access_information','mod_quiz_external','get_attempt_access_information',NULL,'mod_quiz','mod/quiz:view','moodle_mobile_app'),(414,'mod_quiz_get_quiz_required_qtypes','mod_quiz_external','get_quiz_required_qtypes',NULL,'mod_quiz','mod/quiz:view','moodle_mobile_app'),(415,'mod_resource_view_resource','mod_resource_external','view_resource',NULL,'mod_resource','mod/resource:view','moodle_mobile_app'),(416,'mod_resource_get_resources_by_courses','mod_resource_external','get_resources_by_courses',NULL,'mod_resource','mod/resource:view','moodle_mobile_app'),(417,'mod_scorm_view_scorm','mod_scorm_external','view_scorm',NULL,'mod_scorm','','moodle_mobile_app'),(418,'mod_scorm_get_scorm_attempt_count','mod_scorm_external','get_scorm_attempt_count',NULL,'mod_scorm','','moodle_mobile_app'),(419,'mod_scorm_get_scorm_scoes','mod_scorm_external','get_scorm_scoes',NULL,'mod_scorm','','moodle_mobile_app'),(420,'mod_scorm_get_scorm_user_data','mod_scorm_external','get_scorm_user_data',NULL,'mod_scorm','','moodle_mobile_app'),(421,'mod_scorm_insert_scorm_tracks','mod_scorm_external','insert_scorm_tracks',NULL,'mod_scorm','mod/scorm:savetrack','moodle_mobile_app'),(422,'mod_scorm_get_scorm_sco_tracks','mod_scorm_external','get_scorm_sco_tracks',NULL,'mod_scorm','','moodle_mobile_app'),(423,'mod_scorm_get_scorms_by_courses','mod_scorm_external','get_scorms_by_courses',NULL,'mod_scorm','','moodle_mobile_app'),(424,'mod_scorm_launch_sco','mod_scorm_external','launch_sco',NULL,'mod_scorm','','moodle_mobile_app'),(425,'mod_survey_get_surveys_by_courses','mod_survey_external','get_surveys_by_courses',NULL,'mod_survey','','moodle_mobile_app'),(426,'mod_survey_view_survey','mod_survey_external','view_survey',NULL,'mod_survey','mod/survey:participate','moodle_mobile_app'),(427,'mod_survey_get_questions','mod_survey_external','get_questions',NULL,'mod_survey','mod/survey:participate','moodle_mobile_app'),(428,'mod_survey_submit_answers','mod_survey_external','submit_answers',NULL,'mod_survey','mod/survey:participate','moodle_mobile_app'),(429,'mod_url_view_url','mod_url_external','view_url',NULL,'mod_url','mod/url:view','moodle_mobile_app'),(430,'mod_url_get_urls_by_courses','mod_url_external','get_urls_by_courses',NULL,'mod_url','mod/url:view','moodle_mobile_app'),(431,'mod_wiki_get_wikis_by_courses','mod_wiki_external','get_wikis_by_courses',NULL,'mod_wiki','mod/wiki:viewpage','moodle_mobile_app'),(432,'mod_wiki_view_wiki','mod_wiki_external','view_wiki',NULL,'mod_wiki','mod/wiki:viewpage','moodle_mobile_app'),(433,'mod_wiki_view_page','mod_wiki_external','view_page',NULL,'mod_wiki','mod/wiki:viewpage','moodle_mobile_app'),(434,'mod_wiki_get_subwikis','mod_wiki_external','get_subwikis',NULL,'mod_wiki','mod/wiki:viewpage','moodle_mobile_app'),(435,'mod_wiki_get_subwiki_pages','mod_wiki_external','get_subwiki_pages',NULL,'mod_wiki','mod/wiki:viewpage','moodle_mobile_app'),(436,'mod_wiki_get_subwiki_files','mod_wiki_external','get_subwiki_files',NULL,'mod_wiki','mod/wiki:viewpage','moodle_mobile_app'),(437,'mod_wiki_get_page_contents','mod_wiki_external','get_page_contents',NULL,'mod_wiki','mod/wiki:viewpage','moodle_mobile_app'),(438,'mod_wiki_get_page_for_editing','mod_wiki_external','get_page_for_editing',NULL,'mod_wiki','mod/wiki:editpage','moodle_mobile_app'),(439,'mod_wiki_new_page','mod_wiki_external','new_page',NULL,'mod_wiki','mod/wiki:editpage','moodle_mobile_app'),(440,'mod_wiki_edit_page','mod_wiki_external','edit_page',NULL,'mod_wiki','mod/wiki:editpage','moodle_mobile_app'),(441,'mod_workshop_get_workshops_by_courses','mod_workshop_external','get_workshops_by_courses',NULL,'mod_workshop','mod/workshop:view','moodle_mobile_app'),(442,'mod_workshop_get_workshop_access_information','mod_workshop_external','get_workshop_access_information',NULL,'mod_workshop','mod/workshop:view','moodle_mobile_app'),(443,'mod_workshop_get_user_plan','mod_workshop_external','get_user_plan',NULL,'mod_workshop','mod/workshop:view','moodle_mobile_app'),(444,'mod_workshop_view_workshop','mod_workshop_external','view_workshop',NULL,'mod_workshop','mod/workshop:view','moodle_mobile_app'),(445,'mod_workshop_add_submission','mod_workshop_external','add_submission',NULL,'mod_workshop','mod/workshop:submit','moodle_mobile_app'),(446,'mod_workshop_update_submission','mod_workshop_external','update_submission',NULL,'mod_workshop','mod/workshop:submit','moodle_mobile_app'),(447,'mod_workshop_delete_submission','mod_workshop_external','delete_submission',NULL,'mod_workshop','mod/workshop:submit','moodle_mobile_app'),(448,'mod_workshop_get_submissions','mod_workshop_external','get_submissions',NULL,'mod_workshop','','moodle_mobile_app'),(449,'mod_workshop_get_submission','mod_workshop_external','get_submission',NULL,'mod_workshop','','moodle_mobile_app'),(450,'mod_workshop_get_submission_assessments','mod_workshop_external','get_submission_assessments',NULL,'mod_workshop','','moodle_mobile_app'),(451,'mod_workshop_get_assessment','mod_workshop_external','get_assessment',NULL,'mod_workshop','','moodle_mobile_app'),(452,'mod_workshop_get_assessment_form_definition','mod_workshop_external','get_assessment_form_definition',NULL,'mod_workshop','','moodle_mobile_app'),(453,'mod_workshop_get_reviewer_assessments','mod_workshop_external','get_reviewer_assessments',NULL,'mod_workshop','','moodle_mobile_app'),(454,'mod_workshop_update_assessment','mod_workshop_external','update_assessment',NULL,'mod_workshop','','moodle_mobile_app'),(455,'mod_workshop_get_grades','mod_workshop_external','get_grades',NULL,'mod_workshop','','moodle_mobile_app'),(456,'mod_workshop_evaluate_assessment','mod_workshop_external','evaluate_assessment',NULL,'mod_workshop','','moodle_mobile_app'),(457,'mod_workshop_get_grades_report','mod_workshop_external','get_grades_report',NULL,'mod_workshop','','moodle_mobile_app'),(458,'mod_workshop_view_submission','mod_workshop_external','view_submission',NULL,'mod_workshop','mod/workshop:view','moodle_mobile_app'),(459,'mod_workshop_evaluate_submission','mod_workshop_external','evaluate_submission',NULL,'mod_workshop','','moodle_mobile_app'),(460,'auth_email_get_signup_settings','auth_email_external','get_signup_settings',NULL,'auth_email','',NULL),(461,'auth_email_signup_user','auth_email_external','signup_user',NULL,'auth_email','',NULL),(462,'enrol_guest_get_instance_info','enrol_guest_external','get_instance_info',NULL,'enrol_guest','','moodle_mobile_app'),(463,'enrol_manual_enrol_users','enrol_manual_external','enrol_users','enrol/manual/externallib.php','enrol_manual','enrol/manual:enrol',NULL),(464,'enrol_manual_unenrol_users','enrol_manual_external','unenrol_users','enrol/manual/externallib.php','enrol_manual','enrol/manual:unenrol',NULL),(465,'enrol_self_get_instance_info','enrol_self_external','get_instance_info','enrol/self/externallib.php','enrol_self','','moodle_mobile_app'),(466,'enrol_self_enrol_user','enrol_self_external','enrol_user','enrol/self/externallib.php','enrol_self','','moodle_mobile_app'),(467,'message_airnotifier_is_system_configured','message_airnotifier_external','is_system_configured','message/output/airnotifier/externallib.php','message_airnotifier','','moodle_mobile_app'),(468,'message_airnotifier_are_notification_preferences_configured','message_airnotifier_external','are_notification_preferences_configured','message/output/airnotifier/externallib.php','message_airnotifier','','moodle_mobile_app'),(469,'message_airnotifier_get_user_devices','message_airnotifier_external','get_user_devices','message/output/airnotifier/externallib.php','message_airnotifier','','moodle_mobile_app'),(470,'message_airnotifier_enable_device','message_airnotifier_external','enable_device','message/output/airnotifier/externallib.php','message_airnotifier','message/airnotifier:managedevice','moodle_mobile_app'),(471,'message_popup_get_popup_notifications','message_popup_external','get_popup_notifications','message/output/popup/externallib.php','message_popup','','moodle_mobile_app'),(472,'message_popup_get_unread_popup_notification_count','message_popup_external','get_unread_popup_notification_count','message/output/popup/externallib.php','message_popup','','moodle_mobile_app'),(473,'block_recentlyaccesseditems_get_recent_items','block_recentlyaccesseditems\\external','get_recent_items',NULL,'block_recentlyaccesseditems','','moodle_mobile_app'),(474,'block_starredcourses_get_starred_courses','block_starredcourses_external','get_starred_courses','block/starredcourses/classes/external.php','block_starredcourses','','moodle_mobile_app'),(475,'report_competency_data_for_report','report_competency\\external','data_for_report',NULL,'report_competency','moodle/competency:coursecompetencyview',NULL),(476,'report_insights_set_notuseful_prediction','report_insights\\external','set_notuseful_prediction',NULL,'report_insights','','moodle_mobile_app'),(477,'report_insights_set_fixed_prediction','report_insights\\external','set_fixed_prediction',NULL,'report_insights','','moodle_mobile_app'),(478,'gradereport_overview_get_course_grades','gradereport_overview_external','get_course_grades',NULL,'gradereport_overview','','moodle_mobile_app'),(479,'gradereport_overview_view_grade_report','gradereport_overview_external','view_grade_report',NULL,'gradereport_overview','gradereport/overview:view','moodle_mobile_app'),(480,'gradereport_user_get_grades_table','gradereport_user_external','get_grades_table','grade/report/user/externallib.php','gradereport_user','gradereport/user:view','moodle_mobile_app'),(481,'gradereport_user_view_grade_report','gradereport_user_external','view_grade_report','grade/report/user/externallib.php','gradereport_user','gradereport/user:view','moodle_mobile_app'),(482,'gradereport_user_get_grade_items','gradereport_user_external','get_grade_items','grade/report/user/externallib.php','gradereport_user','gradereport/user:view','moodle_mobile_app'),(483,'tool_dataprivacy_cancel_data_request','tool_dataprivacy\\external','cancel_data_request',NULL,'tool_dataprivacy','',NULL),(484,'tool_dataprivacy_contact_dpo','tool_dataprivacy\\external','contact_dpo',NULL,'tool_dataprivacy','',NULL),(485,'tool_dataprivacy_mark_complete','tool_dataprivacy\\external','mark_complete',NULL,'tool_dataprivacy','tool/dataprivacy:managedatarequests',NULL),(486,'tool_dataprivacy_get_data_request','tool_dataprivacy\\external','get_data_request',NULL,'tool_dataprivacy','tool/dataprivacy:managedatarequests',NULL),(487,'tool_dataprivacy_approve_data_request','tool_dataprivacy\\external','approve_data_request',NULL,'tool_dataprivacy','tool/dataprivacy:managedatarequests',NULL),(488,'tool_dataprivacy_bulk_approve_data_requests','tool_dataprivacy\\external','bulk_approve_data_requests',NULL,'tool_dataprivacy','tool/dataprivacy:managedatarequests',NULL),(489,'tool_dataprivacy_deny_data_request','tool_dataprivacy\\external','deny_data_request',NULL,'tool_dataprivacy','tool/dataprivacy:managedatarequests',NULL),(490,'tool_dataprivacy_bulk_deny_data_requests','tool_dataprivacy\\external','bulk_deny_data_requests',NULL,'tool_dataprivacy','tool/dataprivacy:managedatarequests',NULL),(491,'tool_dataprivacy_get_users','tool_dataprivacy\\external','get_users',NULL,'tool_dataprivacy','tool/dataprivacy:managedatarequests',NULL),(492,'tool_dataprivacy_create_purpose_form','tool_dataprivacy\\external','create_purpose_form',NULL,'tool_dataprivacy','',NULL),(493,'tool_dataprivacy_create_category_form','tool_dataprivacy\\external','create_category_form',NULL,'tool_dataprivacy','',NULL),(494,'tool_dataprivacy_delete_purpose','tool_dataprivacy\\external','delete_purpose',NULL,'tool_dataprivacy','',NULL),(495,'tool_dataprivacy_delete_category','tool_dataprivacy\\external','delete_category',NULL,'tool_dataprivacy','',NULL),(496,'tool_dataprivacy_set_contextlevel_form','tool_dataprivacy\\external','set_contextlevel_form',NULL,'tool_dataprivacy','',NULL),(497,'tool_dataprivacy_set_context_form','tool_dataprivacy\\external','set_context_form',NULL,'tool_dataprivacy','',NULL),(498,'tool_dataprivacy_tree_extra_branches','tool_dataprivacy\\external','tree_extra_branches',NULL,'tool_dataprivacy','',NULL),(499,'tool_dataprivacy_confirm_contexts_for_deletion','tool_dataprivacy\\external','confirm_contexts_for_deletion',NULL,'tool_dataprivacy','',NULL),(500,'tool_dataprivacy_set_context_defaults','tool_dataprivacy\\external','set_context_defaults',NULL,'tool_dataprivacy','tool/dataprivacy:managedataregistry',NULL),(501,'tool_dataprivacy_get_category_options','tool_dataprivacy\\external','get_category_options',NULL,'tool_dataprivacy','tool/dataprivacy:managedataregistry',NULL),(502,'tool_dataprivacy_get_purpose_options','tool_dataprivacy\\external','get_purpose_options',NULL,'tool_dataprivacy','tool/dataprivacy:managedataregistry',NULL),(503,'tool_dataprivacy_get_activity_options','tool_dataprivacy\\external','get_activity_options',NULL,'tool_dataprivacy','tool/dataprivacy:managedataregistry',NULL),(504,'tool_lp_data_for_competency_frameworks_manage_page','tool_lp\\external','data_for_competency_frameworks_manage_page',NULL,'tool_lp','moodle/competency:competencyview',NULL),(505,'tool_lp_data_for_competency_summary','tool_lp\\external','data_for_competency_summary',NULL,'tool_lp','moodle/competency:competencyview',NULL),(506,'tool_lp_data_for_competencies_manage_page','tool_lp\\external','data_for_competencies_manage_page',NULL,'tool_lp','moodle/competency:competencyview',NULL),(507,'tool_lp_list_courses_using_competency','tool_lp\\external','list_courses_using_competency',NULL,'tool_lp','moodle/competency:coursecompetencyview',NULL),(508,'tool_lp_data_for_course_competencies_page','tool_lp\\external','data_for_course_competencies_page',NULL,'tool_lp','moodle/competency:coursecompetencyview','moodle_mobile_app'),(509,'tool_lp_data_for_template_competencies_page','tool_lp\\external','data_for_template_competencies_page',NULL,'tool_lp','moodle/competency:templateview',NULL),(510,'tool_lp_data_for_templates_manage_page','tool_lp\\external','data_for_templates_manage_page',NULL,'tool_lp','moodle/competency:templateview',NULL),(511,'tool_lp_data_for_plans_page','tool_lp\\external','data_for_plans_page',NULL,'tool_lp','moodle/competency:planviewown','moodle_mobile_app'),(512,'tool_lp_data_for_plan_page','tool_lp\\external','data_for_plan_page',NULL,'tool_lp','moodle/competency:planview','moodle_mobile_app'),(513,'tool_lp_data_for_related_competencies_section','tool_lp\\external','data_for_related_competencies_section',NULL,'tool_lp','moodle/competency:competencyview',NULL),(514,'tool_lp_search_users','tool_lp\\external','search_users',NULL,'tool_lp','',NULL),(515,'tool_lp_search_cohorts','core_cohort_external','search_cohorts','cohort/externallib.php','tool_lp','moodle/cohort:view',NULL),(516,'tool_lp_data_for_user_evidence_list_page','tool_lp\\external','data_for_user_evidence_list_page',NULL,'tool_lp','moodle/competency:userevidenceview','moodle_mobile_app'),(517,'tool_lp_data_for_user_evidence_page','tool_lp\\external','data_for_user_evidence_page',NULL,'tool_lp','moodle/competency:userevidenceview','moodle_mobile_app'),(518,'tool_lp_data_for_user_competency_summary','tool_lp\\external','data_for_user_competency_summary',NULL,'tool_lp','moodle/competency:planview','moodle_mobile_app'),(519,'tool_lp_data_for_user_competency_summary_in_plan','tool_lp\\external','data_for_user_competency_summary_in_plan',NULL,'tool_lp','moodle/competency:planview','moodle_mobile_app'),(520,'tool_lp_data_for_user_competency_summary_in_course','tool_lp\\external','data_for_user_competency_summary_in_course',NULL,'tool_lp','moodle/competency:coursecompetencyview','moodle_mobile_app'),(521,'tool_mobile_get_plugins_supporting_mobile','tool_mobile\\external','get_plugins_supporting_mobile',NULL,'tool_mobile','','moodle_mobile_app'),(522,'tool_mobile_get_public_config','tool_mobile\\external','get_public_config',NULL,'tool_mobile','','moodle_mobile_app'),(523,'tool_mobile_get_config','tool_mobile\\external','get_config',NULL,'tool_mobile','','moodle_mobile_app'),(524,'tool_mobile_get_autologin_key','tool_mobile\\external','get_autologin_key',NULL,'tool_mobile','','moodle_mobile_app'),(525,'tool_mobile_get_content','tool_mobile\\external','get_content',NULL,'tool_mobile','','moodle_mobile_app'),(526,'tool_policy_get_policy_version','tool_policy\\external','get_policy_version',NULL,'tool_policy','',NULL),(527,'tool_policy_submit_accept_on_behalf','tool_policy\\external','submit_accept_on_behalf',NULL,'tool_policy','',NULL),(528,'tool_templatelibrary_list_templates','tool_templatelibrary\\external','list_templates',NULL,'tool_templatelibrary','',NULL),(529,'tool_templatelibrary_load_canonical_template','tool_templatelibrary\\external','load_canonical_template',NULL,'tool_templatelibrary','',NULL),(530,'tool_usertours_fetch_and_start_tour','tool_usertours\\external\\tour','fetch_and_start_tour',NULL,'tool_usertours','',NULL),(531,'tool_usertours_step_shown','tool_usertours\\external\\tour','step_shown',NULL,'tool_usertours','',NULL),(532,'tool_usertours_complete_tour','tool_usertours\\external\\tour','complete_tour',NULL,'tool_usertours','',NULL),(533,'tool_usertours_reset_tour','tool_usertours\\external\\tour','reset_tour',NULL,'tool_usertours','',NULL),(534,'tool_xmldb_invoke_move_action','tool_xmldb_external','invoke_move_action',NULL,'tool_xmldb','',NULL);
/*!40000 ALTER TABLE `mdl_external_functions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_external_services`
--

DROP TABLE IF EXISTS `mdl_external_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_external_services` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `enabled` tinyint(1) NOT NULL,
  `requiredcapability` varchar(150) DEFAULT NULL,
  `restrictedusers` tinyint(1) NOT NULL,
  `component` varchar(100) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `shortname` varchar(255) DEFAULT NULL,
  `downloadfiles` tinyint(1) NOT NULL DEFAULT 0,
  `uploadfiles` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_exteserv_nam_uix` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='built in and custom external services';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_external_services`
--

LOCK TABLES `mdl_external_services` WRITE;
/*!40000 ALTER TABLE `mdl_external_services` DISABLE KEYS */;
INSERT INTO `mdl_external_services` VALUES (1,'Moodle mobile web service',1,'',0,'moodle',1601070787,1601071256,'moodle_mobile_app',1,1);
/*!40000 ALTER TABLE `mdl_external_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_external_services_functions`
--

DROP TABLE IF EXISTS `mdl_external_services_functions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_external_services_functions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `externalserviceid` bigint(10) NOT NULL,
  `functionname` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_exteservfunc_ext_ix` (`externalserviceid`)
) ENGINE=InnoDB AUTO_INCREMENT=328 DEFAULT CHARSET=utf8 COMMENT='lists functions available in each service group';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_external_services_functions`
--

LOCK TABLES `mdl_external_services_functions` WRITE;
/*!40000 ALTER TABLE `mdl_external_services_functions` DISABLE KEYS */;
INSERT INTO `mdl_external_services_functions` VALUES (1,1,'core_badges_get_user_badges'),(2,1,'core_blog_get_entries'),(3,1,'core_blog_view_entries'),(4,1,'core_calendar_get_calendar_monthly_view'),(5,1,'core_calendar_get_calendar_day_view'),(6,1,'core_calendar_get_calendar_upcoming_view'),(7,1,'core_calendar_create_calendar_events'),(8,1,'core_calendar_delete_calendar_events'),(9,1,'core_calendar_get_calendar_events'),(10,1,'core_calendar_get_action_events_by_timesort'),(11,1,'core_calendar_get_action_events_by_course'),(12,1,'core_calendar_get_action_events_by_courses'),(13,1,'core_calendar_get_calendar_event_by_id'),(14,1,'core_comment_get_comments'),(15,1,'core_completion_get_activities_completion_status'),(16,1,'core_completion_get_course_completion_status'),(17,1,'core_completion_mark_course_self_completed'),(18,1,'core_completion_update_activity_completion_status_manually'),(19,1,'core_course_get_categories'),(20,1,'core_course_get_contents'),(21,1,'core_course_get_course_module'),(22,1,'core_course_get_course_module_by_instance'),(23,1,'core_course_get_courses'),(24,1,'core_course_search_courses'),(25,1,'core_course_view_course'),(26,1,'core_course_get_activities_overview'),(27,1,'core_course_get_user_navigation_options'),(28,1,'core_course_get_user_administration_options'),(29,1,'core_course_get_courses_by_field'),(30,1,'core_course_check_updates'),(31,1,'core_course_get_updates_since'),(32,1,'core_course_get_enrolled_courses_by_timeline_classification'),(33,1,'core_course_get_recent_courses'),(34,1,'core_course_set_favourite_courses'),(35,1,'core_enrol_get_course_enrolment_methods'),(36,1,'core_enrol_get_enrolled_users'),(37,1,'core_enrol_get_users_courses'),(38,1,'core_files_get_files'),(39,1,'core_get_component_strings'),(40,1,'core_group_get_activity_allowed_groups'),(41,1,'core_group_get_activity_groupmode'),(42,1,'core_group_get_course_user_groups'),(43,1,'core_message_block_user'),(44,1,'core_message_block_contacts'),(45,1,'core_message_create_contacts'),(46,1,'core_message_get_contact_requests'),(47,1,'core_message_create_contact_request'),(48,1,'core_message_confirm_contact_request'),(49,1,'core_message_decline_contact_request'),(50,1,'core_message_get_received_contact_requests_count'),(51,1,'core_message_delete_contacts'),(52,1,'core_message_delete_conversation'),(53,1,'core_message_delete_conversations_by_id'),(54,1,'core_message_delete_message'),(55,1,'core_message_get_blocked_users'),(56,1,'core_message_data_for_messagearea_search_messages'),(57,1,'core_message_message_search_users'),(58,1,'core_message_data_for_messagearea_conversations'),(59,1,'core_message_data_for_messagearea_contacts'),(60,1,'core_message_data_for_messagearea_messages'),(61,1,'core_message_get_contacts'),(62,1,'core_message_get_user_contacts'),(63,1,'core_message_get_conversations'),(64,1,'core_message_get_conversation'),(65,1,'core_message_get_conversation_between_users'),(66,1,'core_message_get_messages'),(67,1,'core_message_get_conversation_counts'),(68,1,'core_message_get_unread_conversation_counts'),(69,1,'core_message_get_conversation_members'),(70,1,'core_message_get_member_info'),(71,1,'core_message_get_unread_conversations_count'),(72,1,'core_message_mark_all_notifications_as_read'),(73,1,'core_message_mark_all_messages_as_read'),(74,1,'core_message_mark_all_conversation_messages_as_read'),(75,1,'core_message_mark_message_read'),(76,1,'core_message_mark_notification_read'),(77,1,'core_message_message_processor_config_form'),(78,1,'core_message_search_contacts'),(79,1,'core_message_send_instant_messages'),(80,1,'core_message_send_messages_to_conversation'),(81,1,'core_message_get_conversation_messages'),(82,1,'core_message_unblock_user'),(83,1,'core_message_unblock_contacts'),(84,1,'core_message_get_user_notification_preferences'),(85,1,'core_message_get_user_message_preferences'),(86,1,'core_message_set_favourite_conversations'),(87,1,'core_message_unset_favourite_conversations'),(88,1,'core_notes_create_notes'),(89,1,'core_notes_delete_notes'),(90,1,'core_notes_get_course_notes'),(91,1,'core_notes_view_notes'),(92,1,'core_question_update_flag'),(93,1,'core_rating_get_item_ratings'),(94,1,'core_rating_add_rating'),(95,1,'core_user_add_user_device'),(96,1,'core_user_add_user_private_files'),(97,1,'core_user_get_course_user_profiles'),(98,1,'core_user_get_users_by_field'),(99,1,'core_user_remove_user_device'),(100,1,'core_user_update_user_preferences'),(101,1,'core_user_view_user_list'),(102,1,'core_user_view_user_profile'),(103,1,'core_user_get_user_preferences'),(104,1,'core_user_update_picture'),(105,1,'core_user_set_user_preferences'),(106,1,'core_user_agree_site_policy'),(107,1,'core_user_get_private_files_info'),(108,1,'core_competency_competency_viewed'),(109,1,'core_competency_list_course_competencies'),(110,1,'core_competency_get_scale_values'),(111,1,'core_competency_user_competency_viewed'),(112,1,'core_competency_user_competency_viewed_in_plan'),(113,1,'core_competency_user_competency_viewed_in_course'),(114,1,'core_competency_user_competency_plan_viewed'),(115,1,'core_competency_grade_competency_in_course'),(116,1,'core_competency_delete_evidence'),(117,1,'core_webservice_get_site_info'),(118,1,'core_block_get_course_blocks'),(119,1,'core_block_get_dashboard_blocks'),(120,1,'core_filters_get_available_in_context'),(121,1,'mod_assign_get_grades'),(122,1,'mod_assign_get_assignments'),(123,1,'mod_assign_get_submissions'),(124,1,'mod_assign_get_user_flags'),(125,1,'mod_assign_set_user_flags'),(126,1,'mod_assign_get_user_mappings'),(127,1,'mod_assign_revert_submissions_to_draft'),(128,1,'mod_assign_lock_submissions'),(129,1,'mod_assign_unlock_submissions'),(130,1,'mod_assign_save_submission'),(131,1,'mod_assign_submit_for_grading'),(132,1,'mod_assign_save_grade'),(133,1,'mod_assign_save_grades'),(134,1,'mod_assign_save_user_extensions'),(135,1,'mod_assign_reveal_identities'),(136,1,'mod_assign_view_grading_table'),(137,1,'mod_assign_view_submission_status'),(138,1,'mod_assign_get_submission_status'),(139,1,'mod_assign_list_participants'),(140,1,'mod_assign_submit_grading_form'),(141,1,'mod_assign_get_participant'),(142,1,'mod_assign_view_assign'),(143,1,'mod_book_view_book'),(144,1,'mod_book_get_books_by_courses'),(145,1,'mod_chat_login_user'),(146,1,'mod_chat_get_chat_users'),(147,1,'mod_chat_send_chat_message'),(148,1,'mod_chat_get_chat_latest_messages'),(149,1,'mod_chat_view_chat'),(150,1,'mod_chat_get_chats_by_courses'),(151,1,'mod_chat_get_sessions'),(152,1,'mod_chat_get_session_messages'),(153,1,'mod_choice_get_choice_results'),(154,1,'mod_choice_get_choice_options'),(155,1,'mod_choice_submit_choice_response'),(156,1,'mod_choice_view_choice'),(157,1,'mod_choice_get_choices_by_courses'),(158,1,'mod_choice_delete_choice_responses'),(159,1,'mod_data_get_databases_by_courses'),(160,1,'mod_data_view_database'),(161,1,'mod_data_get_data_access_information'),(162,1,'mod_data_get_entries'),(163,1,'mod_data_get_entry'),(164,1,'mod_data_get_fields'),(165,1,'mod_data_search_entries'),(166,1,'mod_data_approve_entry'),(167,1,'mod_data_delete_entry'),(168,1,'mod_data_add_entry'),(169,1,'mod_data_update_entry'),(170,1,'mod_feedback_get_feedbacks_by_courses'),(171,1,'mod_feedback_get_feedback_access_information'),(172,1,'mod_feedback_view_feedback'),(173,1,'mod_feedback_get_current_completed_tmp'),(174,1,'mod_feedback_get_items'),(175,1,'mod_feedback_launch_feedback'),(176,1,'mod_feedback_get_page_items'),(177,1,'mod_feedback_process_page'),(178,1,'mod_feedback_get_analysis'),(179,1,'mod_feedback_get_unfinished_responses'),(180,1,'mod_feedback_get_finished_responses'),(181,1,'mod_feedback_get_non_respondents'),(182,1,'mod_feedback_get_responses_analysis'),(183,1,'mod_feedback_get_last_completed'),(184,1,'mod_folder_view_folder'),(185,1,'mod_folder_get_folders_by_courses'),(186,1,'mod_forum_get_forums_by_courses'),(187,1,'mod_forum_get_forum_discussion_posts'),(188,1,'mod_forum_get_forum_discussions_paginated'),(189,1,'mod_forum_view_forum'),(190,1,'mod_forum_view_forum_discussion'),(191,1,'mod_forum_add_discussion_post'),(192,1,'mod_forum_add_discussion'),(193,1,'mod_forum_can_add_discussion'),(194,1,'mod_glossary_get_glossaries_by_courses'),(195,1,'mod_glossary_view_glossary'),(196,1,'mod_glossary_view_entry'),(197,1,'mod_glossary_get_entries_by_letter'),(198,1,'mod_glossary_get_entries_by_date'),(199,1,'mod_glossary_get_categories'),(200,1,'mod_glossary_get_entries_by_category'),(201,1,'mod_glossary_get_authors'),(202,1,'mod_glossary_get_entries_by_author'),(203,1,'mod_glossary_get_entries_by_author_id'),(204,1,'mod_glossary_get_entries_by_search'),(205,1,'mod_glossary_get_entries_by_term'),(206,1,'mod_glossary_get_entries_to_approve'),(207,1,'mod_glossary_get_entry_by_id'),(208,1,'mod_glossary_add_entry'),(209,1,'mod_imscp_view_imscp'),(210,1,'mod_imscp_get_imscps_by_courses'),(211,1,'mod_label_get_labels_by_courses'),(212,1,'mod_lesson_get_lessons_by_courses'),(213,1,'mod_lesson_get_lesson_access_information'),(214,1,'mod_lesson_view_lesson'),(215,1,'mod_lesson_get_questions_attempts'),(216,1,'mod_lesson_get_user_grade'),(217,1,'mod_lesson_get_user_attempt_grade'),(218,1,'mod_lesson_get_content_pages_viewed'),(219,1,'mod_lesson_get_user_timers'),(220,1,'mod_lesson_get_pages'),(221,1,'mod_lesson_launch_attempt'),(222,1,'mod_lesson_get_page_data'),(223,1,'mod_lesson_process_page'),(224,1,'mod_lesson_finish_attempt'),(225,1,'mod_lesson_get_attempts_overview'),(226,1,'mod_lesson_get_user_attempt'),(227,1,'mod_lesson_get_pages_possible_jumps'),(228,1,'mod_lesson_get_lesson'),(229,1,'mod_lti_get_tool_launch_data'),(230,1,'mod_lti_get_ltis_by_courses'),(231,1,'mod_lti_view_lti'),(232,1,'mod_page_view_page'),(233,1,'mod_page_get_pages_by_courses'),(234,1,'mod_quiz_get_quizzes_by_courses'),(235,1,'mod_quiz_view_quiz'),(236,1,'mod_quiz_get_user_attempts'),(237,1,'mod_quiz_get_user_best_grade'),(238,1,'mod_quiz_get_combined_review_options'),(239,1,'mod_quiz_start_attempt'),(240,1,'mod_quiz_get_attempt_data'),(241,1,'mod_quiz_get_attempt_summary'),(242,1,'mod_quiz_save_attempt'),(243,1,'mod_quiz_process_attempt'),(244,1,'mod_quiz_get_attempt_review'),(245,1,'mod_quiz_view_attempt'),(246,1,'mod_quiz_view_attempt_summary'),(247,1,'mod_quiz_view_attempt_review'),(248,1,'mod_quiz_get_quiz_feedback_for_grade'),(249,1,'mod_quiz_get_quiz_access_information'),(250,1,'mod_quiz_get_attempt_access_information'),(251,1,'mod_quiz_get_quiz_required_qtypes'),(252,1,'mod_resource_view_resource'),(253,1,'mod_resource_get_resources_by_courses'),(254,1,'mod_scorm_view_scorm'),(255,1,'mod_scorm_get_scorm_attempt_count'),(256,1,'mod_scorm_get_scorm_scoes'),(257,1,'mod_scorm_get_scorm_user_data'),(258,1,'mod_scorm_insert_scorm_tracks'),(259,1,'mod_scorm_get_scorm_sco_tracks'),(260,1,'mod_scorm_get_scorms_by_courses'),(261,1,'mod_scorm_launch_sco'),(262,1,'mod_survey_get_surveys_by_courses'),(263,1,'mod_survey_view_survey'),(264,1,'mod_survey_get_questions'),(265,1,'mod_survey_submit_answers'),(266,1,'mod_url_view_url'),(267,1,'mod_url_get_urls_by_courses'),(268,1,'mod_wiki_get_wikis_by_courses'),(269,1,'mod_wiki_view_wiki'),(270,1,'mod_wiki_view_page'),(271,1,'mod_wiki_get_subwikis'),(272,1,'mod_wiki_get_subwiki_pages'),(273,1,'mod_wiki_get_subwiki_files'),(274,1,'mod_wiki_get_page_contents'),(275,1,'mod_wiki_get_page_for_editing'),(276,1,'mod_wiki_new_page'),(277,1,'mod_wiki_edit_page'),(278,1,'mod_workshop_get_workshops_by_courses'),(279,1,'mod_workshop_get_workshop_access_information'),(280,1,'mod_workshop_get_user_plan'),(281,1,'mod_workshop_view_workshop'),(282,1,'mod_workshop_add_submission'),(283,1,'mod_workshop_update_submission'),(284,1,'mod_workshop_delete_submission'),(285,1,'mod_workshop_get_submissions'),(286,1,'mod_workshop_get_submission'),(287,1,'mod_workshop_get_submission_assessments'),(288,1,'mod_workshop_get_assessment'),(289,1,'mod_workshop_get_assessment_form_definition'),(290,1,'mod_workshop_get_reviewer_assessments'),(291,1,'mod_workshop_update_assessment'),(292,1,'mod_workshop_get_grades'),(293,1,'mod_workshop_evaluate_assessment'),(294,1,'mod_workshop_get_grades_report'),(295,1,'mod_workshop_view_submission'),(296,1,'mod_workshop_evaluate_submission'),(297,1,'enrol_guest_get_instance_info'),(298,1,'enrol_self_get_instance_info'),(299,1,'enrol_self_enrol_user'),(300,1,'message_airnotifier_is_system_configured'),(301,1,'message_airnotifier_are_notification_preferences_configured'),(302,1,'message_airnotifier_get_user_devices'),(303,1,'message_airnotifier_enable_device'),(304,1,'message_popup_get_popup_notifications'),(305,1,'message_popup_get_unread_popup_notification_count'),(306,1,'block_recentlyaccesseditems_get_recent_items'),(307,1,'block_starredcourses_get_starred_courses'),(308,1,'report_insights_set_notuseful_prediction'),(309,1,'report_insights_set_fixed_prediction'),(310,1,'gradereport_overview_get_course_grades'),(311,1,'gradereport_overview_view_grade_report'),(312,1,'gradereport_user_get_grades_table'),(313,1,'gradereport_user_view_grade_report'),(314,1,'gradereport_user_get_grade_items'),(315,1,'tool_lp_data_for_course_competencies_page'),(316,1,'tool_lp_data_for_plans_page'),(317,1,'tool_lp_data_for_plan_page'),(318,1,'tool_lp_data_for_user_evidence_list_page'),(319,1,'tool_lp_data_for_user_evidence_page'),(320,1,'tool_lp_data_for_user_competency_summary'),(321,1,'tool_lp_data_for_user_competency_summary_in_plan'),(322,1,'tool_lp_data_for_user_competency_summary_in_course'),(323,1,'tool_mobile_get_plugins_supporting_mobile'),(324,1,'tool_mobile_get_public_config'),(325,1,'tool_mobile_get_config'),(326,1,'tool_mobile_get_autologin_key'),(327,1,'tool_mobile_get_content');
/*!40000 ALTER TABLE `mdl_external_services_functions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_external_services_users`
--

DROP TABLE IF EXISTS `mdl_external_services_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_external_services_users` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `externalserviceid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `iprestriction` varchar(255) DEFAULT NULL,
  `validuntil` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_exteservuser_ext_ix` (`externalserviceid`),
  KEY `mdl_exteservuser_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='users allowed to use services with restricted users flag';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_external_services_users`
--

LOCK TABLES `mdl_external_services_users` WRITE;
/*!40000 ALTER TABLE `mdl_external_services_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_external_services_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_external_tokens`
--

DROP TABLE IF EXISTS `mdl_external_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_external_tokens` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(128) NOT NULL DEFAULT '',
  `privatetoken` varchar(64) DEFAULT NULL,
  `tokentype` smallint(4) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `externalserviceid` bigint(10) NOT NULL,
  `sid` varchar(128) DEFAULT NULL,
  `contextid` bigint(10) NOT NULL,
  `creatorid` bigint(10) NOT NULL DEFAULT 1,
  `iprestriction` varchar(255) DEFAULT NULL,
  `validuntil` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `lastaccess` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_extetoke_use_ix` (`userid`),
  KEY `mdl_extetoke_ext_ix` (`externalserviceid`),
  KEY `mdl_extetoke_con_ix` (`contextid`),
  KEY `mdl_extetoke_cre_ix` (`creatorid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Security tokens for accessing of external services';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_external_tokens`
--

LOCK TABLES `mdl_external_tokens` WRITE;
/*!40000 ALTER TABLE `mdl_external_tokens` DISABLE KEYS */;
INSERT INTO `mdl_external_tokens` VALUES (1,'a2b1d7f6f5a100da3b34ebea04c83f70',NULL,0,2,1,NULL,1,2,NULL,0,1601071396,NULL);
/*!40000 ALTER TABLE `mdl_external_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_favourite`
--

DROP TABLE IF EXISTS `mdl_favourite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_favourite` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `component` varchar(100) NOT NULL DEFAULT '',
  `itemtype` varchar(100) NOT NULL DEFAULT '',
  `itemid` bigint(10) NOT NULL,
  `contextid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `ordering` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_favo_comiteiteconuse_uix` (`component`,`itemtype`,`itemid`,`contextid`,`userid`),
  KEY `mdl_favo_con_ix` (`contextid`),
  KEY `mdl_favo_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores the relationship between an arbitrary item (itemtype,';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_favourite`
--

LOCK TABLES `mdl_favourite` WRITE;
/*!40000 ALTER TABLE `mdl_favourite` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_favourite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_feedback`
--

DROP TABLE IF EXISTS `mdl_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_feedback` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `intro` longtext NOT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT 0,
  `anonymous` tinyint(1) NOT NULL DEFAULT 1,
  `email_notification` tinyint(1) NOT NULL DEFAULT 1,
  `multiple_submit` tinyint(1) NOT NULL DEFAULT 1,
  `autonumbering` tinyint(1) NOT NULL DEFAULT 1,
  `site_after_submit` varchar(255) NOT NULL DEFAULT '',
  `page_after_submit` longtext NOT NULL,
  `page_after_submitformat` tinyint(2) NOT NULL DEFAULT 0,
  `publish_stats` tinyint(1) NOT NULL DEFAULT 0,
  `timeopen` bigint(10) NOT NULL DEFAULT 0,
  `timeclose` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `completionsubmit` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_feed_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='all feedbacks';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_feedback`
--

LOCK TABLES `mdl_feedback` WRITE;
/*!40000 ALTER TABLE `mdl_feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_feedback_completed`
--

DROP TABLE IF EXISTS `mdl_feedback_completed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_feedback_completed` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `feedback` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `random_response` bigint(10) NOT NULL DEFAULT 0,
  `anonymous_response` tinyint(1) NOT NULL DEFAULT 0,
  `courseid` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_feedcomp_use_ix` (`userid`),
  KEY `mdl_feedcomp_fee_ix` (`feedback`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='filled out feedback';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_feedback_completed`
--

LOCK TABLES `mdl_feedback_completed` WRITE;
/*!40000 ALTER TABLE `mdl_feedback_completed` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_feedback_completed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_feedback_completedtmp`
--

DROP TABLE IF EXISTS `mdl_feedback_completedtmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_feedback_completedtmp` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `feedback` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `guestid` varchar(255) NOT NULL DEFAULT '',
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `random_response` bigint(10) NOT NULL DEFAULT 0,
  `anonymous_response` tinyint(1) NOT NULL DEFAULT 0,
  `courseid` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_feedcomp_use2_ix` (`userid`),
  KEY `mdl_feedcomp_fee2_ix` (`feedback`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='filled out feedback';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_feedback_completedtmp`
--

LOCK TABLES `mdl_feedback_completedtmp` WRITE;
/*!40000 ALTER TABLE `mdl_feedback_completedtmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_feedback_completedtmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_feedback_item`
--

DROP TABLE IF EXISTS `mdl_feedback_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_feedback_item` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `feedback` bigint(10) NOT NULL DEFAULT 0,
  `template` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) NOT NULL DEFAULT '',
  `presentation` longtext NOT NULL,
  `typ` varchar(255) NOT NULL DEFAULT '',
  `hasvalue` tinyint(1) NOT NULL DEFAULT 0,
  `position` smallint(3) NOT NULL DEFAULT 0,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `dependitem` bigint(10) NOT NULL DEFAULT 0,
  `dependvalue` varchar(255) NOT NULL DEFAULT '',
  `options` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_feeditem_fee_ix` (`feedback`),
  KEY `mdl_feeditem_tem_ix` (`template`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='feedback_items';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_feedback_item`
--

LOCK TABLES `mdl_feedback_item` WRITE;
/*!40000 ALTER TABLE `mdl_feedback_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_feedback_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_feedback_sitecourse_map`
--

DROP TABLE IF EXISTS `mdl_feedback_sitecourse_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_feedback_sitecourse_map` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `feedbackid` bigint(10) NOT NULL DEFAULT 0,
  `courseid` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_feedsitemap_cou_ix` (`courseid`),
  KEY `mdl_feedsitemap_fee_ix` (`feedbackid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='feedback sitecourse map';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_feedback_sitecourse_map`
--

LOCK TABLES `mdl_feedback_sitecourse_map` WRITE;
/*!40000 ALTER TABLE `mdl_feedback_sitecourse_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_feedback_sitecourse_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_feedback_template`
--

DROP TABLE IF EXISTS `mdl_feedback_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_feedback_template` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `ispublic` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_feedtemp_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='templates of feedbackstructures';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_feedback_template`
--

LOCK TABLES `mdl_feedback_template` WRITE;
/*!40000 ALTER TABLE `mdl_feedback_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_feedback_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_feedback_value`
--

DROP TABLE IF EXISTS `mdl_feedback_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_feedback_value` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course_id` bigint(10) NOT NULL DEFAULT 0,
  `item` bigint(10) NOT NULL DEFAULT 0,
  `completed` bigint(10) NOT NULL DEFAULT 0,
  `tmp_completed` bigint(10) NOT NULL DEFAULT 0,
  `value` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_feedvalu_comitecou_uix` (`completed`,`item`,`course_id`),
  KEY `mdl_feedvalu_cou_ix` (`course_id`),
  KEY `mdl_feedvalu_ite_ix` (`item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='values of the completeds';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_feedback_value`
--

LOCK TABLES `mdl_feedback_value` WRITE;
/*!40000 ALTER TABLE `mdl_feedback_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_feedback_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_feedback_valuetmp`
--

DROP TABLE IF EXISTS `mdl_feedback_valuetmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_feedback_valuetmp` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course_id` bigint(10) NOT NULL DEFAULT 0,
  `item` bigint(10) NOT NULL DEFAULT 0,
  `completed` bigint(10) NOT NULL DEFAULT 0,
  `tmp_completed` bigint(10) NOT NULL DEFAULT 0,
  `value` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_feedvalu_comitecou2_uix` (`completed`,`item`,`course_id`),
  KEY `mdl_feedvalu_cou2_ix` (`course_id`),
  KEY `mdl_feedvalu_ite2_ix` (`item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='values of the completedstmp';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_feedback_valuetmp`
--

LOCK TABLES `mdl_feedback_valuetmp` WRITE;
/*!40000 ALTER TABLE `mdl_feedback_valuetmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_feedback_valuetmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_file_conversion`
--

DROP TABLE IF EXISTS `mdl_file_conversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_file_conversion` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `usermodified` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `sourcefileid` bigint(10) NOT NULL,
  `targetformat` varchar(100) NOT NULL DEFAULT '',
  `status` bigint(10) DEFAULT 0,
  `statusmessage` longtext DEFAULT NULL,
  `converter` varchar(255) DEFAULT NULL,
  `destfileid` bigint(10) DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_fileconv_sou_ix` (`sourcefileid`),
  KEY `mdl_fileconv_des_ix` (`destfileid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Table to track file conversions.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_file_conversion`
--

LOCK TABLES `mdl_file_conversion` WRITE;
/*!40000 ALTER TABLE `mdl_file_conversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_file_conversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_files`
--

DROP TABLE IF EXISTS `mdl_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_files` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contenthash` varchar(40) NOT NULL DEFAULT '',
  `pathnamehash` varchar(40) NOT NULL DEFAULT '',
  `contextid` bigint(10) NOT NULL,
  `component` varchar(100) NOT NULL DEFAULT '',
  `filearea` varchar(50) NOT NULL DEFAULT '',
  `itemid` bigint(10) NOT NULL,
  `filepath` varchar(255) NOT NULL DEFAULT '',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `userid` bigint(10) DEFAULT NULL,
  `filesize` bigint(10) NOT NULL,
  `mimetype` varchar(100) DEFAULT NULL,
  `status` bigint(10) NOT NULL DEFAULT 0,
  `source` longtext DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `license` varchar(255) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `sortorder` bigint(10) NOT NULL DEFAULT 0,
  `referencefileid` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_file_pat_uix` (`pathnamehash`),
  KEY `mdl_file_comfilconite_ix` (`component`,`filearea`,`contextid`,`itemid`),
  KEY `mdl_file_con_ix` (`contenthash`),
  KEY `mdl_file_con2_ix` (`contextid`),
  KEY `mdl_file_use_ix` (`userid`),
  KEY `mdl_file_ref_ix` (`referencefileid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='description of files, content is stored in sha1 file pool';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_files`
--

LOCK TABLES `mdl_files` WRITE;
/*!40000 ALTER TABLE `mdl_files` DISABLE KEYS */;
INSERT INTO `mdl_files` VALUES (1,'41cfeee5884a43a4650a851f4f85e7b28316fcc9','a48e186a2cc853a9e94e9305f4e9bc086391212d',1,'theme_more','backgroundimage',0,'/','background.jpg',2,4451,'image/jpeg',0,NULL,NULL,NULL,1601070864,1601070864,0,NULL),(2,'da39a3ee5e6b4b0d3255bfef95601890afd80709','d1da7ab1bb9c08a926037367bf8ce9a838034ead',1,'theme_more','backgroundimage',0,'/','.',2,0,NULL,0,NULL,NULL,NULL,1601070864,1601070864,0,NULL),(3,'5f8e911d0da441e36f47c5c46f4393269211ca56','508e674d49c30d4fde325fe6c7f6fd3d56b247e1',1,'assignfeedback_editpdf','stamps',0,'/','smile.png',2,1085,'image/png',0,NULL,NULL,NULL,1601070865,1601070865,0,NULL),(4,'da39a3ee5e6b4b0d3255bfef95601890afd80709','70b7cdade7b4e27d4e83f0cdaad10d6a3c0cccb5',1,'assignfeedback_editpdf','stamps',0,'/','.',2,0,NULL,0,NULL,NULL,NULL,1601070865,1601070865,0,NULL),(5,'75c101cb8cb34ea573cd25ac38f8157b1de901b8','68317eab56c67d32aeaee5acf509a0c4aa828b6b',1,'assignfeedback_editpdf','stamps',0,'/','sad.png',2,966,'image/png',0,NULL,NULL,NULL,1601070865,1601070865,0,NULL),(6,'0c5190a24c3943966541401c883eacaa20ca20cb','695a55ff780e61c9e59428aa425430b0d6bde53b',1,'assignfeedback_editpdf','stamps',0,'/','tick.png',2,1039,'image/png',0,NULL,NULL,NULL,1601070865,1601070865,0,NULL),(7,'8c96a486d5801e0f4ab8c411f561f1c687e1f865','373e63af262a9b8466ba8632551520be793c37ff',1,'assignfeedback_editpdf','stamps',0,'/','cross.png',2,861,'image/png',0,NULL,NULL,NULL,1601070865,1601070865,0,NULL);
/*!40000 ALTER TABLE `mdl_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_files_reference`
--

DROP TABLE IF EXISTS `mdl_files_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_files_reference` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `repositoryid` bigint(10) NOT NULL,
  `lastsync` bigint(10) DEFAULT NULL,
  `reference` longtext DEFAULT NULL,
  `referencehash` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_filerefe_refrep_uix` (`referencehash`,`repositoryid`),
  KEY `mdl_filerefe_rep_ix` (`repositoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Store files references';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_files_reference`
--

LOCK TABLES `mdl_files_reference` WRITE;
/*!40000 ALTER TABLE `mdl_files_reference` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_files_reference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_filter_active`
--

DROP TABLE IF EXISTS `mdl_filter_active`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_filter_active` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `filter` varchar(32) NOT NULL DEFAULT '',
  `contextid` bigint(10) NOT NULL,
  `active` smallint(4) NOT NULL,
  `sortorder` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_filtacti_confil_uix` (`contextid`,`filter`),
  KEY `mdl_filtacti_con_ix` (`contextid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Stores information about which filters are active in which c';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_filter_active`
--

LOCK TABLES `mdl_filter_active` WRITE;
/*!40000 ALTER TABLE `mdl_filter_active` DISABLE KEYS */;
INSERT INTO `mdl_filter_active` VALUES (1,'activitynames',1,1,2),(2,'mathjaxloader',1,1,1),(3,'mediaplugin',1,1,3);
/*!40000 ALTER TABLE `mdl_filter_active` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_filter_config`
--

DROP TABLE IF EXISTS `mdl_filter_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_filter_config` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `filter` varchar(32) NOT NULL DEFAULT '',
  `contextid` bigint(10) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_filtconf_confilnam_uix` (`contextid`,`filter`,`name`),
  KEY `mdl_filtconf_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores per-context configuration settings for filters which ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_filter_config`
--

LOCK TABLES `mdl_filter_config` WRITE;
/*!40000 ALTER TABLE `mdl_filter_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_filter_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_folder`
--

DROP TABLE IF EXISTS `mdl_folder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_folder` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `intro` longtext DEFAULT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT 0,
  `revision` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `display` smallint(4) NOT NULL DEFAULT 0,
  `showexpanded` tinyint(1) NOT NULL DEFAULT 1,
  `showdownloadfolder` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `mdl_fold_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='each record is one folder resource';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_folder`
--

LOCK TABLES `mdl_folder` WRITE;
/*!40000 ALTER TABLE `mdl_folder` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_folder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_forum`
--

DROP TABLE IF EXISTS `mdl_forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_forum` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `type` varchar(20) NOT NULL DEFAULT 'general',
  `name` varchar(255) NOT NULL DEFAULT '',
  `intro` longtext NOT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT 0,
  `assessed` bigint(10) NOT NULL DEFAULT 0,
  `assesstimestart` bigint(10) NOT NULL DEFAULT 0,
  `assesstimefinish` bigint(10) NOT NULL DEFAULT 0,
  `scale` bigint(10) NOT NULL DEFAULT 0,
  `maxbytes` bigint(10) NOT NULL DEFAULT 0,
  `maxattachments` bigint(10) NOT NULL DEFAULT 1,
  `forcesubscribe` tinyint(1) NOT NULL DEFAULT 0,
  `trackingtype` tinyint(2) NOT NULL DEFAULT 1,
  `rsstype` tinyint(2) NOT NULL DEFAULT 0,
  `rssarticles` tinyint(2) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `warnafter` bigint(10) NOT NULL DEFAULT 0,
  `blockafter` bigint(10) NOT NULL DEFAULT 0,
  `blockperiod` bigint(10) NOT NULL DEFAULT 0,
  `completiondiscussions` int(9) NOT NULL DEFAULT 0,
  `completionreplies` int(9) NOT NULL DEFAULT 0,
  `completionposts` int(9) NOT NULL DEFAULT 0,
  `displaywordcount` tinyint(1) NOT NULL DEFAULT 0,
  `lockdiscussionafter` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_foru_cou_ix` (`course`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Forums contain and structure discussion';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_forum`
--

LOCK TABLES `mdl_forum` WRITE;
/*!40000 ALTER TABLE `mdl_forum` DISABLE KEYS */;
INSERT INTO `mdl_forum` VALUES (1,2,'news','Announcements','General news and announcements',1,0,0,0,0,0,1,1,1,0,0,1601072819,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `mdl_forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_forum_digests`
--

DROP TABLE IF EXISTS `mdl_forum_digests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_forum_digests` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `forum` bigint(10) NOT NULL,
  `maildigest` tinyint(1) NOT NULL DEFAULT -1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_forudige_forusemai_uix` (`forum`,`userid`,`maildigest`),
  KEY `mdl_forudige_use_ix` (`userid`),
  KEY `mdl_forudige_for_ix` (`forum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Keeps track of user mail delivery preferences for each forum';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_forum_digests`
--

LOCK TABLES `mdl_forum_digests` WRITE;
/*!40000 ALTER TABLE `mdl_forum_digests` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_forum_digests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_forum_discussion_subs`
--

DROP TABLE IF EXISTS `mdl_forum_discussion_subs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_forum_discussion_subs` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `forum` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `discussion` bigint(10) NOT NULL,
  `preference` bigint(10) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_forudiscsubs_usedis_uix` (`userid`,`discussion`),
  KEY `mdl_forudiscsubs_for_ix` (`forum`),
  KEY `mdl_forudiscsubs_use_ix` (`userid`),
  KEY `mdl_forudiscsubs_dis_ix` (`discussion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Users may choose to subscribe and unsubscribe from specific ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_forum_discussion_subs`
--

LOCK TABLES `mdl_forum_discussion_subs` WRITE;
/*!40000 ALTER TABLE `mdl_forum_discussion_subs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_forum_discussion_subs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_forum_discussions`
--

DROP TABLE IF EXISTS `mdl_forum_discussions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_forum_discussions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `forum` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `firstpost` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `groupid` bigint(10) NOT NULL DEFAULT -1,
  `assessed` tinyint(1) NOT NULL DEFAULT 1,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `usermodified` bigint(10) NOT NULL DEFAULT 0,
  `timestart` bigint(10) NOT NULL DEFAULT 0,
  `timeend` bigint(10) NOT NULL DEFAULT 0,
  `pinned` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_forudisc_use_ix` (`userid`),
  KEY `mdl_forudisc_cou_ix` (`course`),
  KEY `mdl_forudisc_for_ix` (`forum`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Forums are composed of discussions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_forum_discussions`
--

LOCK TABLES `mdl_forum_discussions` WRITE;
/*!40000 ALTER TABLE `mdl_forum_discussions` DISABLE KEYS */;
INSERT INTO `mdl_forum_discussions` VALUES (1,2,1,'Consulta de prueba',1,2,-1,0,1601072920,2,0,0,0),(2,2,1,'Segunda consulta de prueba',5,2,-1,0,1601073014,2,0,0,0),(3,2,1,'Consulta sin respuesta',7,2,-1,0,1601073049,2,0,0,0);
/*!40000 ALTER TABLE `mdl_forum_discussions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_forum_posts`
--

DROP TABLE IF EXISTS `mdl_forum_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_forum_posts` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `discussion` bigint(10) NOT NULL DEFAULT 0,
  `parent` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `created` bigint(10) NOT NULL DEFAULT 0,
  `modified` bigint(10) NOT NULL DEFAULT 0,
  `mailed` tinyint(2) NOT NULL DEFAULT 0,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` longtext NOT NULL,
  `messageformat` tinyint(2) NOT NULL DEFAULT 0,
  `messagetrust` tinyint(2) NOT NULL DEFAULT 0,
  `attachment` varchar(100) NOT NULL DEFAULT '',
  `totalscore` smallint(4) NOT NULL DEFAULT 0,
  `mailnow` bigint(10) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_forupost_use_ix` (`userid`),
  KEY `mdl_forupost_cre_ix` (`created`),
  KEY `mdl_forupost_mai_ix` (`mailed`),
  KEY `mdl_forupost_dis_ix` (`discussion`),
  KEY `mdl_forupost_par_ix` (`parent`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='All posts are stored in this table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_forum_posts`
--

LOCK TABLES `mdl_forum_posts` WRITE;
/*!40000 ALTER TABLE `mdl_forum_posts` DISABLE KEYS */;
INSERT INTO `mdl_forum_posts` VALUES (1,1,0,2,1601072867,1601072867,0,'Consulta de prueba','<p>Mensaje de la consulta de prueba</p>',1,0,'',0,0,0),(2,1,1,2,1601072885,1601072885,0,'Re: Consulta de prueba','<p>Respuesta de la consulta de prueba</p>',1,0,'',0,0,0),(3,1,1,2,1601072906,1601072906,0,'Re: Consulta de prueba','<p>Segunda respuesta a la consulta de prueba</p>',1,0,'',0,0,0),(4,1,3,2,1601072920,1601072920,0,'Re: Consulta de prueba','<p>Respuesta anidada</p>',1,0,'',0,0,0),(5,2,0,2,1601072982,1601072982,0,'Segunda consulta de prueba','Consulta de prueba número dos',1,0,'',0,0,0),(6,2,5,2,1601073014,1601073014,0,'Re: Segunda consulta de prueba','<p>Respuesta de la segunda consulta de prueba</p>',1,0,'',0,0,0),(7,3,0,2,1601073049,1601073049,0,'Consulta sin respuesta','<p>Mensaje de la consulta de prueba sin respuesta</p>',1,0,'',0,0,0);
/*!40000 ALTER TABLE `mdl_forum_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_forum_queue`
--

DROP TABLE IF EXISTS `mdl_forum_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_forum_queue` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `discussionid` bigint(10) NOT NULL DEFAULT 0,
  `postid` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_foruqueu_use_ix` (`userid`),
  KEY `mdl_foruqueu_dis_ix` (`discussionid`),
  KEY `mdl_foruqueu_pos_ix` (`postid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='For keeping track of posts that will be mailed in digest for';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_forum_queue`
--

LOCK TABLES `mdl_forum_queue` WRITE;
/*!40000 ALTER TABLE `mdl_forum_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_forum_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_forum_read`
--

DROP TABLE IF EXISTS `mdl_forum_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_forum_read` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `forumid` bigint(10) NOT NULL DEFAULT 0,
  `discussionid` bigint(10) NOT NULL DEFAULT 0,
  `postid` bigint(10) NOT NULL DEFAULT 0,
  `firstread` bigint(10) NOT NULL DEFAULT 0,
  `lastread` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_foruread_usefor_ix` (`userid`,`forumid`),
  KEY `mdl_foruread_usedis_ix` (`userid`,`discussionid`),
  KEY `mdl_foruread_posuse_ix` (`postid`,`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tracks each users read posts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_forum_read`
--

LOCK TABLES `mdl_forum_read` WRITE;
/*!40000 ALTER TABLE `mdl_forum_read` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_forum_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_forum_subscriptions`
--

DROP TABLE IF EXISTS `mdl_forum_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_forum_subscriptions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `forum` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_forusubs_usefor_uix` (`userid`,`forum`),
  KEY `mdl_forusubs_use_ix` (`userid`),
  KEY `mdl_forusubs_for_ix` (`forum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Keeps track of who is subscribed to what forum';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_forum_subscriptions`
--

LOCK TABLES `mdl_forum_subscriptions` WRITE;
/*!40000 ALTER TABLE `mdl_forum_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_forum_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_forum_track_prefs`
--

DROP TABLE IF EXISTS `mdl_forum_track_prefs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_forum_track_prefs` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `forumid` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_forutracpref_usefor_ix` (`userid`,`forumid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tracks each users untracked forums';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_forum_track_prefs`
--

LOCK TABLES `mdl_forum_track_prefs` WRITE;
/*!40000 ALTER TABLE `mdl_forum_track_prefs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_forum_track_prefs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_glossary`
--

DROP TABLE IF EXISTS `mdl_glossary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_glossary` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `intro` longtext NOT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT 0,
  `allowduplicatedentries` tinyint(2) NOT NULL DEFAULT 0,
  `displayformat` varchar(50) NOT NULL DEFAULT 'dictionary',
  `mainglossary` tinyint(2) NOT NULL DEFAULT 0,
  `showspecial` tinyint(2) NOT NULL DEFAULT 1,
  `showalphabet` tinyint(2) NOT NULL DEFAULT 1,
  `showall` tinyint(2) NOT NULL DEFAULT 1,
  `allowcomments` tinyint(2) NOT NULL DEFAULT 0,
  `allowprintview` tinyint(2) NOT NULL DEFAULT 1,
  `usedynalink` tinyint(2) NOT NULL DEFAULT 1,
  `defaultapproval` tinyint(2) NOT NULL DEFAULT 1,
  `approvaldisplayformat` varchar(50) NOT NULL DEFAULT 'default',
  `globalglossary` tinyint(2) NOT NULL DEFAULT 0,
  `entbypage` smallint(3) NOT NULL DEFAULT 10,
  `editalways` tinyint(2) NOT NULL DEFAULT 0,
  `rsstype` tinyint(2) NOT NULL DEFAULT 0,
  `rssarticles` tinyint(2) NOT NULL DEFAULT 0,
  `assessed` bigint(10) NOT NULL DEFAULT 0,
  `assesstimestart` bigint(10) NOT NULL DEFAULT 0,
  `assesstimefinish` bigint(10) NOT NULL DEFAULT 0,
  `scale` bigint(10) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `completionentries` int(9) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_glos_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='all glossaries';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_glossary`
--

LOCK TABLES `mdl_glossary` WRITE;
/*!40000 ALTER TABLE `mdl_glossary` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_glossary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_glossary_alias`
--

DROP TABLE IF EXISTS `mdl_glossary_alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_glossary_alias` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `entryid` bigint(10) NOT NULL DEFAULT 0,
  `alias` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_glosalia_ent_ix` (`entryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='entries alias';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_glossary_alias`
--

LOCK TABLES `mdl_glossary_alias` WRITE;
/*!40000 ALTER TABLE `mdl_glossary_alias` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_glossary_alias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_glossary_categories`
--

DROP TABLE IF EXISTS `mdl_glossary_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_glossary_categories` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `glossaryid` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `usedynalink` tinyint(2) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `mdl_gloscate_glo_ix` (`glossaryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='all categories for glossary entries';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_glossary_categories`
--

LOCK TABLES `mdl_glossary_categories` WRITE;
/*!40000 ALTER TABLE `mdl_glossary_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_glossary_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_glossary_entries`
--

DROP TABLE IF EXISTS `mdl_glossary_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_glossary_entries` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `glossaryid` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `concept` varchar(255) NOT NULL DEFAULT '',
  `definition` longtext NOT NULL,
  `definitionformat` tinyint(2) NOT NULL DEFAULT 0,
  `definitiontrust` tinyint(2) NOT NULL DEFAULT 0,
  `attachment` varchar(100) NOT NULL DEFAULT '',
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `teacherentry` tinyint(2) NOT NULL DEFAULT 0,
  `sourceglossaryid` bigint(10) NOT NULL DEFAULT 0,
  `usedynalink` tinyint(2) NOT NULL DEFAULT 1,
  `casesensitive` tinyint(2) NOT NULL DEFAULT 0,
  `fullmatch` tinyint(2) NOT NULL DEFAULT 1,
  `approved` tinyint(2) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `mdl_glosentr_use_ix` (`userid`),
  KEY `mdl_glosentr_con_ix` (`concept`),
  KEY `mdl_glosentr_glo_ix` (`glossaryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='all glossary entries';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_glossary_entries`
--

LOCK TABLES `mdl_glossary_entries` WRITE;
/*!40000 ALTER TABLE `mdl_glossary_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_glossary_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_glossary_entries_categories`
--

DROP TABLE IF EXISTS `mdl_glossary_entries_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_glossary_entries_categories` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `categoryid` bigint(10) NOT NULL DEFAULT 0,
  `entryid` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_glosentrcate_cat_ix` (`categoryid`),
  KEY `mdl_glosentrcate_ent_ix` (`entryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='categories of each glossary entry';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_glossary_entries_categories`
--

LOCK TABLES `mdl_glossary_entries_categories` WRITE;
/*!40000 ALTER TABLE `mdl_glossary_entries_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_glossary_entries_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_glossary_formats`
--

DROP TABLE IF EXISTS `mdl_glossary_formats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_glossary_formats` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `popupformatname` varchar(50) NOT NULL DEFAULT '',
  `visible` tinyint(2) NOT NULL DEFAULT 1,
  `showgroup` tinyint(2) NOT NULL DEFAULT 1,
  `showtabs` varchar(100) DEFAULT NULL,
  `defaultmode` varchar(50) NOT NULL DEFAULT '',
  `defaulthook` varchar(50) NOT NULL DEFAULT '',
  `sortkey` varchar(50) NOT NULL DEFAULT '',
  `sortorder` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='Setting of the display formats';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_glossary_formats`
--

LOCK TABLES `mdl_glossary_formats` WRITE;
/*!40000 ALTER TABLE `mdl_glossary_formats` DISABLE KEYS */;
INSERT INTO `mdl_glossary_formats` VALUES (1,'continuous','continuous',1,1,'standard,category,date','','','',''),(2,'dictionary','dictionary',1,1,'standard','','','',''),(3,'encyclopedia','encyclopedia',1,1,'standard,category,date,author','','','',''),(4,'entrylist','entrylist',1,1,'standard,category,date,author','','','',''),(5,'faq','faq',1,1,'standard,category,date,author','','','',''),(6,'fullwithauthor','fullwithauthor',1,1,'standard,category,date,author','','','',''),(7,'fullwithoutauthor','fullwithoutauthor',1,1,'standard,category,date','','','','');
/*!40000 ALTER TABLE `mdl_glossary_formats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_categories`
--

DROP TABLE IF EXISTS `mdl_grade_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_grade_categories` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL,
  `parent` bigint(10) DEFAULT NULL,
  `depth` bigint(10) NOT NULL DEFAULT 0,
  `path` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) NOT NULL DEFAULT '',
  `aggregation` bigint(10) NOT NULL DEFAULT 0,
  `keephigh` bigint(10) NOT NULL DEFAULT 0,
  `droplow` bigint(10) NOT NULL DEFAULT 0,
  `aggregateonlygraded` tinyint(1) NOT NULL DEFAULT 0,
  `aggregateoutcomes` tinyint(1) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_gradcate_cou_ix` (`courseid`),
  KEY `mdl_gradcate_par_ix` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='This table keeps information about categories, used for grou';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grade_categories`
--

LOCK TABLES `mdl_grade_categories` WRITE;
/*!40000 ALTER TABLE `mdl_grade_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grade_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_categories_history`
--

DROP TABLE IF EXISTS `mdl_grade_categories_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_grade_categories_history` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `action` bigint(10) NOT NULL DEFAULT 0,
  `oldid` bigint(10) NOT NULL,
  `source` varchar(255) DEFAULT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `loggeduser` bigint(10) DEFAULT NULL,
  `courseid` bigint(10) NOT NULL,
  `parent` bigint(10) DEFAULT NULL,
  `depth` bigint(10) NOT NULL DEFAULT 0,
  `path` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) NOT NULL DEFAULT '',
  `aggregation` bigint(10) NOT NULL DEFAULT 0,
  `keephigh` bigint(10) NOT NULL DEFAULT 0,
  `droplow` bigint(10) NOT NULL DEFAULT 0,
  `aggregateonlygraded` tinyint(1) NOT NULL DEFAULT 0,
  `aggregateoutcomes` tinyint(1) NOT NULL DEFAULT 0,
  `aggregatesubcats` tinyint(1) NOT NULL DEFAULT 0,
  `hidden` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_gradcatehist_act_ix` (`action`),
  KEY `mdl_gradcatehist_tim_ix` (`timemodified`),
  KEY `mdl_gradcatehist_old_ix` (`oldid`),
  KEY `mdl_gradcatehist_cou_ix` (`courseid`),
  KEY `mdl_gradcatehist_par_ix` (`parent`),
  KEY `mdl_gradcatehist_log_ix` (`loggeduser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='History of grade_categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grade_categories_history`
--

LOCK TABLES `mdl_grade_categories_history` WRITE;
/*!40000 ALTER TABLE `mdl_grade_categories_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grade_categories_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_grades`
--

DROP TABLE IF EXISTS `mdl_grade_grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_grade_grades` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `itemid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `rawgrade` decimal(10,5) DEFAULT NULL,
  `rawgrademax` decimal(10,5) NOT NULL DEFAULT 100.00000,
  `rawgrademin` decimal(10,5) NOT NULL DEFAULT 0.00000,
  `rawscaleid` bigint(10) DEFAULT NULL,
  `usermodified` bigint(10) DEFAULT NULL,
  `finalgrade` decimal(10,5) DEFAULT NULL,
  `hidden` bigint(10) NOT NULL DEFAULT 0,
  `locked` bigint(10) NOT NULL DEFAULT 0,
  `locktime` bigint(10) NOT NULL DEFAULT 0,
  `exported` bigint(10) NOT NULL DEFAULT 0,
  `overridden` bigint(10) NOT NULL DEFAULT 0,
  `excluded` bigint(10) NOT NULL DEFAULT 0,
  `feedback` longtext DEFAULT NULL,
  `feedbackformat` bigint(10) NOT NULL DEFAULT 0,
  `information` longtext DEFAULT NULL,
  `informationformat` bigint(10) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) DEFAULT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `aggregationstatus` varchar(10) NOT NULL DEFAULT 'unknown',
  `aggregationweight` decimal(10,5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_gradgrad_useite_uix` (`userid`,`itemid`),
  KEY `mdl_gradgrad_locloc_ix` (`locked`,`locktime`),
  KEY `mdl_gradgrad_ite_ix` (`itemid`),
  KEY `mdl_gradgrad_use_ix` (`userid`),
  KEY `mdl_gradgrad_raw_ix` (`rawscaleid`),
  KEY `mdl_gradgrad_use2_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='grade_grades  This table keeps individual grades for each us';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grade_grades`
--

LOCK TABLES `mdl_grade_grades` WRITE;
/*!40000 ALTER TABLE `mdl_grade_grades` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grade_grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_grades_history`
--

DROP TABLE IF EXISTS `mdl_grade_grades_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_grade_grades_history` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `action` bigint(10) NOT NULL DEFAULT 0,
  `oldid` bigint(10) NOT NULL,
  `source` varchar(255) DEFAULT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `loggeduser` bigint(10) DEFAULT NULL,
  `itemid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `rawgrade` decimal(10,5) DEFAULT NULL,
  `rawgrademax` decimal(10,5) NOT NULL DEFAULT 100.00000,
  `rawgrademin` decimal(10,5) NOT NULL DEFAULT 0.00000,
  `rawscaleid` bigint(10) DEFAULT NULL,
  `usermodified` bigint(10) DEFAULT NULL,
  `finalgrade` decimal(10,5) DEFAULT NULL,
  `hidden` bigint(10) NOT NULL DEFAULT 0,
  `locked` bigint(10) NOT NULL DEFAULT 0,
  `locktime` bigint(10) NOT NULL DEFAULT 0,
  `exported` bigint(10) NOT NULL DEFAULT 0,
  `overridden` bigint(10) NOT NULL DEFAULT 0,
  `excluded` bigint(10) NOT NULL DEFAULT 0,
  `feedback` longtext DEFAULT NULL,
  `feedbackformat` bigint(10) NOT NULL DEFAULT 0,
  `information` longtext DEFAULT NULL,
  `informationformat` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_gradgradhist_act_ix` (`action`),
  KEY `mdl_gradgradhist_tim_ix` (`timemodified`),
  KEY `mdl_gradgradhist_useitetim_ix` (`userid`,`itemid`,`timemodified`),
  KEY `mdl_gradgradhist_old_ix` (`oldid`),
  KEY `mdl_gradgradhist_ite_ix` (`itemid`),
  KEY `mdl_gradgradhist_use_ix` (`userid`),
  KEY `mdl_gradgradhist_raw_ix` (`rawscaleid`),
  KEY `mdl_gradgradhist_use2_ix` (`usermodified`),
  KEY `mdl_gradgradhist_log_ix` (`loggeduser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='History table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grade_grades_history`
--

LOCK TABLES `mdl_grade_grades_history` WRITE;
/*!40000 ALTER TABLE `mdl_grade_grades_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grade_grades_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_import_newitem`
--

DROP TABLE IF EXISTS `mdl_grade_import_newitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_grade_import_newitem` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `itemname` varchar(255) NOT NULL DEFAULT '',
  `importcode` bigint(10) NOT NULL,
  `importer` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_gradimponewi_imp_ix` (`importer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='temporary table for storing new grade_item names from grade ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grade_import_newitem`
--

LOCK TABLES `mdl_grade_import_newitem` WRITE;
/*!40000 ALTER TABLE `mdl_grade_import_newitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grade_import_newitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_import_values`
--

DROP TABLE IF EXISTS `mdl_grade_import_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_grade_import_values` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `itemid` bigint(10) DEFAULT NULL,
  `newgradeitem` bigint(10) DEFAULT NULL,
  `userid` bigint(10) NOT NULL,
  `finalgrade` decimal(10,5) DEFAULT NULL,
  `feedback` longtext DEFAULT NULL,
  `importcode` bigint(10) NOT NULL,
  `importer` bigint(10) DEFAULT NULL,
  `importonlyfeedback` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_gradimpovalu_ite_ix` (`itemid`),
  KEY `mdl_gradimpovalu_new_ix` (`newgradeitem`),
  KEY `mdl_gradimpovalu_imp_ix` (`importer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Temporary table for importing grades';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grade_import_values`
--

LOCK TABLES `mdl_grade_import_values` WRITE;
/*!40000 ALTER TABLE `mdl_grade_import_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grade_import_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_items`
--

DROP TABLE IF EXISTS `mdl_grade_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_grade_items` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) DEFAULT NULL,
  `categoryid` bigint(10) DEFAULT NULL,
  `itemname` varchar(255) DEFAULT NULL,
  `itemtype` varchar(30) NOT NULL DEFAULT '',
  `itemmodule` varchar(30) DEFAULT NULL,
  `iteminstance` bigint(10) DEFAULT NULL,
  `itemnumber` bigint(10) DEFAULT NULL,
  `iteminfo` longtext DEFAULT NULL,
  `idnumber` varchar(255) DEFAULT NULL,
  `calculation` longtext DEFAULT NULL,
  `gradetype` smallint(4) NOT NULL DEFAULT 1,
  `grademax` decimal(10,5) NOT NULL DEFAULT 100.00000,
  `grademin` decimal(10,5) NOT NULL DEFAULT 0.00000,
  `scaleid` bigint(10) DEFAULT NULL,
  `outcomeid` bigint(10) DEFAULT NULL,
  `gradepass` decimal(10,5) NOT NULL DEFAULT 0.00000,
  `multfactor` decimal(10,5) NOT NULL DEFAULT 1.00000,
  `plusfactor` decimal(10,5) NOT NULL DEFAULT 0.00000,
  `aggregationcoef` decimal(10,5) NOT NULL DEFAULT 0.00000,
  `aggregationcoef2` decimal(10,5) NOT NULL DEFAULT 0.00000,
  `sortorder` bigint(10) NOT NULL DEFAULT 0,
  `display` bigint(10) NOT NULL DEFAULT 0,
  `decimals` tinyint(1) DEFAULT NULL,
  `hidden` bigint(10) NOT NULL DEFAULT 0,
  `locked` bigint(10) NOT NULL DEFAULT 0,
  `locktime` bigint(10) NOT NULL DEFAULT 0,
  `needsupdate` bigint(10) NOT NULL DEFAULT 0,
  `weightoverride` tinyint(1) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) DEFAULT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_graditem_locloc_ix` (`locked`,`locktime`),
  KEY `mdl_graditem_itenee_ix` (`itemtype`,`needsupdate`),
  KEY `mdl_graditem_gra_ix` (`gradetype`),
  KEY `mdl_graditem_idncou_ix` (`idnumber`,`courseid`),
  KEY `mdl_graditem_cou_ix` (`courseid`),
  KEY `mdl_graditem_cat_ix` (`categoryid`),
  KEY `mdl_graditem_sca_ix` (`scaleid`),
  KEY `mdl_graditem_out_ix` (`outcomeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='This table keeps information about gradeable items (ie colum';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grade_items`
--

LOCK TABLES `mdl_grade_items` WRITE;
/*!40000 ALTER TABLE `mdl_grade_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grade_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_items_history`
--

DROP TABLE IF EXISTS `mdl_grade_items_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_grade_items_history` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `action` bigint(10) NOT NULL DEFAULT 0,
  `oldid` bigint(10) NOT NULL,
  `source` varchar(255) DEFAULT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `loggeduser` bigint(10) DEFAULT NULL,
  `courseid` bigint(10) DEFAULT NULL,
  `categoryid` bigint(10) DEFAULT NULL,
  `itemname` varchar(255) DEFAULT NULL,
  `itemtype` varchar(30) NOT NULL DEFAULT '',
  `itemmodule` varchar(30) DEFAULT NULL,
  `iteminstance` bigint(10) DEFAULT NULL,
  `itemnumber` bigint(10) DEFAULT NULL,
  `iteminfo` longtext DEFAULT NULL,
  `idnumber` varchar(255) DEFAULT NULL,
  `calculation` longtext DEFAULT NULL,
  `gradetype` smallint(4) NOT NULL DEFAULT 1,
  `grademax` decimal(10,5) NOT NULL DEFAULT 100.00000,
  `grademin` decimal(10,5) NOT NULL DEFAULT 0.00000,
  `scaleid` bigint(10) DEFAULT NULL,
  `outcomeid` bigint(10) DEFAULT NULL,
  `gradepass` decimal(10,5) NOT NULL DEFAULT 0.00000,
  `multfactor` decimal(10,5) NOT NULL DEFAULT 1.00000,
  `plusfactor` decimal(10,5) NOT NULL DEFAULT 0.00000,
  `aggregationcoef` decimal(10,5) NOT NULL DEFAULT 0.00000,
  `aggregationcoef2` decimal(10,5) NOT NULL DEFAULT 0.00000,
  `sortorder` bigint(10) NOT NULL DEFAULT 0,
  `hidden` bigint(10) NOT NULL DEFAULT 0,
  `locked` bigint(10) NOT NULL DEFAULT 0,
  `locktime` bigint(10) NOT NULL DEFAULT 0,
  `needsupdate` bigint(10) NOT NULL DEFAULT 0,
  `display` bigint(10) NOT NULL DEFAULT 0,
  `decimals` tinyint(1) DEFAULT NULL,
  `weightoverride` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_graditemhist_act_ix` (`action`),
  KEY `mdl_graditemhist_tim_ix` (`timemodified`),
  KEY `mdl_graditemhist_old_ix` (`oldid`),
  KEY `mdl_graditemhist_cou_ix` (`courseid`),
  KEY `mdl_graditemhist_cat_ix` (`categoryid`),
  KEY `mdl_graditemhist_sca_ix` (`scaleid`),
  KEY `mdl_graditemhist_out_ix` (`outcomeid`),
  KEY `mdl_graditemhist_log_ix` (`loggeduser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='History of grade_items';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grade_items_history`
--

LOCK TABLES `mdl_grade_items_history` WRITE;
/*!40000 ALTER TABLE `mdl_grade_items_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grade_items_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_letters`
--

DROP TABLE IF EXISTS `mdl_grade_letters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_grade_letters` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contextid` bigint(10) NOT NULL,
  `lowerboundary` decimal(10,5) NOT NULL,
  `letter` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_gradlett_conlowlet_uix` (`contextid`,`lowerboundary`,`letter`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Repository for grade letters, for courses and other moodle e';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grade_letters`
--

LOCK TABLES `mdl_grade_letters` WRITE;
/*!40000 ALTER TABLE `mdl_grade_letters` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grade_letters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_outcomes`
--

DROP TABLE IF EXISTS `mdl_grade_outcomes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_grade_outcomes` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) DEFAULT NULL,
  `shortname` varchar(255) NOT NULL DEFAULT '',
  `fullname` longtext NOT NULL,
  `scaleid` bigint(10) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `descriptionformat` tinyint(2) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) DEFAULT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `usermodified` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_gradoutc_cousho_uix` (`courseid`,`shortname`),
  KEY `mdl_gradoutc_cou_ix` (`courseid`),
  KEY `mdl_gradoutc_sca_ix` (`scaleid`),
  KEY `mdl_gradoutc_use_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='This table describes the outcomes used in the system. An out';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grade_outcomes`
--

LOCK TABLES `mdl_grade_outcomes` WRITE;
/*!40000 ALTER TABLE `mdl_grade_outcomes` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grade_outcomes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_outcomes_courses`
--

DROP TABLE IF EXISTS `mdl_grade_outcomes_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_grade_outcomes_courses` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL,
  `outcomeid` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_gradoutccour_couout_uix` (`courseid`,`outcomeid`),
  KEY `mdl_gradoutccour_cou_ix` (`courseid`),
  KEY `mdl_gradoutccour_out_ix` (`outcomeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='stores what outcomes are used in what courses.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grade_outcomes_courses`
--

LOCK TABLES `mdl_grade_outcomes_courses` WRITE;
/*!40000 ALTER TABLE `mdl_grade_outcomes_courses` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grade_outcomes_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_outcomes_history`
--

DROP TABLE IF EXISTS `mdl_grade_outcomes_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_grade_outcomes_history` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `action` bigint(10) NOT NULL DEFAULT 0,
  `oldid` bigint(10) NOT NULL,
  `source` varchar(255) DEFAULT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `loggeduser` bigint(10) DEFAULT NULL,
  `courseid` bigint(10) DEFAULT NULL,
  `shortname` varchar(255) NOT NULL DEFAULT '',
  `fullname` longtext NOT NULL,
  `scaleid` bigint(10) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `descriptionformat` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_gradoutchist_act_ix` (`action`),
  KEY `mdl_gradoutchist_tim_ix` (`timemodified`),
  KEY `mdl_gradoutchist_old_ix` (`oldid`),
  KEY `mdl_gradoutchist_cou_ix` (`courseid`),
  KEY `mdl_gradoutchist_sca_ix` (`scaleid`),
  KEY `mdl_gradoutchist_log_ix` (`loggeduser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='History table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grade_outcomes_history`
--

LOCK TABLES `mdl_grade_outcomes_history` WRITE;
/*!40000 ALTER TABLE `mdl_grade_outcomes_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grade_outcomes_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_settings`
--

DROP TABLE IF EXISTS `mdl_grade_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_grade_settings` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_gradsett_counam_uix` (`courseid`,`name`),
  KEY `mdl_gradsett_cou_ix` (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='gradebook settings';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grade_settings`
--

LOCK TABLES `mdl_grade_settings` WRITE;
/*!40000 ALTER TABLE `mdl_grade_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grade_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grading_areas`
--

DROP TABLE IF EXISTS `mdl_grading_areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_grading_areas` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contextid` bigint(10) NOT NULL,
  `component` varchar(100) NOT NULL DEFAULT '',
  `areaname` varchar(100) NOT NULL DEFAULT '',
  `activemethod` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_gradarea_concomare_uix` (`contextid`,`component`,`areaname`),
  KEY `mdl_gradarea_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Identifies gradable areas where advanced grading can happen.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grading_areas`
--

LOCK TABLES `mdl_grading_areas` WRITE;
/*!40000 ALTER TABLE `mdl_grading_areas` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grading_areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grading_definitions`
--

DROP TABLE IF EXISTS `mdl_grading_definitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_grading_definitions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `areaid` bigint(10) NOT NULL,
  `method` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` longtext DEFAULT NULL,
  `descriptionformat` tinyint(2) DEFAULT NULL,
  `status` bigint(10) NOT NULL DEFAULT 0,
  `copiedfromid` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `usercreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  `timecopied` bigint(10) DEFAULT 0,
  `options` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_graddefi_aremet_uix` (`areaid`,`method`),
  KEY `mdl_graddefi_are_ix` (`areaid`),
  KEY `mdl_graddefi_use_ix` (`usermodified`),
  KEY `mdl_graddefi_use2_ix` (`usercreated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains the basic information about an advanced grading for';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grading_definitions`
--

LOCK TABLES `mdl_grading_definitions` WRITE;
/*!40000 ALTER TABLE `mdl_grading_definitions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grading_definitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grading_instances`
--

DROP TABLE IF EXISTS `mdl_grading_instances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_grading_instances` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `definitionid` bigint(10) NOT NULL,
  `raterid` bigint(10) NOT NULL,
  `itemid` bigint(10) DEFAULT NULL,
  `rawgrade` decimal(10,5) DEFAULT NULL,
  `status` bigint(10) NOT NULL DEFAULT 0,
  `feedback` longtext DEFAULT NULL,
  `feedbackformat` tinyint(2) DEFAULT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_gradinst_def_ix` (`definitionid`),
  KEY `mdl_gradinst_rat_ix` (`raterid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Grading form instance is an assessment record for one gradab';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grading_instances`
--

LOCK TABLES `mdl_grading_instances` WRITE;
/*!40000 ALTER TABLE `mdl_grading_instances` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grading_instances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_gradingform_guide_comments`
--

DROP TABLE IF EXISTS `mdl_gradingform_guide_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_gradingform_guide_comments` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `definitionid` bigint(10) NOT NULL,
  `sortorder` bigint(10) NOT NULL,
  `description` longtext DEFAULT NULL,
  `descriptionformat` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_gradguidcomm_def_ix` (`definitionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='frequently used comments used in marking guide';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_gradingform_guide_comments`
--

LOCK TABLES `mdl_gradingform_guide_comments` WRITE;
/*!40000 ALTER TABLE `mdl_gradingform_guide_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_gradingform_guide_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_gradingform_guide_criteria`
--

DROP TABLE IF EXISTS `mdl_gradingform_guide_criteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_gradingform_guide_criteria` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `definitionid` bigint(10) NOT NULL,
  `sortorder` bigint(10) NOT NULL,
  `shortname` varchar(255) NOT NULL DEFAULT '',
  `description` longtext DEFAULT NULL,
  `descriptionformat` tinyint(2) DEFAULT NULL,
  `descriptionmarkers` longtext DEFAULT NULL,
  `descriptionmarkersformat` tinyint(2) DEFAULT NULL,
  `maxscore` decimal(10,5) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_gradguidcrit_def_ix` (`definitionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores the rows of the criteria grid.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_gradingform_guide_criteria`
--

LOCK TABLES `mdl_gradingform_guide_criteria` WRITE;
/*!40000 ALTER TABLE `mdl_gradingform_guide_criteria` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_gradingform_guide_criteria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_gradingform_guide_fillings`
--

DROP TABLE IF EXISTS `mdl_gradingform_guide_fillings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_gradingform_guide_fillings` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `instanceid` bigint(10) NOT NULL,
  `criterionid` bigint(10) NOT NULL,
  `remark` longtext DEFAULT NULL,
  `remarkformat` tinyint(2) DEFAULT NULL,
  `score` decimal(10,5) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_gradguidfill_inscri_uix` (`instanceid`,`criterionid`),
  KEY `mdl_gradguidfill_ins_ix` (`instanceid`),
  KEY `mdl_gradguidfill_cri_ix` (`criterionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores the data of how the guide is filled by a particular r';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_gradingform_guide_fillings`
--

LOCK TABLES `mdl_gradingform_guide_fillings` WRITE;
/*!40000 ALTER TABLE `mdl_gradingform_guide_fillings` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_gradingform_guide_fillings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_gradingform_rubric_criteria`
--

DROP TABLE IF EXISTS `mdl_gradingform_rubric_criteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_gradingform_rubric_criteria` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `definitionid` bigint(10) NOT NULL,
  `sortorder` bigint(10) NOT NULL,
  `description` longtext DEFAULT NULL,
  `descriptionformat` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_gradrubrcrit_def_ix` (`definitionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores the rows of the rubric grid.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_gradingform_rubric_criteria`
--

LOCK TABLES `mdl_gradingform_rubric_criteria` WRITE;
/*!40000 ALTER TABLE `mdl_gradingform_rubric_criteria` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_gradingform_rubric_criteria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_gradingform_rubric_fillings`
--

DROP TABLE IF EXISTS `mdl_gradingform_rubric_fillings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_gradingform_rubric_fillings` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `instanceid` bigint(10) NOT NULL,
  `criterionid` bigint(10) NOT NULL,
  `levelid` bigint(10) DEFAULT NULL,
  `remark` longtext DEFAULT NULL,
  `remarkformat` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_gradrubrfill_inscri_uix` (`instanceid`,`criterionid`),
  KEY `mdl_gradrubrfill_lev_ix` (`levelid`),
  KEY `mdl_gradrubrfill_ins_ix` (`instanceid`),
  KEY `mdl_gradrubrfill_cri_ix` (`criterionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores the data of how the rubric is filled by a particular ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_gradingform_rubric_fillings`
--

LOCK TABLES `mdl_gradingform_rubric_fillings` WRITE;
/*!40000 ALTER TABLE `mdl_gradingform_rubric_fillings` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_gradingform_rubric_fillings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_gradingform_rubric_levels`
--

DROP TABLE IF EXISTS `mdl_gradingform_rubric_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_gradingform_rubric_levels` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `criterionid` bigint(10) NOT NULL,
  `score` decimal(10,5) NOT NULL,
  `definition` longtext DEFAULT NULL,
  `definitionformat` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_gradrubrleve_cri_ix` (`criterionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores the columns of the rubric grid.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_gradingform_rubric_levels`
--

LOCK TABLES `mdl_gradingform_rubric_levels` WRITE;
/*!40000 ALTER TABLE `mdl_gradingform_rubric_levels` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_gradingform_rubric_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_groupings`
--

DROP TABLE IF EXISTS `mdl_groupings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_groupings` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `idnumber` varchar(100) NOT NULL DEFAULT '',
  `description` longtext DEFAULT NULL,
  `descriptionformat` tinyint(2) NOT NULL DEFAULT 0,
  `configdata` longtext DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_grou_idn2_ix` (`idnumber`),
  KEY `mdl_grou_cou2_ix` (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='A grouping is a collection of groups. WAS: groups_groupings';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_groupings`
--

LOCK TABLES `mdl_groupings` WRITE;
/*!40000 ALTER TABLE `mdl_groupings` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_groupings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_groupings_groups`
--

DROP TABLE IF EXISTS `mdl_groupings_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_groupings_groups` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `groupingid` bigint(10) NOT NULL DEFAULT 0,
  `groupid` bigint(10) NOT NULL DEFAULT 0,
  `timeadded` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_grougrou_gro_ix` (`groupingid`),
  KEY `mdl_grougrou_gro2_ix` (`groupid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Link a grouping to a group (note, groups can be in multiple ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_groupings_groups`
--

LOCK TABLES `mdl_groupings_groups` WRITE;
/*!40000 ALTER TABLE `mdl_groupings_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_groupings_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_groups`
--

DROP TABLE IF EXISTS `mdl_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_groups` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL,
  `idnumber` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(254) NOT NULL DEFAULT '',
  `description` longtext DEFAULT NULL,
  `descriptionformat` tinyint(2) NOT NULL DEFAULT 0,
  `enrolmentkey` varchar(50) DEFAULT NULL,
  `picture` bigint(10) NOT NULL DEFAULT 0,
  `hidepicture` tinyint(1) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_grou_idn_ix` (`idnumber`),
  KEY `mdl_grou_cou_ix` (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Each record represents a group.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_groups`
--

LOCK TABLES `mdl_groups` WRITE;
/*!40000 ALTER TABLE `mdl_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_groups_members`
--

DROP TABLE IF EXISTS `mdl_groups_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_groups_members` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `groupid` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `timeadded` bigint(10) NOT NULL DEFAULT 0,
  `component` varchar(100) NOT NULL DEFAULT '',
  `itemid` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_groumemb_gro_ix` (`groupid`),
  KEY `mdl_groumemb_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Link a user to a group.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_groups_members`
--

LOCK TABLES `mdl_groups_members` WRITE;
/*!40000 ALTER TABLE `mdl_groups_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_groups_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_imscp`
--

DROP TABLE IF EXISTS `mdl_imscp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_imscp` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `intro` longtext DEFAULT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT 0,
  `revision` bigint(10) NOT NULL DEFAULT 0,
  `keepold` bigint(10) NOT NULL DEFAULT -1,
  `structure` longtext DEFAULT NULL,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_imsc_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='each record is one imscp resource';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_imscp`
--

LOCK TABLES `mdl_imscp` WRITE;
/*!40000 ALTER TABLE `mdl_imscp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_imscp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_label`
--

DROP TABLE IF EXISTS `mdl_label`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_label` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `intro` longtext NOT NULL,
  `introformat` smallint(4) DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_labe_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Defines labels';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_label`
--

LOCK TABLES `mdl_label` WRITE;
/*!40000 ALTER TABLE `mdl_label` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_label` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_lesson`
--

DROP TABLE IF EXISTS `mdl_lesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_lesson` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `intro` longtext DEFAULT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT 0,
  `practice` smallint(3) NOT NULL DEFAULT 0,
  `modattempts` smallint(3) NOT NULL DEFAULT 0,
  `usepassword` smallint(3) NOT NULL DEFAULT 0,
  `password` varchar(32) NOT NULL DEFAULT '',
  `dependency` bigint(10) NOT NULL DEFAULT 0,
  `conditions` longtext NOT NULL,
  `grade` bigint(10) NOT NULL DEFAULT 0,
  `custom` smallint(3) NOT NULL DEFAULT 0,
  `ongoing` smallint(3) NOT NULL DEFAULT 0,
  `usemaxgrade` smallint(3) NOT NULL DEFAULT 0,
  `maxanswers` smallint(3) NOT NULL DEFAULT 4,
  `maxattempts` smallint(3) NOT NULL DEFAULT 5,
  `review` smallint(3) NOT NULL DEFAULT 0,
  `nextpagedefault` smallint(3) NOT NULL DEFAULT 0,
  `feedback` smallint(3) NOT NULL DEFAULT 1,
  `minquestions` smallint(3) NOT NULL DEFAULT 0,
  `maxpages` smallint(3) NOT NULL DEFAULT 0,
  `timelimit` bigint(10) NOT NULL DEFAULT 0,
  `retake` smallint(3) NOT NULL DEFAULT 1,
  `activitylink` bigint(10) NOT NULL DEFAULT 0,
  `mediafile` varchar(255) NOT NULL DEFAULT '',
  `mediaheight` bigint(10) NOT NULL DEFAULT 100,
  `mediawidth` bigint(10) NOT NULL DEFAULT 650,
  `mediaclose` smallint(3) NOT NULL DEFAULT 0,
  `slideshow` smallint(3) NOT NULL DEFAULT 0,
  `width` bigint(10) NOT NULL DEFAULT 640,
  `height` bigint(10) NOT NULL DEFAULT 480,
  `bgcolor` varchar(7) NOT NULL DEFAULT '#FFFFFF',
  `displayleft` smallint(3) NOT NULL DEFAULT 0,
  `displayleftif` smallint(3) NOT NULL DEFAULT 0,
  `progressbar` smallint(3) NOT NULL DEFAULT 0,
  `available` bigint(10) NOT NULL DEFAULT 0,
  `deadline` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `completionendreached` tinyint(1) DEFAULT 0,
  `completiontimespent` bigint(11) DEFAULT 0,
  `allowofflineattempts` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_less_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Defines lesson';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_lesson`
--

LOCK TABLES `mdl_lesson` WRITE;
/*!40000 ALTER TABLE `mdl_lesson` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_lesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_lesson_answers`
--

DROP TABLE IF EXISTS `mdl_lesson_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_lesson_answers` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `lessonid` bigint(10) NOT NULL DEFAULT 0,
  `pageid` bigint(10) NOT NULL DEFAULT 0,
  `jumpto` bigint(11) NOT NULL DEFAULT 0,
  `grade` smallint(4) NOT NULL DEFAULT 0,
  `score` bigint(10) NOT NULL DEFAULT 0,
  `flags` smallint(3) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `answer` longtext DEFAULT NULL,
  `answerformat` tinyint(2) NOT NULL DEFAULT 0,
  `response` longtext DEFAULT NULL,
  `responseformat` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_lessansw_les_ix` (`lessonid`),
  KEY `mdl_lessansw_pag_ix` (`pageid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Defines lesson_answers';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_lesson_answers`
--

LOCK TABLES `mdl_lesson_answers` WRITE;
/*!40000 ALTER TABLE `mdl_lesson_answers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_lesson_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_lesson_attempts`
--

DROP TABLE IF EXISTS `mdl_lesson_attempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_lesson_attempts` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `lessonid` bigint(10) NOT NULL DEFAULT 0,
  `pageid` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `answerid` bigint(10) NOT NULL DEFAULT 0,
  `retry` smallint(3) NOT NULL DEFAULT 0,
  `correct` bigint(10) NOT NULL DEFAULT 0,
  `useranswer` longtext DEFAULT NULL,
  `timeseen` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_lessatte_use_ix` (`userid`),
  KEY `mdl_lessatte_les_ix` (`lessonid`),
  KEY `mdl_lessatte_pag_ix` (`pageid`),
  KEY `mdl_lessatte_ans_ix` (`answerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Defines lesson_attempts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_lesson_attempts`
--

LOCK TABLES `mdl_lesson_attempts` WRITE;
/*!40000 ALTER TABLE `mdl_lesson_attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_lesson_attempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_lesson_branch`
--

DROP TABLE IF EXISTS `mdl_lesson_branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_lesson_branch` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `lessonid` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `pageid` bigint(10) NOT NULL DEFAULT 0,
  `retry` bigint(10) NOT NULL DEFAULT 0,
  `flag` smallint(3) NOT NULL DEFAULT 0,
  `timeseen` bigint(10) NOT NULL DEFAULT 0,
  `nextpageid` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_lessbran_use_ix` (`userid`),
  KEY `mdl_lessbran_les_ix` (`lessonid`),
  KEY `mdl_lessbran_pag_ix` (`pageid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='branches for each lesson/user';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_lesson_branch`
--

LOCK TABLES `mdl_lesson_branch` WRITE;
/*!40000 ALTER TABLE `mdl_lesson_branch` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_lesson_branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_lesson_grades`
--

DROP TABLE IF EXISTS `mdl_lesson_grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_lesson_grades` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `lessonid` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `grade` double NOT NULL DEFAULT 0,
  `late` smallint(3) NOT NULL DEFAULT 0,
  `completed` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_lessgrad_use_ix` (`userid`),
  KEY `mdl_lessgrad_les_ix` (`lessonid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Defines lesson_grades';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_lesson_grades`
--

LOCK TABLES `mdl_lesson_grades` WRITE;
/*!40000 ALTER TABLE `mdl_lesson_grades` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_lesson_grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_lesson_overrides`
--

DROP TABLE IF EXISTS `mdl_lesson_overrides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_lesson_overrides` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `lessonid` bigint(10) NOT NULL DEFAULT 0,
  `groupid` bigint(10) DEFAULT NULL,
  `userid` bigint(10) DEFAULT NULL,
  `available` bigint(10) DEFAULT NULL,
  `deadline` bigint(10) DEFAULT NULL,
  `timelimit` bigint(10) DEFAULT NULL,
  `review` smallint(3) DEFAULT NULL,
  `maxattempts` smallint(3) DEFAULT NULL,
  `retake` smallint(3) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_lessover_les_ix` (`lessonid`),
  KEY `mdl_lessover_gro_ix` (`groupid`),
  KEY `mdl_lessover_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='The overrides to lesson settings.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_lesson_overrides`
--

LOCK TABLES `mdl_lesson_overrides` WRITE;
/*!40000 ALTER TABLE `mdl_lesson_overrides` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_lesson_overrides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_lesson_pages`
--

DROP TABLE IF EXISTS `mdl_lesson_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_lesson_pages` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `lessonid` bigint(10) NOT NULL DEFAULT 0,
  `prevpageid` bigint(10) NOT NULL DEFAULT 0,
  `nextpageid` bigint(10) NOT NULL DEFAULT 0,
  `qtype` smallint(3) NOT NULL DEFAULT 0,
  `qoption` smallint(3) NOT NULL DEFAULT 0,
  `layout` smallint(3) NOT NULL DEFAULT 1,
  `display` smallint(3) NOT NULL DEFAULT 1,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `contents` longtext NOT NULL,
  `contentsformat` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_lesspage_les_ix` (`lessonid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Defines lesson_pages';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_lesson_pages`
--

LOCK TABLES `mdl_lesson_pages` WRITE;
/*!40000 ALTER TABLE `mdl_lesson_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_lesson_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_lesson_timer`
--

DROP TABLE IF EXISTS `mdl_lesson_timer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_lesson_timer` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `lessonid` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `starttime` bigint(10) NOT NULL DEFAULT 0,
  `lessontime` bigint(10) NOT NULL DEFAULT 0,
  `completed` tinyint(1) DEFAULT 0,
  `timemodifiedoffline` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_lesstime_use_ix` (`userid`),
  KEY `mdl_lesstime_les_ix` (`lessonid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='lesson timer for each lesson';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_lesson_timer`
--

LOCK TABLES `mdl_lesson_timer` WRITE;
/*!40000 ALTER TABLE `mdl_lesson_timer` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_lesson_timer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_license`
--

DROP TABLE IF EXISTS `mdl_license`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_license` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `shortname` varchar(255) DEFAULT NULL,
  `fullname` longtext DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `version` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='store licenses used by moodle';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_license`
--

LOCK TABLES `mdl_license` WRITE;
/*!40000 ALTER TABLE `mdl_license` DISABLE KEYS */;
INSERT INTO `mdl_license` VALUES (1,'unknown','Unknown license','',1,2010033100),(2,'allrightsreserved','All rights reserved','http://en.wikipedia.org/wiki/All_rights_reserved',1,2010033100),(3,'public','Public Domain','http://creativecommons.org/licenses/publicdomain/',1,2010033100),(4,'cc','Creative Commons','http://creativecommons.org/licenses/by/3.0/',1,2010033100),(5,'cc-nd','Creative Commons - NoDerivs','http://creativecommons.org/licenses/by-nd/3.0/',1,2010033100),(6,'cc-nc-nd','Creative Commons - No Commercial NoDerivs','http://creativecommons.org/licenses/by-nc-nd/3.0/',1,2010033100),(7,'cc-nc','Creative Commons - No Commercial','http://creativecommons.org/licenses/by-nc/3.0/',1,2013051500),(8,'cc-nc-sa','Creative Commons - No Commercial ShareAlike','http://creativecommons.org/licenses/by-nc-sa/3.0/',1,2010033100),(9,'cc-sa','Creative Commons - ShareAlike','http://creativecommons.org/licenses/by-sa/3.0/',1,2010033100);
/*!40000 ALTER TABLE `mdl_license` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_lock_db`
--

DROP TABLE IF EXISTS `mdl_lock_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_lock_db` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `resourcekey` varchar(255) NOT NULL DEFAULT '',
  `expires` bigint(10) DEFAULT NULL,
  `owner` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_lockdb_res_uix` (`resourcekey`),
  KEY `mdl_lockdb_exp_ix` (`expires`),
  KEY `mdl_lockdb_own_ix` (`owner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores active and inactive lock types for db locking method.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_lock_db`
--

LOCK TABLES `mdl_lock_db` WRITE;
/*!40000 ALTER TABLE `mdl_lock_db` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_lock_db` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_log`
--

DROP TABLE IF EXISTS `mdl_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_log` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `time` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `ip` varchar(45) NOT NULL DEFAULT '',
  `course` bigint(10) NOT NULL DEFAULT 0,
  `module` varchar(20) NOT NULL DEFAULT '',
  `cmid` bigint(10) NOT NULL DEFAULT 0,
  `action` varchar(40) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL DEFAULT '',
  `info` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_log_coumodact_ix` (`course`,`module`,`action`),
  KEY `mdl_log_tim_ix` (`time`),
  KEY `mdl_log_act_ix` (`action`),
  KEY `mdl_log_usecou_ix` (`userid`,`course`),
  KEY `mdl_log_cmi_ix` (`cmid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Every action is logged as far as possible';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_log`
--

LOCK TABLES `mdl_log` WRITE;
/*!40000 ALTER TABLE `mdl_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_log_display`
--

DROP TABLE IF EXISTS `mdl_log_display`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_log_display` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `module` varchar(20) NOT NULL DEFAULT '',
  `action` varchar(40) NOT NULL DEFAULT '',
  `mtable` varchar(30) NOT NULL DEFAULT '',
  `field` varchar(200) NOT NULL DEFAULT '',
  `component` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_logdisp_modact_uix` (`module`,`action`)
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8 COMMENT='For a particular module/action, specifies a moodle table/fie';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_log_display`
--

LOCK TABLES `mdl_log_display` WRITE;
/*!40000 ALTER TABLE `mdl_log_display` DISABLE KEYS */;
INSERT INTO `mdl_log_display` VALUES (1,'course','user report','user','CONCAT(firstname, \' \', lastname)','moodle'),(2,'course','view','course','fullname','moodle'),(3,'course','view section','course_sections','name','moodle'),(4,'course','update','course','fullname','moodle'),(5,'course','hide','course','fullname','moodle'),(6,'course','show','course','fullname','moodle'),(7,'course','move','course','fullname','moodle'),(8,'course','enrol','course','fullname','moodle'),(9,'course','unenrol','course','fullname','moodle'),(10,'course','report log','course','fullname','moodle'),(11,'course','report live','course','fullname','moodle'),(12,'course','report outline','course','fullname','moodle'),(13,'course','report participation','course','fullname','moodle'),(14,'course','report stats','course','fullname','moodle'),(15,'category','add','course_categories','name','moodle'),(16,'category','hide','course_categories','name','moodle'),(17,'category','move','course_categories','name','moodle'),(18,'category','show','course_categories','name','moodle'),(19,'category','update','course_categories','name','moodle'),(20,'message','write','user','CONCAT(firstname, \' \', lastname)','moodle'),(21,'message','read','user','CONCAT(firstname, \' \', lastname)','moodle'),(22,'message','add contact','user','CONCAT(firstname, \' \', lastname)','moodle'),(23,'message','remove contact','user','CONCAT(firstname, \' \', lastname)','moodle'),(24,'message','block contact','user','CONCAT(firstname, \' \', lastname)','moodle'),(25,'message','unblock contact','user','CONCAT(firstname, \' \', lastname)','moodle'),(26,'group','view','groups','name','moodle'),(27,'tag','update','tag','name','moodle'),(28,'tag','flag','tag','name','moodle'),(29,'user','view','user','CONCAT(firstname, \' \', lastname)','moodle'),(30,'assign','add','assign','name','mod_assign'),(31,'assign','delete mod','assign','name','mod_assign'),(32,'assign','download all submissions','assign','name','mod_assign'),(33,'assign','grade submission','assign','name','mod_assign'),(34,'assign','lock submission','assign','name','mod_assign'),(35,'assign','reveal identities','assign','name','mod_assign'),(36,'assign','revert submission to draft','assign','name','mod_assign'),(37,'assign','set marking workflow state','assign','name','mod_assign'),(38,'assign','submission statement accepted','assign','name','mod_assign'),(39,'assign','submit','assign','name','mod_assign'),(40,'assign','submit for grading','assign','name','mod_assign'),(41,'assign','unlock submission','assign','name','mod_assign'),(42,'assign','update','assign','name','mod_assign'),(43,'assign','upload','assign','name','mod_assign'),(44,'assign','view','assign','name','mod_assign'),(45,'assign','view all','course','fullname','mod_assign'),(46,'assign','view confirm submit assignment form','assign','name','mod_assign'),(47,'assign','view grading form','assign','name','mod_assign'),(48,'assign','view submission','assign','name','mod_assign'),(49,'assign','view submission grading table','assign','name','mod_assign'),(50,'assign','view submit assignment form','assign','name','mod_assign'),(51,'assign','view feedback','assign','name','mod_assign'),(52,'assign','view batch set marking workflow state','assign','name','mod_assign'),(53,'assignment','view','assignment','name','mod_assignment'),(54,'assignment','add','assignment','name','mod_assignment'),(55,'assignment','update','assignment','name','mod_assignment'),(56,'assignment','view submission','assignment','name','mod_assignment'),(57,'assignment','upload','assignment','name','mod_assignment'),(58,'book','add','book','name','mod_book'),(59,'book','update','book','name','mod_book'),(60,'book','view','book','name','mod_book'),(61,'book','add chapter','book_chapters','title','mod_book'),(62,'book','update chapter','book_chapters','title','mod_book'),(63,'book','view chapter','book_chapters','title','mod_book'),(64,'chat','view','chat','name','mod_chat'),(65,'chat','add','chat','name','mod_chat'),(66,'chat','update','chat','name','mod_chat'),(67,'chat','report','chat','name','mod_chat'),(68,'chat','talk','chat','name','mod_chat'),(69,'choice','view','choice','name','mod_choice'),(70,'choice','update','choice','name','mod_choice'),(71,'choice','add','choice','name','mod_choice'),(72,'choice','report','choice','name','mod_choice'),(73,'choice','choose','choice','name','mod_choice'),(74,'choice','choose again','choice','name','mod_choice'),(75,'data','view','data','name','mod_data'),(76,'data','add','data','name','mod_data'),(77,'data','update','data','name','mod_data'),(78,'data','record delete','data','name','mod_data'),(79,'data','fields add','data_fields','name','mod_data'),(80,'data','fields update','data_fields','name','mod_data'),(81,'data','templates saved','data','name','mod_data'),(82,'data','templates def','data','name','mod_data'),(83,'feedback','startcomplete','feedback','name','mod_feedback'),(84,'feedback','submit','feedback','name','mod_feedback'),(85,'feedback','delete','feedback','name','mod_feedback'),(86,'feedback','view','feedback','name','mod_feedback'),(87,'feedback','view all','course','shortname','mod_feedback'),(88,'folder','view','folder','name','mod_folder'),(89,'folder','view all','folder','name','mod_folder'),(90,'folder','update','folder','name','mod_folder'),(91,'folder','add','folder','name','mod_folder'),(92,'forum','add','forum','name','mod_forum'),(93,'forum','update','forum','name','mod_forum'),(94,'forum','add discussion','forum_discussions','name','mod_forum'),(95,'forum','add post','forum_posts','subject','mod_forum'),(96,'forum','update post','forum_posts','subject','mod_forum'),(97,'forum','user report','user','CONCAT(firstname, \' \', lastname)','mod_forum'),(98,'forum','move discussion','forum_discussions','name','mod_forum'),(99,'forum','view subscribers','forum','name','mod_forum'),(100,'forum','view discussion','forum_discussions','name','mod_forum'),(101,'forum','view forum','forum','name','mod_forum'),(102,'forum','subscribe','forum','name','mod_forum'),(103,'forum','unsubscribe','forum','name','mod_forum'),(104,'forum','pin discussion','forum_discussions','name','mod_forum'),(105,'forum','unpin discussion','forum_discussions','name','mod_forum'),(106,'glossary','add','glossary','name','mod_glossary'),(107,'glossary','update','glossary','name','mod_glossary'),(108,'glossary','view','glossary','name','mod_glossary'),(109,'glossary','view all','glossary','name','mod_glossary'),(110,'glossary','add entry','glossary','name','mod_glossary'),(111,'glossary','update entry','glossary','name','mod_glossary'),(112,'glossary','add category','glossary','name','mod_glossary'),(113,'glossary','update category','glossary','name','mod_glossary'),(114,'glossary','delete category','glossary','name','mod_glossary'),(115,'glossary','approve entry','glossary','name','mod_glossary'),(116,'glossary','disapprove entry','glossary','name','mod_glossary'),(117,'glossary','view entry','glossary_entries','concept','mod_glossary'),(118,'imscp','view','imscp','name','mod_imscp'),(119,'imscp','view all','imscp','name','mod_imscp'),(120,'imscp','update','imscp','name','mod_imscp'),(121,'imscp','add','imscp','name','mod_imscp'),(122,'label','add','label','name','mod_label'),(123,'label','update','label','name','mod_label'),(124,'lesson','start','lesson','name','mod_lesson'),(125,'lesson','end','lesson','name','mod_lesson'),(126,'lesson','view','lesson_pages','title','mod_lesson'),(127,'lti','view','lti','name','mod_lti'),(128,'lti','launch','lti','name','mod_lti'),(129,'lti','view all','lti','name','mod_lti'),(130,'page','view','page','name','mod_page'),(131,'page','view all','page','name','mod_page'),(132,'page','update','page','name','mod_page'),(133,'page','add','page','name','mod_page'),(134,'quiz','add','quiz','name','mod_quiz'),(135,'quiz','update','quiz','name','mod_quiz'),(136,'quiz','view','quiz','name','mod_quiz'),(137,'quiz','report','quiz','name','mod_quiz'),(138,'quiz','attempt','quiz','name','mod_quiz'),(139,'quiz','submit','quiz','name','mod_quiz'),(140,'quiz','review','quiz','name','mod_quiz'),(141,'quiz','editquestions','quiz','name','mod_quiz'),(142,'quiz','preview','quiz','name','mod_quiz'),(143,'quiz','start attempt','quiz','name','mod_quiz'),(144,'quiz','close attempt','quiz','name','mod_quiz'),(145,'quiz','continue attempt','quiz','name','mod_quiz'),(146,'quiz','edit override','quiz','name','mod_quiz'),(147,'quiz','delete override','quiz','name','mod_quiz'),(148,'quiz','view summary','quiz','name','mod_quiz'),(149,'resource','view','resource','name','mod_resource'),(150,'resource','view all','resource','name','mod_resource'),(151,'resource','update','resource','name','mod_resource'),(152,'resource','add','resource','name','mod_resource'),(153,'scorm','view','scorm','name','mod_scorm'),(154,'scorm','review','scorm','name','mod_scorm'),(155,'scorm','update','scorm','name','mod_scorm'),(156,'scorm','add','scorm','name','mod_scorm'),(157,'survey','add','survey','name','mod_survey'),(158,'survey','update','survey','name','mod_survey'),(159,'survey','download','survey','name','mod_survey'),(160,'survey','view form','survey','name','mod_survey'),(161,'survey','view graph','survey','name','mod_survey'),(162,'survey','view report','survey','name','mod_survey'),(163,'survey','submit','survey','name','mod_survey'),(164,'url','view','url','name','mod_url'),(165,'url','view all','url','name','mod_url'),(166,'url','update','url','name','mod_url'),(167,'url','add','url','name','mod_url'),(168,'workshop','add','workshop','name','mod_workshop'),(169,'workshop','update','workshop','name','mod_workshop'),(170,'workshop','view','workshop','name','mod_workshop'),(171,'workshop','view all','workshop','name','mod_workshop'),(172,'workshop','add submission','workshop_submissions','title','mod_workshop'),(173,'workshop','update submission','workshop_submissions','title','mod_workshop'),(174,'workshop','view submission','workshop_submissions','title','mod_workshop'),(175,'workshop','add assessment','workshop_submissions','title','mod_workshop'),(176,'workshop','update assessment','workshop_submissions','title','mod_workshop'),(177,'workshop','add example','workshop_submissions','title','mod_workshop'),(178,'workshop','update example','workshop_submissions','title','mod_workshop'),(179,'workshop','view example','workshop_submissions','title','mod_workshop'),(180,'workshop','add reference assessment','workshop_submissions','title','mod_workshop'),(181,'workshop','update reference assessment','workshop_submissions','title','mod_workshop'),(182,'workshop','add example assessment','workshop_submissions','title','mod_workshop'),(183,'workshop','update example assessment','workshop_submissions','title','mod_workshop'),(184,'workshop','update aggregate grades','workshop','name','mod_workshop'),(185,'workshop','update clear aggregated grades','workshop','name','mod_workshop'),(186,'workshop','update clear assessments','workshop','name','mod_workshop'),(187,'book','exportimscp','book','name','booktool_exportimscp'),(188,'book','print','book','name','booktool_print'),(189,'book','print chapter','book_chapters','title','booktool_print');
/*!40000 ALTER TABLE `mdl_log_display` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_log_queries`
--

DROP TABLE IF EXISTS `mdl_log_queries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_log_queries` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `qtype` mediumint(5) NOT NULL,
  `sqltext` longtext NOT NULL,
  `sqlparams` longtext DEFAULT NULL,
  `error` mediumint(5) NOT NULL DEFAULT 0,
  `info` longtext DEFAULT NULL,
  `backtrace` longtext DEFAULT NULL,
  `exectime` decimal(10,5) NOT NULL,
  `timelogged` bigint(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Logged database queries.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_log_queries`
--

LOCK TABLES `mdl_log_queries` WRITE;
/*!40000 ALTER TABLE `mdl_log_queries` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_log_queries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_logstore_standard_log`
--

DROP TABLE IF EXISTS `mdl_logstore_standard_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_logstore_standard_log` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `eventname` varchar(255) NOT NULL DEFAULT '',
  `component` varchar(100) NOT NULL DEFAULT '',
  `action` varchar(100) NOT NULL DEFAULT '',
  `target` varchar(100) NOT NULL DEFAULT '',
  `objecttable` varchar(50) DEFAULT NULL,
  `objectid` bigint(10) DEFAULT NULL,
  `crud` varchar(1) NOT NULL DEFAULT '',
  `edulevel` tinyint(1) NOT NULL,
  `contextid` bigint(10) NOT NULL,
  `contextlevel` bigint(10) NOT NULL,
  `contextinstanceid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `courseid` bigint(10) DEFAULT NULL,
  `relateduserid` bigint(10) DEFAULT NULL,
  `anonymous` tinyint(1) NOT NULL DEFAULT 0,
  `other` longtext DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `origin` varchar(10) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `realuserid` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_logsstanlog_tim_ix` (`timecreated`),
  KEY `mdl_logsstanlog_couanotim_ix` (`courseid`,`anonymous`,`timecreated`),
  KEY `mdl_logsstanlog_useconconcr_ix` (`userid`,`contextlevel`,`contextinstanceid`,`crud`,`edulevel`,`timecreated`),
  KEY `mdl_logsstanlog_con_ix` (`contextid`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COMMENT='Standard log table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_logstore_standard_log`
--

LOCK TABLES `mdl_logstore_standard_log` WRITE;
/*!40000 ALTER TABLE `mdl_logstore_standard_log` DISABLE KEYS */;
INSERT INTO `mdl_logstore_standard_log` VALUES (1,'\\core\\event\\course_viewed','core','viewed','course',NULL,NULL,'r',2,2,50,1,0,1,NULL,0,'N;',1601071183,'web','192.168.96.1',NULL),(2,'\\core\\event\\course_viewed','core','viewed','course',NULL,NULL,'r',2,2,50,1,0,1,NULL,0,'N;',1601071184,'web','192.168.96.1',NULL),(3,'\\core\\event\\user_loggedin','core','loggedin','user','user',2,'r',0,1,10,0,2,0,NULL,0,'a:1:{s:8:\"username\";s:4:\"user\";}',1601071199,'web','192.168.96.1',NULL),(4,'\\core\\event\\dashboard_viewed','core','viewed','dashboard',NULL,NULL,'r',0,5,30,2,2,0,2,0,'N;',1601071202,'web','192.168.96.1',NULL),(5,'\\tool_usertours\\event\\tour_started','tool_usertours','started','tour','tool_usertours_tours',2,'r',2,5,30,2,2,0,2,0,'a:1:{s:7:\"pageurl\";s:25:\"http://localhost:8080/my/\";}',1601071205,'web','192.168.96.1',NULL),(6,'\\core\\event\\email_failed','core','failed','email',NULL,NULL,'c',0,1,10,0,2,0,2,0,'a:3:{s:7:\"subject\";s:50:\"Moodle updates are available (http://127.0.0.1:80)\";s:7:\"message\";s:862:\"Update notifications\n\nThere is a newer Moodle version available!\nMoodle 3.6.10 (Build: 20200511) Version 2018120310 (Stable version)\nMoodle 3.9.2+ (Build: 20200924) Version 2020061502.02 (Stable version)\nMoodle 3.8.5+ (Build: 20200924) Version 2019111805.02 (Stable version)\nMoodle 3.7.8 (Build: 20200914) Version 2019052008 (Stable version)\n\nSee http://127.0.0.1:80/admin/index.php for more details\n\nIt is strongly recommended that you update your site to the latest version to obtain all recent security and bug fixes.\n\nYour Moodle site http://127.0.0.1:80 is configured to automatically check for available updates. You are receiving this message as the administrator of the site. You can disable automatic checks for available updates in Site administration / Server / Update notifications or customise the delivery of this message via your preferences page.\";s:9:\"errorinfo\";s:48:\"Invalid address:  (punyEncode) noreply@127.0.0.1\";}',1601071207,'cli',NULL,NULL),(7,'\\core\\event\\notification_sent','core','sent','notification','notifications',1,'c',0,1,10,0,2,0,2,0,'a:1:{s:8:\"courseid\";s:1:\"1\";}',1601071207,'cli',NULL,NULL),(8,'\\tool_usertours\\event\\step_shown','tool_usertours','shown','step','tool_usertours_steps',7,'r',2,5,30,2,2,0,2,0,'a:3:{s:7:\"pageurl\";s:25:\"http://localhost:8080/my/\";s:6:\"tourid\";i:2;s:9:\"stepindex\";i:0;}',1601071212,'web','192.168.96.1',NULL),(9,'\\tool_usertours\\event\\tour_ended','tool_usertours','ended','tour','tool_usertours_tours',2,'c',2,5,30,2,2,0,2,0,'a:3:{s:7:\"pageurl\";s:25:\"http://localhost:8080/my/\";s:6:\"stepid\";i:7;s:9:\"stepindex\";i:0;}',1601071215,'web','192.168.96.1',NULL),(10,'\\core\\event\\webservice_service_updated','core','updated','webservice_service','external_services',1,'u',0,1,10,0,2,0,NULL,0,'N;',1601071256,'web','192.168.96.1',NULL),(11,'\\core\\event\\config_log_created','core','created','config_log','config_log',1592,'c',0,1,10,0,2,0,NULL,0,'a:4:{s:4:\"name\";s:17:\"enablewebservices\";s:8:\"oldvalue\";s:1:\"0\";s:5:\"value\";s:1:\"1\";s:6:\"plugin\";N;}',1601071519,'web','192.168.96.1',NULL),(12,'\\core\\event\\user_loggedin','core','loggedin','user','user',2,'r',0,1,10,0,2,0,NULL,0,'a:1:{s:8:\"username\";s:4:\"user\";}',1601072606,'web','192.168.128.1',NULL),(13,'\\core\\event\\dashboard_viewed','core','viewed','dashboard',NULL,NULL,'r',0,5,30,2,2,0,2,0,'N;',1601072607,'web','192.168.128.1',NULL),(14,'\\core\\event\\course_viewed','core','viewed','course',NULL,NULL,'r',2,2,50,1,2,1,NULL,0,'N;',1601072665,'web','192.168.128.1',NULL),(15,'\\core\\event\\course_created','core','created','course','course',2,'c',1,25,50,2,2,2,NULL,0,'a:2:{s:9:\"shortname\";s:11:\"Test course\";s:8:\"fullname\";s:32:\"Test course for ayudante virtual\";}',1601072819,'web','192.168.128.1',NULL),(16,'\\core\\event\\course_section_created','core','created','course_section','course_sections',1,'c',1,25,50,2,2,2,NULL,0,'a:1:{s:10:\"sectionnum\";i:0;}',1601072819,'web','192.168.128.1',NULL),(17,'\\core\\event\\course_section_created','core','created','course_section','course_sections',2,'c',1,25,50,2,2,2,NULL,0,'a:1:{s:10:\"sectionnum\";i:1;}',1601072819,'web','192.168.128.1',NULL),(18,'\\core\\event\\course_section_created','core','created','course_section','course_sections',3,'c',1,25,50,2,2,2,NULL,0,'a:1:{s:10:\"sectionnum\";i:2;}',1601072819,'web','192.168.128.1',NULL),(19,'\\core\\event\\course_section_created','core','created','course_section','course_sections',4,'c',1,25,50,2,2,2,NULL,0,'a:1:{s:10:\"sectionnum\";i:3;}',1601072819,'web','192.168.128.1',NULL),(20,'\\core\\event\\course_section_created','core','created','course_section','course_sections',5,'c',1,25,50,2,2,2,NULL,0,'a:1:{s:10:\"sectionnum\";i:4;}',1601072819,'web','192.168.128.1',NULL),(21,'\\core\\event\\enrol_instance_created','core','created','enrol_instance','enrol',1,'c',0,25,50,2,2,2,NULL,0,'a:1:{s:5:\"enrol\";s:6:\"manual\";}',1601072819,'web','192.168.128.1',NULL),(22,'\\core\\event\\enrol_instance_created','core','created','enrol_instance','enrol',2,'c',0,25,50,2,2,2,NULL,0,'a:1:{s:5:\"enrol\";s:5:\"guest\";}',1601072819,'web','192.168.128.1',NULL),(23,'\\core\\event\\enrol_instance_created','core','created','enrol_instance','enrol',3,'c',0,25,50,2,2,2,NULL,0,'a:1:{s:5:\"enrol\";s:4:\"self\";}',1601072819,'web','192.168.128.1',NULL),(24,'\\core\\event\\course_category_viewed','core','viewed','course_category','course_categories',1,'r',0,3,40,1,2,0,NULL,0,'N;',1601072820,'web','192.168.128.1',NULL),(25,'\\core\\event\\course_viewed','core','viewed','course',NULL,NULL,'r',2,25,50,2,2,2,NULL,0,'N;',1601072823,'web','192.168.128.1',NULL),(26,'\\tool_usertours\\event\\tour_started','tool_usertours','started','tour','tool_usertours_tours',1,'r',2,25,50,2,2,2,NULL,0,'a:1:{s:7:\"pageurl\";s:42:\"http://localhost:8080/course/view.php?id=2\";}',1601072824,'web','192.168.128.1',NULL),(27,'\\tool_usertours\\event\\step_shown','tool_usertours','shown','step','tool_usertours_steps',1,'r',2,25,50,2,2,2,NULL,0,'a:3:{s:7:\"pageurl\";s:42:\"http://localhost:8080/course/view.php?id=2\";s:6:\"tourid\";i:1;s:9:\"stepindex\";i:0;}',1601072824,'web','192.168.128.1',NULL),(28,'\\mod_forum\\event\\course_module_viewed','mod_forum','viewed','course_module','forum',1,'r',2,26,70,1,2,2,NULL,0,'N;',1601072826,'web','192.168.128.1',NULL),(29,'\\mod_forum\\event\\assessable_uploaded','mod_forum','uploaded','assessable','forum_posts',1,'c',2,26,70,1,2,2,NULL,0,'a:4:{s:7:\"content\";s:39:\"<p>Mensaje de la consulta de prueba</p>\";s:14:\"pathnamehashes\";a:0:{}s:12:\"discussionid\";i:1;s:13:\"triggeredfrom\";s:20:\"forum_add_discussion\";}',1601072867,'web','192.168.128.1',NULL),(30,'\\mod_forum\\event\\discussion_created','mod_forum','created','discussion','forum_discussions',1,'c',2,26,70,1,2,2,NULL,0,'a:1:{s:7:\"forumid\";s:1:\"1\";}',1601072867,'web','192.168.128.1',NULL),(31,'\\mod_forum\\event\\course_module_viewed','mod_forum','viewed','course_module','forum',1,'r',2,26,70,1,2,2,NULL,0,'N;',1601072867,'web','192.168.128.1',NULL),(32,'\\mod_forum\\event\\discussion_viewed','mod_forum','viewed','discussion','forum_discussions',1,'r',2,26,70,1,2,2,NULL,0,'N;',1601072870,'web','192.168.128.1',NULL),(33,'\\mod_forum\\event\\assessable_uploaded','mod_forum','uploaded','assessable','forum_posts',2,'c',2,26,70,1,2,2,NULL,0,'a:4:{s:7:\"content\";s:41:\"<p>Respuesta de la consulta de prueba</p>\";s:14:\"pathnamehashes\";a:0:{}s:12:\"discussionid\";i:1;s:13:\"triggeredfrom\";s:18:\"forum_add_new_post\";}',1601072885,'web','192.168.128.1',NULL),(34,'\\mod_forum\\event\\post_created','mod_forum','created','post','forum_posts',2,'c',2,26,70,1,2,2,NULL,0,'a:3:{s:12:\"discussionid\";s:1:\"1\";s:7:\"forumid\";s:1:\"1\";s:9:\"forumtype\";s:4:\"news\";}',1601072885,'web','192.168.128.1',NULL),(35,'\\mod_forum\\event\\discussion_viewed','mod_forum','viewed','discussion','forum_discussions',1,'r',2,26,70,1,2,2,NULL,0,'N;',1601072885,'web','192.168.128.1',NULL),(36,'\\mod_forum\\event\\assessable_uploaded','mod_forum','uploaded','assessable','forum_posts',3,'c',2,26,70,1,2,2,NULL,0,'a:4:{s:7:\"content\";s:48:\"<p>Segunda respuesta a la consulta de prueba</p>\";s:14:\"pathnamehashes\";a:0:{}s:12:\"discussionid\";i:1;s:13:\"triggeredfrom\";s:18:\"forum_add_new_post\";}',1601072906,'web','192.168.128.1',NULL),(37,'\\mod_forum\\event\\post_created','mod_forum','created','post','forum_posts',3,'c',2,26,70,1,2,2,NULL,0,'a:3:{s:12:\"discussionid\";s:1:\"1\";s:7:\"forumid\";s:1:\"1\";s:9:\"forumtype\";s:4:\"news\";}',1601072906,'web','192.168.128.1',NULL),(38,'\\mod_forum\\event\\discussion_viewed','mod_forum','viewed','discussion','forum_discussions',1,'r',2,26,70,1,2,2,NULL,0,'N;',1601072906,'web','192.168.128.1',NULL),(39,'\\mod_forum\\event\\assessable_uploaded','mod_forum','uploaded','assessable','forum_posts',4,'c',2,26,70,1,2,2,NULL,0,'a:4:{s:7:\"content\";s:24:\"<p>Respuesta anidada</p>\";s:14:\"pathnamehashes\";a:0:{}s:12:\"discussionid\";i:1;s:13:\"triggeredfrom\";s:18:\"forum_add_new_post\";}',1601072920,'web','192.168.128.1',NULL),(40,'\\mod_forum\\event\\post_created','mod_forum','created','post','forum_posts',4,'c',2,26,70,1,2,2,NULL,0,'a:3:{s:12:\"discussionid\";s:1:\"1\";s:7:\"forumid\";s:1:\"1\";s:9:\"forumtype\";s:4:\"news\";}',1601072920,'web','192.168.128.1',NULL),(41,'\\mod_forum\\event\\discussion_viewed','mod_forum','viewed','discussion','forum_discussions',1,'r',2,26,70,1,2,2,NULL,0,'N;',1601072921,'web','192.168.128.1',NULL),(42,'\\mod_forum\\event\\course_module_viewed','mod_forum','viewed','course_module','forum',1,'r',2,26,70,1,2,2,NULL,0,'N;',1601072938,'web','192.168.128.1',NULL),(43,'\\mod_forum\\event\\assessable_uploaded','mod_forum','uploaded','assessable','forum_posts',5,'c',2,26,70,1,2,2,NULL,0,'a:4:{s:7:\"content\";s:30:\"Consulta de prueba número dos\";s:14:\"pathnamehashes\";a:0:{}s:12:\"discussionid\";i:2;s:13:\"triggeredfrom\";s:20:\"forum_add_discussion\";}',1601072982,'web','192.168.128.1',NULL),(44,'\\mod_forum\\event\\discussion_created','mod_forum','created','discussion','forum_discussions',2,'c',2,26,70,1,2,2,NULL,0,'a:1:{s:7:\"forumid\";s:1:\"1\";}',1601072982,'web','192.168.128.1',NULL),(45,'\\mod_forum\\event\\course_module_viewed','mod_forum','viewed','course_module','forum',1,'r',2,26,70,1,2,2,NULL,0,'N;',1601072982,'web','192.168.128.1',NULL),(46,'\\mod_forum\\event\\discussion_viewed','mod_forum','viewed','discussion','forum_discussions',2,'r',2,26,70,1,2,2,NULL,0,'N;',1601072985,'web','192.168.128.1',NULL),(47,'\\mod_forum\\event\\discussion_viewed','mod_forum','viewed','discussion','forum_discussions',2,'r',2,26,70,1,2,2,NULL,0,'N;',1601072994,'web','192.168.128.1',NULL),(48,'\\mod_forum\\event\\assessable_uploaded','mod_forum','uploaded','assessable','forum_posts',6,'c',2,26,70,1,2,2,NULL,0,'a:4:{s:7:\"content\";s:49:\"<p>Respuesta de la segunda consulta de prueba</p>\";s:14:\"pathnamehashes\";a:0:{}s:12:\"discussionid\";i:2;s:13:\"triggeredfrom\";s:18:\"forum_add_new_post\";}',1601073015,'web','192.168.128.1',NULL),(49,'\\mod_forum\\event\\post_created','mod_forum','created','post','forum_posts',6,'c',2,26,70,1,2,2,NULL,0,'a:3:{s:12:\"discussionid\";s:1:\"2\";s:7:\"forumid\";s:1:\"1\";s:9:\"forumtype\";s:4:\"news\";}',1601073015,'web','192.168.128.1',NULL),(50,'\\mod_forum\\event\\discussion_viewed','mod_forum','viewed','discussion','forum_discussions',2,'r',2,26,70,1,2,2,NULL,0,'N;',1601073015,'web','192.168.128.1',NULL),(51,'\\mod_forum\\event\\course_module_viewed','mod_forum','viewed','course_module','forum',1,'r',2,26,70,1,2,2,NULL,0,'N;',1601073021,'web','192.168.128.1',NULL),(52,'\\mod_forum\\event\\assessable_uploaded','mod_forum','uploaded','assessable','forum_posts',7,'c',2,26,70,1,2,2,NULL,0,'a:4:{s:7:\"content\";s:53:\"<p>Mensaje de la consulta de prueba sin respuesta</p>\";s:14:\"pathnamehashes\";a:0:{}s:12:\"discussionid\";i:3;s:13:\"triggeredfrom\";s:20:\"forum_add_discussion\";}',1601073049,'web','192.168.128.1',NULL),(53,'\\mod_forum\\event\\discussion_created','mod_forum','created','discussion','forum_discussions',3,'c',2,26,70,1,2,2,NULL,0,'a:1:{s:7:\"forumid\";s:1:\"1\";}',1601073049,'web','192.168.128.1',NULL),(54,'\\mod_forum\\event\\course_module_viewed','mod_forum','viewed','course_module','forum',1,'r',2,26,70,1,2,2,NULL,0,'N;',1601073049,'web','192.168.128.1',NULL);
/*!40000 ALTER TABLE `mdl_logstore_standard_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_lti`
--

DROP TABLE IF EXISTS `mdl_lti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_lti` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `intro` longtext DEFAULT NULL,
  `introformat` smallint(4) DEFAULT 0,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `typeid` bigint(10) DEFAULT NULL,
  `toolurl` longtext NOT NULL,
  `securetoolurl` longtext DEFAULT NULL,
  `instructorchoicesendname` tinyint(1) DEFAULT NULL,
  `instructorchoicesendemailaddr` tinyint(1) DEFAULT NULL,
  `instructorchoiceallowroster` tinyint(1) DEFAULT NULL,
  `instructorchoiceallowsetting` tinyint(1) DEFAULT NULL,
  `instructorcustomparameters` varchar(255) DEFAULT NULL,
  `instructorchoiceacceptgrades` tinyint(1) DEFAULT NULL,
  `grade` bigint(10) NOT NULL DEFAULT 100,
  `launchcontainer` tinyint(2) NOT NULL DEFAULT 1,
  `resourcekey` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `debuglaunch` tinyint(1) NOT NULL DEFAULT 0,
  `showtitlelaunch` tinyint(1) NOT NULL DEFAULT 0,
  `showdescriptionlaunch` tinyint(1) NOT NULL DEFAULT 0,
  `servicesalt` varchar(40) DEFAULT NULL,
  `icon` longtext DEFAULT NULL,
  `secureicon` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_lti_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED COMMENT='This table contains Basic LTI activities instances';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_lti`
--

LOCK TABLES `mdl_lti` WRITE;
/*!40000 ALTER TABLE `mdl_lti` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_lti` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_lti_submission`
--

DROP TABLE IF EXISTS `mdl_lti_submission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_lti_submission` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `ltiid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `datesubmitted` bigint(10) NOT NULL,
  `dateupdated` bigint(10) NOT NULL,
  `gradepercent` decimal(10,5) NOT NULL,
  `originalgrade` decimal(10,5) NOT NULL,
  `launchid` bigint(10) NOT NULL,
  `state` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_ltisubm_lti_ix` (`ltiid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Keeps track of individual submissions for LTI activities.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_lti_submission`
--

LOCK TABLES `mdl_lti_submission` WRITE;
/*!40000 ALTER TABLE `mdl_lti_submission` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_lti_submission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_lti_tool_proxies`
--

DROP TABLE IF EXISTS `mdl_lti_tool_proxies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_lti_tool_proxies` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT 'Tool Provider',
  `regurl` longtext DEFAULT NULL,
  `state` tinyint(2) NOT NULL DEFAULT 1,
  `guid` varchar(255) DEFAULT NULL,
  `secret` varchar(255) DEFAULT NULL,
  `vendorcode` varchar(255) DEFAULT NULL,
  `capabilityoffered` longtext NOT NULL,
  `serviceoffered` longtext NOT NULL,
  `toolproxy` longtext DEFAULT NULL,
  `createdby` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_ltitoolprox_gui_uix` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='LTI tool proxy registrations';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_lti_tool_proxies`
--

LOCK TABLES `mdl_lti_tool_proxies` WRITE;
/*!40000 ALTER TABLE `mdl_lti_tool_proxies` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_lti_tool_proxies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_lti_tool_settings`
--

DROP TABLE IF EXISTS `mdl_lti_tool_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_lti_tool_settings` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `toolproxyid` bigint(10) NOT NULL,
  `course` bigint(10) DEFAULT NULL,
  `coursemoduleid` bigint(10) DEFAULT NULL,
  `settings` longtext NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_ltitoolsett_too_ix` (`toolproxyid`),
  KEY `mdl_ltitoolsett_cou_ix` (`course`),
  KEY `mdl_ltitoolsett_cou2_ix` (`coursemoduleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='LTI tool setting values';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_lti_tool_settings`
--

LOCK TABLES `mdl_lti_tool_settings` WRITE;
/*!40000 ALTER TABLE `mdl_lti_tool_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_lti_tool_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_lti_types`
--

DROP TABLE IF EXISTS `mdl_lti_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_lti_types` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT 'basiclti Activity',
  `baseurl` longtext NOT NULL,
  `tooldomain` varchar(255) NOT NULL DEFAULT '',
  `state` tinyint(2) NOT NULL DEFAULT 2,
  `course` bigint(10) NOT NULL,
  `coursevisible` tinyint(1) NOT NULL DEFAULT 0,
  `toolproxyid` bigint(10) DEFAULT NULL,
  `enabledcapability` longtext DEFAULT NULL,
  `parameter` longtext DEFAULT NULL,
  `icon` longtext DEFAULT NULL,
  `secureicon` longtext DEFAULT NULL,
  `createdby` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `description` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_ltitype_cou_ix` (`course`),
  KEY `mdl_ltitype_too_ix` (`tooldomain`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Basic LTI pre-configured activities';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_lti_types`
--

LOCK TABLES `mdl_lti_types` WRITE;
/*!40000 ALTER TABLE `mdl_lti_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_lti_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_lti_types_config`
--

DROP TABLE IF EXISTS `mdl_lti_types_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_lti_types_config` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `typeid` bigint(10) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `value` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_ltitypeconf_typ_ix` (`typeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Basic LTI types configuration';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_lti_types_config`
--

LOCK TABLES `mdl_lti_types_config` WRITE;
/*!40000 ALTER TABLE `mdl_lti_types_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_lti_types_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_ltiservice_gradebookservices`
--

DROP TABLE IF EXISTS `mdl_ltiservice_gradebookservices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_ltiservice_gradebookservices` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `gradeitemid` bigint(10) NOT NULL,
  `courseid` bigint(10) NOT NULL,
  `toolproxyid` bigint(10) DEFAULT NULL,
  `typeid` bigint(10) DEFAULT NULL,
  `baseurl` longtext DEFAULT NULL,
  `ltilinkid` bigint(10) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_ltisgrad_lti_ix` (`ltilinkid`),
  KEY `mdl_ltisgrad_gracou_ix` (`gradeitemid`,`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='This file records the grade items created by the LTI Gradebo';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_ltiservice_gradebookservices`
--

LOCK TABLES `mdl_ltiservice_gradebookservices` WRITE;
/*!40000 ALTER TABLE `mdl_ltiservice_gradebookservices` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_ltiservice_gradebookservices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_message`
--

DROP TABLE IF EXISTS `mdl_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_message` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `useridfrom` bigint(10) NOT NULL DEFAULT 0,
  `useridto` bigint(10) NOT NULL DEFAULT 0,
  `subject` longtext DEFAULT NULL,
  `fullmessage` longtext DEFAULT NULL,
  `fullmessageformat` smallint(4) DEFAULT 0,
  `fullmessagehtml` longtext DEFAULT NULL,
  `smallmessage` longtext DEFAULT NULL,
  `notification` tinyint(1) DEFAULT 0,
  `contexturl` longtext DEFAULT NULL,
  `contexturlname` longtext DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timeuserfromdeleted` bigint(10) NOT NULL DEFAULT 0,
  `timeusertodeleted` bigint(10) NOT NULL DEFAULT 0,
  `component` varchar(100) DEFAULT NULL,
  `eventtype` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_mess_useusetimtim_ix` (`useridfrom`,`useridto`,`timeuserfromdeleted`,`timeusertodeleted`),
  KEY `mdl_mess_usetimnot_ix` (`useridfrom`,`timeuserfromdeleted`,`notification`),
  KEY `mdl_mess_usetimnot2_ix` (`useridto`,`timeusertodeleted`,`notification`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores all unread messages';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_message`
--

LOCK TABLES `mdl_message` WRITE;
/*!40000 ALTER TABLE `mdl_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_message_airnotifier_devices`
--

DROP TABLE IF EXISTS `mdl_message_airnotifier_devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_message_airnotifier_devices` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userdeviceid` bigint(10) NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_messairndevi_use_uix` (`userdeviceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Store information about the devices registered in Airnotifie';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_message_airnotifier_devices`
--

LOCK TABLES `mdl_message_airnotifier_devices` WRITE;
/*!40000 ALTER TABLE `mdl_message_airnotifier_devices` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_message_airnotifier_devices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_message_contact_requests`
--

DROP TABLE IF EXISTS `mdl_message_contact_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_message_contact_requests` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `requesteduserid` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_messcontrequ_usereq_uix` (`userid`,`requesteduserid`),
  KEY `mdl_messcontrequ_use_ix` (`userid`),
  KEY `mdl_messcontrequ_req_ix` (`requesteduserid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maintains list of contact requests between users';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_message_contact_requests`
--

LOCK TABLES `mdl_message_contact_requests` WRITE;
/*!40000 ALTER TABLE `mdl_message_contact_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_message_contact_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_message_contacts`
--

DROP TABLE IF EXISTS `mdl_message_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_message_contacts` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `contactid` bigint(10) NOT NULL,
  `timecreated` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_messcont_usecon_uix` (`userid`,`contactid`),
  KEY `mdl_messcont_use_ix` (`userid`),
  KEY `mdl_messcont_con_ix` (`contactid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maintains lists of contacts between users';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_message_contacts`
--

LOCK TABLES `mdl_message_contacts` WRITE;
/*!40000 ALTER TABLE `mdl_message_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_message_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_message_conversation_members`
--

DROP TABLE IF EXISTS `mdl_message_conversation_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_message_conversation_members` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `conversationid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_messconvmemb_con_ix` (`conversationid`),
  KEY `mdl_messconvmemb_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores all members in a conversations';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_message_conversation_members`
--

LOCK TABLES `mdl_message_conversation_members` WRITE;
/*!40000 ALTER TABLE `mdl_message_conversation_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_message_conversation_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_message_conversations`
--

DROP TABLE IF EXISTS `mdl_message_conversations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_message_conversations` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `type` bigint(10) NOT NULL DEFAULT 1,
  `name` varchar(255) DEFAULT NULL,
  `convhash` varchar(40) DEFAULT NULL,
  `component` varchar(100) DEFAULT NULL,
  `itemtype` varchar(100) DEFAULT NULL,
  `itemid` bigint(10) DEFAULT NULL,
  `contextid` bigint(10) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_messconv_typ_ix` (`type`),
  KEY `mdl_messconv_con_ix` (`convhash`),
  KEY `mdl_messconv_comiteitecon_ix` (`component`,`itemtype`,`itemid`,`contextid`),
  KEY `mdl_messconv_con2_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores all message conversations';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_message_conversations`
--

LOCK TABLES `mdl_message_conversations` WRITE;
/*!40000 ALTER TABLE `mdl_message_conversations` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_message_conversations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_message_popup`
--

DROP TABLE IF EXISTS `mdl_message_popup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_message_popup` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `messageid` bigint(10) NOT NULL,
  `isread` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_messpopu_mesisr_uix` (`messageid`,`isread`),
  KEY `mdl_messpopu_isr_ix` (`isread`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Keep state of notifications for the popup message processor';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_message_popup`
--

LOCK TABLES `mdl_message_popup` WRITE;
/*!40000 ALTER TABLE `mdl_message_popup` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_message_popup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_message_popup_notifications`
--

DROP TABLE IF EXISTS `mdl_message_popup_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_message_popup_notifications` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `notificationid` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_messpopunoti_not_ix` (`notificationid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='List of notifications to display in the message output popup';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_message_popup_notifications`
--

LOCK TABLES `mdl_message_popup_notifications` WRITE;
/*!40000 ALTER TABLE `mdl_message_popup_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_message_popup_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_message_processors`
--

DROP TABLE IF EXISTS `mdl_message_processors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_message_processors` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(166) NOT NULL DEFAULT '',
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='List of message output plugins';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_message_processors`
--

LOCK TABLES `mdl_message_processors` WRITE;
/*!40000 ALTER TABLE `mdl_message_processors` DISABLE KEYS */;
INSERT INTO `mdl_message_processors` VALUES (1,'airnotifier',0),(2,'email',1),(3,'jabber',1),(4,'popup',1);
/*!40000 ALTER TABLE `mdl_message_processors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_message_providers`
--

DROP TABLE IF EXISTS `mdl_message_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_message_providers` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `component` varchar(200) NOT NULL DEFAULT '',
  `capability` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_messprov_comnam_uix` (`component`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='This table stores the message providers (modules and core sy';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_message_providers`
--

LOCK TABLES `mdl_message_providers` WRITE;
/*!40000 ALTER TABLE `mdl_message_providers` DISABLE KEYS */;
INSERT INTO `mdl_message_providers` VALUES (1,'notices','moodle','moodle/site:config'),(2,'errors','moodle','moodle/site:config'),(3,'availableupdate','moodle','moodle/site:config'),(4,'instantmessage','moodle',NULL),(5,'backup','moodle','moodle/site:config'),(6,'courserequested','moodle','moodle/site:approvecourse'),(7,'courserequestapproved','moodle','moodle/course:request'),(8,'courserequestrejected','moodle','moodle/course:request'),(9,'badgerecipientnotice','moodle','moodle/badges:earnbadge'),(10,'badgecreatornotice','moodle',NULL),(11,'competencyplancomment','moodle',NULL),(12,'competencyusercompcomment','moodle',NULL),(13,'insights','moodle','moodle/analytics:listinsights'),(14,'messagecontactrequests','moodle',NULL),(15,'assign_notification','mod_assign',NULL),(16,'assignment_updates','mod_assignment',NULL),(17,'submission','mod_feedback',NULL),(18,'message','mod_feedback',NULL),(19,'posts','mod_forum',NULL),(20,'digests','mod_forum',NULL),(21,'graded_essay','mod_lesson',NULL),(22,'submission','mod_quiz','mod/quiz:emailnotifysubmission'),(23,'confirmation','mod_quiz','mod/quiz:emailconfirmsubmission'),(24,'attempt_overdue','mod_quiz','mod/quiz:emailwarnoverdue'),(25,'flatfile_enrolment','enrol_flatfile',NULL),(26,'imsenterprise_enrolment','enrol_imsenterprise',NULL),(27,'expiry_notification','enrol_manual',NULL),(28,'paypal_enrolment','enrol_paypal',NULL),(29,'expiry_notification','enrol_self',NULL),(30,'contactdataprotectionofficer','tool_dataprivacy','tool/dataprivacy:managedatarequests'),(31,'datarequestprocessingresults','tool_dataprivacy',NULL),(32,'notifyexceptions','tool_dataprivacy','tool/dataprivacy:managedatarequests'),(33,'invalidrecipienthandler','tool_messageinbound',NULL),(34,'messageprocessingerror','tool_messageinbound',NULL),(35,'messageprocessingsuccess','tool_messageinbound',NULL),(36,'notification','tool_monitor','tool/monitor:subscribe');
/*!40000 ALTER TABLE `mdl_message_providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_message_read`
--

DROP TABLE IF EXISTS `mdl_message_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_message_read` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `useridfrom` bigint(10) NOT NULL DEFAULT 0,
  `useridto` bigint(10) NOT NULL DEFAULT 0,
  `subject` longtext DEFAULT NULL,
  `fullmessage` longtext DEFAULT NULL,
  `fullmessageformat` smallint(4) DEFAULT 0,
  `fullmessagehtml` longtext DEFAULT NULL,
  `smallmessage` longtext DEFAULT NULL,
  `notification` tinyint(1) DEFAULT 0,
  `contexturl` longtext DEFAULT NULL,
  `contexturlname` longtext DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timeread` bigint(10) NOT NULL DEFAULT 0,
  `timeuserfromdeleted` bigint(10) NOT NULL DEFAULT 0,
  `timeusertodeleted` bigint(10) NOT NULL DEFAULT 0,
  `component` varchar(100) DEFAULT NULL,
  `eventtype` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_messread_useusetimtim_ix` (`useridfrom`,`useridto`,`timeuserfromdeleted`,`timeusertodeleted`),
  KEY `mdl_messread_nottim_ix` (`notification`,`timeread`),
  KEY `mdl_messread_usetimnot_ix` (`useridfrom`,`timeuserfromdeleted`,`notification`),
  KEY `mdl_messread_usetimnot2_ix` (`useridto`,`timeusertodeleted`,`notification`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores all messages that have been read';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_message_read`
--

LOCK TABLES `mdl_message_read` WRITE;
/*!40000 ALTER TABLE `mdl_message_read` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_message_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_message_user_actions`
--

DROP TABLE IF EXISTS `mdl_message_user_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_message_user_actions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `messageid` bigint(10) NOT NULL,
  `action` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_messuseracti_usemesact_uix` (`userid`,`messageid`,`action`),
  KEY `mdl_messuseracti_use_ix` (`userid`),
  KEY `mdl_messuseracti_mes_ix` (`messageid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores all per-user actions on individual messages';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_message_user_actions`
--

LOCK TABLES `mdl_message_user_actions` WRITE;
/*!40000 ALTER TABLE `mdl_message_user_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_message_user_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_message_users_blocked`
--

DROP TABLE IF EXISTS `mdl_message_users_blocked`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_message_users_blocked` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `blockeduserid` bigint(10) NOT NULL,
  `timecreated` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_messuserbloc_useblo_uix` (`userid`,`blockeduserid`),
  KEY `mdl_messuserbloc_use_ix` (`userid`),
  KEY `mdl_messuserbloc_blo_ix` (`blockeduserid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maintains lists of blocked users';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_message_users_blocked`
--

LOCK TABLES `mdl_message_users_blocked` WRITE;
/*!40000 ALTER TABLE `mdl_message_users_blocked` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_message_users_blocked` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_messageinbound_datakeys`
--

DROP TABLE IF EXISTS `mdl_messageinbound_datakeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_messageinbound_datakeys` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `handler` bigint(10) NOT NULL,
  `datavalue` bigint(10) NOT NULL,
  `datakey` varchar(64) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `expires` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_messdata_handat_uix` (`handler`,`datavalue`),
  KEY `mdl_messdata_han_ix` (`handler`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Inbound Message data item secret keys.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_messageinbound_datakeys`
--

LOCK TABLES `mdl_messageinbound_datakeys` WRITE;
/*!40000 ALTER TABLE `mdl_messageinbound_datakeys` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_messageinbound_datakeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_messageinbound_handlers`
--

DROP TABLE IF EXISTS `mdl_messageinbound_handlers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_messageinbound_handlers` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `component` varchar(100) NOT NULL DEFAULT '',
  `classname` varchar(255) NOT NULL DEFAULT '',
  `defaultexpiration` bigint(10) NOT NULL DEFAULT 86400,
  `validateaddress` tinyint(1) NOT NULL DEFAULT 1,
  `enabled` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_messhand_cla_uix` (`classname`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Inbound Message Handler definitions.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_messageinbound_handlers`
--

LOCK TABLES `mdl_messageinbound_handlers` WRITE;
/*!40000 ALTER TABLE `mdl_messageinbound_handlers` DISABLE KEYS */;
INSERT INTO `mdl_messageinbound_handlers` VALUES (1,'core','\\core\\message\\inbound\\private_files_handler',0,1,0),(2,'mod_forum','\\mod_forum\\message\\inbound\\reply_handler',604800,1,0),(3,'tool_messageinbound','\\tool_messageinbound\\message\\inbound\\invalid_recipient_handler',604800,0,1);
/*!40000 ALTER TABLE `mdl_messageinbound_handlers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_messageinbound_messagelist`
--

DROP TABLE IF EXISTS `mdl_messageinbound_messagelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_messageinbound_messagelist` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `messageid` longtext NOT NULL,
  `userid` bigint(10) NOT NULL,
  `address` longtext NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_messmess_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='A list of message IDs for existing replies';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_messageinbound_messagelist`
--

LOCK TABLES `mdl_messageinbound_messagelist` WRITE;
/*!40000 ALTER TABLE `mdl_messageinbound_messagelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_messageinbound_messagelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_messages`
--

DROP TABLE IF EXISTS `mdl_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_messages` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `useridfrom` bigint(10) NOT NULL,
  `conversationid` bigint(10) NOT NULL,
  `subject` longtext DEFAULT NULL,
  `fullmessage` longtext DEFAULT NULL,
  `fullmessageformat` tinyint(1) NOT NULL DEFAULT 0,
  `fullmessagehtml` longtext DEFAULT NULL,
  `smallmessage` longtext DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_mess_contim_ix` (`conversationid`,`timecreated`),
  KEY `mdl_mess_use_ix` (`useridfrom`),
  KEY `mdl_mess_con_ix` (`conversationid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores all messages';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_messages`
--

LOCK TABLES `mdl_messages` WRITE;
/*!40000 ALTER TABLE `mdl_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_mnet_application`
--

DROP TABLE IF EXISTS `mdl_mnet_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_mnet_application` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `display_name` varchar(50) NOT NULL DEFAULT '',
  `xmlrpc_server_url` varchar(255) NOT NULL DEFAULT '',
  `sso_land_url` varchar(255) NOT NULL DEFAULT '',
  `sso_jump_url` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Information about applications on remote hosts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_mnet_application`
--

LOCK TABLES `mdl_mnet_application` WRITE;
/*!40000 ALTER TABLE `mdl_mnet_application` DISABLE KEYS */;
INSERT INTO `mdl_mnet_application` VALUES (1,'moodle','Moodle','/mnet/xmlrpc/server.php','/auth/mnet/land.php','/auth/mnet/jump.php'),(2,'mahara','Mahara','/api/xmlrpc/server.php','/auth/xmlrpc/land.php','/auth/xmlrpc/jump.php');
/*!40000 ALTER TABLE `mdl_mnet_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_mnet_host`
--

DROP TABLE IF EXISTS `mdl_mnet_host`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_mnet_host` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `wwwroot` varchar(255) NOT NULL DEFAULT '',
  `ip_address` varchar(45) NOT NULL DEFAULT '',
  `name` varchar(80) NOT NULL DEFAULT '',
  `public_key` longtext NOT NULL,
  `public_key_expires` bigint(10) NOT NULL DEFAULT 0,
  `transport` tinyint(2) NOT NULL DEFAULT 0,
  `portno` mediumint(5) NOT NULL DEFAULT 0,
  `last_connect_time` bigint(10) NOT NULL DEFAULT 0,
  `last_log_id` bigint(10) NOT NULL DEFAULT 0,
  `force_theme` tinyint(1) NOT NULL DEFAULT 0,
  `theme` varchar(100) DEFAULT NULL,
  `applicationid` bigint(10) NOT NULL DEFAULT 1,
  `sslverification` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_mnethost_app_ix` (`applicationid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Information about the local and remote hosts for RPC';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_mnet_host`
--

LOCK TABLES `mdl_mnet_host` WRITE;
/*!40000 ALTER TABLE `mdl_mnet_host` DISABLE KEYS */;
INSERT INTO `mdl_mnet_host` VALUES (1,0,'http://localhost:80','127.0.0.1','','',0,0,0,0,0,0,NULL,1,0),(2,0,'','','All Hosts','',0,0,0,0,0,0,NULL,1,0);
/*!40000 ALTER TABLE `mdl_mnet_host` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_mnet_host2service`
--

DROP TABLE IF EXISTS `mdl_mnet_host2service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_mnet_host2service` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `hostid` bigint(10) NOT NULL DEFAULT 0,
  `serviceid` bigint(10) NOT NULL DEFAULT 0,
  `publish` tinyint(1) NOT NULL DEFAULT 0,
  `subscribe` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_mnethost_hosser_uix` (`hostid`,`serviceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Information about the services for a given host';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_mnet_host2service`
--

LOCK TABLES `mdl_mnet_host2service` WRITE;
/*!40000 ALTER TABLE `mdl_mnet_host2service` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_mnet_host2service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_mnet_log`
--

DROP TABLE IF EXISTS `mdl_mnet_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_mnet_log` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `hostid` bigint(10) NOT NULL DEFAULT 0,
  `remoteid` bigint(10) NOT NULL DEFAULT 0,
  `time` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `ip` varchar(45) NOT NULL DEFAULT '',
  `course` bigint(10) NOT NULL DEFAULT 0,
  `coursename` varchar(40) NOT NULL DEFAULT '',
  `module` varchar(20) NOT NULL DEFAULT '',
  `cmid` bigint(10) NOT NULL DEFAULT 0,
  `action` varchar(40) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL DEFAULT '',
  `info` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_mnetlog_hosusecou_ix` (`hostid`,`userid`,`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Store session data from users migrating to other sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_mnet_log`
--

LOCK TABLES `mdl_mnet_log` WRITE;
/*!40000 ALTER TABLE `mdl_mnet_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_mnet_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_mnet_remote_rpc`
--

DROP TABLE IF EXISTS `mdl_mnet_remote_rpc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_mnet_remote_rpc` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `functionname` varchar(40) NOT NULL DEFAULT '',
  `xmlrpcpath` varchar(80) NOT NULL DEFAULT '',
  `plugintype` varchar(20) NOT NULL DEFAULT '',
  `pluginname` varchar(20) NOT NULL DEFAULT '',
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='This table describes functions that might be called remotely';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_mnet_remote_rpc`
--

LOCK TABLES `mdl_mnet_remote_rpc` WRITE;
/*!40000 ALTER TABLE `mdl_mnet_remote_rpc` DISABLE KEYS */;
INSERT INTO `mdl_mnet_remote_rpc` VALUES (1,'user_authorise','auth/mnet/auth.php/user_authorise','auth','mnet',1),(2,'keepalive_server','auth/mnet/auth.php/keepalive_server','auth','mnet',1),(3,'kill_children','auth/mnet/auth.php/kill_children','auth','mnet',1),(4,'refresh_log','auth/mnet/auth.php/refresh_log','auth','mnet',1),(5,'fetch_user_image','auth/mnet/auth.php/fetch_user_image','auth','mnet',1),(6,'fetch_theme_info','auth/mnet/auth.php/fetch_theme_info','auth','mnet',1),(7,'update_enrolments','auth/mnet/auth.php/update_enrolments','auth','mnet',1),(8,'keepalive_client','auth/mnet/auth.php/keepalive_client','auth','mnet',1),(9,'kill_child','auth/mnet/auth.php/kill_child','auth','mnet',1),(10,'available_courses','enrol/mnet/enrol.php/available_courses','enrol','mnet',1),(11,'user_enrolments','enrol/mnet/enrol.php/user_enrolments','enrol','mnet',1),(12,'enrol_user','enrol/mnet/enrol.php/enrol_user','enrol','mnet',1),(13,'unenrol_user','enrol/mnet/enrol.php/unenrol_user','enrol','mnet',1),(14,'course_enrolments','enrol/mnet/enrol.php/course_enrolments','enrol','mnet',1),(15,'send_content_intent','portfolio/mahara/lib.php/send_content_intent','portfolio','mahara',1),(16,'send_content_ready','portfolio/mahara/lib.php/send_content_ready','portfolio','mahara',1);
/*!40000 ALTER TABLE `mdl_mnet_remote_rpc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_mnet_remote_service2rpc`
--

DROP TABLE IF EXISTS `mdl_mnet_remote_service2rpc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_mnet_remote_service2rpc` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `serviceid` bigint(10) NOT NULL DEFAULT 0,
  `rpcid` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_mnetremoserv_rpcser_uix` (`rpcid`,`serviceid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='Group functions or methods under a service';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_mnet_remote_service2rpc`
--

LOCK TABLES `mdl_mnet_remote_service2rpc` WRITE;
/*!40000 ALTER TABLE `mdl_mnet_remote_service2rpc` DISABLE KEYS */;
INSERT INTO `mdl_mnet_remote_service2rpc` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,8),(9,2,9),(10,3,10),(11,3,11),(12,3,12),(13,3,13),(14,3,14),(15,4,15),(16,4,16);
/*!40000 ALTER TABLE `mdl_mnet_remote_service2rpc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_mnet_rpc`
--

DROP TABLE IF EXISTS `mdl_mnet_rpc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_mnet_rpc` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `functionname` varchar(40) NOT NULL DEFAULT '',
  `xmlrpcpath` varchar(80) NOT NULL DEFAULT '',
  `plugintype` varchar(20) NOT NULL DEFAULT '',
  `pluginname` varchar(20) NOT NULL DEFAULT '',
  `enabled` tinyint(1) NOT NULL DEFAULT 0,
  `help` longtext NOT NULL,
  `profile` longtext NOT NULL,
  `filename` varchar(100) NOT NULL DEFAULT '',
  `classname` varchar(150) DEFAULT NULL,
  `static` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_mnetrpc_enaxml_ix` (`enabled`,`xmlrpcpath`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='Functions or methods that we may publish or subscribe to';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_mnet_rpc`
--

LOCK TABLES `mdl_mnet_rpc` WRITE;
/*!40000 ALTER TABLE `mdl_mnet_rpc` DISABLE KEYS */;
INSERT INTO `mdl_mnet_rpc` VALUES (1,'user_authorise','auth/mnet/auth.php/user_authorise','auth','mnet',1,'Return user data for the provided token, compare with user_agent string.','a:2:{s:10:\"parameters\";a:2:{i:0;a:3:{s:4:\"name\";s:5:\"token\";s:4:\"type\";s:6:\"string\";s:11:\"description\";s:37:\"The unique ID provided by remotehost.\";}i:1;a:3:{s:4:\"name\";s:9:\"useragent\";s:4:\"type\";s:6:\"string\";s:11:\"description\";s:18:\"User Agent string.\";}}s:6:\"return\";a:2:{s:4:\"type\";s:5:\"array\";s:11:\"description\";s:44:\"$userdata Array of user info for remote host\";}}','auth.php','auth_plugin_mnet',0),(2,'keepalive_server','auth/mnet/auth.php/keepalive_server','auth','mnet',1,'Receives an array of usernames from a remote machine and prods their\nsessions to keep them alive','a:2:{s:10:\"parameters\";a:1:{i:0;a:3:{s:4:\"name\";s:5:\"array\";s:4:\"type\";s:5:\"array\";s:11:\"description\";s:21:\"An array of usernames\";}}s:6:\"return\";a:2:{s:4:\"type\";s:6:\"string\";s:11:\"description\";s:28:\"\"All ok\" or an error message\";}}','auth.php','auth_plugin_mnet',0),(3,'kill_children','auth/mnet/auth.php/kill_children','auth','mnet',1,'The IdP uses this function to kill child sessions on other hosts','a:2:{s:10:\"parameters\";a:2:{i:0;a:3:{s:4:\"name\";s:8:\"username\";s:4:\"type\";s:6:\"string\";s:11:\"description\";s:28:\"Username for session to kill\";}i:1;a:3:{s:4:\"name\";s:9:\"useragent\";s:4:\"type\";s:6:\"string\";s:11:\"description\";s:35:\"SHA1 hash of user agent to look for\";}}s:6:\"return\";a:2:{s:4:\"type\";s:6:\"string\";s:11:\"description\";s:39:\"A plaintext report of what has happened\";}}','auth.php','auth_plugin_mnet',0),(4,'refresh_log','auth/mnet/auth.php/refresh_log','auth','mnet',1,'Receives an array of log entries from an SP and adds them to the mnet_log\ntable','a:2:{s:10:\"parameters\";a:1:{i:0;a:3:{s:4:\"name\";s:5:\"array\";s:4:\"type\";s:5:\"array\";s:11:\"description\";s:21:\"An array of usernames\";}}s:6:\"return\";a:2:{s:4:\"type\";s:6:\"string\";s:11:\"description\";s:28:\"\"All ok\" or an error message\";}}','auth.php','auth_plugin_mnet',0),(5,'fetch_user_image','auth/mnet/auth.php/fetch_user_image','auth','mnet',1,'Returns the user\'s profile image info\nIf the user exists and has a profile picture, the returned array will contain keys:\nf1          - the content of the default 100x100px image\nf1_mimetype - the mimetype of the f1 file\nf2          - the content of the 35x35px variant of the image\nf2_mimetype - the mimetype of the f2 file\nThe mimetype information was added in Moodle 2.0. In Moodle 1.x, images are always jpegs.','a:2:{s:10:\"parameters\";a:1:{i:0;a:3:{s:4:\"name\";s:8:\"username\";s:4:\"type\";s:3:\"int\";s:11:\"description\";s:18:\"The id of the user\";}}s:6:\"return\";a:2:{s:4:\"type\";s:11:\"false|array\";s:11:\"description\";s:84:\"false if user not found, empty array if no picture exists, array with data otherwise\";}}','auth.php','auth_plugin_mnet',0),(6,'fetch_theme_info','auth/mnet/auth.php/fetch_theme_info','auth','mnet',1,'Returns the theme information and logo url as strings.','a:2:{s:10:\"parameters\";a:0:{}s:6:\"return\";a:2:{s:4:\"type\";s:6:\"string\";s:11:\"description\";s:14:\"The theme info\";}}','auth.php','auth_plugin_mnet',0),(7,'update_enrolments','auth/mnet/auth.php/update_enrolments','auth','mnet',1,'Invoke this function _on_ the IDP to update it with enrolment info local to\nthe SP right after calling user_authorise()\nNormally called by the SP after calling user_authorise()','a:2:{s:10:\"parameters\";a:2:{i:0;a:3:{s:4:\"name\";s:8:\"username\";s:4:\"type\";s:6:\"string\";s:11:\"description\";s:12:\"The username\";}i:1;a:3:{s:4:\"name\";s:7:\"courses\";s:4:\"type\";s:5:\"array\";s:11:\"description\";s:75:\"Assoc array of courses following the structure of mnetservice_enrol_courses\";}}s:6:\"return\";a:2:{s:4:\"type\";s:4:\"bool\";s:11:\"description\";s:0:\"\";}}','auth.php','auth_plugin_mnet',0),(8,'keepalive_client','auth/mnet/auth.php/keepalive_client','auth','mnet',1,'Poll the IdP server to let it know that a user it has authenticated is still\nonline','a:2:{s:10:\"parameters\";a:0:{}s:6:\"return\";a:2:{s:4:\"type\";s:4:\"void\";s:11:\"description\";s:0:\"\";}}','auth.php','auth_plugin_mnet',0),(9,'kill_child','auth/mnet/auth.php/kill_child','auth','mnet',1,'When the IdP requests that child sessions are terminated,\nthis function will be called on each of the child hosts. The machine that\ncalls the function (over xmlrpc) provides us with the mnethostid we need.','a:2:{s:10:\"parameters\";a:2:{i:0;a:3:{s:4:\"name\";s:8:\"username\";s:4:\"type\";s:6:\"string\";s:11:\"description\";s:28:\"Username for session to kill\";}i:1;a:3:{s:4:\"name\";s:9:\"useragent\";s:4:\"type\";s:6:\"string\";s:11:\"description\";s:35:\"SHA1 hash of user agent to look for\";}}s:6:\"return\";a:2:{s:4:\"type\";s:4:\"bool\";s:11:\"description\";s:15:\"True on success\";}}','auth.php','auth_plugin_mnet',0),(10,'available_courses','enrol/mnet/enrol.php/available_courses','enrol','mnet',1,'Returns list of courses that we offer to the caller for remote enrolment of their users\nSince Moodle 2.0, courses are made available for MNet peers by creating an instance\nof enrol_mnet plugin for the course. Hidden courses are not returned. If there are two\ninstances - one specific for the host and one for \'All hosts\', the setting of the specific\none is used. The id of the peer is kept in customint1, no other custom fields are used.','a:2:{s:10:\"parameters\";a:0:{}s:6:\"return\";a:2:{s:4:\"type\";s:5:\"array\";s:11:\"description\";s:0:\"\";}}','enrol.php','enrol_mnet_mnetservice_enrol',0),(11,'user_enrolments','enrol/mnet/enrol.php/user_enrolments','enrol','mnet',1,'This method has never been implemented in Moodle MNet API','a:2:{s:10:\"parameters\";a:0:{}s:6:\"return\";a:2:{s:4:\"type\";s:5:\"array\";s:11:\"description\";s:11:\"empty array\";}}','enrol.php','enrol_mnet_mnetservice_enrol',0),(12,'enrol_user','enrol/mnet/enrol.php/enrol_user','enrol','mnet',1,'Enrol remote user to our course\nIf we do not have local record for the remote user in our database,\nit gets created here.','a:2:{s:10:\"parameters\";a:2:{i:0;a:3:{s:4:\"name\";s:8:\"userdata\";s:4:\"type\";s:5:\"array\";s:11:\"description\";s:43:\"user details {@see mnet_fields_to_import()}\";}i:1;a:3:{s:4:\"name\";s:8:\"courseid\";s:4:\"type\";s:3:\"int\";s:11:\"description\";s:19:\"our local course id\";}}s:6:\"return\";a:2:{s:4:\"type\";s:4:\"bool\";s:11:\"description\";s:69:\"true if the enrolment has been successful, throws exception otherwise\";}}','enrol.php','enrol_mnet_mnetservice_enrol',0),(13,'unenrol_user','enrol/mnet/enrol.php/unenrol_user','enrol','mnet',1,'Unenrol remote user from our course\nOnly users enrolled via enrol_mnet plugin can be unenrolled remotely. If the\nremote user is enrolled into the local course via some other enrol plugin\n(enrol_manual for example), the remote host can\'t touch such enrolment. Please\ndo not report this behaviour as bug, it is a feature ;-)','a:2:{s:10:\"parameters\";a:2:{i:0;a:3:{s:4:\"name\";s:8:\"username\";s:4:\"type\";s:6:\"string\";s:11:\"description\";s:18:\"of the remote user\";}i:1;a:3:{s:4:\"name\";s:8:\"courseid\";s:4:\"type\";s:3:\"int\";s:11:\"description\";s:19:\"of our local course\";}}s:6:\"return\";a:2:{s:4:\"type\";s:4:\"bool\";s:11:\"description\";s:71:\"true if the unenrolment has been successful, throws exception otherwise\";}}','enrol.php','enrol_mnet_mnetservice_enrol',0),(14,'course_enrolments','enrol/mnet/enrol.php/course_enrolments','enrol','mnet',1,'Returns a list of users from the client server who are enrolled in our course\nSuitable instance of enrol_mnet must be created in the course. This method will not\nreturn any information about the enrolments in courses that are not available for\nremote enrolment, even if their users are enrolled into them via other plugin\n(note the difference from {@link self::user_enrolments()}).\nThis method will return enrolment information for users from hosts regardless\nthe enrolment plugin. It does not matter if the user was enrolled remotely by\ntheir admin or locally. Once the course is available for remote enrolments, we\nwill tell them everything about their users.\nIn Moodle 1.x the returned array used to be indexed by username. The side effect\nof MDL-19219 fix is that we do not need to use such index and therefore we can\nreturn all enrolment records. MNet clients 1.x will only use the last record for\nthe student, if she is enrolled via multiple plugins.','a:2:{s:10:\"parameters\";a:2:{i:0;a:3:{s:4:\"name\";s:8:\"courseid\";s:4:\"type\";s:3:\"int\";s:11:\"description\";s:16:\"ID of our course\";}i:1;a:3:{s:4:\"name\";s:5:\"roles\";s:4:\"type\";s:12:\"string|array\";s:11:\"description\";s:58:\"comma separated list of role shortnames (or array of them)\";}}s:6:\"return\";a:2:{s:4:\"type\";s:5:\"array\";s:11:\"description\";s:0:\"\";}}','enrol.php','enrol_mnet_mnetservice_enrol',0),(15,'fetch_file','portfolio/mahara/lib.php/fetch_file','portfolio','mahara',1,'xmlrpc (mnet) function to get the file.\nreads in the file and returns it base_64 encoded\nso that it can be enrypted by mnet.','a:2:{s:10:\"parameters\";a:1:{i:0;a:3:{s:4:\"name\";s:5:\"token\";s:4:\"type\";s:6:\"string\";s:11:\"description\";s:56:\"the token recieved previously during send_content_intent\";}}s:6:\"return\";a:2:{s:4:\"type\";s:4:\"void\";s:11:\"description\";s:0:\"\";}}','lib.php','portfolio_plugin_mahara',1);
/*!40000 ALTER TABLE `mdl_mnet_rpc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_mnet_service`
--

DROP TABLE IF EXISTS `mdl_mnet_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_mnet_service` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL DEFAULT '',
  `description` varchar(40) NOT NULL DEFAULT '',
  `apiversion` varchar(10) NOT NULL DEFAULT '',
  `offer` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='A service is a group of functions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_mnet_service`
--

LOCK TABLES `mdl_mnet_service` WRITE;
/*!40000 ALTER TABLE `mdl_mnet_service` DISABLE KEYS */;
INSERT INTO `mdl_mnet_service` VALUES (1,'sso_idp','','1',1),(2,'sso_sp','','1',1),(3,'mnet_enrol','','1',1),(4,'pf','','1',1);
/*!40000 ALTER TABLE `mdl_mnet_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_mnet_service2rpc`
--

DROP TABLE IF EXISTS `mdl_mnet_service2rpc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_mnet_service2rpc` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `serviceid` bigint(10) NOT NULL DEFAULT 0,
  `rpcid` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_mnetserv_rpcser_uix` (`rpcid`,`serviceid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='Group functions or methods under a service';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_mnet_service2rpc`
--

LOCK TABLES `mdl_mnet_service2rpc` WRITE;
/*!40000 ALTER TABLE `mdl_mnet_service2rpc` DISABLE KEYS */;
INSERT INTO `mdl_mnet_service2rpc` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,8),(9,2,9),(10,3,10),(11,3,11),(12,3,12),(13,3,13),(14,3,14),(15,4,15);
/*!40000 ALTER TABLE `mdl_mnet_service2rpc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_mnet_session`
--

DROP TABLE IF EXISTS `mdl_mnet_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_mnet_session` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `username` varchar(100) NOT NULL DEFAULT '',
  `token` varchar(40) NOT NULL DEFAULT '',
  `mnethostid` bigint(10) NOT NULL DEFAULT 0,
  `useragent` varchar(40) NOT NULL DEFAULT '',
  `confirm_timeout` bigint(10) NOT NULL DEFAULT 0,
  `session_id` varchar(40) NOT NULL DEFAULT '',
  `expires` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_mnetsess_tok_uix` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Store session data from users migrating to other sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_mnet_session`
--

LOCK TABLES `mdl_mnet_session` WRITE;
/*!40000 ALTER TABLE `mdl_mnet_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_mnet_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_mnet_sso_access_control`
--

DROP TABLE IF EXISTS `mdl_mnet_sso_access_control`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_mnet_sso_access_control` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL DEFAULT '',
  `mnet_host_id` bigint(10) NOT NULL DEFAULT 0,
  `accessctrl` varchar(20) NOT NULL DEFAULT 'allow',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_mnetssoaccecont_mneuse_uix` (`mnet_host_id`,`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Users by host permitted (or not) to login from a remote prov';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_mnet_sso_access_control`
--

LOCK TABLES `mdl_mnet_sso_access_control` WRITE;
/*!40000 ALTER TABLE `mdl_mnet_sso_access_control` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_mnet_sso_access_control` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_mnetservice_enrol_courses`
--

DROP TABLE IF EXISTS `mdl_mnetservice_enrol_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_mnetservice_enrol_courses` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `hostid` bigint(10) NOT NULL,
  `remoteid` bigint(10) NOT NULL,
  `categoryid` bigint(10) NOT NULL,
  `categoryname` varchar(255) NOT NULL DEFAULT '',
  `sortorder` bigint(10) NOT NULL DEFAULT 0,
  `fullname` varchar(254) NOT NULL DEFAULT '',
  `shortname` varchar(100) NOT NULL DEFAULT '',
  `idnumber` varchar(100) NOT NULL DEFAULT '',
  `summary` longtext NOT NULL,
  `summaryformat` smallint(3) DEFAULT 0,
  `startdate` bigint(10) NOT NULL,
  `roleid` bigint(10) NOT NULL,
  `rolename` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_mnetenrocour_hosrem_uix` (`hostid`,`remoteid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Caches the information fetched via XML-RPC about courses on ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_mnetservice_enrol_courses`
--

LOCK TABLES `mdl_mnetservice_enrol_courses` WRITE;
/*!40000 ALTER TABLE `mdl_mnetservice_enrol_courses` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_mnetservice_enrol_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_mnetservice_enrol_enrolments`
--

DROP TABLE IF EXISTS `mdl_mnetservice_enrol_enrolments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_mnetservice_enrol_enrolments` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `hostid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `remotecourseid` bigint(10) NOT NULL,
  `rolename` varchar(255) NOT NULL DEFAULT '',
  `enroltime` bigint(10) NOT NULL DEFAULT 0,
  `enroltype` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_mnetenroenro_use_ix` (`userid`),
  KEY `mdl_mnetenroenro_hos_ix` (`hostid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Caches the information about enrolments of our local users i';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_mnetservice_enrol_enrolments`
--

LOCK TABLES `mdl_mnetservice_enrol_enrolments` WRITE;
/*!40000 ALTER TABLE `mdl_mnetservice_enrol_enrolments` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_mnetservice_enrol_enrolments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_modules`
--

DROP TABLE IF EXISTS `mdl_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_modules` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `cron` bigint(10) NOT NULL DEFAULT 0,
  `lastcron` bigint(10) NOT NULL DEFAULT 0,
  `search` varchar(255) NOT NULL DEFAULT '',
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `mdl_modu_nam_ix` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='modules available in the site';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_modules`
--

LOCK TABLES `mdl_modules` WRITE;
/*!40000 ALTER TABLE `mdl_modules` DISABLE KEYS */;
INSERT INTO `mdl_modules` VALUES (1,'assign',60,1601073001,'',1),(2,'assignment',60,0,'',0),(3,'book',0,0,'',1),(4,'chat',300,1601073001,'',1),(5,'choice',0,0,'',1),(6,'data',0,0,'',1),(7,'feedback',0,0,'',1),(8,'folder',0,0,'',1),(9,'forum',0,0,'',1),(10,'glossary',0,0,'',1),(11,'imscp',0,0,'',1),(12,'label',0,0,'',1),(13,'lesson',0,0,'',1),(14,'lti',0,0,'',1),(15,'page',0,0,'',1),(16,'quiz',60,1601073001,'',1),(17,'resource',0,0,'',1),(18,'scorm',0,0,'',1),(19,'survey',0,0,'',1),(20,'url',0,0,'',1),(21,'wiki',0,0,'',1),(22,'workshop',60,1601073001,'',1);
/*!40000 ALTER TABLE `mdl_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_my_pages`
--

DROP TABLE IF EXISTS `mdl_my_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_my_pages` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) DEFAULT 0,
  `name` varchar(200) NOT NULL DEFAULT '',
  `private` tinyint(1) NOT NULL DEFAULT 1,
  `sortorder` mediumint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_mypage_usepri_ix` (`userid`,`private`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Extra user pages for the My Moodle system';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_my_pages`
--

LOCK TABLES `mdl_my_pages` WRITE;
/*!40000 ALTER TABLE `mdl_my_pages` DISABLE KEYS */;
INSERT INTO `mdl_my_pages` VALUES (1,NULL,'__default',0,0),(2,NULL,'__default',1,0),(3,2,'__default',1,0);
/*!40000 ALTER TABLE `mdl_my_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_notifications`
--

DROP TABLE IF EXISTS `mdl_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_notifications` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `useridfrom` bigint(10) NOT NULL,
  `useridto` bigint(10) NOT NULL,
  `subject` longtext DEFAULT NULL,
  `fullmessage` longtext DEFAULT NULL,
  `fullmessageformat` tinyint(1) NOT NULL DEFAULT 0,
  `fullmessagehtml` longtext DEFAULT NULL,
  `smallmessage` longtext DEFAULT NULL,
  `component` varchar(100) DEFAULT NULL,
  `eventtype` varchar(100) DEFAULT NULL,
  `contexturl` longtext DEFAULT NULL,
  `contexturlname` longtext DEFAULT NULL,
  `timeread` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_noti_use_ix` (`useridto`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Stores all notifications';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_notifications`
--

LOCK TABLES `mdl_notifications` WRITE;
/*!40000 ALTER TABLE `mdl_notifications` DISABLE KEYS */;
INSERT INTO `mdl_notifications` VALUES (1,2,2,'Moodle updates are available (http://127.0.0.1:80)','Update notifications\n\nThere is a newer Moodle version available!\nMoodle 3.6.10 (Build: 20200511) Version 2018120310 (Stable version)\nMoodle 3.9.2+ (Build: 20200924) Version 2020061502.02 (Stable version)\nMoodle 3.8.5+ (Build: 20200924) Version 2019111805.02 (Stable version)\nMoodle 3.7.8 (Build: 20200914) Version 2019052008 (Stable version)\n\nSee http://127.0.0.1:80/admin/index.php for more details\n\nIt is strongly recommended that you update your site to the latest version to obtain all recent security and bug fixes.\n\nYour Moodle site http://127.0.0.1:80 is configured to automatically check for available updates. You are receiving this message as the administrator of the site. You can disable automatic checks for available updates in Site administration / Server / Update notifications or customise the delivery of this message via your preferences page.\n',2,'<h1>Update notifications</h1>\n<h2>There is a newer Moodle version available!</h2>\n<ul>\n<li><strong>Moodle 3.6.10 (Build: 20200511)</strong> Version 2018120310 (Stable version)</li>\n<li><strong>Moodle 3.9.2+ (Build: 20200924)</strong> Version 2020061502.02 (Stable version)</li>\n<li><strong>Moodle 3.8.5+ (Build: 20200924)</strong> Version 2019111805.02 (Stable version)</li>\n<li><strong>Moodle 3.7.8 (Build: 20200914)</strong> Version 2019052008 (Stable version)</li>\n</ul>\n<p>See <a href=\"http://127.0.0.1:80/admin/index.php\">http://127.0.0.1:80/admin/index.php</a> for more details</p>\n<p>It is strongly recommended that you update your site to the latest version to obtain all recent security and bug fixes.</p>\n<footer><p style=\"font-size:smaller; color:#333;\">Your Moodle site <a href=\"http://127.0.0.1:80\">http://127.0.0.1:80</a> is configured to automatically check for available updates. You are receiving this message as the administrator of the site. You can disable automatic checks for available updates in Site administration / Server / Update notifications or customise the delivery of this message via your preferences page.</p></footer>','Update notifications','moodle','availableupdate',NULL,NULL,NULL,1601071207);
/*!40000 ALTER TABLE `mdl_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_oauth2_access_token`
--

DROP TABLE IF EXISTS `mdl_oauth2_access_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_oauth2_access_token` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  `issuerid` bigint(10) NOT NULL,
  `token` longtext NOT NULL,
  `expires` bigint(10) NOT NULL,
  `scope` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_oautaccetoke_iss_uix` (`issuerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores access tokens for system accounts in order to be able';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_oauth2_access_token`
--

LOCK TABLES `mdl_oauth2_access_token` WRITE;
/*!40000 ALTER TABLE `mdl_oauth2_access_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_oauth2_access_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_oauth2_endpoint`
--

DROP TABLE IF EXISTS `mdl_oauth2_endpoint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_oauth2_endpoint` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `url` longtext NOT NULL,
  `issuerid` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_oautendp_iss_ix` (`issuerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Describes the named endpoint for an oauth2 service.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_oauth2_endpoint`
--

LOCK TABLES `mdl_oauth2_endpoint` WRITE;
/*!40000 ALTER TABLE `mdl_oauth2_endpoint` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_oauth2_endpoint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_oauth2_issuer`
--

DROP TABLE IF EXISTS `mdl_oauth2_issuer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_oauth2_issuer` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `image` longtext NOT NULL,
  `baseurl` longtext NOT NULL,
  `clientid` longtext NOT NULL,
  `clientsecret` longtext NOT NULL,
  `loginscopes` longtext NOT NULL,
  `loginscopesoffline` longtext NOT NULL,
  `loginparams` longtext NOT NULL,
  `loginparamsoffline` longtext NOT NULL,
  `alloweddomains` longtext NOT NULL,
  `scopessupported` longtext DEFAULT NULL,
  `enabled` tinyint(2) NOT NULL DEFAULT 1,
  `showonloginpage` tinyint(2) NOT NULL DEFAULT 1,
  `basicauth` tinyint(2) NOT NULL DEFAULT 0,
  `sortorder` bigint(10) NOT NULL,
  `requireconfirmation` tinyint(2) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED COMMENT='Details for an oauth 2 connect identity issuer.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_oauth2_issuer`
--

LOCK TABLES `mdl_oauth2_issuer` WRITE;
/*!40000 ALTER TABLE `mdl_oauth2_issuer` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_oauth2_issuer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_oauth2_system_account`
--

DROP TABLE IF EXISTS `mdl_oauth2_system_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_oauth2_system_account` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  `issuerid` bigint(10) NOT NULL,
  `refreshtoken` longtext NOT NULL,
  `grantedscopes` longtext NOT NULL,
  `email` longtext DEFAULT NULL,
  `username` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_oautsystacco_iss_uix` (`issuerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stored details used to get an access token as a system user ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_oauth2_system_account`
--

LOCK TABLES `mdl_oauth2_system_account` WRITE;
/*!40000 ALTER TABLE `mdl_oauth2_system_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_oauth2_system_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_oauth2_user_field_mapping`
--

DROP TABLE IF EXISTS `mdl_oauth2_user_field_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_oauth2_user_field_mapping` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `timemodified` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  `issuerid` bigint(10) NOT NULL,
  `externalfield` varchar(64) NOT NULL DEFAULT '',
  `internalfield` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_oautuserfielmapp_issin_uix` (`issuerid`,`internalfield`),
  KEY `mdl_oautuserfielmapp_iss_ix` (`issuerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Mapping of oauth user fields to moodle fields.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_oauth2_user_field_mapping`
--

LOCK TABLES `mdl_oauth2_user_field_mapping` WRITE;
/*!40000 ALTER TABLE `mdl_oauth2_user_field_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_oauth2_user_field_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_page`
--

DROP TABLE IF EXISTS `mdl_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_page` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `intro` longtext DEFAULT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT 0,
  `content` longtext DEFAULT NULL,
  `contentformat` smallint(4) NOT NULL DEFAULT 0,
  `legacyfiles` smallint(4) NOT NULL DEFAULT 0,
  `legacyfileslast` bigint(10) DEFAULT NULL,
  `display` smallint(4) NOT NULL DEFAULT 0,
  `displayoptions` longtext DEFAULT NULL,
  `revision` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_page_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Each record is one page and its config data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_page`
--

LOCK TABLES `mdl_page` WRITE;
/*!40000 ALTER TABLE `mdl_page` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_portfolio_instance`
--

DROP TABLE IF EXISTS `mdl_portfolio_instance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_portfolio_instance` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `plugin` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='base table (not including config data) for instances of port';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_portfolio_instance`
--

LOCK TABLES `mdl_portfolio_instance` WRITE;
/*!40000 ALTER TABLE `mdl_portfolio_instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_portfolio_instance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_portfolio_instance_config`
--

DROP TABLE IF EXISTS `mdl_portfolio_instance_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_portfolio_instance_config` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `instance` bigint(10) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_portinstconf_nam_ix` (`name`),
  KEY `mdl_portinstconf_ins_ix` (`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='config for portfolio plugin instances';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_portfolio_instance_config`
--

LOCK TABLES `mdl_portfolio_instance_config` WRITE;
/*!40000 ALTER TABLE `mdl_portfolio_instance_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_portfolio_instance_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_portfolio_instance_user`
--

DROP TABLE IF EXISTS `mdl_portfolio_instance_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_portfolio_instance_user` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `instance` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_portinstuser_ins_ix` (`instance`),
  KEY `mdl_portinstuser_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='user data for portfolio instances.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_portfolio_instance_user`
--

LOCK TABLES `mdl_portfolio_instance_user` WRITE;
/*!40000 ALTER TABLE `mdl_portfolio_instance_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_portfolio_instance_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_portfolio_log`
--

DROP TABLE IF EXISTS `mdl_portfolio_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_portfolio_log` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `time` bigint(10) NOT NULL,
  `portfolio` bigint(10) NOT NULL,
  `caller_class` varchar(150) NOT NULL DEFAULT '',
  `caller_file` varchar(255) NOT NULL DEFAULT '',
  `caller_component` varchar(255) DEFAULT NULL,
  `caller_sha1` varchar(255) NOT NULL DEFAULT '',
  `tempdataid` bigint(10) NOT NULL DEFAULT 0,
  `returnurl` varchar(255) NOT NULL DEFAULT '',
  `continueurl` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_portlog_use_ix` (`userid`),
  KEY `mdl_portlog_por_ix` (`portfolio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='log of portfolio transfers (used to later check for duplicat';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_portfolio_log`
--

LOCK TABLES `mdl_portfolio_log` WRITE;
/*!40000 ALTER TABLE `mdl_portfolio_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_portfolio_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_portfolio_mahara_queue`
--

DROP TABLE IF EXISTS `mdl_portfolio_mahara_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_portfolio_mahara_queue` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `transferid` bigint(10) NOT NULL,
  `token` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_portmahaqueu_tok_ix` (`token`),
  KEY `mdl_portmahaqueu_tra_ix` (`transferid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='maps mahara tokens to transfer ids';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_portfolio_mahara_queue`
--

LOCK TABLES `mdl_portfolio_mahara_queue` WRITE;
/*!40000 ALTER TABLE `mdl_portfolio_mahara_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_portfolio_mahara_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_portfolio_tempdata`
--

DROP TABLE IF EXISTS `mdl_portfolio_tempdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_portfolio_tempdata` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `data` longtext DEFAULT NULL,
  `expirytime` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `instance` bigint(10) DEFAULT 0,
  `queued` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_porttemp_use_ix` (`userid`),
  KEY `mdl_porttemp_ins_ix` (`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='stores temporary data for portfolio exports. the id of this ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_portfolio_tempdata`
--

LOCK TABLES `mdl_portfolio_tempdata` WRITE;
/*!40000 ALTER TABLE `mdl_portfolio_tempdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_portfolio_tempdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_post`
--

DROP TABLE IF EXISTS `mdl_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_post` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `module` varchar(20) NOT NULL DEFAULT '',
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `courseid` bigint(10) NOT NULL DEFAULT 0,
  `groupid` bigint(10) NOT NULL DEFAULT 0,
  `moduleid` bigint(10) NOT NULL DEFAULT 0,
  `coursemoduleid` bigint(10) NOT NULL DEFAULT 0,
  `subject` varchar(128) NOT NULL DEFAULT '',
  `summary` longtext DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `uniquehash` varchar(255) NOT NULL DEFAULT '',
  `rating` bigint(10) NOT NULL DEFAULT 0,
  `format` bigint(10) NOT NULL DEFAULT 0,
  `summaryformat` tinyint(2) NOT NULL DEFAULT 0,
  `attachment` varchar(100) DEFAULT NULL,
  `publishstate` varchar(20) NOT NULL DEFAULT 'draft',
  `lastmodified` bigint(10) NOT NULL DEFAULT 0,
  `created` bigint(10) NOT NULL DEFAULT 0,
  `usermodified` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_post_iduse_uix` (`id`,`userid`),
  KEY `mdl_post_las_ix` (`lastmodified`),
  KEY `mdl_post_mod_ix` (`module`),
  KEY `mdl_post_sub_ix` (`subject`),
  KEY `mdl_post_use_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Generic post table to hold data blog entries etc in differen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_post`
--

LOCK TABLES `mdl_post` WRITE;
/*!40000 ALTER TABLE `mdl_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_profiling`
--

DROP TABLE IF EXISTS `mdl_profiling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_profiling` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `runid` varchar(32) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `data` longtext NOT NULL,
  `totalexecutiontime` bigint(10) NOT NULL,
  `totalcputime` bigint(10) NOT NULL,
  `totalcalls` bigint(10) NOT NULL,
  `totalmemory` bigint(10) NOT NULL,
  `runreference` tinyint(2) NOT NULL DEFAULT 0,
  `runcomment` varchar(255) NOT NULL DEFAULT '',
  `timecreated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_prof_run_uix` (`runid`),
  KEY `mdl_prof_urlrun_ix` (`url`,`runreference`),
  KEY `mdl_prof_timrun_ix` (`timecreated`,`runreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores the results of all the profiling runs';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_profiling`
--

LOCK TABLES `mdl_profiling` WRITE;
/*!40000 ALTER TABLE `mdl_profiling` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_profiling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_qtype_ddimageortext`
--

DROP TABLE IF EXISTS `mdl_qtype_ddimageortext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_qtype_ddimageortext` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionid` bigint(10) NOT NULL DEFAULT 0,
  `shuffleanswers` smallint(4) NOT NULL DEFAULT 1,
  `correctfeedback` longtext NOT NULL,
  `correctfeedbackformat` tinyint(2) NOT NULL DEFAULT 0,
  `partiallycorrectfeedback` longtext NOT NULL,
  `partiallycorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT 0,
  `incorrectfeedback` longtext NOT NULL,
  `incorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT 0,
  `shownumcorrect` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_qtypddim_que_ix` (`questionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Defines drag and drop (text or images onto a background imag';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_qtype_ddimageortext`
--

LOCK TABLES `mdl_qtype_ddimageortext` WRITE;
/*!40000 ALTER TABLE `mdl_qtype_ddimageortext` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_qtype_ddimageortext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_qtype_ddimageortext_drags`
--

DROP TABLE IF EXISTS `mdl_qtype_ddimageortext_drags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_qtype_ddimageortext_drags` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionid` bigint(10) NOT NULL DEFAULT 0,
  `no` bigint(10) NOT NULL DEFAULT 0,
  `draggroup` bigint(10) NOT NULL DEFAULT 0,
  `infinite` smallint(4) NOT NULL DEFAULT 0,
  `label` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_qtypddimdrag_que_ix` (`questionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Images to drag. Actual file names are not stored here we use';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_qtype_ddimageortext_drags`
--

LOCK TABLES `mdl_qtype_ddimageortext_drags` WRITE;
/*!40000 ALTER TABLE `mdl_qtype_ddimageortext_drags` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_qtype_ddimageortext_drags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_qtype_ddimageortext_drops`
--

DROP TABLE IF EXISTS `mdl_qtype_ddimageortext_drops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_qtype_ddimageortext_drops` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionid` bigint(10) NOT NULL DEFAULT 0,
  `no` bigint(10) NOT NULL DEFAULT 0,
  `xleft` bigint(10) NOT NULL DEFAULT 0,
  `ytop` bigint(10) NOT NULL DEFAULT 0,
  `choice` bigint(10) NOT NULL DEFAULT 0,
  `label` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_qtypddimdrop_que_ix` (`questionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Drop boxes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_qtype_ddimageortext_drops`
--

LOCK TABLES `mdl_qtype_ddimageortext_drops` WRITE;
/*!40000 ALTER TABLE `mdl_qtype_ddimageortext_drops` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_qtype_ddimageortext_drops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_qtype_ddmarker`
--

DROP TABLE IF EXISTS `mdl_qtype_ddmarker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_qtype_ddmarker` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionid` bigint(10) NOT NULL DEFAULT 0,
  `shuffleanswers` smallint(4) NOT NULL DEFAULT 1,
  `correctfeedback` longtext NOT NULL,
  `correctfeedbackformat` tinyint(2) NOT NULL DEFAULT 0,
  `partiallycorrectfeedback` longtext NOT NULL,
  `partiallycorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT 0,
  `incorrectfeedback` longtext NOT NULL,
  `incorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT 0,
  `shownumcorrect` tinyint(2) NOT NULL DEFAULT 0,
  `showmisplaced` smallint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_qtypddma_que_ix` (`questionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Defines drag and drop (text or images onto a background imag';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_qtype_ddmarker`
--

LOCK TABLES `mdl_qtype_ddmarker` WRITE;
/*!40000 ALTER TABLE `mdl_qtype_ddmarker` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_qtype_ddmarker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_qtype_ddmarker_drags`
--

DROP TABLE IF EXISTS `mdl_qtype_ddmarker_drags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_qtype_ddmarker_drags` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionid` bigint(10) NOT NULL DEFAULT 0,
  `no` bigint(10) NOT NULL DEFAULT 0,
  `label` longtext NOT NULL,
  `infinite` smallint(4) NOT NULL DEFAULT 0,
  `noofdrags` bigint(10) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `mdl_qtypddmadrag_que_ix` (`questionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Labels for markers to drag.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_qtype_ddmarker_drags`
--

LOCK TABLES `mdl_qtype_ddmarker_drags` WRITE;
/*!40000 ALTER TABLE `mdl_qtype_ddmarker_drags` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_qtype_ddmarker_drags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_qtype_ddmarker_drops`
--

DROP TABLE IF EXISTS `mdl_qtype_ddmarker_drops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_qtype_ddmarker_drops` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionid` bigint(10) NOT NULL DEFAULT 0,
  `no` bigint(10) NOT NULL DEFAULT 0,
  `shape` varchar(255) DEFAULT NULL,
  `coords` longtext NOT NULL,
  `choice` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_qtypddmadrop_que_ix` (`questionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='drop regions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_qtype_ddmarker_drops`
--

LOCK TABLES `mdl_qtype_ddmarker_drops` WRITE;
/*!40000 ALTER TABLE `mdl_qtype_ddmarker_drops` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_qtype_ddmarker_drops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_qtype_essay_options`
--

DROP TABLE IF EXISTS `mdl_qtype_essay_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_qtype_essay_options` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionid` bigint(10) NOT NULL,
  `responseformat` varchar(16) NOT NULL DEFAULT 'editor',
  `responserequired` tinyint(2) NOT NULL DEFAULT 1,
  `responsefieldlines` smallint(4) NOT NULL DEFAULT 15,
  `attachments` smallint(4) NOT NULL DEFAULT 0,
  `attachmentsrequired` smallint(4) NOT NULL DEFAULT 0,
  `graderinfo` longtext DEFAULT NULL,
  `graderinfoformat` smallint(4) NOT NULL DEFAULT 0,
  `responsetemplate` longtext DEFAULT NULL,
  `responsetemplateformat` smallint(4) NOT NULL DEFAULT 0,
  `filetypeslist` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_qtypessaopti_que_uix` (`questionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Extra options for essay questions.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_qtype_essay_options`
--

LOCK TABLES `mdl_qtype_essay_options` WRITE;
/*!40000 ALTER TABLE `mdl_qtype_essay_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_qtype_essay_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_qtype_match_options`
--

DROP TABLE IF EXISTS `mdl_qtype_match_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_qtype_match_options` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionid` bigint(10) NOT NULL DEFAULT 0,
  `shuffleanswers` smallint(4) NOT NULL DEFAULT 1,
  `correctfeedback` longtext NOT NULL,
  `correctfeedbackformat` tinyint(2) NOT NULL DEFAULT 0,
  `partiallycorrectfeedback` longtext NOT NULL,
  `partiallycorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT 0,
  `incorrectfeedback` longtext NOT NULL,
  `incorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT 0,
  `shownumcorrect` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_qtypmatcopti_que_uix` (`questionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Defines the question-type specific options for matching ques';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_qtype_match_options`
--

LOCK TABLES `mdl_qtype_match_options` WRITE;
/*!40000 ALTER TABLE `mdl_qtype_match_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_qtype_match_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_qtype_match_subquestions`
--

DROP TABLE IF EXISTS `mdl_qtype_match_subquestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_qtype_match_subquestions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionid` bigint(10) NOT NULL DEFAULT 0,
  `questiontext` longtext NOT NULL,
  `questiontextformat` tinyint(2) NOT NULL DEFAULT 0,
  `answertext` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_qtypmatcsubq_que_ix` (`questionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='The subquestions that make up a matching question';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_qtype_match_subquestions`
--

LOCK TABLES `mdl_qtype_match_subquestions` WRITE;
/*!40000 ALTER TABLE `mdl_qtype_match_subquestions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_qtype_match_subquestions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_qtype_multichoice_options`
--

DROP TABLE IF EXISTS `mdl_qtype_multichoice_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_qtype_multichoice_options` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionid` bigint(10) NOT NULL DEFAULT 0,
  `layout` smallint(4) NOT NULL DEFAULT 0,
  `single` smallint(4) NOT NULL DEFAULT 0,
  `shuffleanswers` smallint(4) NOT NULL DEFAULT 1,
  `correctfeedback` longtext NOT NULL,
  `correctfeedbackformat` tinyint(2) NOT NULL DEFAULT 0,
  `partiallycorrectfeedback` longtext NOT NULL,
  `partiallycorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT 0,
  `incorrectfeedback` longtext NOT NULL,
  `incorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT 0,
  `answernumbering` varchar(10) NOT NULL DEFAULT 'abc',
  `shownumcorrect` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_qtypmultopti_que_uix` (`questionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Options for multiple choice questions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_qtype_multichoice_options`
--

LOCK TABLES `mdl_qtype_multichoice_options` WRITE;
/*!40000 ALTER TABLE `mdl_qtype_multichoice_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_qtype_multichoice_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_qtype_randomsamatch_options`
--

DROP TABLE IF EXISTS `mdl_qtype_randomsamatch_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_qtype_randomsamatch_options` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionid` bigint(10) NOT NULL DEFAULT 0,
  `choose` bigint(10) NOT NULL DEFAULT 4,
  `subcats` tinyint(2) NOT NULL DEFAULT 1,
  `correctfeedback` longtext NOT NULL,
  `correctfeedbackformat` tinyint(2) NOT NULL DEFAULT 0,
  `partiallycorrectfeedback` longtext NOT NULL,
  `partiallycorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT 0,
  `incorrectfeedback` longtext NOT NULL,
  `incorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT 0,
  `shownumcorrect` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_qtyprandopti_que_uix` (`questionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Info about a random short-answer matching question';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_qtype_randomsamatch_options`
--

LOCK TABLES `mdl_qtype_randomsamatch_options` WRITE;
/*!40000 ALTER TABLE `mdl_qtype_randomsamatch_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_qtype_randomsamatch_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_qtype_shortanswer_options`
--

DROP TABLE IF EXISTS `mdl_qtype_shortanswer_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_qtype_shortanswer_options` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionid` bigint(10) NOT NULL DEFAULT 0,
  `usecase` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_qtypshoropti_que_uix` (`questionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Options for short answer questions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_qtype_shortanswer_options`
--

LOCK TABLES `mdl_qtype_shortanswer_options` WRITE;
/*!40000 ALTER TABLE `mdl_qtype_shortanswer_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_qtype_shortanswer_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question`
--

DROP TABLE IF EXISTS `mdl_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `category` bigint(10) NOT NULL DEFAULT 0,
  `parent` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `questiontext` longtext NOT NULL,
  `questiontextformat` tinyint(2) NOT NULL DEFAULT 0,
  `generalfeedback` longtext NOT NULL,
  `generalfeedbackformat` tinyint(2) NOT NULL DEFAULT 0,
  `defaultmark` decimal(12,7) NOT NULL DEFAULT 1.0000000,
  `penalty` decimal(12,7) NOT NULL DEFAULT 0.3333333,
  `qtype` varchar(20) NOT NULL DEFAULT '',
  `length` bigint(10) NOT NULL DEFAULT 1,
  `stamp` varchar(255) NOT NULL DEFAULT '',
  `version` varchar(255) NOT NULL DEFAULT '',
  `hidden` tinyint(1) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `createdby` bigint(10) DEFAULT NULL,
  `modifiedby` bigint(10) DEFAULT NULL,
  `idnumber` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_ques_catidn_uix` (`category`,`idnumber`),
  KEY `mdl_ques_qty_ix` (`qtype`),
  KEY `mdl_ques_cat_ix` (`category`),
  KEY `mdl_ques_par_ix` (`parent`),
  KEY `mdl_ques_cre_ix` (`createdby`),
  KEY `mdl_ques_mod_ix` (`modifiedby`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='The questions themselves';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question`
--

LOCK TABLES `mdl_question` WRITE;
/*!40000 ALTER TABLE `mdl_question` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_answers`
--

DROP TABLE IF EXISTS `mdl_question_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_answers` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `question` bigint(10) NOT NULL DEFAULT 0,
  `answer` longtext NOT NULL,
  `answerformat` tinyint(2) NOT NULL DEFAULT 0,
  `fraction` decimal(12,7) NOT NULL DEFAULT 0.0000000,
  `feedback` longtext NOT NULL,
  `feedbackformat` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_quesansw_que_ix` (`question`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Answers, with a fractional grade (0-1) and feedback';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_answers`
--

LOCK TABLES `mdl_question_answers` WRITE;
/*!40000 ALTER TABLE `mdl_question_answers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_attempt_step_data`
--

DROP TABLE IF EXISTS `mdl_question_attempt_step_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_attempt_step_data` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `attemptstepid` bigint(10) NOT NULL,
  `name` varchar(32) NOT NULL DEFAULT '',
  `value` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_quesattestepdata_att_ix` (`attemptstepid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Each question_attempt_step has an associative array of the d';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_attempt_step_data`
--

LOCK TABLES `mdl_question_attempt_step_data` WRITE;
/*!40000 ALTER TABLE `mdl_question_attempt_step_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_attempt_step_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_attempt_steps`
--

DROP TABLE IF EXISTS `mdl_question_attempt_steps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_attempt_steps` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionattemptid` bigint(10) NOT NULL,
  `sequencenumber` bigint(10) NOT NULL,
  `state` varchar(13) NOT NULL DEFAULT '',
  `fraction` decimal(12,7) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `userid` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_quesattestep_queseq_uix` (`questionattemptid`,`sequencenumber`),
  KEY `mdl_quesattestep_que_ix` (`questionattemptid`),
  KEY `mdl_quesattestep_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores one step in in a question attempt. As well as the dat';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_attempt_steps`
--

LOCK TABLES `mdl_question_attempt_steps` WRITE;
/*!40000 ALTER TABLE `mdl_question_attempt_steps` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_attempt_steps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_attempts`
--

DROP TABLE IF EXISTS `mdl_question_attempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_attempts` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionusageid` bigint(10) NOT NULL,
  `slot` bigint(10) NOT NULL,
  `behaviour` varchar(32) NOT NULL DEFAULT '',
  `questionid` bigint(10) NOT NULL,
  `variant` bigint(10) NOT NULL DEFAULT 1,
  `maxmark` decimal(12,7) NOT NULL,
  `minfraction` decimal(12,7) NOT NULL,
  `maxfraction` decimal(12,7) NOT NULL DEFAULT 1.0000000,
  `flagged` tinyint(1) NOT NULL DEFAULT 0,
  `questionsummary` longtext DEFAULT NULL,
  `rightanswer` longtext DEFAULT NULL,
  `responsesummary` longtext DEFAULT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_quesatte_queslo_uix` (`questionusageid`,`slot`),
  KEY `mdl_quesatte_beh_ix` (`behaviour`),
  KEY `mdl_quesatte_que_ix` (`questionid`),
  KEY `mdl_quesatte_que2_ix` (`questionusageid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Each row here corresponds to an attempt at one question, as ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_attempts`
--

LOCK TABLES `mdl_question_attempts` WRITE;
/*!40000 ALTER TABLE `mdl_question_attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_attempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_calculated`
--

DROP TABLE IF EXISTS `mdl_question_calculated`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_calculated` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `question` bigint(10) NOT NULL DEFAULT 0,
  `answer` bigint(10) NOT NULL DEFAULT 0,
  `tolerance` varchar(20) NOT NULL DEFAULT '0.0',
  `tolerancetype` bigint(10) NOT NULL DEFAULT 1,
  `correctanswerlength` bigint(10) NOT NULL DEFAULT 2,
  `correctanswerformat` bigint(10) NOT NULL DEFAULT 2,
  PRIMARY KEY (`id`),
  KEY `mdl_quescalc_ans_ix` (`answer`),
  KEY `mdl_quescalc_que_ix` (`question`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Options for questions of type calculated';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_calculated`
--

LOCK TABLES `mdl_question_calculated` WRITE;
/*!40000 ALTER TABLE `mdl_question_calculated` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_calculated` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_calculated_options`
--

DROP TABLE IF EXISTS `mdl_question_calculated_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_calculated_options` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `question` bigint(10) NOT NULL DEFAULT 0,
  `synchronize` tinyint(2) NOT NULL DEFAULT 0,
  `single` smallint(4) NOT NULL DEFAULT 0,
  `shuffleanswers` smallint(4) NOT NULL DEFAULT 0,
  `correctfeedback` longtext DEFAULT NULL,
  `correctfeedbackformat` tinyint(2) NOT NULL DEFAULT 0,
  `partiallycorrectfeedback` longtext DEFAULT NULL,
  `partiallycorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT 0,
  `incorrectfeedback` longtext DEFAULT NULL,
  `incorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT 0,
  `answernumbering` varchar(10) NOT NULL DEFAULT 'abc',
  `shownumcorrect` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_quescalcopti_que_ix` (`question`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Options for questions of type calculated';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_calculated_options`
--

LOCK TABLES `mdl_question_calculated_options` WRITE;
/*!40000 ALTER TABLE `mdl_question_calculated_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_calculated_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_categories`
--

DROP TABLE IF EXISTS `mdl_question_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_categories` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contextid` bigint(10) NOT NULL DEFAULT 0,
  `info` longtext NOT NULL,
  `infoformat` tinyint(2) NOT NULL DEFAULT 0,
  `stamp` varchar(255) NOT NULL DEFAULT '',
  `parent` bigint(10) NOT NULL DEFAULT 0,
  `sortorder` bigint(10) NOT NULL DEFAULT 999,
  `idnumber` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_quescate_consta_uix` (`contextid`,`stamp`),
  UNIQUE KEY `mdl_quescate_conidn_uix` (`contextid`,`idnumber`),
  KEY `mdl_quescate_con_ix` (`contextid`),
  KEY `mdl_quescate_par_ix` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Categories are for grouping questions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_categories`
--

LOCK TABLES `mdl_question_categories` WRITE;
/*!40000 ALTER TABLE `mdl_question_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_dataset_definitions`
--

DROP TABLE IF EXISTS `mdl_question_dataset_definitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_dataset_definitions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `category` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` bigint(10) NOT NULL DEFAULT 0,
  `options` varchar(255) NOT NULL DEFAULT '',
  `itemcount` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_quesdatadefi_cat_ix` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Organises and stores properties for dataset items';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_dataset_definitions`
--

LOCK TABLES `mdl_question_dataset_definitions` WRITE;
/*!40000 ALTER TABLE `mdl_question_dataset_definitions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_dataset_definitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_dataset_items`
--

DROP TABLE IF EXISTS `mdl_question_dataset_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_dataset_items` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `definition` bigint(10) NOT NULL DEFAULT 0,
  `itemnumber` bigint(10) NOT NULL DEFAULT 0,
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_quesdataitem_def_ix` (`definition`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Individual dataset items';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_dataset_items`
--

LOCK TABLES `mdl_question_dataset_items` WRITE;
/*!40000 ALTER TABLE `mdl_question_dataset_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_dataset_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_datasets`
--

DROP TABLE IF EXISTS `mdl_question_datasets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_datasets` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `question` bigint(10) NOT NULL DEFAULT 0,
  `datasetdefinition` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_quesdata_quedat_ix` (`question`,`datasetdefinition`),
  KEY `mdl_quesdata_que_ix` (`question`),
  KEY `mdl_quesdata_dat_ix` (`datasetdefinition`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Many-many relation between questions and dataset definitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_datasets`
--

LOCK TABLES `mdl_question_datasets` WRITE;
/*!40000 ALTER TABLE `mdl_question_datasets` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_datasets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_ddwtos`
--

DROP TABLE IF EXISTS `mdl_question_ddwtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_ddwtos` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionid` bigint(10) NOT NULL DEFAULT 0,
  `shuffleanswers` smallint(4) NOT NULL DEFAULT 1,
  `correctfeedback` longtext NOT NULL,
  `correctfeedbackformat` tinyint(2) NOT NULL DEFAULT 0,
  `partiallycorrectfeedback` longtext NOT NULL,
  `partiallycorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT 0,
  `incorrectfeedback` longtext NOT NULL,
  `incorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT 0,
  `shownumcorrect` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_quesddwt_que_ix` (`questionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Defines drag and drop (words into sentences) questions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_ddwtos`
--

LOCK TABLES `mdl_question_ddwtos` WRITE;
/*!40000 ALTER TABLE `mdl_question_ddwtos` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_ddwtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_gapselect`
--

DROP TABLE IF EXISTS `mdl_question_gapselect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_gapselect` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionid` bigint(10) NOT NULL DEFAULT 0,
  `shuffleanswers` smallint(4) NOT NULL DEFAULT 1,
  `correctfeedback` longtext NOT NULL,
  `correctfeedbackformat` tinyint(2) NOT NULL DEFAULT 0,
  `partiallycorrectfeedback` longtext NOT NULL,
  `partiallycorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT 0,
  `incorrectfeedback` longtext NOT NULL,
  `incorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT 0,
  `shownumcorrect` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_quesgaps_que_ix` (`questionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Defines select missing words questions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_gapselect`
--

LOCK TABLES `mdl_question_gapselect` WRITE;
/*!40000 ALTER TABLE `mdl_question_gapselect` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_gapselect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_hints`
--

DROP TABLE IF EXISTS `mdl_question_hints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_hints` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionid` bigint(10) NOT NULL,
  `hint` longtext NOT NULL,
  `hintformat` smallint(4) NOT NULL DEFAULT 0,
  `shownumcorrect` tinyint(1) DEFAULT NULL,
  `clearwrong` tinyint(1) DEFAULT NULL,
  `options` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_queshint_que_ix` (`questionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores the the part of the question definition that gives di';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_hints`
--

LOCK TABLES `mdl_question_hints` WRITE;
/*!40000 ALTER TABLE `mdl_question_hints` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_hints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_multianswer`
--

DROP TABLE IF EXISTS `mdl_question_multianswer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_multianswer` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `question` bigint(10) NOT NULL DEFAULT 0,
  `sequence` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_quesmult_que_ix` (`question`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Options for multianswer questions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_multianswer`
--

LOCK TABLES `mdl_question_multianswer` WRITE;
/*!40000 ALTER TABLE `mdl_question_multianswer` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_multianswer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_numerical`
--

DROP TABLE IF EXISTS `mdl_question_numerical`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_numerical` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `question` bigint(10) NOT NULL DEFAULT 0,
  `answer` bigint(10) NOT NULL DEFAULT 0,
  `tolerance` varchar(255) NOT NULL DEFAULT '0.0',
  PRIMARY KEY (`id`),
  KEY `mdl_quesnume_ans_ix` (`answer`),
  KEY `mdl_quesnume_que_ix` (`question`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Options for numerical questions.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_numerical`
--

LOCK TABLES `mdl_question_numerical` WRITE;
/*!40000 ALTER TABLE `mdl_question_numerical` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_numerical` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_numerical_options`
--

DROP TABLE IF EXISTS `mdl_question_numerical_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_numerical_options` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `question` bigint(10) NOT NULL DEFAULT 0,
  `showunits` smallint(4) NOT NULL DEFAULT 0,
  `unitsleft` smallint(4) NOT NULL DEFAULT 0,
  `unitgradingtype` smallint(4) NOT NULL DEFAULT 0,
  `unitpenalty` decimal(12,7) NOT NULL DEFAULT 0.1000000,
  PRIMARY KEY (`id`),
  KEY `mdl_quesnumeopti_que_ix` (`question`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Options for questions of type numerical This table is also u';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_numerical_options`
--

LOCK TABLES `mdl_question_numerical_options` WRITE;
/*!40000 ALTER TABLE `mdl_question_numerical_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_numerical_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_numerical_units`
--

DROP TABLE IF EXISTS `mdl_question_numerical_units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_numerical_units` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `question` bigint(10) NOT NULL DEFAULT 0,
  `multiplier` decimal(38,19) NOT NULL DEFAULT 1.0000000000000000000,
  `unit` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_quesnumeunit_queuni_uix` (`question`,`unit`),
  KEY `mdl_quesnumeunit_que_ix` (`question`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Optional unit options for numerical questions. This table is';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_numerical_units`
--

LOCK TABLES `mdl_question_numerical_units` WRITE;
/*!40000 ALTER TABLE `mdl_question_numerical_units` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_numerical_units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_response_analysis`
--

DROP TABLE IF EXISTS `mdl_question_response_analysis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_response_analysis` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `hashcode` varchar(40) NOT NULL DEFAULT '',
  `whichtries` varchar(255) NOT NULL DEFAULT '',
  `timemodified` bigint(10) NOT NULL,
  `questionid` bigint(10) NOT NULL,
  `variant` bigint(10) DEFAULT NULL,
  `subqid` varchar(100) NOT NULL DEFAULT '',
  `aid` varchar(100) DEFAULT NULL,
  `response` longtext DEFAULT NULL,
  `credit` decimal(15,5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Analysis of student responses given to questions.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_response_analysis`
--

LOCK TABLES `mdl_question_response_analysis` WRITE;
/*!40000 ALTER TABLE `mdl_question_response_analysis` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_response_analysis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_response_count`
--

DROP TABLE IF EXISTS `mdl_question_response_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_response_count` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `analysisid` bigint(10) NOT NULL,
  `try` bigint(10) NOT NULL,
  `rcount` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_quesrespcoun_ana_ix` (`analysisid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Count for each responses for each try at a question.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_response_count`
--

LOCK TABLES `mdl_question_response_count` WRITE;
/*!40000 ALTER TABLE `mdl_question_response_count` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_response_count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_statistics`
--

DROP TABLE IF EXISTS `mdl_question_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_statistics` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `hashcode` varchar(40) NOT NULL DEFAULT '',
  `timemodified` bigint(10) NOT NULL,
  `questionid` bigint(10) NOT NULL,
  `slot` bigint(10) DEFAULT NULL,
  `subquestion` smallint(4) NOT NULL,
  `variant` bigint(10) DEFAULT NULL,
  `s` bigint(10) NOT NULL DEFAULT 0,
  `effectiveweight` decimal(15,5) DEFAULT NULL,
  `negcovar` tinyint(2) NOT NULL DEFAULT 0,
  `discriminationindex` decimal(15,5) DEFAULT NULL,
  `discriminativeefficiency` decimal(15,5) DEFAULT NULL,
  `sd` decimal(15,10) DEFAULT NULL,
  `facility` decimal(15,10) DEFAULT NULL,
  `subquestions` longtext DEFAULT NULL,
  `maxmark` decimal(12,7) DEFAULT NULL,
  `positions` longtext DEFAULT NULL,
  `randomguessscore` decimal(12,7) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Statistics for individual questions used in an activity.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_statistics`
--

LOCK TABLES `mdl_question_statistics` WRITE;
/*!40000 ALTER TABLE `mdl_question_statistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_truefalse`
--

DROP TABLE IF EXISTS `mdl_question_truefalse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_truefalse` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `question` bigint(10) NOT NULL DEFAULT 0,
  `trueanswer` bigint(10) NOT NULL DEFAULT 0,
  `falseanswer` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_questrue_que_ix` (`question`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Options for True-False questions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_truefalse`
--

LOCK TABLES `mdl_question_truefalse` WRITE;
/*!40000 ALTER TABLE `mdl_question_truefalse` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_truefalse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_usages`
--

DROP TABLE IF EXISTS `mdl_question_usages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_usages` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contextid` bigint(10) NOT NULL,
  `component` varchar(255) NOT NULL DEFAULT '',
  `preferredbehaviour` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_quesusag_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='This table''s main purpose it to assign a unique id to each a';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_usages`
--

LOCK TABLES `mdl_question_usages` WRITE;
/*!40000 ALTER TABLE `mdl_question_usages` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_usages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_quiz`
--

DROP TABLE IF EXISTS `mdl_quiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_quiz` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `intro` longtext NOT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT 0,
  `timeopen` bigint(10) NOT NULL DEFAULT 0,
  `timeclose` bigint(10) NOT NULL DEFAULT 0,
  `timelimit` bigint(10) NOT NULL DEFAULT 0,
  `overduehandling` varchar(16) NOT NULL DEFAULT 'autoabandon',
  `graceperiod` bigint(10) NOT NULL DEFAULT 0,
  `preferredbehaviour` varchar(32) NOT NULL DEFAULT '',
  `canredoquestions` smallint(4) NOT NULL DEFAULT 0,
  `attempts` mediumint(6) NOT NULL DEFAULT 0,
  `attemptonlast` smallint(4) NOT NULL DEFAULT 0,
  `grademethod` smallint(4) NOT NULL DEFAULT 1,
  `decimalpoints` smallint(4) NOT NULL DEFAULT 2,
  `questiondecimalpoints` smallint(4) NOT NULL DEFAULT -1,
  `reviewattempt` mediumint(6) NOT NULL DEFAULT 0,
  `reviewcorrectness` mediumint(6) NOT NULL DEFAULT 0,
  `reviewmarks` mediumint(6) NOT NULL DEFAULT 0,
  `reviewspecificfeedback` mediumint(6) NOT NULL DEFAULT 0,
  `reviewgeneralfeedback` mediumint(6) NOT NULL DEFAULT 0,
  `reviewrightanswer` mediumint(6) NOT NULL DEFAULT 0,
  `reviewoverallfeedback` mediumint(6) NOT NULL DEFAULT 0,
  `questionsperpage` bigint(10) NOT NULL DEFAULT 0,
  `navmethod` varchar(16) NOT NULL DEFAULT 'free',
  `shuffleanswers` smallint(4) NOT NULL DEFAULT 0,
  `sumgrades` decimal(10,5) NOT NULL DEFAULT 0.00000,
  `grade` decimal(10,5) NOT NULL DEFAULT 0.00000,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `password` varchar(255) NOT NULL DEFAULT '',
  `subnet` varchar(255) NOT NULL DEFAULT '',
  `browsersecurity` varchar(32) NOT NULL DEFAULT '',
  `delay1` bigint(10) NOT NULL DEFAULT 0,
  `delay2` bigint(10) NOT NULL DEFAULT 0,
  `showuserpicture` smallint(4) NOT NULL DEFAULT 0,
  `showblocks` smallint(4) NOT NULL DEFAULT 0,
  `completionattemptsexhausted` tinyint(1) DEFAULT 0,
  `completionpass` tinyint(1) DEFAULT 0,
  `allowofflineattempts` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_quiz_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='The settings for each quiz.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_quiz`
--

LOCK TABLES `mdl_quiz` WRITE;
/*!40000 ALTER TABLE `mdl_quiz` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_quiz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_quiz_attempts`
--

DROP TABLE IF EXISTS `mdl_quiz_attempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_quiz_attempts` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `quiz` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `attempt` mediumint(6) NOT NULL DEFAULT 0,
  `uniqueid` bigint(10) NOT NULL DEFAULT 0,
  `layout` longtext NOT NULL,
  `currentpage` bigint(10) NOT NULL DEFAULT 0,
  `preview` smallint(3) NOT NULL DEFAULT 0,
  `state` varchar(16) NOT NULL DEFAULT 'inprogress',
  `timestart` bigint(10) NOT NULL DEFAULT 0,
  `timefinish` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `timemodifiedoffline` bigint(10) NOT NULL DEFAULT 0,
  `timecheckstate` bigint(10) DEFAULT 0,
  `sumgrades` decimal(10,5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_quizatte_quiuseatt_uix` (`quiz`,`userid`,`attempt`),
  UNIQUE KEY `mdl_quizatte_uni_uix` (`uniqueid`),
  KEY `mdl_quizatte_statim_ix` (`state`,`timecheckstate`),
  KEY `mdl_quizatte_qui_ix` (`quiz`),
  KEY `mdl_quizatte_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores users attempts at quizzes.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_quiz_attempts`
--

LOCK TABLES `mdl_quiz_attempts` WRITE;
/*!40000 ALTER TABLE `mdl_quiz_attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_quiz_attempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_quiz_feedback`
--

DROP TABLE IF EXISTS `mdl_quiz_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_quiz_feedback` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `quizid` bigint(10) NOT NULL DEFAULT 0,
  `feedbacktext` longtext NOT NULL,
  `feedbacktextformat` tinyint(2) NOT NULL DEFAULT 0,
  `mingrade` decimal(10,5) NOT NULL DEFAULT 0.00000,
  `maxgrade` decimal(10,5) NOT NULL DEFAULT 0.00000,
  PRIMARY KEY (`id`),
  KEY `mdl_quizfeed_qui_ix` (`quizid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Feedback given to students based on which grade band their o';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_quiz_feedback`
--

LOCK TABLES `mdl_quiz_feedback` WRITE;
/*!40000 ALTER TABLE `mdl_quiz_feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_quiz_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_quiz_grades`
--

DROP TABLE IF EXISTS `mdl_quiz_grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_quiz_grades` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `quiz` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `grade` decimal(10,5) NOT NULL DEFAULT 0.00000,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_quizgrad_use_ix` (`userid`),
  KEY `mdl_quizgrad_qui_ix` (`quiz`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores the overall grade for each user on the quiz, based on';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_quiz_grades`
--

LOCK TABLES `mdl_quiz_grades` WRITE;
/*!40000 ALTER TABLE `mdl_quiz_grades` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_quiz_grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_quiz_overrides`
--

DROP TABLE IF EXISTS `mdl_quiz_overrides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_quiz_overrides` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `quiz` bigint(10) NOT NULL DEFAULT 0,
  `groupid` bigint(10) DEFAULT NULL,
  `userid` bigint(10) DEFAULT NULL,
  `timeopen` bigint(10) DEFAULT NULL,
  `timeclose` bigint(10) DEFAULT NULL,
  `timelimit` bigint(10) DEFAULT NULL,
  `attempts` mediumint(6) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_quizover_qui_ix` (`quiz`),
  KEY `mdl_quizover_gro_ix` (`groupid`),
  KEY `mdl_quizover_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='The overrides to quiz settings on a per-user and per-group b';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_quiz_overrides`
--

LOCK TABLES `mdl_quiz_overrides` WRITE;
/*!40000 ALTER TABLE `mdl_quiz_overrides` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_quiz_overrides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_quiz_overview_regrades`
--

DROP TABLE IF EXISTS `mdl_quiz_overview_regrades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_quiz_overview_regrades` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionusageid` bigint(10) NOT NULL,
  `slot` bigint(10) NOT NULL,
  `newfraction` decimal(12,7) DEFAULT NULL,
  `oldfraction` decimal(12,7) DEFAULT NULL,
  `regraded` smallint(4) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_quizoverregr_queslo_ix` (`questionusageid`,`slot`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='This table records which question attempts need regrading an';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_quiz_overview_regrades`
--

LOCK TABLES `mdl_quiz_overview_regrades` WRITE;
/*!40000 ALTER TABLE `mdl_quiz_overview_regrades` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_quiz_overview_regrades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_quiz_reports`
--

DROP TABLE IF EXISTS `mdl_quiz_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_quiz_reports` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `displayorder` bigint(10) NOT NULL,
  `capability` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_quizrepo_nam_uix` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Lists all the installed quiz reports and their display order';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_quiz_reports`
--

LOCK TABLES `mdl_quiz_reports` WRITE;
/*!40000 ALTER TABLE `mdl_quiz_reports` DISABLE KEYS */;
INSERT INTO `mdl_quiz_reports` VALUES (1,'grading',6000,'mod/quiz:grade'),(2,'overview',10000,NULL),(3,'responses',9000,NULL),(4,'statistics',8000,'quiz/statistics:view');
/*!40000 ALTER TABLE `mdl_quiz_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_quiz_sections`
--

DROP TABLE IF EXISTS `mdl_quiz_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_quiz_sections` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `quizid` bigint(10) NOT NULL,
  `firstslot` bigint(10) NOT NULL,
  `heading` varchar(1333) DEFAULT NULL,
  `shufflequestions` smallint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_quizsect_quifir_uix` (`quizid`,`firstslot`),
  KEY `mdl_quizsect_qui_ix` (`quizid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores sections of a quiz with section name (heading), from ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_quiz_sections`
--

LOCK TABLES `mdl_quiz_sections` WRITE;
/*!40000 ALTER TABLE `mdl_quiz_sections` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_quiz_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_quiz_slot_tags`
--

DROP TABLE IF EXISTS `mdl_quiz_slot_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_quiz_slot_tags` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `slotid` bigint(10) DEFAULT NULL,
  `tagid` bigint(10) DEFAULT NULL,
  `tagname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_quizslottags_slo_ix` (`slotid`),
  KEY `mdl_quizslottags_tag_ix` (`tagid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores data about the tags that a question must have so that';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_quiz_slot_tags`
--

LOCK TABLES `mdl_quiz_slot_tags` WRITE;
/*!40000 ALTER TABLE `mdl_quiz_slot_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_quiz_slot_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_quiz_slots`
--

DROP TABLE IF EXISTS `mdl_quiz_slots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_quiz_slots` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `slot` bigint(10) NOT NULL,
  `quizid` bigint(10) NOT NULL DEFAULT 0,
  `page` bigint(10) NOT NULL,
  `requireprevious` smallint(4) NOT NULL DEFAULT 0,
  `questionid` bigint(10) NOT NULL DEFAULT 0,
  `questioncategoryid` bigint(10) DEFAULT NULL,
  `includingsubcategories` smallint(4) DEFAULT NULL,
  `maxmark` decimal(12,7) NOT NULL DEFAULT 0.0000000,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_quizslot_quislo_uix` (`quizid`,`slot`),
  KEY `mdl_quizslot_qui_ix` (`quizid`),
  KEY `mdl_quizslot_que_ix` (`questionid`),
  KEY `mdl_quizslot_que2_ix` (`questioncategoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores the question used in a quiz, with the order, and for ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_quiz_slots`
--

LOCK TABLES `mdl_quiz_slots` WRITE;
/*!40000 ALTER TABLE `mdl_quiz_slots` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_quiz_slots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_quiz_statistics`
--

DROP TABLE IF EXISTS `mdl_quiz_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_quiz_statistics` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `hashcode` varchar(40) NOT NULL DEFAULT '',
  `whichattempts` smallint(4) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `firstattemptscount` bigint(10) NOT NULL,
  `highestattemptscount` bigint(10) NOT NULL,
  `lastattemptscount` bigint(10) NOT NULL,
  `allattemptscount` bigint(10) NOT NULL,
  `firstattemptsavg` decimal(15,5) DEFAULT NULL,
  `highestattemptsavg` decimal(15,5) DEFAULT NULL,
  `lastattemptsavg` decimal(15,5) DEFAULT NULL,
  `allattemptsavg` decimal(15,5) DEFAULT NULL,
  `median` decimal(15,5) DEFAULT NULL,
  `standarddeviation` decimal(15,5) DEFAULT NULL,
  `skewness` decimal(15,10) DEFAULT NULL,
  `kurtosis` decimal(15,5) DEFAULT NULL,
  `cic` decimal(15,10) DEFAULT NULL,
  `errorratio` decimal(15,10) DEFAULT NULL,
  `standarderror` decimal(15,10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='table to cache results from analysis done in statistics repo';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_quiz_statistics`
--

LOCK TABLES `mdl_quiz_statistics` WRITE;
/*!40000 ALTER TABLE `mdl_quiz_statistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_quiz_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_rating`
--

DROP TABLE IF EXISTS `mdl_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_rating` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contextid` bigint(10) NOT NULL,
  `component` varchar(100) NOT NULL DEFAULT '',
  `ratingarea` varchar(50) NOT NULL DEFAULT '',
  `itemid` bigint(10) NOT NULL,
  `scaleid` bigint(10) NOT NULL,
  `rating` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_rati_comratconite_ix` (`component`,`ratingarea`,`contextid`,`itemid`),
  KEY `mdl_rati_con_ix` (`contextid`),
  KEY `mdl_rati_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='moodle ratings';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_rating`
--

LOCK TABLES `mdl_rating` WRITE;
/*!40000 ALTER TABLE `mdl_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_registration_hubs`
--

DROP TABLE IF EXISTS `mdl_registration_hubs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_registration_hubs` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) NOT NULL DEFAULT '',
  `hubname` varchar(255) NOT NULL DEFAULT '',
  `huburl` varchar(255) NOT NULL DEFAULT '',
  `confirmed` tinyint(1) NOT NULL DEFAULT 0,
  `secret` varchar(255) DEFAULT NULL,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='hub where the site is registered on with their associated to';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_registration_hubs`
--

LOCK TABLES `mdl_registration_hubs` WRITE;
/*!40000 ALTER TABLE `mdl_registration_hubs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_registration_hubs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_repository`
--

DROP TABLE IF EXISTS `mdl_repository`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_repository` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL DEFAULT '',
  `visible` tinyint(1) DEFAULT 1,
  `sortorder` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='This table contains one entry for every configured external ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_repository`
--

LOCK TABLES `mdl_repository` WRITE;
/*!40000 ALTER TABLE `mdl_repository` DISABLE KEYS */;
INSERT INTO `mdl_repository` VALUES (1,'areafiles',1,1),(2,'local',1,2),(3,'recent',1,3),(4,'upload',1,4),(5,'url',1,5),(6,'user',1,6),(7,'wikimedia',1,7);
/*!40000 ALTER TABLE `mdl_repository` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_repository_instance_config`
--

DROP TABLE IF EXISTS `mdl_repository_instance_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_repository_instance_config` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `instanceid` bigint(10) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='The config for intances';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_repository_instance_config`
--

LOCK TABLES `mdl_repository_instance_config` WRITE;
/*!40000 ALTER TABLE `mdl_repository_instance_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_repository_instance_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_repository_instances`
--

DROP TABLE IF EXISTS `mdl_repository_instances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_repository_instances` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `typeid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `contextid` bigint(10) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `timecreated` bigint(10) DEFAULT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `readonly` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='This table contains one entry for every configured external ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_repository_instances`
--

LOCK TABLES `mdl_repository_instances` WRITE;
/*!40000 ALTER TABLE `mdl_repository_instances` DISABLE KEYS */;
INSERT INTO `mdl_repository_instances` VALUES (1,'',1,0,1,NULL,NULL,1601070850,1601070850,0),(2,'',2,0,1,NULL,NULL,1601070851,1601070851,0),(3,'',3,0,1,NULL,NULL,1601070852,1601070852,0),(4,'',4,0,1,NULL,NULL,1601070852,1601070852,0),(5,'',5,0,1,NULL,NULL,1601070853,1601070853,0),(6,'',6,0,1,NULL,NULL,1601070853,1601070853,0),(7,'',7,0,1,NULL,NULL,1601070853,1601070853,0);
/*!40000 ALTER TABLE `mdl_repository_instances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_repository_onedrive_access`
--

DROP TABLE IF EXISTS `mdl_repository_onedrive_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_repository_onedrive_access` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `timemodified` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  `permissionid` varchar(255) NOT NULL DEFAULT '',
  `itemid` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_repoonedacce_use_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='List of temporary access grants.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_repository_onedrive_access`
--

LOCK TABLES `mdl_repository_onedrive_access` WRITE;
/*!40000 ALTER TABLE `mdl_repository_onedrive_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_repository_onedrive_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_resource`
--

DROP TABLE IF EXISTS `mdl_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_resource` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `intro` longtext DEFAULT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT 0,
  `tobemigrated` smallint(4) NOT NULL DEFAULT 0,
  `legacyfiles` smallint(4) NOT NULL DEFAULT 0,
  `legacyfileslast` bigint(10) DEFAULT NULL,
  `display` smallint(4) NOT NULL DEFAULT 0,
  `displayoptions` longtext DEFAULT NULL,
  `filterfiles` smallint(4) NOT NULL DEFAULT 0,
  `revision` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_reso_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Each record is one resource and its config data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_resource`
--

LOCK TABLES `mdl_resource` WRITE;
/*!40000 ALTER TABLE `mdl_resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_resource_old`
--

DROP TABLE IF EXISTS `mdl_resource_old`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_resource_old` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(30) NOT NULL DEFAULT '',
  `reference` varchar(255) NOT NULL DEFAULT '',
  `intro` longtext DEFAULT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT 0,
  `alltext` longtext NOT NULL,
  `popup` longtext NOT NULL,
  `options` varchar(255) NOT NULL DEFAULT '',
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `oldid` bigint(10) NOT NULL,
  `cmid` bigint(10) DEFAULT NULL,
  `newmodule` varchar(50) DEFAULT NULL,
  `newid` bigint(10) DEFAULT NULL,
  `migrated` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_resoold_old_uix` (`oldid`),
  KEY `mdl_resoold_cmi_ix` (`cmid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='backup of all old resource instances from 1.9';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_resource_old`
--

LOCK TABLES `mdl_resource_old` WRITE;
/*!40000 ALTER TABLE `mdl_resource_old` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_resource_old` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_role`
--

DROP TABLE IF EXISTS `mdl_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_role` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `shortname` varchar(100) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `sortorder` bigint(10) NOT NULL DEFAULT 0,
  `archetype` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_role_sor_uix` (`sortorder`),
  UNIQUE KEY `mdl_role_sho_uix` (`shortname`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='moodle roles';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_role`
--

LOCK TABLES `mdl_role` WRITE;
/*!40000 ALTER TABLE `mdl_role` DISABLE KEYS */;
INSERT INTO `mdl_role` VALUES (1,'','manager','',1,'manager'),(2,'','coursecreator','',2,'coursecreator'),(3,'','editingteacher','',3,'editingteacher'),(4,'','teacher','',4,'teacher'),(5,'','student','',5,'student'),(6,'','guest','',6,'guest'),(7,'','user','',7,'user'),(8,'','frontpage','',8,'frontpage');
/*!40000 ALTER TABLE `mdl_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_role_allow_assign`
--

DROP TABLE IF EXISTS `mdl_role_allow_assign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_role_allow_assign` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `roleid` bigint(10) NOT NULL DEFAULT 0,
  `allowassign` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_rolealloassi_rolall_uix` (`roleid`,`allowassign`),
  KEY `mdl_rolealloassi_rol_ix` (`roleid`),
  KEY `mdl_rolealloassi_all_ix` (`allowassign`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='this defines what role can assign what role';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_role_allow_assign`
--

LOCK TABLES `mdl_role_allow_assign` WRITE;
/*!40000 ALTER TABLE `mdl_role_allow_assign` DISABLE KEYS */;
INSERT INTO `mdl_role_allow_assign` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,3,4),(7,3,5);
/*!40000 ALTER TABLE `mdl_role_allow_assign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_role_allow_override`
--

DROP TABLE IF EXISTS `mdl_role_allow_override`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_role_allow_override` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `roleid` bigint(10) NOT NULL DEFAULT 0,
  `allowoverride` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_rolealloover_rolall_uix` (`roleid`,`allowoverride`),
  KEY `mdl_rolealloover_rol_ix` (`roleid`),
  KEY `mdl_rolealloover_all_ix` (`allowoverride`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='this defines what role can override what role';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_role_allow_override`
--

LOCK TABLES `mdl_role_allow_override` WRITE;
/*!40000 ALTER TABLE `mdl_role_allow_override` DISABLE KEYS */;
INSERT INTO `mdl_role_allow_override` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,3,4),(10,3,5),(11,3,6);
/*!40000 ALTER TABLE `mdl_role_allow_override` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_role_allow_switch`
--

DROP TABLE IF EXISTS `mdl_role_allow_switch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_role_allow_switch` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `roleid` bigint(10) NOT NULL,
  `allowswitch` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_rolealloswit_rolall_uix` (`roleid`,`allowswitch`),
  KEY `mdl_rolealloswit_rol_ix` (`roleid`),
  KEY `mdl_rolealloswit_all_ix` (`allowswitch`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='This table stores which which other roles a user is allowed ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_role_allow_switch`
--

LOCK TABLES `mdl_role_allow_switch` WRITE;
/*!40000 ALTER TABLE `mdl_role_allow_switch` DISABLE KEYS */;
INSERT INTO `mdl_role_allow_switch` VALUES (1,1,3),(2,1,4),(3,1,5),(4,1,6),(5,3,4),(6,3,5),(7,3,6),(8,4,5),(9,4,6);
/*!40000 ALTER TABLE `mdl_role_allow_switch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_role_allow_view`
--

DROP TABLE IF EXISTS `mdl_role_allow_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_role_allow_view` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `roleid` bigint(10) NOT NULL,
  `allowview` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_rolealloview_rolall_uix` (`roleid`,`allowview`),
  KEY `mdl_rolealloview_rol_ix` (`roleid`),
  KEY `mdl_rolealloview_all_ix` (`allowview`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='This table stores which which other roles a user is allowed ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_role_allow_view`
--

LOCK TABLES `mdl_role_allow_view` WRITE;
/*!40000 ALTER TABLE `mdl_role_allow_view` DISABLE KEYS */;
INSERT INTO `mdl_role_allow_view` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,2,2),(10,2,3),(11,2,4),(12,2,5),(13,3,2),(14,3,3),(15,3,4),(16,3,5),(17,4,2),(18,4,3),(19,4,4),(20,4,5),(21,5,2),(22,5,3),(23,5,4),(24,5,5);
/*!40000 ALTER TABLE `mdl_role_allow_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_role_assignments`
--

DROP TABLE IF EXISTS `mdl_role_assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_role_assignments` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `roleid` bigint(10) NOT NULL DEFAULT 0,
  `contextid` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `modifierid` bigint(10) NOT NULL DEFAULT 0,
  `component` varchar(100) NOT NULL DEFAULT '',
  `itemid` bigint(10) NOT NULL DEFAULT 0,
  `sortorder` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_roleassi_sor_ix` (`sortorder`),
  KEY `mdl_roleassi_rolcon_ix` (`roleid`,`contextid`),
  KEY `mdl_roleassi_useconrol_ix` (`userid`,`contextid`,`roleid`),
  KEY `mdl_roleassi_comiteuse_ix` (`component`,`itemid`,`userid`),
  KEY `mdl_roleassi_rol_ix` (`roleid`),
  KEY `mdl_roleassi_con_ix` (`contextid`),
  KEY `mdl_roleassi_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='assigning roles in different context';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_role_assignments`
--

LOCK TABLES `mdl_role_assignments` WRITE;
/*!40000 ALTER TABLE `mdl_role_assignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_role_assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_role_capabilities`
--

DROP TABLE IF EXISTS `mdl_role_capabilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_role_capabilities` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contextid` bigint(10) NOT NULL DEFAULT 0,
  `roleid` bigint(10) NOT NULL DEFAULT 0,
  `capability` varchar(255) NOT NULL DEFAULT '',
  `permission` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `modifierid` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_rolecapa_rolconcap_uix` (`roleid`,`contextid`,`capability`),
  KEY `mdl_rolecapa_rol_ix` (`roleid`),
  KEY `mdl_rolecapa_con_ix` (`contextid`),
  KEY `mdl_rolecapa_mod_ix` (`modifierid`),
  KEY `mdl_rolecapa_cap_ix` (`capability`)
) ENGINE=InnoDB AUTO_INCREMENT=1306 DEFAULT CHARSET=utf8 COMMENT='permission has to be signed, overriding a capability for a p';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_role_capabilities`
--

LOCK TABLES `mdl_role_capabilities` WRITE;
/*!40000 ALTER TABLE `mdl_role_capabilities` DISABLE KEYS */;
INSERT INTO `mdl_role_capabilities` VALUES (1,1,1,'moodle/site:configview',1,1601070775,0),(2,1,2,'moodle/site:configview',1,1601070775,0),(3,1,1,'moodle/site:readallmessages',1,1601070775,0),(4,1,3,'moodle/site:readallmessages',1,1601070775,0),(5,1,1,'moodle/site:manageallmessaging',1,1601070775,0),(6,1,1,'moodle/site:deleteanymessage',1,1601070775,0),(7,1,1,'moodle/site:sendmessage',1,1601070775,0),(8,1,7,'moodle/site:sendmessage',1,1601070775,0),(9,1,7,'moodle/site:deleteownmessage',1,1601070775,0),(10,1,1,'moodle/site:approvecourse',1,1601070775,0),(11,1,3,'moodle/backup:backupcourse',1,1601070775,0),(12,1,1,'moodle/backup:backupcourse',1,1601070775,0),(13,1,3,'moodle/backup:backupsection',1,1601070775,0),(14,1,1,'moodle/backup:backupsection',1,1601070775,0),(15,1,3,'moodle/backup:backupactivity',1,1601070775,0),(16,1,1,'moodle/backup:backupactivity',1,1601070776,0),(17,1,3,'moodle/backup:backuptargethub',1,1601070776,0),(18,1,1,'moodle/backup:backuptargethub',1,1601070776,0),(19,1,3,'moodle/backup:backuptargetimport',1,1601070776,0),(20,1,1,'moodle/backup:backuptargetimport',1,1601070776,0),(21,1,3,'moodle/backup:downloadfile',1,1601070776,0),(22,1,1,'moodle/backup:downloadfile',1,1601070776,0),(23,1,3,'moodle/backup:configure',1,1601070776,0),(24,1,1,'moodle/backup:configure',1,1601070776,0),(25,1,1,'moodle/backup:userinfo',1,1601070776,0),(26,1,1,'moodle/backup:anonymise',1,1601070776,0),(27,1,3,'moodle/restore:restorecourse',1,1601070776,0),(28,1,1,'moodle/restore:restorecourse',1,1601070776,0),(29,1,3,'moodle/restore:restoresection',1,1601070776,0),(30,1,1,'moodle/restore:restoresection',1,1601070776,0),(31,1,3,'moodle/restore:restoreactivity',1,1601070776,0),(32,1,1,'moodle/restore:restoreactivity',1,1601070776,0),(33,1,3,'moodle/restore:viewautomatedfilearea',1,1601070776,0),(34,1,1,'moodle/restore:viewautomatedfilearea',1,1601070776,0),(35,1,3,'moodle/restore:restoretargethub',1,1601070776,0),(36,1,1,'moodle/restore:restoretargethub',1,1601070776,0),(37,1,3,'moodle/restore:restoretargetimport',1,1601070776,0),(38,1,1,'moodle/restore:restoretargetimport',1,1601070776,0),(39,1,3,'moodle/restore:uploadfile',1,1601070776,0),(40,1,1,'moodle/restore:uploadfile',1,1601070776,0),(41,1,3,'moodle/restore:configure',1,1601070776,0),(42,1,1,'moodle/restore:configure',1,1601070776,0),(43,1,2,'moodle/restore:rolldates',1,1601070776,0),(44,1,1,'moodle/restore:rolldates',1,1601070776,0),(45,1,1,'moodle/restore:userinfo',1,1601070776,0),(46,1,1,'moodle/restore:createuser',1,1601070776,0),(47,1,3,'moodle/site:manageblocks',1,1601070776,0),(48,1,1,'moodle/site:manageblocks',1,1601070776,0),(49,1,3,'moodle/site:accessallgroups',1,1601070776,0),(50,1,1,'moodle/site:accessallgroups',1,1601070776,0),(51,1,4,'moodle/site:viewfullnames',1,1601070776,0),(52,1,3,'moodle/site:viewfullnames',1,1601070776,0),(53,1,1,'moodle/site:viewfullnames',1,1601070776,0),(54,1,4,'moodle/site:viewuseridentity',1,1601070776,0),(55,1,3,'moodle/site:viewuseridentity',1,1601070776,0),(56,1,1,'moodle/site:viewuseridentity',1,1601070776,0),(57,1,4,'moodle/site:viewreports',1,1601070776,0),(58,1,3,'moodle/site:viewreports',1,1601070776,0),(59,1,1,'moodle/site:viewreports',1,1601070776,0),(60,1,3,'moodle/site:trustcontent',1,1601070776,0),(61,1,1,'moodle/site:trustcontent',1,1601070776,0),(62,1,1,'moodle/site:uploadusers',1,1601070776,0),(63,1,3,'moodle/filter:manage',1,1601070776,0),(64,1,1,'moodle/filter:manage',1,1601070776,0),(65,1,1,'moodle/user:create',1,1601070776,0),(66,1,1,'moodle/user:delete',1,1601070777,0),(67,1,1,'moodle/user:update',1,1601070777,0),(68,1,6,'moodle/user:viewdetails',1,1601070777,0),(69,1,5,'moodle/user:viewdetails',1,1601070777,0),(70,1,4,'moodle/user:viewdetails',1,1601070777,0),(71,1,3,'moodle/user:viewdetails',1,1601070777,0),(72,1,1,'moodle/user:viewdetails',1,1601070777,0),(73,1,1,'moodle/user:viewalldetails',1,1601070777,0),(74,1,1,'moodle/user:viewlastip',1,1601070777,0),(75,1,4,'moodle/user:viewhiddendetails',1,1601070777,0),(76,1,3,'moodle/user:viewhiddendetails',1,1601070777,0),(77,1,1,'moodle/user:viewhiddendetails',1,1601070777,0),(78,1,1,'moodle/user:loginas',1,1601070777,0),(79,1,1,'moodle/user:managesyspages',1,1601070777,0),(80,1,7,'moodle/user:manageownblocks',1,1601070777,0),(81,1,7,'moodle/user:manageownfiles',1,1601070777,0),(82,1,1,'moodle/my:configsyspages',1,1601070777,0),(83,1,3,'moodle/role:assign',1,1601070777,0),(84,1,1,'moodle/role:assign',1,1601070777,0),(85,1,4,'moodle/role:review',1,1601070777,0),(86,1,3,'moodle/role:review',1,1601070777,0),(87,1,1,'moodle/role:review',1,1601070777,0),(88,1,1,'moodle/role:override',1,1601070777,0),(89,1,3,'moodle/role:safeoverride',1,1601070777,0),(90,1,1,'moodle/role:manage',1,1601070777,0),(91,1,3,'moodle/role:switchroles',1,1601070777,0),(92,1,1,'moodle/role:switchroles',1,1601070777,0),(93,1,1,'moodle/category:manage',1,1601070777,0),(94,1,2,'moodle/category:viewhiddencategories',1,1601070777,0),(95,1,1,'moodle/category:viewhiddencategories',1,1601070777,0),(96,1,1,'moodle/cohort:manage',1,1601070777,0),(97,1,1,'moodle/cohort:assign',1,1601070777,0),(98,1,3,'moodle/cohort:view',1,1601070777,0),(99,1,1,'moodle/cohort:view',1,1601070777,0),(100,1,2,'moodle/course:create',1,1601070777,0),(101,1,1,'moodle/course:create',1,1601070777,0),(102,1,3,'moodle/course:creategroupconversations',1,1601070777,0),(103,1,1,'moodle/course:creategroupconversations',1,1601070777,0),(104,1,7,'moodle/course:request',1,1601070777,0),(105,1,1,'moodle/course:delete',1,1601070777,0),(106,1,3,'moodle/course:update',1,1601070777,0),(107,1,1,'moodle/course:update',1,1601070777,0),(108,1,1,'moodle/course:view',1,1601070777,0),(109,1,3,'moodle/course:enrolreview',1,1601070777,0),(110,1,1,'moodle/course:enrolreview',1,1601070778,0),(111,1,3,'moodle/course:enrolconfig',1,1601070778,0),(112,1,1,'moodle/course:enrolconfig',1,1601070778,0),(113,1,3,'moodle/course:reviewotherusers',1,1601070778,0),(114,1,1,'moodle/course:reviewotherusers',1,1601070778,0),(115,1,4,'moodle/course:bulkmessaging',1,1601070778,0),(116,1,3,'moodle/course:bulkmessaging',1,1601070778,0),(117,1,1,'moodle/course:bulkmessaging',1,1601070778,0),(118,1,4,'moodle/course:viewhiddenuserfields',1,1601070778,0),(119,1,3,'moodle/course:viewhiddenuserfields',1,1601070778,0),(120,1,1,'moodle/course:viewhiddenuserfields',1,1601070778,0),(121,1,2,'moodle/course:viewhiddencourses',1,1601070778,0),(122,1,4,'moodle/course:viewhiddencourses',1,1601070778,0),(123,1,3,'moodle/course:viewhiddencourses',1,1601070778,0),(124,1,1,'moodle/course:viewhiddencourses',1,1601070778,0),(125,1,3,'moodle/course:visibility',1,1601070778,0),(126,1,1,'moodle/course:visibility',1,1601070778,0),(127,1,3,'moodle/course:managefiles',1,1601070778,0),(128,1,1,'moodle/course:managefiles',1,1601070778,0),(129,1,1,'moodle/course:ignoreavailabilityrestrictions',1,1601070778,0),(130,1,2,'moodle/course:ignoreavailabilityrestrictions',1,1601070778,0),(131,1,3,'moodle/course:ignoreavailabilityrestrictions',1,1601070778,0),(132,1,4,'moodle/course:ignoreavailabilityrestrictions',1,1601070778,0),(133,1,3,'moodle/course:manageactivities',1,1601070778,0),(134,1,1,'moodle/course:manageactivities',1,1601070778,0),(135,1,3,'moodle/course:activityvisibility',1,1601070778,0),(136,1,1,'moodle/course:activityvisibility',1,1601070778,0),(137,1,4,'moodle/course:viewhiddenactivities',1,1601070778,0),(138,1,3,'moodle/course:viewhiddenactivities',1,1601070778,0),(139,1,1,'moodle/course:viewhiddenactivities',1,1601070778,0),(140,1,5,'moodle/course:viewparticipants',1,1601070778,0),(141,1,4,'moodle/course:viewparticipants',1,1601070778,0),(142,1,3,'moodle/course:viewparticipants',1,1601070778,0),(143,1,1,'moodle/course:viewparticipants',1,1601070778,0),(144,1,3,'moodle/course:changefullname',1,1601070778,0),(145,1,1,'moodle/course:changefullname',1,1601070778,0),(146,1,3,'moodle/course:changeshortname',1,1601070778,0),(147,1,1,'moodle/course:changeshortname',1,1601070778,0),(148,1,3,'moodle/course:renameroles',1,1601070778,0),(149,1,1,'moodle/course:renameroles',1,1601070778,0),(150,1,3,'moodle/course:changeidnumber',1,1601070778,0),(151,1,1,'moodle/course:changeidnumber',1,1601070778,0),(152,1,3,'moodle/course:changecategory',1,1601070778,0),(153,1,1,'moodle/course:changecategory',1,1601070778,0),(154,1,3,'moodle/course:changesummary',1,1601070778,0),(155,1,1,'moodle/course:changesummary',1,1601070778,0),(156,1,3,'moodle/course:setforcedlanguage',1,1601070778,0),(157,1,1,'moodle/course:setforcedlanguage',1,1601070778,0),(158,1,1,'moodle/site:viewparticipants',1,1601070778,0),(159,1,5,'moodle/course:isincompletionreports',1,1601070778,0),(160,1,5,'moodle/course:viewscales',1,1601070778,0),(161,1,4,'moodle/course:viewscales',1,1601070778,0),(162,1,3,'moodle/course:viewscales',1,1601070778,0),(163,1,1,'moodle/course:viewscales',1,1601070778,0),(164,1,3,'moodle/course:managescales',1,1601070778,0),(165,1,1,'moodle/course:managescales',1,1601070778,0),(166,1,3,'moodle/course:managegroups',1,1601070778,0),(167,1,1,'moodle/course:managegroups',1,1601070778,0),(168,1,3,'moodle/course:reset',1,1601070778,0),(169,1,1,'moodle/course:reset',1,1601070779,0),(170,1,3,'moodle/course:viewsuspendedusers',1,1601070779,0),(171,1,1,'moodle/course:viewsuspendedusers',1,1601070779,0),(172,1,1,'moodle/course:tag',1,1601070779,0),(173,1,3,'moodle/course:tag',1,1601070779,0),(174,1,6,'moodle/blog:view',1,1601070779,0),(175,1,7,'moodle/blog:view',1,1601070779,0),(176,1,5,'moodle/blog:view',1,1601070779,0),(177,1,4,'moodle/blog:view',1,1601070779,0),(178,1,3,'moodle/blog:view',1,1601070779,0),(179,1,1,'moodle/blog:view',1,1601070779,0),(180,1,6,'moodle/blog:search',1,1601070779,0),(181,1,7,'moodle/blog:search',1,1601070779,0),(182,1,5,'moodle/blog:search',1,1601070779,0),(183,1,4,'moodle/blog:search',1,1601070779,0),(184,1,3,'moodle/blog:search',1,1601070779,0),(185,1,1,'moodle/blog:search',1,1601070779,0),(186,1,1,'moodle/blog:viewdrafts',1,1601070779,0),(187,1,7,'moodle/blog:create',1,1601070779,0),(188,1,1,'moodle/blog:create',1,1601070779,0),(189,1,4,'moodle/blog:manageentries',1,1601070779,0),(190,1,3,'moodle/blog:manageentries',1,1601070779,0),(191,1,1,'moodle/blog:manageentries',1,1601070779,0),(192,1,5,'moodle/blog:manageexternal',1,1601070779,0),(193,1,7,'moodle/blog:manageexternal',1,1601070779,0),(194,1,4,'moodle/blog:manageexternal',1,1601070779,0),(195,1,3,'moodle/blog:manageexternal',1,1601070779,0),(196,1,1,'moodle/blog:manageexternal',1,1601070779,0),(197,1,7,'moodle/calendar:manageownentries',1,1601070779,0),(198,1,1,'moodle/calendar:manageownentries',1,1601070779,0),(199,1,4,'moodle/calendar:managegroupentries',1,1601070779,0),(200,1,3,'moodle/calendar:managegroupentries',1,1601070779,0),(201,1,1,'moodle/calendar:managegroupentries',1,1601070779,0),(202,1,4,'moodle/calendar:manageentries',1,1601070779,0),(203,1,3,'moodle/calendar:manageentries',1,1601070779,0),(204,1,1,'moodle/calendar:manageentries',1,1601070779,0),(205,1,1,'moodle/user:editprofile',1,1601070779,0),(206,1,6,'moodle/user:editownprofile',-1000,1601070779,0),(207,1,7,'moodle/user:editownprofile',1,1601070779,0),(208,1,1,'moodle/user:editownprofile',1,1601070779,0),(209,1,6,'moodle/user:changeownpassword',-1000,1601070779,0),(210,1,7,'moodle/user:changeownpassword',1,1601070779,0),(211,1,1,'moodle/user:changeownpassword',1,1601070779,0),(212,1,5,'moodle/user:readuserposts',1,1601070779,0),(213,1,4,'moodle/user:readuserposts',1,1601070779,0),(214,1,3,'moodle/user:readuserposts',1,1601070779,0),(215,1,1,'moodle/user:readuserposts',1,1601070779,0),(216,1,5,'moodle/user:readuserblogs',1,1601070779,0),(217,1,4,'moodle/user:readuserblogs',1,1601070779,0),(218,1,3,'moodle/user:readuserblogs',1,1601070779,0),(219,1,1,'moodle/user:readuserblogs',1,1601070779,0),(220,1,1,'moodle/user:editmessageprofile',1,1601070779,0),(221,1,6,'moodle/user:editownmessageprofile',-1000,1601070779,0),(222,1,7,'moodle/user:editownmessageprofile',1,1601070779,0),(223,1,1,'moodle/user:editownmessageprofile',1,1601070779,0),(224,1,3,'moodle/question:managecategory',1,1601070779,0),(225,1,1,'moodle/question:managecategory',1,1601070780,0),(226,1,3,'moodle/question:add',1,1601070780,0),(227,1,1,'moodle/question:add',1,1601070780,0),(228,1,3,'moodle/question:editmine',1,1601070780,0),(229,1,1,'moodle/question:editmine',1,1601070780,0),(230,1,3,'moodle/question:editall',1,1601070780,0),(231,1,1,'moodle/question:editall',1,1601070780,0),(232,1,3,'moodle/question:viewmine',1,1601070780,0),(233,1,1,'moodle/question:viewmine',1,1601070780,0),(234,1,3,'moodle/question:viewall',1,1601070780,0),(235,1,1,'moodle/question:viewall',1,1601070780,0),(236,1,3,'moodle/question:usemine',1,1601070780,0),(237,1,1,'moodle/question:usemine',1,1601070780,0),(238,1,3,'moodle/question:useall',1,1601070780,0),(239,1,1,'moodle/question:useall',1,1601070780,0),(240,1,3,'moodle/question:movemine',1,1601070780,0),(241,1,1,'moodle/question:movemine',1,1601070780,0),(242,1,3,'moodle/question:moveall',1,1601070780,0),(243,1,1,'moodle/question:moveall',1,1601070780,0),(244,1,1,'moodle/question:config',1,1601070780,0),(245,1,5,'moodle/question:flag',1,1601070780,0),(246,1,4,'moodle/question:flag',1,1601070780,0),(247,1,3,'moodle/question:flag',1,1601070780,0),(248,1,1,'moodle/question:flag',1,1601070780,0),(249,1,3,'moodle/question:tagmine',1,1601070780,0),(250,1,1,'moodle/question:tagmine',1,1601070780,0),(251,1,3,'moodle/question:tagall',1,1601070780,0),(252,1,1,'moodle/question:tagall',1,1601070780,0),(253,1,4,'moodle/site:doclinks',1,1601070780,0),(254,1,3,'moodle/site:doclinks',1,1601070780,0),(255,1,1,'moodle/site:doclinks',1,1601070780,0),(256,1,3,'moodle/course:sectionvisibility',1,1601070780,0),(257,1,1,'moodle/course:sectionvisibility',1,1601070780,0),(258,1,3,'moodle/course:useremail',1,1601070780,0),(259,1,1,'moodle/course:useremail',1,1601070780,0),(260,1,3,'moodle/course:viewhiddensections',1,1601070780,0),(261,1,1,'moodle/course:viewhiddensections',1,1601070780,0),(262,1,3,'moodle/course:setcurrentsection',1,1601070780,0),(263,1,1,'moodle/course:setcurrentsection',1,1601070780,0),(264,1,3,'moodle/course:movesections',1,1601070780,0),(265,1,1,'moodle/course:movesections',1,1601070780,0),(266,1,4,'moodle/grade:viewall',1,1601070781,0),(267,1,3,'moodle/grade:viewall',1,1601070781,0),(268,1,1,'moodle/grade:viewall',1,1601070781,0),(269,1,5,'moodle/grade:view',1,1601070781,0),(270,1,4,'moodle/grade:viewhidden',1,1601070781,0),(271,1,3,'moodle/grade:viewhidden',1,1601070781,0),(272,1,1,'moodle/grade:viewhidden',1,1601070781,0),(273,1,3,'moodle/grade:import',1,1601070781,0),(274,1,1,'moodle/grade:import',1,1601070781,0),(275,1,4,'moodle/grade:export',1,1601070781,0),(276,1,3,'moodle/grade:export',1,1601070781,0),(277,1,1,'moodle/grade:export',1,1601070781,0),(278,1,3,'moodle/grade:manage',1,1601070781,0),(279,1,1,'moodle/grade:manage',1,1601070781,0),(280,1,3,'moodle/grade:edit',1,1601070781,0),(281,1,1,'moodle/grade:edit',1,1601070781,0),(282,1,3,'moodle/grade:managegradingforms',1,1601070781,0),(283,1,1,'moodle/grade:managegradingforms',1,1601070781,0),(284,1,1,'moodle/grade:sharegradingforms',1,1601070781,0),(285,1,1,'moodle/grade:managesharedforms',1,1601070781,0),(286,1,3,'moodle/grade:manageoutcomes',1,1601070781,0),(287,1,1,'moodle/grade:manageoutcomes',1,1601070781,0),(288,1,3,'moodle/grade:manageletters',1,1601070781,0),(289,1,1,'moodle/grade:manageletters',1,1601070781,0),(290,1,3,'moodle/grade:hide',1,1601070781,0),(291,1,1,'moodle/grade:hide',1,1601070781,0),(292,1,3,'moodle/grade:lock',1,1601070781,0),(293,1,1,'moodle/grade:lock',1,1601070781,0),(294,1,3,'moodle/grade:unlock',1,1601070781,0),(295,1,1,'moodle/grade:unlock',1,1601070781,0),(296,1,7,'moodle/my:manageblocks',1,1601070781,0),(297,1,4,'moodle/notes:view',1,1601070781,0),(298,1,3,'moodle/notes:view',1,1601070781,0),(299,1,1,'moodle/notes:view',1,1601070781,0),(300,1,4,'moodle/notes:manage',1,1601070781,0),(301,1,3,'moodle/notes:manage',1,1601070781,0),(302,1,1,'moodle/notes:manage',1,1601070781,0),(303,1,1,'moodle/tag:manage',1,1601070781,0),(304,1,1,'moodle/tag:edit',1,1601070781,0),(305,1,7,'moodle/tag:flag',1,1601070781,0),(306,1,4,'moodle/tag:editblocks',1,1601070781,0),(307,1,3,'moodle/tag:editblocks',1,1601070781,0),(308,1,1,'moodle/tag:editblocks',1,1601070781,0),(309,1,6,'moodle/block:view',1,1601070781,0),(310,1,7,'moodle/block:view',1,1601070781,0),(311,1,5,'moodle/block:view',1,1601070781,0),(312,1,4,'moodle/block:view',1,1601070781,0),(313,1,3,'moodle/block:view',1,1601070781,0),(314,1,3,'moodle/block:edit',1,1601070781,0),(315,1,1,'moodle/block:edit',1,1601070781,0),(316,1,7,'moodle/portfolio:export',1,1601070782,0),(317,1,5,'moodle/portfolio:export',1,1601070782,0),(318,1,4,'moodle/portfolio:export',1,1601070782,0),(319,1,3,'moodle/portfolio:export',1,1601070782,0),(320,1,8,'moodle/comment:view',1,1601070782,0),(321,1,6,'moodle/comment:view',1,1601070782,0),(322,1,7,'moodle/comment:view',1,1601070782,0),(323,1,5,'moodle/comment:view',1,1601070782,0),(324,1,4,'moodle/comment:view',1,1601070782,0),(325,1,3,'moodle/comment:view',1,1601070782,0),(326,1,1,'moodle/comment:view',1,1601070782,0),(327,1,7,'moodle/comment:post',1,1601070782,0),(328,1,5,'moodle/comment:post',1,1601070782,0),(329,1,4,'moodle/comment:post',1,1601070782,0),(330,1,3,'moodle/comment:post',1,1601070782,0),(331,1,1,'moodle/comment:post',1,1601070782,0),(332,1,3,'moodle/comment:delete',1,1601070782,0),(333,1,1,'moodle/comment:delete',1,1601070782,0),(334,1,1,'moodle/webservice:createtoken',1,1601070782,0),(335,1,7,'moodle/webservice:createmobiletoken',1,1601070782,0),(336,1,7,'moodle/rating:view',1,1601070782,0),(337,1,5,'moodle/rating:view',1,1601070782,0),(338,1,4,'moodle/rating:view',1,1601070782,0),(339,1,3,'moodle/rating:view',1,1601070782,0),(340,1,1,'moodle/rating:view',1,1601070782,0),(341,1,7,'moodle/rating:viewany',1,1601070782,0),(342,1,5,'moodle/rating:viewany',1,1601070782,0),(343,1,4,'moodle/rating:viewany',1,1601070782,0),(344,1,3,'moodle/rating:viewany',1,1601070782,0),(345,1,1,'moodle/rating:viewany',1,1601070782,0),(346,1,7,'moodle/rating:viewall',1,1601070782,0),(347,1,5,'moodle/rating:viewall',1,1601070782,0),(348,1,4,'moodle/rating:viewall',1,1601070782,0),(349,1,3,'moodle/rating:viewall',1,1601070782,0),(350,1,1,'moodle/rating:viewall',1,1601070782,0),(351,1,7,'moodle/rating:rate',1,1601070782,0),(352,1,5,'moodle/rating:rate',1,1601070782,0),(353,1,4,'moodle/rating:rate',1,1601070782,0),(354,1,3,'moodle/rating:rate',1,1601070782,0),(355,1,1,'moodle/rating:rate',1,1601070782,0),(356,1,1,'moodle/course:publish',1,1601070782,0),(357,1,4,'moodle/course:markcomplete',1,1601070782,0),(358,1,3,'moodle/course:markcomplete',1,1601070782,0),(359,1,1,'moodle/course:markcomplete',1,1601070782,0),(360,1,4,'moodle/course:overridecompletion',1,1601070782,0),(361,1,3,'moodle/course:overridecompletion',1,1601070782,0),(362,1,1,'moodle/course:overridecompletion',1,1601070782,0),(363,1,1,'moodle/community:add',1,1601070782,0),(364,1,4,'moodle/community:add',1,1601070782,0),(365,1,3,'moodle/community:add',1,1601070783,0),(366,1,1,'moodle/community:download',1,1601070783,0),(367,1,3,'moodle/community:download',1,1601070783,0),(368,1,1,'moodle/badges:manageglobalsettings',1,1601070783,0),(369,1,7,'moodle/badges:viewbadges',1,1601070783,0),(370,1,7,'moodle/badges:manageownbadges',1,1601070783,0),(371,1,7,'moodle/badges:viewotherbadges',1,1601070783,0),(372,1,7,'moodle/badges:earnbadge',1,1601070783,0),(373,1,1,'moodle/badges:createbadge',1,1601070783,0),(374,1,3,'moodle/badges:createbadge',1,1601070783,0),(375,1,1,'moodle/badges:deletebadge',1,1601070783,0),(376,1,3,'moodle/badges:deletebadge',1,1601070783,0),(377,1,1,'moodle/badges:configuredetails',1,1601070783,0),(378,1,3,'moodle/badges:configuredetails',1,1601070783,0),(379,1,1,'moodle/badges:configurecriteria',1,1601070783,0),(380,1,3,'moodle/badges:configurecriteria',1,1601070783,0),(381,1,1,'moodle/badges:configuremessages',1,1601070783,0),(382,1,3,'moodle/badges:configuremessages',1,1601070783,0),(383,1,1,'moodle/badges:awardbadge',1,1601070783,0),(384,1,4,'moodle/badges:awardbadge',1,1601070783,0),(385,1,3,'moodle/badges:awardbadge',1,1601070783,0),(386,1,1,'moodle/badges:revokebadge',1,1601070783,0),(387,1,4,'moodle/badges:revokebadge',1,1601070783,0),(388,1,3,'moodle/badges:revokebadge',1,1601070783,0),(389,1,1,'moodle/badges:viewawarded',1,1601070783,0),(390,1,4,'moodle/badges:viewawarded',1,1601070783,0),(391,1,3,'moodle/badges:viewawarded',1,1601070783,0),(392,1,6,'moodle/search:query',1,1601070783,0),(393,1,7,'moodle/search:query',1,1601070783,0),(394,1,5,'moodle/search:query',1,1601070783,0),(395,1,4,'moodle/search:query',1,1601070783,0),(396,1,3,'moodle/search:query',1,1601070783,0),(397,1,1,'moodle/search:query',1,1601070783,0),(398,1,1,'moodle/competency:competencymanage',1,1601070783,0),(399,1,7,'moodle/competency:competencyview',1,1601070783,0),(400,1,3,'moodle/competency:competencygrade',1,1601070783,0),(401,1,4,'moodle/competency:competencygrade',1,1601070783,0),(402,1,1,'moodle/competency:competencygrade',1,1601070783,0),(403,1,3,'moodle/competency:coursecompetencymanage',1,1601070783,0),(404,1,1,'moodle/competency:coursecompetencymanage',1,1601070783,0),(405,1,1,'moodle/competency:coursecompetencyconfigure',1,1601070783,0),(406,1,5,'moodle/competency:coursecompetencygradable',1,1601070783,0),(407,1,7,'moodle/competency:coursecompetencyview',1,1601070783,0),(408,1,1,'moodle/competency:planmanage',1,1601070783,0),(409,1,1,'moodle/competency:planmanagedraft',1,1601070783,0),(410,1,1,'moodle/competency:planview',1,1601070783,0),(411,1,1,'moodle/competency:planviewdraft',1,1601070784,0),(412,1,7,'moodle/competency:planviewown',1,1601070784,0),(413,1,1,'moodle/competency:planrequestreview',1,1601070784,0),(414,1,7,'moodle/competency:planrequestreviewown',1,1601070784,0),(415,1,1,'moodle/competency:planreview',1,1601070784,0),(416,1,1,'moodle/competency:plancomment',1,1601070784,0),(417,1,7,'moodle/competency:plancommentown',1,1601070784,0),(418,1,1,'moodle/competency:usercompetencyview',1,1601070784,0),(419,1,3,'moodle/competency:usercompetencyview',1,1601070784,0),(420,1,4,'moodle/competency:usercompetencyview',1,1601070784,0),(421,1,1,'moodle/competency:usercompetencyrequestreview',1,1601070784,0),(422,1,7,'moodle/competency:usercompetencyrequestreviewown',1,1601070784,0),(423,1,1,'moodle/competency:usercompetencyreview',1,1601070784,0),(424,1,1,'moodle/competency:usercompetencycomment',1,1601070784,0),(425,1,7,'moodle/competency:usercompetencycommentown',1,1601070784,0),(426,1,1,'moodle/competency:templatemanage',1,1601070784,0),(427,1,4,'moodle/analytics:listinsights',1,1601070784,0),(428,1,3,'moodle/analytics:listinsights',1,1601070784,0),(429,1,1,'moodle/analytics:listinsights',1,1601070784,0),(430,1,1,'moodle/analytics:managemodels',1,1601070784,0),(431,1,1,'moodle/competency:templateview',1,1601070784,0),(432,1,1,'moodle/competency:userevidencemanage',1,1601070784,0),(433,1,7,'moodle/competency:userevidencemanageown',1,1601070784,0),(434,1,1,'moodle/competency:userevidenceview',1,1601070784,0),(435,1,4,'moodle/site:messageanyuser',1,1601070784,0),(436,1,3,'moodle/site:messageanyuser',1,1601070784,0),(437,1,1,'moodle/site:messageanyuser',1,1601070784,0),(438,1,6,'mod/assign:view',1,1601070812,0),(439,1,5,'mod/assign:view',1,1601070812,0),(440,1,4,'mod/assign:view',1,1601070812,0),(441,1,3,'mod/assign:view',1,1601070812,0),(442,1,1,'mod/assign:view',1,1601070812,0),(443,1,5,'mod/assign:submit',1,1601070812,0),(444,1,4,'mod/assign:grade',1,1601070812,0),(445,1,3,'mod/assign:grade',1,1601070812,0),(446,1,1,'mod/assign:grade',1,1601070812,0),(447,1,4,'mod/assign:exportownsubmission',1,1601070812,0),(448,1,3,'mod/assign:exportownsubmission',1,1601070812,0),(449,1,1,'mod/assign:exportownsubmission',1,1601070812,0),(450,1,5,'mod/assign:exportownsubmission',1,1601070812,0),(451,1,3,'mod/assign:addinstance',1,1601070812,0),(452,1,1,'mod/assign:addinstance',1,1601070812,0),(453,1,4,'mod/assign:grantextension',1,1601070812,0),(454,1,3,'mod/assign:grantextension',1,1601070812,0),(455,1,1,'mod/assign:grantextension',1,1601070812,0),(456,1,3,'mod/assign:revealidentities',1,1601070812,0),(457,1,1,'mod/assign:revealidentities',1,1601070812,0),(458,1,3,'mod/assign:reviewgrades',1,1601070812,0),(459,1,1,'mod/assign:reviewgrades',1,1601070812,0),(460,1,3,'mod/assign:releasegrades',1,1601070813,0),(461,1,1,'mod/assign:releasegrades',1,1601070813,0),(462,1,3,'mod/assign:managegrades',1,1601070813,0),(463,1,1,'mod/assign:managegrades',1,1601070813,0),(464,1,3,'mod/assign:manageallocations',1,1601070813,0),(465,1,1,'mod/assign:manageallocations',1,1601070813,0),(466,1,3,'mod/assign:viewgrades',1,1601070813,0),(467,1,1,'mod/assign:viewgrades',1,1601070813,0),(468,1,4,'mod/assign:viewgrades',1,1601070813,0),(469,1,1,'mod/assign:viewblinddetails',1,1601070813,0),(470,1,4,'mod/assign:receivegradernotifications',1,1601070813,0),(471,1,3,'mod/assign:receivegradernotifications',1,1601070813,0),(472,1,1,'mod/assign:receivegradernotifications',1,1601070813,0),(473,1,3,'mod/assign:manageoverrides',1,1601070813,0),(474,1,1,'mod/assign:manageoverrides',1,1601070813,0),(475,1,6,'mod/assignment:view',1,1601070813,0),(476,1,5,'mod/assignment:view',1,1601070813,0),(477,1,4,'mod/assignment:view',1,1601070813,0),(478,1,3,'mod/assignment:view',1,1601070813,0),(479,1,1,'mod/assignment:view',1,1601070813,0),(480,1,3,'mod/assignment:addinstance',1,1601070813,0),(481,1,1,'mod/assignment:addinstance',1,1601070813,0),(482,1,5,'mod/assignment:submit',1,1601070813,0),(483,1,4,'mod/assignment:grade',1,1601070813,0),(484,1,3,'mod/assignment:grade',1,1601070813,0),(485,1,1,'mod/assignment:grade',1,1601070813,0),(486,1,4,'mod/assignment:exportownsubmission',1,1601070813,0),(487,1,3,'mod/assignment:exportownsubmission',1,1601070813,0),(488,1,1,'mod/assignment:exportownsubmission',1,1601070813,0),(489,1,5,'mod/assignment:exportownsubmission',1,1601070813,0),(490,1,3,'mod/book:addinstance',1,1601070814,0),(491,1,1,'mod/book:addinstance',1,1601070814,0),(492,1,6,'mod/book:read',1,1601070814,0),(493,1,8,'mod/book:read',1,1601070814,0),(494,1,5,'mod/book:read',1,1601070814,0),(495,1,4,'mod/book:read',1,1601070814,0),(496,1,3,'mod/book:read',1,1601070814,0),(497,1,1,'mod/book:read',1,1601070814,0),(498,1,4,'mod/book:viewhiddenchapters',1,1601070814,0),(499,1,3,'mod/book:viewhiddenchapters',1,1601070814,0),(500,1,1,'mod/book:viewhiddenchapters',1,1601070814,0),(501,1,3,'mod/book:edit',1,1601070814,0),(502,1,1,'mod/book:edit',1,1601070814,0),(503,1,3,'mod/chat:addinstance',1,1601070814,0),(504,1,1,'mod/chat:addinstance',1,1601070814,0),(505,1,5,'mod/chat:chat',1,1601070814,0),(506,1,4,'mod/chat:chat',1,1601070814,0),(507,1,3,'mod/chat:chat',1,1601070814,0),(508,1,1,'mod/chat:chat',1,1601070814,0),(509,1,5,'mod/chat:readlog',1,1601070814,0),(510,1,4,'mod/chat:readlog',1,1601070814,0),(511,1,3,'mod/chat:readlog',1,1601070814,0),(512,1,1,'mod/chat:readlog',1,1601070814,0),(513,1,4,'mod/chat:deletelog',1,1601070814,0),(514,1,3,'mod/chat:deletelog',1,1601070814,0),(515,1,1,'mod/chat:deletelog',1,1601070814,0),(516,1,4,'mod/chat:exportparticipatedsession',1,1601070814,0),(517,1,3,'mod/chat:exportparticipatedsession',1,1601070814,0),(518,1,1,'mod/chat:exportparticipatedsession',1,1601070814,0),(519,1,4,'mod/chat:exportsession',1,1601070814,0),(520,1,3,'mod/chat:exportsession',1,1601070814,0),(521,1,1,'mod/chat:exportsession',1,1601070814,0),(522,1,7,'mod/chat:view',1,1601070814,0),(523,1,6,'mod/chat:view',1,1601070814,0),(524,1,3,'mod/choice:addinstance',1,1601070815,0),(525,1,1,'mod/choice:addinstance',1,1601070815,0),(526,1,5,'mod/choice:choose',1,1601070815,0),(527,1,4,'mod/choice:choose',1,1601070815,0),(528,1,3,'mod/choice:choose',1,1601070815,0),(529,1,4,'mod/choice:readresponses',1,1601070815,0),(530,1,3,'mod/choice:readresponses',1,1601070815,0),(531,1,1,'mod/choice:readresponses',1,1601070815,0),(532,1,4,'mod/choice:deleteresponses',1,1601070815,0),(533,1,3,'mod/choice:deleteresponses',1,1601070815,0),(534,1,1,'mod/choice:deleteresponses',1,1601070815,0),(535,1,4,'mod/choice:downloadresponses',1,1601070815,0),(536,1,3,'mod/choice:downloadresponses',1,1601070815,0),(537,1,1,'mod/choice:downloadresponses',1,1601070815,0),(538,1,7,'mod/choice:view',1,1601070815,0),(539,1,6,'mod/choice:view',1,1601070815,0),(540,1,3,'mod/data:addinstance',1,1601070815,0),(541,1,1,'mod/data:addinstance',1,1601070815,0),(542,1,8,'mod/data:viewentry',1,1601070815,0),(543,1,6,'mod/data:viewentry',1,1601070815,0),(544,1,5,'mod/data:viewentry',1,1601070815,0),(545,1,4,'mod/data:viewentry',1,1601070815,0),(546,1,3,'mod/data:viewentry',1,1601070815,0),(547,1,1,'mod/data:viewentry',1,1601070815,0),(548,1,5,'mod/data:writeentry',1,1601070815,0),(549,1,4,'mod/data:writeentry',1,1601070815,0),(550,1,3,'mod/data:writeentry',1,1601070815,0),(551,1,1,'mod/data:writeentry',1,1601070815,0),(552,1,5,'mod/data:comment',1,1601070815,0),(553,1,4,'mod/data:comment',1,1601070815,0),(554,1,3,'mod/data:comment',1,1601070815,0),(555,1,1,'mod/data:comment',1,1601070815,0),(556,1,4,'mod/data:rate',1,1601070815,0),(557,1,3,'mod/data:rate',1,1601070815,0),(558,1,1,'mod/data:rate',1,1601070815,0),(559,1,4,'mod/data:viewrating',1,1601070815,0),(560,1,3,'mod/data:viewrating',1,1601070815,0),(561,1,1,'mod/data:viewrating',1,1601070815,0),(562,1,4,'mod/data:viewanyrating',1,1601070815,0),(563,1,3,'mod/data:viewanyrating',1,1601070815,0),(564,1,1,'mod/data:viewanyrating',1,1601070815,0),(565,1,4,'mod/data:viewallratings',1,1601070815,0),(566,1,3,'mod/data:viewallratings',1,1601070815,0),(567,1,1,'mod/data:viewallratings',1,1601070815,0),(568,1,4,'mod/data:approve',1,1601070815,0),(569,1,3,'mod/data:approve',1,1601070815,0),(570,1,1,'mod/data:approve',1,1601070815,0),(571,1,4,'mod/data:manageentries',1,1601070815,0),(572,1,3,'mod/data:manageentries',1,1601070815,0),(573,1,1,'mod/data:manageentries',1,1601070815,0),(574,1,4,'mod/data:managecomments',1,1601070815,0),(575,1,3,'mod/data:managecomments',1,1601070816,0),(576,1,1,'mod/data:managecomments',1,1601070816,0),(577,1,3,'mod/data:managetemplates',1,1601070816,0),(578,1,1,'mod/data:managetemplates',1,1601070816,0),(579,1,4,'mod/data:viewalluserpresets',1,1601070816,0),(580,1,3,'mod/data:viewalluserpresets',1,1601070816,0),(581,1,1,'mod/data:viewalluserpresets',1,1601070816,0),(582,1,1,'mod/data:manageuserpresets',1,1601070816,0),(583,1,1,'mod/data:exportentry',1,1601070816,0),(584,1,4,'mod/data:exportentry',1,1601070816,0),(585,1,3,'mod/data:exportentry',1,1601070816,0),(586,1,1,'mod/data:exportownentry',1,1601070816,0),(587,1,4,'mod/data:exportownentry',1,1601070816,0),(588,1,3,'mod/data:exportownentry',1,1601070816,0),(589,1,5,'mod/data:exportownentry',1,1601070816,0),(590,1,1,'mod/data:exportallentries',1,1601070816,0),(591,1,4,'mod/data:exportallentries',1,1601070816,0),(592,1,3,'mod/data:exportallentries',1,1601070816,0),(593,1,1,'mod/data:exportuserinfo',1,1601070816,0),(594,1,4,'mod/data:exportuserinfo',1,1601070816,0),(595,1,3,'mod/data:exportuserinfo',1,1601070816,0),(596,1,6,'mod/data:view',1,1601070816,0),(597,1,5,'mod/data:view',1,1601070816,0),(598,1,4,'mod/data:view',1,1601070816,0),(599,1,3,'mod/data:view',1,1601070816,0),(600,1,1,'mod/data:view',1,1601070816,0),(601,1,3,'mod/feedback:addinstance',1,1601070816,0),(602,1,1,'mod/feedback:addinstance',1,1601070816,0),(603,1,6,'mod/feedback:view',1,1601070816,0),(604,1,8,'mod/feedback:view',1,1601070817,0),(605,1,5,'mod/feedback:view',1,1601070817,0),(606,1,4,'mod/feedback:view',1,1601070817,0),(607,1,3,'mod/feedback:view',1,1601070817,0),(608,1,1,'mod/feedback:view',1,1601070817,0),(609,1,8,'mod/feedback:complete',1,1601070817,0),(610,1,5,'mod/feedback:complete',1,1601070817,0),(611,1,5,'mod/feedback:viewanalysepage',1,1601070817,0),(612,1,3,'mod/feedback:viewanalysepage',1,1601070817,0),(613,1,1,'mod/feedback:viewanalysepage',1,1601070817,0),(614,1,3,'mod/feedback:deletesubmissions',1,1601070817,0),(615,1,1,'mod/feedback:deletesubmissions',1,1601070817,0),(616,1,1,'mod/feedback:mapcourse',1,1601070817,0),(617,1,3,'mod/feedback:edititems',1,1601070817,0),(618,1,1,'mod/feedback:edititems',1,1601070817,0),(619,1,3,'mod/feedback:createprivatetemplate',1,1601070817,0),(620,1,1,'mod/feedback:createprivatetemplate',1,1601070817,0),(621,1,3,'mod/feedback:createpublictemplate',1,1601070817,0),(622,1,1,'mod/feedback:createpublictemplate',1,1601070817,0),(623,1,3,'mod/feedback:deletetemplate',1,1601070817,0),(624,1,1,'mod/feedback:deletetemplate',1,1601070817,0),(625,1,4,'mod/feedback:viewreports',1,1601070817,0),(626,1,3,'mod/feedback:viewreports',1,1601070817,0),(627,1,1,'mod/feedback:viewreports',1,1601070817,0),(628,1,4,'mod/feedback:receivemail',1,1601070817,0),(629,1,3,'mod/feedback:receivemail',1,1601070817,0),(630,1,3,'mod/folder:addinstance',1,1601070817,0),(631,1,1,'mod/folder:addinstance',1,1601070817,0),(632,1,6,'mod/folder:view',1,1601070817,0),(633,1,7,'mod/folder:view',1,1601070817,0),(634,1,3,'mod/folder:managefiles',1,1601070817,0),(635,1,3,'mod/forum:addinstance',1,1601070818,0),(636,1,1,'mod/forum:addinstance',1,1601070818,0),(637,1,8,'mod/forum:viewdiscussion',1,1601070818,0),(638,1,6,'mod/forum:viewdiscussion',1,1601070818,0),(639,1,5,'mod/forum:viewdiscussion',1,1601070818,0),(640,1,4,'mod/forum:viewdiscussion',1,1601070818,0),(641,1,3,'mod/forum:viewdiscussion',1,1601070818,0),(642,1,1,'mod/forum:viewdiscussion',1,1601070818,0),(643,1,4,'mod/forum:viewhiddentimedposts',1,1601070818,0),(644,1,3,'mod/forum:viewhiddentimedposts',1,1601070818,0),(645,1,1,'mod/forum:viewhiddentimedposts',1,1601070818,0),(646,1,5,'mod/forum:startdiscussion',1,1601070818,0),(647,1,4,'mod/forum:startdiscussion',1,1601070818,0),(648,1,3,'mod/forum:startdiscussion',1,1601070818,0),(649,1,1,'mod/forum:startdiscussion',1,1601070818,0),(650,1,5,'mod/forum:replypost',1,1601070818,0),(651,1,4,'mod/forum:replypost',1,1601070818,0),(652,1,3,'mod/forum:replypost',1,1601070818,0),(653,1,1,'mod/forum:replypost',1,1601070818,0),(654,1,4,'mod/forum:addnews',1,1601070818,0),(655,1,3,'mod/forum:addnews',1,1601070818,0),(656,1,1,'mod/forum:addnews',1,1601070818,0),(657,1,4,'mod/forum:replynews',1,1601070818,0),(658,1,3,'mod/forum:replynews',1,1601070818,0),(659,1,1,'mod/forum:replynews',1,1601070818,0),(660,1,5,'mod/forum:viewrating',1,1601070818,0),(661,1,4,'mod/forum:viewrating',1,1601070818,0),(662,1,3,'mod/forum:viewrating',1,1601070818,0),(663,1,1,'mod/forum:viewrating',1,1601070818,0),(664,1,4,'mod/forum:viewanyrating',1,1601070818,0),(665,1,3,'mod/forum:viewanyrating',1,1601070818,0),(666,1,1,'mod/forum:viewanyrating',1,1601070818,0),(667,1,4,'mod/forum:viewallratings',1,1601070818,0),(668,1,3,'mod/forum:viewallratings',1,1601070818,0),(669,1,1,'mod/forum:viewallratings',1,1601070818,0),(670,1,4,'mod/forum:rate',1,1601070818,0),(671,1,3,'mod/forum:rate',1,1601070818,0),(672,1,1,'mod/forum:rate',1,1601070818,0),(673,1,5,'mod/forum:createattachment',1,1601070818,0),(674,1,4,'mod/forum:createattachment',1,1601070818,0),(675,1,3,'mod/forum:createattachment',1,1601070818,0),(676,1,1,'mod/forum:createattachment',1,1601070818,0),(677,1,5,'mod/forum:deleteownpost',1,1601070819,0),(678,1,4,'mod/forum:deleteownpost',1,1601070819,0),(679,1,3,'mod/forum:deleteownpost',1,1601070819,0),(680,1,1,'mod/forum:deleteownpost',1,1601070819,0),(681,1,4,'mod/forum:deleteanypost',1,1601070819,0),(682,1,3,'mod/forum:deleteanypost',1,1601070819,0),(683,1,1,'mod/forum:deleteanypost',1,1601070819,0),(684,1,4,'mod/forum:splitdiscussions',1,1601070819,0),(685,1,3,'mod/forum:splitdiscussions',1,1601070819,0),(686,1,1,'mod/forum:splitdiscussions',1,1601070819,0),(687,1,4,'mod/forum:movediscussions',1,1601070819,0),(688,1,3,'mod/forum:movediscussions',1,1601070819,0),(689,1,1,'mod/forum:movediscussions',1,1601070819,0),(690,1,4,'mod/forum:pindiscussions',1,1601070819,0),(691,1,3,'mod/forum:pindiscussions',1,1601070819,0),(692,1,1,'mod/forum:pindiscussions',1,1601070819,0),(693,1,4,'mod/forum:editanypost',1,1601070819,0),(694,1,3,'mod/forum:editanypost',1,1601070819,0),(695,1,1,'mod/forum:editanypost',1,1601070819,0),(696,1,4,'mod/forum:viewqandawithoutposting',1,1601070819,0),(697,1,3,'mod/forum:viewqandawithoutposting',1,1601070819,0),(698,1,1,'mod/forum:viewqandawithoutposting',1,1601070819,0),(699,1,4,'mod/forum:viewsubscribers',1,1601070819,0),(700,1,3,'mod/forum:viewsubscribers',1,1601070819,0),(701,1,1,'mod/forum:viewsubscribers',1,1601070819,0),(702,1,4,'mod/forum:managesubscriptions',1,1601070819,0),(703,1,3,'mod/forum:managesubscriptions',1,1601070819,0),(704,1,1,'mod/forum:managesubscriptions',1,1601070819,0),(705,1,4,'mod/forum:postwithoutthrottling',1,1601070819,0),(706,1,3,'mod/forum:postwithoutthrottling',1,1601070819,0),(707,1,1,'mod/forum:postwithoutthrottling',1,1601070819,0),(708,1,4,'mod/forum:exportdiscussion',1,1601070819,0),(709,1,3,'mod/forum:exportdiscussion',1,1601070819,0),(710,1,1,'mod/forum:exportdiscussion',1,1601070819,0),(711,1,4,'mod/forum:exportpost',1,1601070819,0),(712,1,3,'mod/forum:exportpost',1,1601070819,0),(713,1,1,'mod/forum:exportpost',1,1601070819,0),(714,1,4,'mod/forum:exportownpost',1,1601070819,0),(715,1,3,'mod/forum:exportownpost',1,1601070819,0),(716,1,1,'mod/forum:exportownpost',1,1601070819,0),(717,1,5,'mod/forum:exportownpost',1,1601070819,0),(718,1,4,'mod/forum:addquestion',1,1601070819,0),(719,1,3,'mod/forum:addquestion',1,1601070819,0),(720,1,1,'mod/forum:addquestion',1,1601070819,0),(721,1,5,'mod/forum:allowforcesubscribe',1,1601070819,0),(722,1,4,'mod/forum:allowforcesubscribe',1,1601070819,0),(723,1,3,'mod/forum:allowforcesubscribe',1,1601070819,0),(724,1,8,'mod/forum:allowforcesubscribe',1,1601070819,0),(725,1,4,'mod/forum:canposttomygroups',1,1601070819,0),(726,1,3,'mod/forum:canposttomygroups',1,1601070819,0),(727,1,1,'mod/forum:canposttomygroups',1,1601070819,0),(728,1,4,'mod/forum:canoverridediscussionlock',1,1601070819,0),(729,1,3,'mod/forum:canoverridediscussionlock',1,1601070819,0),(730,1,1,'mod/forum:canoverridediscussionlock',1,1601070819,0),(731,1,3,'mod/glossary:addinstance',1,1601070820,0),(732,1,1,'mod/glossary:addinstance',1,1601070820,0),(733,1,8,'mod/glossary:view',1,1601070820,0),(734,1,6,'mod/glossary:view',1,1601070820,0),(735,1,5,'mod/glossary:view',1,1601070820,0),(736,1,4,'mod/glossary:view',1,1601070820,0),(737,1,3,'mod/glossary:view',1,1601070820,0),(738,1,1,'mod/glossary:view',1,1601070820,0),(739,1,5,'mod/glossary:write',1,1601070820,0),(740,1,4,'mod/glossary:write',1,1601070820,0),(741,1,3,'mod/glossary:write',1,1601070820,0),(742,1,1,'mod/glossary:write',1,1601070820,0),(743,1,4,'mod/glossary:manageentries',1,1601070820,0),(744,1,3,'mod/glossary:manageentries',1,1601070820,0),(745,1,1,'mod/glossary:manageentries',1,1601070820,0),(746,1,4,'mod/glossary:managecategories',1,1601070820,0),(747,1,3,'mod/glossary:managecategories',1,1601070820,0),(748,1,1,'mod/glossary:managecategories',1,1601070820,0),(749,1,5,'mod/glossary:comment',1,1601070820,0),(750,1,4,'mod/glossary:comment',1,1601070820,0),(751,1,3,'mod/glossary:comment',1,1601070820,0),(752,1,1,'mod/glossary:comment',1,1601070820,0),(753,1,4,'mod/glossary:managecomments',1,1601070820,0),(754,1,3,'mod/glossary:managecomments',1,1601070820,0),(755,1,1,'mod/glossary:managecomments',1,1601070820,0),(756,1,4,'mod/glossary:import',1,1601070820,0),(757,1,3,'mod/glossary:import',1,1601070820,0),(758,1,1,'mod/glossary:import',1,1601070820,0),(759,1,4,'mod/glossary:export',1,1601070820,0),(760,1,3,'mod/glossary:export',1,1601070820,0),(761,1,1,'mod/glossary:export',1,1601070820,0),(762,1,4,'mod/glossary:approve',1,1601070820,0),(763,1,3,'mod/glossary:approve',1,1601070820,0),(764,1,1,'mod/glossary:approve',1,1601070820,0),(765,1,4,'mod/glossary:rate',1,1601070820,0),(766,1,3,'mod/glossary:rate',1,1601070820,0),(767,1,1,'mod/glossary:rate',1,1601070820,0),(768,1,4,'mod/glossary:viewrating',1,1601070820,0),(769,1,3,'mod/glossary:viewrating',1,1601070820,0),(770,1,1,'mod/glossary:viewrating',1,1601070820,0),(771,1,4,'mod/glossary:viewanyrating',1,1601070820,0),(772,1,3,'mod/glossary:viewanyrating',1,1601070820,0),(773,1,1,'mod/glossary:viewanyrating',1,1601070820,0),(774,1,4,'mod/glossary:viewallratings',1,1601070820,0),(775,1,3,'mod/glossary:viewallratings',1,1601070820,0),(776,1,1,'mod/glossary:viewallratings',1,1601070820,0),(777,1,4,'mod/glossary:exportentry',1,1601070820,0),(778,1,3,'mod/glossary:exportentry',1,1601070820,0),(779,1,1,'mod/glossary:exportentry',1,1601070820,0),(780,1,4,'mod/glossary:exportownentry',1,1601070820,0),(781,1,3,'mod/glossary:exportownentry',1,1601070820,0),(782,1,1,'mod/glossary:exportownentry',1,1601070820,0),(783,1,5,'mod/glossary:exportownentry',1,1601070820,0),(784,1,6,'mod/imscp:view',1,1601070821,0),(785,1,7,'mod/imscp:view',1,1601070821,0),(786,1,3,'mod/imscp:addinstance',1,1601070821,0),(787,1,1,'mod/imscp:addinstance',1,1601070821,0),(788,1,3,'mod/label:addinstance',1,1601070821,0),(789,1,1,'mod/label:addinstance',1,1601070821,0),(790,1,7,'mod/label:view',1,1601070821,0),(791,1,6,'mod/label:view',1,1601070821,0),(792,1,3,'mod/lesson:addinstance',1,1601070821,0),(793,1,1,'mod/lesson:addinstance',1,1601070821,0),(794,1,3,'mod/lesson:edit',1,1601070821,0),(795,1,1,'mod/lesson:edit',1,1601070821,0),(796,1,4,'mod/lesson:grade',1,1601070821,0),(797,1,3,'mod/lesson:grade',1,1601070821,0),(798,1,1,'mod/lesson:grade',1,1601070821,0),(799,1,4,'mod/lesson:viewreports',1,1601070821,0),(800,1,3,'mod/lesson:viewreports',1,1601070821,0),(801,1,1,'mod/lesson:viewreports',1,1601070821,0),(802,1,4,'mod/lesson:manage',1,1601070822,0),(803,1,3,'mod/lesson:manage',1,1601070822,0),(804,1,1,'mod/lesson:manage',1,1601070822,0),(805,1,3,'mod/lesson:manageoverrides',1,1601070822,0),(806,1,1,'mod/lesson:manageoverrides',1,1601070822,0),(807,1,7,'mod/lesson:view',1,1601070822,0),(808,1,6,'mod/lesson:view',1,1601070822,0),(809,1,5,'mod/lti:view',1,1601070822,0),(810,1,4,'mod/lti:view',1,1601070822,0),(811,1,3,'mod/lti:view',1,1601070822,0),(812,1,1,'mod/lti:view',1,1601070822,0),(813,1,3,'mod/lti:addinstance',1,1601070822,0),(814,1,1,'mod/lti:addinstance',1,1601070822,0),(815,1,4,'mod/lti:manage',1,1601070822,0),(816,1,3,'mod/lti:manage',1,1601070822,0),(817,1,1,'mod/lti:manage',1,1601070822,0),(818,1,3,'mod/lti:addcoursetool',1,1601070822,0),(819,1,1,'mod/lti:addcoursetool',1,1601070822,0),(820,1,3,'mod/lti:requesttooladd',1,1601070822,0),(821,1,1,'mod/lti:requesttooladd',1,1601070822,0),(822,1,6,'mod/page:view',1,1601070822,0),(823,1,7,'mod/page:view',1,1601070822,0),(824,1,3,'mod/page:addinstance',1,1601070822,0),(825,1,1,'mod/page:addinstance',1,1601070823,0),(826,1,6,'mod/quiz:view',1,1601070823,0),(827,1,5,'mod/quiz:view',1,1601070823,0),(828,1,4,'mod/quiz:view',1,1601070823,0),(829,1,3,'mod/quiz:view',1,1601070823,0),(830,1,1,'mod/quiz:view',1,1601070823,0),(831,1,3,'mod/quiz:addinstance',1,1601070823,0),(832,1,1,'mod/quiz:addinstance',1,1601070823,0),(833,1,5,'mod/quiz:attempt',1,1601070823,0),(834,1,5,'mod/quiz:reviewmyattempts',1,1601070823,0),(835,1,3,'mod/quiz:manage',1,1601070823,0),(836,1,1,'mod/quiz:manage',1,1601070823,0),(837,1,3,'mod/quiz:manageoverrides',1,1601070823,0),(838,1,1,'mod/quiz:manageoverrides',1,1601070823,0),(839,1,4,'mod/quiz:preview',1,1601070823,0),(840,1,3,'mod/quiz:preview',1,1601070823,0),(841,1,1,'mod/quiz:preview',1,1601070823,0),(842,1,4,'mod/quiz:grade',1,1601070823,0),(843,1,3,'mod/quiz:grade',1,1601070823,0),(844,1,1,'mod/quiz:grade',1,1601070823,0),(845,1,4,'mod/quiz:regrade',1,1601070823,0),(846,1,3,'mod/quiz:regrade',1,1601070823,0),(847,1,1,'mod/quiz:regrade',1,1601070823,0),(848,1,4,'mod/quiz:viewreports',1,1601070823,0),(849,1,3,'mod/quiz:viewreports',1,1601070823,0),(850,1,1,'mod/quiz:viewreports',1,1601070823,0),(851,1,3,'mod/quiz:deleteattempts',1,1601070823,0),(852,1,1,'mod/quiz:deleteattempts',1,1601070823,0),(853,1,6,'mod/resource:view',1,1601070824,0),(854,1,7,'mod/resource:view',1,1601070824,0),(855,1,3,'mod/resource:addinstance',1,1601070824,0),(856,1,1,'mod/resource:addinstance',1,1601070824,0),(857,1,3,'mod/scorm:addinstance',1,1601070825,0),(858,1,1,'mod/scorm:addinstance',1,1601070825,0),(859,1,4,'mod/scorm:viewreport',1,1601070825,0),(860,1,3,'mod/scorm:viewreport',1,1601070825,0),(861,1,1,'mod/scorm:viewreport',1,1601070825,0),(862,1,5,'mod/scorm:skipview',1,1601070825,0),(863,1,5,'mod/scorm:savetrack',1,1601070825,0),(864,1,4,'mod/scorm:savetrack',1,1601070825,0),(865,1,3,'mod/scorm:savetrack',1,1601070825,0),(866,1,1,'mod/scorm:savetrack',1,1601070825,0),(867,1,5,'mod/scorm:viewscores',1,1601070825,0),(868,1,4,'mod/scorm:viewscores',1,1601070825,0),(869,1,3,'mod/scorm:viewscores',1,1601070825,0),(870,1,1,'mod/scorm:viewscores',1,1601070825,0),(871,1,4,'mod/scorm:deleteresponses',1,1601070825,0),(872,1,3,'mod/scorm:deleteresponses',1,1601070825,0),(873,1,1,'mod/scorm:deleteresponses',1,1601070825,0),(874,1,3,'mod/survey:addinstance',1,1601070826,0),(875,1,1,'mod/survey:addinstance',1,1601070826,0),(876,1,5,'mod/survey:participate',1,1601070826,0),(877,1,4,'mod/survey:participate',1,1601070826,0),(878,1,3,'mod/survey:participate',1,1601070826,0),(879,1,1,'mod/survey:participate',1,1601070826,0),(880,1,4,'mod/survey:readresponses',1,1601070826,0),(881,1,3,'mod/survey:readresponses',1,1601070826,0),(882,1,1,'mod/survey:readresponses',1,1601070826,0),(883,1,4,'mod/survey:download',1,1601070826,0),(884,1,3,'mod/survey:download',1,1601070826,0),(885,1,1,'mod/survey:download',1,1601070826,0),(886,1,6,'mod/url:view',1,1601070827,0),(887,1,7,'mod/url:view',1,1601070827,0),(888,1,3,'mod/url:addinstance',1,1601070827,0),(889,1,1,'mod/url:addinstance',1,1601070827,0),(890,1,3,'mod/wiki:addinstance',1,1601070827,0),(891,1,1,'mod/wiki:addinstance',1,1601070827,0),(892,1,6,'mod/wiki:viewpage',1,1601070827,0),(893,1,8,'mod/wiki:viewpage',1,1601070827,0),(894,1,5,'mod/wiki:viewpage',1,1601070827,0),(895,1,4,'mod/wiki:viewpage',1,1601070827,0),(896,1,3,'mod/wiki:viewpage',1,1601070827,0),(897,1,1,'mod/wiki:viewpage',1,1601070827,0),(898,1,5,'mod/wiki:editpage',1,1601070827,0),(899,1,4,'mod/wiki:editpage',1,1601070827,0),(900,1,3,'mod/wiki:editpage',1,1601070827,0),(901,1,1,'mod/wiki:editpage',1,1601070827,0),(902,1,5,'mod/wiki:createpage',1,1601070827,0),(903,1,4,'mod/wiki:createpage',1,1601070827,0),(904,1,3,'mod/wiki:createpage',1,1601070827,0),(905,1,1,'mod/wiki:createpage',1,1601070827,0),(906,1,5,'mod/wiki:viewcomment',1,1601070827,0),(907,1,4,'mod/wiki:viewcomment',1,1601070827,0),(908,1,3,'mod/wiki:viewcomment',1,1601070827,0),(909,1,1,'mod/wiki:viewcomment',1,1601070827,0),(910,1,5,'mod/wiki:editcomment',1,1601070827,0),(911,1,4,'mod/wiki:editcomment',1,1601070827,0),(912,1,3,'mod/wiki:editcomment',1,1601070827,0),(913,1,1,'mod/wiki:editcomment',1,1601070827,0),(914,1,4,'mod/wiki:managecomment',1,1601070827,0),(915,1,3,'mod/wiki:managecomment',1,1601070827,0),(916,1,1,'mod/wiki:managecomment',1,1601070827,0),(917,1,4,'mod/wiki:managefiles',1,1601070827,0),(918,1,3,'mod/wiki:managefiles',1,1601070827,0),(919,1,1,'mod/wiki:managefiles',1,1601070827,0),(920,1,4,'mod/wiki:overridelock',1,1601070827,0),(921,1,3,'mod/wiki:overridelock',1,1601070827,0),(922,1,1,'mod/wiki:overridelock',1,1601070827,0),(923,1,4,'mod/wiki:managewiki',1,1601070828,0),(924,1,3,'mod/wiki:managewiki',1,1601070828,0),(925,1,1,'mod/wiki:managewiki',1,1601070828,0),(926,1,6,'mod/workshop:view',1,1601070828,0),(927,1,5,'mod/workshop:view',1,1601070828,0),(928,1,4,'mod/workshop:view',1,1601070828,0),(929,1,3,'mod/workshop:view',1,1601070828,0),(930,1,1,'mod/workshop:view',1,1601070828,0),(931,1,3,'mod/workshop:addinstance',1,1601070828,0),(932,1,1,'mod/workshop:addinstance',1,1601070828,0),(933,1,4,'mod/workshop:switchphase',1,1601070828,0),(934,1,3,'mod/workshop:switchphase',1,1601070828,0),(935,1,1,'mod/workshop:switchphase',1,1601070828,0),(936,1,3,'mod/workshop:editdimensions',1,1601070828,0),(937,1,1,'mod/workshop:editdimensions',1,1601070828,0),(938,1,5,'mod/workshop:submit',1,1601070828,0),(939,1,5,'mod/workshop:peerassess',1,1601070828,0),(940,1,4,'mod/workshop:manageexamples',1,1601070828,0),(941,1,3,'mod/workshop:manageexamples',1,1601070828,0),(942,1,1,'mod/workshop:manageexamples',1,1601070828,0),(943,1,4,'mod/workshop:allocate',1,1601070828,0),(944,1,3,'mod/workshop:allocate',1,1601070828,0),(945,1,1,'mod/workshop:allocate',1,1601070828,0),(946,1,4,'mod/workshop:publishsubmissions',1,1601070828,0),(947,1,3,'mod/workshop:publishsubmissions',1,1601070828,0),(948,1,1,'mod/workshop:publishsubmissions',1,1601070828,0),(949,1,5,'mod/workshop:viewauthornames',1,1601070828,0),(950,1,4,'mod/workshop:viewauthornames',1,1601070828,0),(951,1,3,'mod/workshop:viewauthornames',1,1601070828,0),(952,1,1,'mod/workshop:viewauthornames',1,1601070828,0),(953,1,4,'mod/workshop:viewreviewernames',1,1601070828,0),(954,1,3,'mod/workshop:viewreviewernames',1,1601070828,0),(955,1,1,'mod/workshop:viewreviewernames',1,1601070828,0),(956,1,4,'mod/workshop:viewallsubmissions',1,1601070828,0),(957,1,3,'mod/workshop:viewallsubmissions',1,1601070828,0),(958,1,1,'mod/workshop:viewallsubmissions',1,1601070828,0),(959,1,5,'mod/workshop:viewpublishedsubmissions',1,1601070828,0),(960,1,4,'mod/workshop:viewpublishedsubmissions',1,1601070828,0),(961,1,3,'mod/workshop:viewpublishedsubmissions',1,1601070828,0),(962,1,1,'mod/workshop:viewpublishedsubmissions',1,1601070828,0),(963,1,5,'mod/workshop:viewauthorpublished',1,1601070828,0),(964,1,4,'mod/workshop:viewauthorpublished',1,1601070828,0),(965,1,3,'mod/workshop:viewauthorpublished',1,1601070828,0),(966,1,1,'mod/workshop:viewauthorpublished',1,1601070828,0),(967,1,4,'mod/workshop:viewallassessments',1,1601070828,0),(968,1,3,'mod/workshop:viewallassessments',1,1601070829,0),(969,1,1,'mod/workshop:viewallassessments',1,1601070829,0),(970,1,4,'mod/workshop:overridegrades',1,1601070829,0),(971,1,3,'mod/workshop:overridegrades',1,1601070829,0),(972,1,1,'mod/workshop:overridegrades',1,1601070829,0),(973,1,4,'mod/workshop:ignoredeadlines',1,1601070829,0),(974,1,3,'mod/workshop:ignoredeadlines',1,1601070829,0),(975,1,1,'mod/workshop:ignoredeadlines',1,1601070829,0),(976,1,4,'mod/workshop:deletesubmissions',1,1601070829,0),(977,1,3,'mod/workshop:deletesubmissions',1,1601070829,0),(978,1,1,'mod/workshop:deletesubmissions',1,1601070829,0),(979,1,1,'mod/workshop:exportsubmissions',1,1601070829,0),(980,1,4,'mod/workshop:exportsubmissions',1,1601070829,0),(981,1,3,'mod/workshop:exportsubmissions',1,1601070829,0),(982,1,5,'mod/workshop:exportsubmissions',1,1601070829,0),(983,1,7,'auth/oauth2:managelinkedlogins',1,1601070830,0),(984,1,1,'enrol/category:config',1,1601070831,0),(985,1,3,'enrol/category:config',1,1601070831,0),(986,1,3,'enrol/cohort:config',1,1601070831,0),(987,1,1,'enrol/cohort:config',1,1601070831,0),(988,1,1,'enrol/cohort:unenrol',1,1601070831,0),(989,1,1,'enrol/database:unenrol',1,1601070831,0),(990,1,1,'enrol/database:config',1,1601070831,0),(991,1,3,'enrol/database:config',1,1601070831,0),(992,1,1,'enrol/guest:config',1,1601070831,0),(993,1,3,'enrol/guest:config',1,1601070831,0),(994,1,1,'enrol/imsenterprise:config',1,1601070832,0),(995,1,3,'enrol/imsenterprise:config',1,1601070832,0),(996,1,1,'enrol/ldap:manage',1,1601070832,0),(997,1,1,'enrol/lti:config',1,1601070832,0),(998,1,3,'enrol/lti:config',1,1601070832,0),(999,1,1,'enrol/lti:unenrol',1,1601070832,0),(1000,1,3,'enrol/lti:unenrol',1,1601070832,0),(1001,1,1,'enrol/manual:config',1,1601070833,0),(1002,1,1,'enrol/manual:enrol',1,1601070833,0),(1003,1,3,'enrol/manual:enrol',1,1601070833,0),(1004,1,1,'enrol/manual:manage',1,1601070833,0),(1005,1,3,'enrol/manual:manage',1,1601070833,0),(1006,1,1,'enrol/manual:unenrol',1,1601070833,0),(1007,1,3,'enrol/manual:unenrol',1,1601070833,0),(1008,1,1,'enrol/meta:config',1,1601070833,0),(1009,1,3,'enrol/meta:config',1,1601070833,0),(1010,1,1,'enrol/meta:selectaslinked',1,1601070833,0),(1011,1,1,'enrol/meta:unenrol',1,1601070833,0),(1012,1,1,'enrol/mnet:config',1,1601070833,0),(1013,1,3,'enrol/mnet:config',1,1601070833,0),(1014,1,1,'enrol/paypal:config',1,1601070833,0),(1015,1,1,'enrol/paypal:manage',1,1601070833,0),(1016,1,3,'enrol/paypal:manage',1,1601070833,0),(1017,1,1,'enrol/paypal:unenrol',1,1601070833,0),(1018,1,3,'enrol/self:config',1,1601070833,0),(1019,1,1,'enrol/self:config',1,1601070833,0),(1020,1,3,'enrol/self:manage',1,1601070833,0),(1021,1,1,'enrol/self:manage',1,1601070833,0),(1022,1,5,'enrol/self:unenrolself',1,1601070833,0),(1023,1,3,'enrol/self:unenrol',1,1601070833,0),(1024,1,1,'enrol/self:unenrol',1,1601070833,0),(1025,1,7,'message/airnotifier:managedevice',1,1601070834,0),(1026,1,3,'block/activity_modules:addinstance',1,1601070835,0),(1027,1,1,'block/activity_modules:addinstance',1,1601070835,0),(1028,1,3,'block/activity_results:addinstance',1,1601070835,0),(1029,1,1,'block/activity_results:addinstance',1,1601070835,0),(1030,1,7,'block/admin_bookmarks:myaddinstance',1,1601070835,0),(1031,1,3,'block/admin_bookmarks:addinstance',1,1601070835,0),(1032,1,1,'block/admin_bookmarks:addinstance',1,1601070835,0),(1033,1,3,'block/badges:addinstance',1,1601070835,0),(1034,1,1,'block/badges:addinstance',1,1601070835,0),(1035,1,7,'block/badges:myaddinstance',1,1601070835,0),(1036,1,3,'block/blog_menu:addinstance',1,1601070835,0),(1037,1,1,'block/blog_menu:addinstance',1,1601070835,0),(1038,1,3,'block/blog_recent:addinstance',1,1601070836,0),(1039,1,1,'block/blog_recent:addinstance',1,1601070836,0),(1040,1,3,'block/blog_tags:addinstance',1,1601070836,0),(1041,1,1,'block/blog_tags:addinstance',1,1601070836,0),(1042,1,7,'block/calendar_month:myaddinstance',1,1601070836,0),(1043,1,3,'block/calendar_month:addinstance',1,1601070836,0),(1044,1,1,'block/calendar_month:addinstance',1,1601070836,0),(1045,1,7,'block/calendar_upcoming:myaddinstance',1,1601070836,0),(1046,1,3,'block/calendar_upcoming:addinstance',1,1601070836,0),(1047,1,1,'block/calendar_upcoming:addinstance',1,1601070836,0),(1048,1,7,'block/comments:myaddinstance',1,1601070836,0),(1049,1,3,'block/comments:addinstance',1,1601070836,0),(1050,1,1,'block/comments:addinstance',1,1601070836,0),(1051,1,7,'block/community:myaddinstance',1,1601070836,0),(1052,1,3,'block/community:addinstance',1,1601070836,0),(1053,1,1,'block/community:addinstance',1,1601070836,0),(1054,1,3,'block/completionstatus:addinstance',1,1601070836,0),(1055,1,1,'block/completionstatus:addinstance',1,1601070836,0),(1056,1,7,'block/course_list:myaddinstance',1,1601070836,0),(1057,1,3,'block/course_list:addinstance',1,1601070836,0),(1058,1,1,'block/course_list:addinstance',1,1601070836,0),(1059,1,3,'block/course_summary:addinstance',1,1601070837,0),(1060,1,1,'block/course_summary:addinstance',1,1601070837,0),(1061,1,3,'block/feedback:addinstance',1,1601070837,0),(1062,1,1,'block/feedback:addinstance',1,1601070837,0),(1063,1,7,'block/globalsearch:myaddinstance',1,1601070837,0),(1064,1,3,'block/globalsearch:addinstance',1,1601070837,0),(1065,1,1,'block/globalsearch:addinstance',1,1601070837,0),(1066,1,7,'block/glossary_random:myaddinstance',1,1601070837,0),(1067,1,3,'block/glossary_random:addinstance',1,1601070837,0),(1068,1,1,'block/glossary_random:addinstance',1,1601070837,0),(1069,1,7,'block/html:myaddinstance',1,1601070837,0),(1070,1,3,'block/html:addinstance',1,1601070837,0),(1071,1,1,'block/html:addinstance',1,1601070837,0),(1072,1,3,'block/login:addinstance',1,1601070837,0),(1073,1,1,'block/login:addinstance',1,1601070837,0),(1074,1,3,'block/lp:addinstance',1,1601070837,0),(1075,1,1,'block/lp:addinstance',1,1601070837,0),(1076,1,7,'block/lp:myaddinstance',1,1601070837,0),(1077,1,7,'block/lp:view',1,1601070837,0),(1078,1,7,'block/mentees:myaddinstance',1,1601070837,0),(1079,1,3,'block/mentees:addinstance',1,1601070837,0),(1080,1,1,'block/mentees:addinstance',1,1601070837,0),(1081,1,7,'block/mnet_hosts:myaddinstance',1,1601070838,0),(1082,1,3,'block/mnet_hosts:addinstance',1,1601070838,0),(1083,1,1,'block/mnet_hosts:addinstance',1,1601070838,0),(1084,1,7,'block/myoverview:myaddinstance',1,1601070838,0),(1085,1,3,'block/myoverview:addinstance',1,1601070838,0),(1086,1,1,'block/myoverview:addinstance',1,1601070838,0),(1087,1,7,'block/myprofile:myaddinstance',1,1601070838,0),(1088,1,3,'block/myprofile:addinstance',1,1601070838,0),(1089,1,1,'block/myprofile:addinstance',1,1601070838,0),(1090,1,7,'block/navigation:myaddinstance',1,1601070838,0),(1091,1,3,'block/navigation:addinstance',1,1601070838,0),(1092,1,1,'block/navigation:addinstance',1,1601070838,0),(1093,1,7,'block/news_items:myaddinstance',1,1601070838,0),(1094,1,3,'block/news_items:addinstance',1,1601070838,0),(1095,1,1,'block/news_items:addinstance',1,1601070838,0),(1096,1,7,'block/online_users:myaddinstance',1,1601070838,0),(1097,1,3,'block/online_users:addinstance',1,1601070838,0),(1098,1,1,'block/online_users:addinstance',1,1601070838,0),(1099,1,7,'block/online_users:viewlist',1,1601070838,0),(1100,1,6,'block/online_users:viewlist',1,1601070838,0),(1101,1,5,'block/online_users:viewlist',1,1601070838,0),(1102,1,4,'block/online_users:viewlist',1,1601070838,0),(1103,1,3,'block/online_users:viewlist',1,1601070839,0),(1104,1,1,'block/online_users:viewlist',1,1601070839,0),(1105,1,3,'block/participants:addinstance',1,1601070839,0),(1106,1,1,'block/participants:addinstance',1,1601070839,0),(1107,1,7,'block/private_files:myaddinstance',1,1601070839,0),(1108,1,3,'block/private_files:addinstance',1,1601070839,0),(1109,1,1,'block/private_files:addinstance',1,1601070839,0),(1110,1,3,'block/quiz_results:addinstance',1,1601070839,0),(1111,1,1,'block/quiz_results:addinstance',1,1601070839,0),(1112,1,3,'block/recent_activity:addinstance',1,1601070839,0),(1113,1,1,'block/recent_activity:addinstance',1,1601070839,0),(1114,1,7,'block/recent_activity:viewaddupdatemodule',1,1601070839,0),(1115,1,7,'block/recent_activity:viewdeletemodule',1,1601070839,0),(1116,1,7,'block/recentlyaccessedcourses:myaddinstance',1,1601070839,0),(1117,1,3,'block/recentlyaccessedcourses:addinstance',1,1601070839,0),(1118,1,1,'block/recentlyaccessedcourses:addinstance',1,1601070839,0),(1119,1,7,'block/recentlyaccesseditems:myaddinstance',1,1601070839,0),(1120,1,3,'block/recentlyaccesseditems:addinstance',1,1601070839,0),(1121,1,1,'block/recentlyaccesseditems:addinstance',1,1601070839,0),(1122,1,7,'block/rss_client:myaddinstance',1,1601070840,0),(1123,1,3,'block/rss_client:addinstance',1,1601070840,0),(1124,1,1,'block/rss_client:addinstance',1,1601070840,0),(1125,1,4,'block/rss_client:manageownfeeds',1,1601070840,0),(1126,1,3,'block/rss_client:manageownfeeds',1,1601070840,0),(1127,1,1,'block/rss_client:manageownfeeds',1,1601070840,0),(1128,1,1,'block/rss_client:manageanyfeeds',1,1601070840,0),(1129,1,3,'block/search_forums:addinstance',1,1601070840,0),(1130,1,1,'block/search_forums:addinstance',1,1601070840,0),(1131,1,3,'block/section_links:addinstance',1,1601070840,0),(1132,1,1,'block/section_links:addinstance',1,1601070840,0),(1133,1,3,'block/selfcompletion:addinstance',1,1601070840,0),(1134,1,1,'block/selfcompletion:addinstance',1,1601070840,0),(1135,1,7,'block/settings:myaddinstance',1,1601070840,0),(1136,1,3,'block/settings:addinstance',1,1601070840,0),(1137,1,1,'block/settings:addinstance',1,1601070840,0),(1138,1,3,'block/site_main_menu:addinstance',1,1601070840,0),(1139,1,1,'block/site_main_menu:addinstance',1,1601070840,0),(1140,1,3,'block/social_activities:addinstance',1,1601070841,0),(1141,1,1,'block/social_activities:addinstance',1,1601070841,0),(1142,1,7,'block/starredcourses:myaddinstance',1,1601070841,0),(1143,1,3,'block/starredcourses:addinstance',1,1601070841,0),(1144,1,1,'block/starredcourses:addinstance',1,1601070841,0),(1145,1,3,'block/tag_flickr:addinstance',1,1601070841,0),(1146,1,1,'block/tag_flickr:addinstance',1,1601070841,0),(1147,1,3,'block/tag_youtube:addinstance',1,1601070841,0),(1148,1,1,'block/tag_youtube:addinstance',1,1601070841,0),(1149,1,7,'block/tags:myaddinstance',1,1601070841,0),(1150,1,3,'block/tags:addinstance',1,1601070841,0),(1151,1,1,'block/tags:addinstance',1,1601070841,0),(1152,1,7,'block/timeline:myaddinstance',1,1601070841,0),(1153,1,3,'block/timeline:addinstance',1,1601070841,0),(1154,1,1,'block/timeline:addinstance',1,1601070841,0),(1155,1,4,'report/completion:view',1,1601070845,0),(1156,1,3,'report/completion:view',1,1601070845,0),(1157,1,1,'report/completion:view',1,1601070845,0),(1158,1,4,'report/courseoverview:view',1,1601070845,0),(1159,1,3,'report/courseoverview:view',1,1601070845,0),(1160,1,1,'report/courseoverview:view',1,1601070845,0),(1161,1,4,'report/log:view',1,1601070846,0),(1162,1,3,'report/log:view',1,1601070846,0),(1163,1,1,'report/log:view',1,1601070846,0),(1164,1,4,'report/log:viewtoday',1,1601070846,0),(1165,1,3,'report/log:viewtoday',1,1601070846,0),(1166,1,1,'report/log:viewtoday',1,1601070846,0),(1167,1,4,'report/loglive:view',1,1601070846,0),(1168,1,3,'report/loglive:view',1,1601070846,0),(1169,1,1,'report/loglive:view',1,1601070846,0),(1170,1,4,'report/outline:view',1,1601070846,0),(1171,1,3,'report/outline:view',1,1601070846,0),(1172,1,1,'report/outline:view',1,1601070846,0),(1173,1,4,'report/outline:viewuserreport',1,1601070846,0),(1174,1,3,'report/outline:viewuserreport',1,1601070846,0),(1175,1,1,'report/outline:viewuserreport',1,1601070846,0),(1176,1,4,'report/participation:view',1,1601070846,0),(1177,1,3,'report/participation:view',1,1601070846,0),(1178,1,1,'report/participation:view',1,1601070846,0),(1179,1,1,'report/performance:view',1,1601070846,0),(1180,1,4,'report/progress:view',1,1601070846,0),(1181,1,3,'report/progress:view',1,1601070846,0),(1182,1,1,'report/progress:view',1,1601070846,0),(1183,1,1,'report/security:view',1,1601070847,0),(1184,1,4,'report/stats:view',1,1601070847,0),(1185,1,3,'report/stats:view',1,1601070847,0),(1186,1,1,'report/stats:view',1,1601070847,0),(1187,1,6,'report/usersessions:manageownsessions',-1000,1601070847,0),(1188,1,7,'report/usersessions:manageownsessions',1,1601070847,0),(1189,1,1,'report/usersessions:manageownsessions',1,1601070847,0),(1190,1,4,'gradeexport/ods:view',1,1601070847,0),(1191,1,3,'gradeexport/ods:view',1,1601070847,0),(1192,1,1,'gradeexport/ods:view',1,1601070847,0),(1193,1,1,'gradeexport/ods:publish',1,1601070847,0),(1194,1,4,'gradeexport/txt:view',1,1601070847,0),(1195,1,3,'gradeexport/txt:view',1,1601070847,0),(1196,1,1,'gradeexport/txt:view',1,1601070847,0),(1197,1,1,'gradeexport/txt:publish',1,1601070847,0),(1198,1,4,'gradeexport/xls:view',1,1601070847,0),(1199,1,3,'gradeexport/xls:view',1,1601070847,0),(1200,1,1,'gradeexport/xls:view',1,1601070847,0),(1201,1,1,'gradeexport/xls:publish',1,1601070847,0),(1202,1,4,'gradeexport/xml:view',1,1601070847,0),(1203,1,3,'gradeexport/xml:view',1,1601070847,0),(1204,1,1,'gradeexport/xml:view',1,1601070847,0),(1205,1,1,'gradeexport/xml:publish',1,1601070847,0),(1206,1,3,'gradeimport/csv:view',1,1601070848,0),(1207,1,1,'gradeimport/csv:view',1,1601070848,0),(1208,1,3,'gradeimport/direct:view',1,1601070848,0),(1209,1,1,'gradeimport/direct:view',1,1601070848,0),(1210,1,3,'gradeimport/xml:view',1,1601070848,0),(1211,1,1,'gradeimport/xml:view',1,1601070848,0),(1212,1,1,'gradeimport/xml:publish',1,1601070848,0),(1213,1,4,'gradereport/grader:view',1,1601070848,0),(1214,1,3,'gradereport/grader:view',1,1601070848,0),(1215,1,1,'gradereport/grader:view',1,1601070848,0),(1216,1,4,'gradereport/history:view',1,1601070848,0),(1217,1,3,'gradereport/history:view',1,1601070848,0),(1218,1,1,'gradereport/history:view',1,1601070848,0),(1219,1,4,'gradereport/outcomes:view',1,1601070848,0),(1220,1,3,'gradereport/outcomes:view',1,1601070848,0),(1221,1,1,'gradereport/outcomes:view',1,1601070848,0),(1222,1,7,'gradereport/overview:view',1,1601070848,0),(1223,1,3,'gradereport/singleview:view',1,1601070848,0),(1224,1,1,'gradereport/singleview:view',1,1601070848,0),(1225,1,5,'gradereport/user:view',1,1601070849,0),(1226,1,4,'gradereport/user:view',1,1601070849,0),(1227,1,3,'gradereport/user:view',1,1601070849,0),(1228,1,1,'gradereport/user:view',1,1601070849,0),(1229,1,7,'repository/areafiles:view',1,1601070850,0),(1230,1,7,'repository/boxnet:view',1,1601070850,0),(1231,1,2,'repository/coursefiles:view',1,1601070850,0),(1232,1,4,'repository/coursefiles:view',1,1601070850,0),(1233,1,3,'repository/coursefiles:view',1,1601070850,0),(1234,1,1,'repository/coursefiles:view',1,1601070850,0),(1235,1,7,'repository/dropbox:view',1,1601070850,0),(1236,1,7,'repository/equella:view',1,1601070850,0),(1237,1,2,'repository/filesystem:view',1,1601070851,0),(1238,1,4,'repository/filesystem:view',1,1601070851,0),(1239,1,3,'repository/filesystem:view',1,1601070851,0),(1240,1,1,'repository/filesystem:view',1,1601070851,0),(1241,1,7,'repository/flickr:view',1,1601070851,0),(1242,1,7,'repository/flickr_public:view',1,1601070851,0),(1243,1,7,'repository/googledocs:view',1,1601070851,0),(1244,1,2,'repository/local:view',1,1601070851,0),(1245,1,4,'repository/local:view',1,1601070851,0),(1246,1,3,'repository/local:view',1,1601070851,0),(1247,1,1,'repository/local:view',1,1601070851,0),(1248,1,7,'repository/merlot:view',1,1601070851,0),(1249,1,7,'repository/nextcloud:view',1,1601070851,0),(1250,1,7,'repository/onedrive:view',1,1601070852,0),(1251,1,7,'repository/picasa:view',1,1601070852,0),(1252,1,7,'repository/recent:view',1,1601070852,0),(1253,1,7,'repository/s3:view',1,1601070852,0),(1254,1,7,'repository/skydrive:view',1,1601070852,0),(1255,1,7,'repository/upload:view',1,1601070852,0),(1256,1,7,'repository/url:view',1,1601070853,0),(1257,1,7,'repository/user:view',1,1601070853,0),(1258,1,2,'repository/webdav:view',1,1601070853,0),(1259,1,4,'repository/webdav:view',1,1601070853,0),(1260,1,3,'repository/webdav:view',1,1601070853,0),(1261,1,1,'repository/webdav:view',1,1601070853,0),(1262,1,7,'repository/wikimedia:view',1,1601070853,0),(1263,1,7,'repository/youtube:view',1,1601070853,0),(1264,1,1,'tool/customlang:view',1,1601070857,0),(1265,1,1,'tool/customlang:edit',1,1601070857,0),(1266,1,7,'tool/dataprivacy:downloadownrequest',1,1601070857,0),(1267,1,1,'tool/lpmigrate:frameworksmigrate',1,1601070859,0),(1268,1,4,'tool/monitor:subscribe',1,1601070859,0),(1269,1,3,'tool/monitor:subscribe',1,1601070859,0),(1270,1,1,'tool/monitor:subscribe',1,1601070859,0),(1271,1,4,'tool/monitor:managerules',1,1601070859,0),(1272,1,3,'tool/monitor:managerules',1,1601070859,0),(1273,1,1,'tool/monitor:managerules',1,1601070859,0),(1274,1,1,'tool/monitor:managetool',1,1601070859,0),(1275,1,7,'tool/policy:accept',1,1601070860,0),(1276,1,1,'tool/policy:managedocs',1,1601070860,0),(1277,1,1,'tool/policy:viewacceptances',1,1601070860,0),(1278,1,3,'tool/recyclebin:deleteitems',1,1601070860,0),(1279,1,1,'tool/recyclebin:deleteitems',1,1601070860,0),(1280,1,3,'tool/recyclebin:restoreitems',1,1601070860,0),(1281,1,1,'tool/recyclebin:restoreitems',1,1601070860,0),(1282,1,4,'tool/recyclebin:viewitems',1,1601070860,0),(1283,1,3,'tool/recyclebin:viewitems',1,1601070860,0),(1284,1,1,'tool/recyclebin:viewitems',1,1601070860,0),(1285,1,1,'tool/uploaduser:uploaduserpictures',1,1601070861,0),(1286,1,1,'tool/usertours:managetours',1,1601070862,0),(1287,1,3,'booktool/importhtml:import',1,1601070865,0),(1288,1,1,'booktool/importhtml:import',1,1601070865,0),(1289,1,6,'booktool/print:print',1,1601070866,0),(1290,1,8,'booktool/print:print',1,1601070866,0),(1291,1,5,'booktool/print:print',1,1601070866,0),(1292,1,4,'booktool/print:print',1,1601070866,0),(1293,1,3,'booktool/print:print',1,1601070866,0),(1294,1,1,'booktool/print:print',1,1601070866,0),(1295,1,4,'quiz/grading:viewstudentnames',1,1601070868,0),(1296,1,3,'quiz/grading:viewstudentnames',1,1601070868,0),(1297,1,1,'quiz/grading:viewstudentnames',1,1601070868,0),(1298,1,4,'quiz/grading:viewidnumber',1,1601070868,0),(1299,1,3,'quiz/grading:viewidnumber',1,1601070868,0),(1300,1,1,'quiz/grading:viewidnumber',1,1601070868,0),(1301,1,4,'quiz/statistics:view',1,1601070868,0),(1302,1,3,'quiz/statistics:view',1,1601070868,0),(1303,1,1,'quiz/statistics:view',1,1601070868,0),(1304,1,7,'atto/recordrtc:recordaudio',1,1601070873,0),(1305,1,7,'atto/recordrtc:recordvideo',1,1601070873,0);
/*!40000 ALTER TABLE `mdl_role_capabilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_role_context_levels`
--

DROP TABLE IF EXISTS `mdl_role_context_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_role_context_levels` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `roleid` bigint(10) NOT NULL,
  `contextlevel` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_rolecontleve_conrol_uix` (`contextlevel`,`roleid`),
  KEY `mdl_rolecontleve_rol_ix` (`roleid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='Lists which roles can be assigned at which context levels. T';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_role_context_levels`
--

LOCK TABLES `mdl_role_context_levels` WRITE;
/*!40000 ALTER TABLE `mdl_role_context_levels` DISABLE KEYS */;
INSERT INTO `mdl_role_context_levels` VALUES (1,1,10),(4,2,10),(2,1,40),(5,2,40),(3,1,50),(6,3,50),(8,4,50),(10,5,50),(7,3,70),(9,4,70),(11,5,70);
/*!40000 ALTER TABLE `mdl_role_context_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_role_names`
--

DROP TABLE IF EXISTS `mdl_role_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_role_names` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `roleid` bigint(10) NOT NULL DEFAULT 0,
  `contextid` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_rolename_rolcon_uix` (`roleid`,`contextid`),
  KEY `mdl_rolename_rol_ix` (`roleid`),
  KEY `mdl_rolename_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='role names in native strings';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_role_names`
--

LOCK TABLES `mdl_role_names` WRITE;
/*!40000 ALTER TABLE `mdl_role_names` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_role_names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_role_sortorder`
--

DROP TABLE IF EXISTS `mdl_role_sortorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_role_sortorder` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `roleid` bigint(10) NOT NULL,
  `contextid` bigint(10) NOT NULL,
  `sortoder` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_rolesort_userolcon_uix` (`userid`,`roleid`,`contextid`),
  KEY `mdl_rolesort_use_ix` (`userid`),
  KEY `mdl_rolesort_rol_ix` (`roleid`),
  KEY `mdl_rolesort_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='sort order of course managers in a course';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_role_sortorder`
--

LOCK TABLES `mdl_role_sortorder` WRITE;
/*!40000 ALTER TABLE `mdl_role_sortorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_role_sortorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_scale`
--

DROP TABLE IF EXISTS `mdl_scale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_scale` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `scale` longtext NOT NULL,
  `description` longtext NOT NULL,
  `descriptionformat` tinyint(2) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_scal_cou_ix` (`courseid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Defines grading scales';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_scale`
--

LOCK TABLES `mdl_scale` WRITE;
/*!40000 ALTER TABLE `mdl_scale` DISABLE KEYS */;
INSERT INTO `mdl_scale` VALUES (1,0,0,'Separate and Connected ways of knowing','Mostly separate knowing,Separate and connected,Mostly connected knowing','The scale based on the theory of separate and connected knowing. This theory describes two different ways that we can evaluate and learn about the things we see and hear.<ul><li><strong>Separate knowers</strong> remain as objective as possible without including feelings and emotions. In a discussion with other people, they like to defend their own ideas, using logic to find holes in opponent\'s ideas.</li><li><strong>Connected knowers</strong> are more sensitive to other people. They are skilled at empathy and tend to listen and ask questions until they feel they can connect and \"understand things from their point of view\". They learn by trying to share the experiences that led to the knowledge they find in other people.</li></ul>',0,1601070785),(2,0,0,'Default competence scale','Not yet competent,Competent','A binary rating scale that provides no further information beyond whether someone has demonstrated proficiency or not.',0,1601070785);
/*!40000 ALTER TABLE `mdl_scale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_scale_history`
--

DROP TABLE IF EXISTS `mdl_scale_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_scale_history` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `action` bigint(10) NOT NULL DEFAULT 0,
  `oldid` bigint(10) NOT NULL,
  `source` varchar(255) DEFAULT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `loggeduser` bigint(10) DEFAULT NULL,
  `courseid` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `scale` longtext NOT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_scalhist_act_ix` (`action`),
  KEY `mdl_scalhist_tim_ix` (`timemodified`),
  KEY `mdl_scalhist_old_ix` (`oldid`),
  KEY `mdl_scalhist_cou_ix` (`courseid`),
  KEY `mdl_scalhist_log_ix` (`loggeduser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='History table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_scale_history`
--

LOCK TABLES `mdl_scale_history` WRITE;
/*!40000 ALTER TABLE `mdl_scale_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_scale_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_scorm`
--

DROP TABLE IF EXISTS `mdl_scorm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_scorm` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `scormtype` varchar(50) NOT NULL DEFAULT 'local',
  `reference` varchar(255) NOT NULL DEFAULT '',
  `intro` longtext NOT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT 0,
  `version` varchar(9) NOT NULL DEFAULT '',
  `maxgrade` double NOT NULL DEFAULT 0,
  `grademethod` tinyint(2) NOT NULL DEFAULT 0,
  `whatgrade` bigint(10) NOT NULL DEFAULT 0,
  `maxattempt` bigint(10) NOT NULL DEFAULT 1,
  `forcecompleted` tinyint(1) NOT NULL DEFAULT 0,
  `forcenewattempt` tinyint(1) NOT NULL DEFAULT 0,
  `lastattemptlock` tinyint(1) NOT NULL DEFAULT 0,
  `masteryoverride` tinyint(1) NOT NULL DEFAULT 1,
  `displayattemptstatus` tinyint(1) NOT NULL DEFAULT 1,
  `displaycoursestructure` tinyint(1) NOT NULL DEFAULT 0,
  `updatefreq` tinyint(1) NOT NULL DEFAULT 0,
  `sha1hash` varchar(40) DEFAULT NULL,
  `md5hash` varchar(32) NOT NULL DEFAULT '',
  `revision` bigint(10) NOT NULL DEFAULT 0,
  `launch` bigint(10) NOT NULL DEFAULT 0,
  `skipview` tinyint(1) NOT NULL DEFAULT 1,
  `hidebrowse` tinyint(1) NOT NULL DEFAULT 0,
  `hidetoc` tinyint(1) NOT NULL DEFAULT 0,
  `nav` tinyint(1) NOT NULL DEFAULT 1,
  `navpositionleft` bigint(10) DEFAULT -100,
  `navpositiontop` bigint(10) DEFAULT -100,
  `auto` tinyint(1) NOT NULL DEFAULT 0,
  `popup` tinyint(1) NOT NULL DEFAULT 0,
  `options` varchar(255) NOT NULL DEFAULT '',
  `width` bigint(10) NOT NULL DEFAULT 100,
  `height` bigint(10) NOT NULL DEFAULT 600,
  `timeopen` bigint(10) NOT NULL DEFAULT 0,
  `timeclose` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `completionstatusrequired` tinyint(1) DEFAULT NULL,
  `completionscorerequired` bigint(10) DEFAULT NULL,
  `completionstatusallscos` tinyint(1) DEFAULT NULL,
  `displayactivityname` smallint(4) NOT NULL DEFAULT 1,
  `autocommit` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_scor_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='each table is one SCORM module and its configuration';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_scorm`
--

LOCK TABLES `mdl_scorm` WRITE;
/*!40000 ALTER TABLE `mdl_scorm` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_scorm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_scorm_aicc_session`
--

DROP TABLE IF EXISTS `mdl_scorm_aicc_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_scorm_aicc_session` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `scormid` bigint(10) NOT NULL DEFAULT 0,
  `hacpsession` varchar(255) NOT NULL DEFAULT '',
  `scoid` bigint(10) DEFAULT 0,
  `scormmode` varchar(50) DEFAULT NULL,
  `scormstatus` varchar(255) DEFAULT NULL,
  `attempt` bigint(10) DEFAULT NULL,
  `lessonstatus` varchar(255) DEFAULT NULL,
  `sessiontime` varchar(255) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_scoraiccsess_sco_ix` (`scormid`),
  KEY `mdl_scoraiccsess_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Used by AICC HACP to store session information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_scorm_aicc_session`
--

LOCK TABLES `mdl_scorm_aicc_session` WRITE;
/*!40000 ALTER TABLE `mdl_scorm_aicc_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_scorm_aicc_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_scorm_scoes`
--

DROP TABLE IF EXISTS `mdl_scorm_scoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_scorm_scoes` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `scorm` bigint(10) NOT NULL DEFAULT 0,
  `manifest` varchar(255) NOT NULL DEFAULT '',
  `organization` varchar(255) NOT NULL DEFAULT '',
  `parent` varchar(255) NOT NULL DEFAULT '',
  `identifier` varchar(255) NOT NULL DEFAULT '',
  `launch` longtext NOT NULL,
  `scormtype` varchar(5) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `sortorder` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_scorscoe_sco_ix` (`scorm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='each SCO part of the SCORM module';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_scorm_scoes`
--

LOCK TABLES `mdl_scorm_scoes` WRITE;
/*!40000 ALTER TABLE `mdl_scorm_scoes` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_scorm_scoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_scorm_scoes_data`
--

DROP TABLE IF EXISTS `mdl_scorm_scoes_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_scorm_scoes_data` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `scoid` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_scorscoedata_sco_ix` (`scoid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains variable data get from packages';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_scorm_scoes_data`
--

LOCK TABLES `mdl_scorm_scoes_data` WRITE;
/*!40000 ALTER TABLE `mdl_scorm_scoes_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_scorm_scoes_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_scorm_scoes_track`
--

DROP TABLE IF EXISTS `mdl_scorm_scoes_track`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_scorm_scoes_track` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `scormid` bigint(10) NOT NULL DEFAULT 0,
  `scoid` bigint(10) NOT NULL DEFAULT 0,
  `attempt` bigint(10) NOT NULL DEFAULT 1,
  `element` varchar(255) NOT NULL DEFAULT '',
  `value` longtext NOT NULL,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_scorscoetrac_usescosco_uix` (`userid`,`scormid`,`scoid`,`attempt`,`element`),
  KEY `mdl_scorscoetrac_use_ix` (`userid`),
  KEY `mdl_scorscoetrac_ele_ix` (`element`),
  KEY `mdl_scorscoetrac_sco_ix` (`scormid`),
  KEY `mdl_scorscoetrac_sco2_ix` (`scoid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='to track SCOes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_scorm_scoes_track`
--

LOCK TABLES `mdl_scorm_scoes_track` WRITE;
/*!40000 ALTER TABLE `mdl_scorm_scoes_track` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_scorm_scoes_track` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_scorm_seq_mapinfo`
--

DROP TABLE IF EXISTS `mdl_scorm_seq_mapinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_scorm_seq_mapinfo` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `scoid` bigint(10) NOT NULL DEFAULT 0,
  `objectiveid` bigint(10) NOT NULL DEFAULT 0,
  `targetobjectiveid` bigint(10) NOT NULL DEFAULT 0,
  `readsatisfiedstatus` tinyint(1) NOT NULL DEFAULT 1,
  `readnormalizedmeasure` tinyint(1) NOT NULL DEFAULT 1,
  `writesatisfiedstatus` tinyint(1) NOT NULL DEFAULT 0,
  `writenormalizedmeasure` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_scorseqmapi_scoidobj_uix` (`scoid`,`id`,`objectiveid`),
  KEY `mdl_scorseqmapi_sco_ix` (`scoid`),
  KEY `mdl_scorseqmapi_obj_ix` (`objectiveid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='SCORM2004 objective mapinfo description';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_scorm_seq_mapinfo`
--

LOCK TABLES `mdl_scorm_seq_mapinfo` WRITE;
/*!40000 ALTER TABLE `mdl_scorm_seq_mapinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_scorm_seq_mapinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_scorm_seq_objective`
--

DROP TABLE IF EXISTS `mdl_scorm_seq_objective`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_scorm_seq_objective` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `scoid` bigint(10) NOT NULL DEFAULT 0,
  `primaryobj` tinyint(1) NOT NULL DEFAULT 0,
  `objectiveid` varchar(255) NOT NULL DEFAULT '',
  `satisfiedbymeasure` tinyint(1) NOT NULL DEFAULT 1,
  `minnormalizedmeasure` float(11,4) NOT NULL DEFAULT 0.0000,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_scorseqobje_scoid_uix` (`scoid`,`id`),
  KEY `mdl_scorseqobje_sco_ix` (`scoid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='SCORM2004 objective description';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_scorm_seq_objective`
--

LOCK TABLES `mdl_scorm_seq_objective` WRITE;
/*!40000 ALTER TABLE `mdl_scorm_seq_objective` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_scorm_seq_objective` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_scorm_seq_rolluprule`
--

DROP TABLE IF EXISTS `mdl_scorm_seq_rolluprule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_scorm_seq_rolluprule` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `scoid` bigint(10) NOT NULL DEFAULT 0,
  `childactivityset` varchar(15) NOT NULL DEFAULT '',
  `minimumcount` bigint(10) NOT NULL DEFAULT 0,
  `minimumpercent` float(11,4) NOT NULL DEFAULT 0.0000,
  `conditioncombination` varchar(3) NOT NULL DEFAULT 'all',
  `action` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_scorseqroll_scoid_uix` (`scoid`,`id`),
  KEY `mdl_scorseqroll_sco_ix` (`scoid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='SCORM2004 sequencing rule';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_scorm_seq_rolluprule`
--

LOCK TABLES `mdl_scorm_seq_rolluprule` WRITE;
/*!40000 ALTER TABLE `mdl_scorm_seq_rolluprule` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_scorm_seq_rolluprule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_scorm_seq_rolluprulecond`
--

DROP TABLE IF EXISTS `mdl_scorm_seq_rolluprulecond`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_scorm_seq_rolluprulecond` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `scoid` bigint(10) NOT NULL DEFAULT 0,
  `rollupruleid` bigint(10) NOT NULL DEFAULT 0,
  `operator` varchar(5) NOT NULL DEFAULT 'noOp',
  `cond` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_scorseqroll_scorolid_uix` (`scoid`,`rollupruleid`,`id`),
  KEY `mdl_scorseqroll_sco2_ix` (`scoid`),
  KEY `mdl_scorseqroll_rol_ix` (`rollupruleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='SCORM2004 sequencing rule';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_scorm_seq_rolluprulecond`
--

LOCK TABLES `mdl_scorm_seq_rolluprulecond` WRITE;
/*!40000 ALTER TABLE `mdl_scorm_seq_rolluprulecond` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_scorm_seq_rolluprulecond` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_scorm_seq_rulecond`
--

DROP TABLE IF EXISTS `mdl_scorm_seq_rulecond`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_scorm_seq_rulecond` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `scoid` bigint(10) NOT NULL DEFAULT 0,
  `ruleconditionsid` bigint(10) NOT NULL DEFAULT 0,
  `refrencedobjective` varchar(255) NOT NULL DEFAULT '',
  `measurethreshold` float(11,4) NOT NULL DEFAULT 0.0000,
  `operator` varchar(5) NOT NULL DEFAULT 'noOp',
  `cond` varchar(30) NOT NULL DEFAULT 'always',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_scorseqrule_idscorul_uix` (`id`,`scoid`,`ruleconditionsid`),
  KEY `mdl_scorseqrule_sco2_ix` (`scoid`),
  KEY `mdl_scorseqrule_rul_ix` (`ruleconditionsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='SCORM2004 rule condition';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_scorm_seq_rulecond`
--

LOCK TABLES `mdl_scorm_seq_rulecond` WRITE;
/*!40000 ALTER TABLE `mdl_scorm_seq_rulecond` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_scorm_seq_rulecond` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_scorm_seq_ruleconds`
--

DROP TABLE IF EXISTS `mdl_scorm_seq_ruleconds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_scorm_seq_ruleconds` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `scoid` bigint(10) NOT NULL DEFAULT 0,
  `conditioncombination` varchar(3) NOT NULL DEFAULT 'all',
  `ruletype` tinyint(2) NOT NULL DEFAULT 0,
  `action` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_scorseqrule_scoid_uix` (`scoid`,`id`),
  KEY `mdl_scorseqrule_sco_ix` (`scoid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='SCORM2004 rule conditions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_scorm_seq_ruleconds`
--

LOCK TABLES `mdl_scorm_seq_ruleconds` WRITE;
/*!40000 ALTER TABLE `mdl_scorm_seq_ruleconds` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_scorm_seq_ruleconds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_search_index_requests`
--

DROP TABLE IF EXISTS `mdl_search_index_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_search_index_requests` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contextid` bigint(10) NOT NULL,
  `searcharea` varchar(255) NOT NULL DEFAULT '',
  `timerequested` bigint(10) NOT NULL,
  `partialarea` varchar(255) NOT NULL DEFAULT '',
  `partialtime` bigint(10) NOT NULL,
  `indexpriority` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_searinderequ_indtim_ix` (`indexpriority`,`timerequested`),
  KEY `mdl_searinderequ_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Records requests for (re)indexing of specific contexts. Entr';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_search_index_requests`
--

LOCK TABLES `mdl_search_index_requests` WRITE;
/*!40000 ALTER TABLE `mdl_search_index_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_search_index_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_search_simpledb_index`
--

DROP TABLE IF EXISTS `mdl_search_simpledb_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_search_simpledb_index` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `docid` varchar(255) NOT NULL DEFAULT '',
  `itemid` bigint(10) NOT NULL,
  `title` longtext DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `contextid` bigint(10) NOT NULL,
  `areaid` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL,
  `courseid` bigint(10) NOT NULL,
  `owneruserid` bigint(10) DEFAULT NULL,
  `modified` bigint(10) NOT NULL,
  `userid` bigint(10) DEFAULT NULL,
  `description1` longtext DEFAULT NULL,
  `description2` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_searsimpinde_doc_uix` (`docid`),
  KEY `mdl_searsimpinde_owncon_ix` (`owneruserid`,`contextid`),
  FULLTEXT KEY `mdl_search_simpledb_index_index` (`title`,`content`,`description1`,`description2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='search_simpledb table containing the index data.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_search_simpledb_index`
--

LOCK TABLES `mdl_search_simpledb_index` WRITE;
/*!40000 ALTER TABLE `mdl_search_simpledb_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_search_simpledb_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_sessions`
--

DROP TABLE IF EXISTS `mdl_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_sessions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `state` bigint(10) NOT NULL DEFAULT 0,
  `sid` varchar(128) NOT NULL DEFAULT '',
  `userid` bigint(10) NOT NULL,
  `sessdata` longtext DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `firstip` varchar(45) DEFAULT NULL,
  `lastip` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_sess_sid_uix` (`sid`),
  KEY `mdl_sess_sta_ix` (`state`),
  KEY `mdl_sess_tim_ix` (`timecreated`),
  KEY `mdl_sess_tim2_ix` (`timemodified`),
  KEY `mdl_sess_use_ix` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Database based session storage - now recommended';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_sessions`
--

LOCK TABLES `mdl_sessions` WRITE;
/*!40000 ALTER TABLE `mdl_sessions` DISABLE KEYS */;
INSERT INTO `mdl_sessions` VALUES (4,0,'t8l8lkb5r0e332khh8ecpo50dc',2,NULL,1601072606,1601073049,'192.168.128.1','192.168.128.1');
/*!40000 ALTER TABLE `mdl_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_stats_daily`
--

DROP TABLE IF EXISTS `mdl_stats_daily`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_stats_daily` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL DEFAULT 0,
  `timeend` bigint(10) NOT NULL DEFAULT 0,
  `roleid` bigint(10) NOT NULL DEFAULT 0,
  `stattype` varchar(20) NOT NULL DEFAULT 'activity',
  `stat1` bigint(10) NOT NULL DEFAULT 0,
  `stat2` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_statdail_cou_ix` (`courseid`),
  KEY `mdl_statdail_tim_ix` (`timeend`),
  KEY `mdl_statdail_rol_ix` (`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='to accumulate daily stats';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_stats_daily`
--

LOCK TABLES `mdl_stats_daily` WRITE;
/*!40000 ALTER TABLE `mdl_stats_daily` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_stats_daily` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_stats_monthly`
--

DROP TABLE IF EXISTS `mdl_stats_monthly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_stats_monthly` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL DEFAULT 0,
  `timeend` bigint(10) NOT NULL DEFAULT 0,
  `roleid` bigint(10) NOT NULL DEFAULT 0,
  `stattype` varchar(20) NOT NULL DEFAULT 'activity',
  `stat1` bigint(10) NOT NULL DEFAULT 0,
  `stat2` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_statmont_cou_ix` (`courseid`),
  KEY `mdl_statmont_tim_ix` (`timeend`),
  KEY `mdl_statmont_rol_ix` (`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='To accumulate monthly stats';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_stats_monthly`
--

LOCK TABLES `mdl_stats_monthly` WRITE;
/*!40000 ALTER TABLE `mdl_stats_monthly` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_stats_monthly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_stats_user_daily`
--

DROP TABLE IF EXISTS `mdl_stats_user_daily`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_stats_user_daily` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `roleid` bigint(10) NOT NULL DEFAULT 0,
  `timeend` bigint(10) NOT NULL DEFAULT 0,
  `statsreads` bigint(10) NOT NULL DEFAULT 0,
  `statswrites` bigint(10) NOT NULL DEFAULT 0,
  `stattype` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_statuserdail_cou_ix` (`courseid`),
  KEY `mdl_statuserdail_use_ix` (`userid`),
  KEY `mdl_statuserdail_rol_ix` (`roleid`),
  KEY `mdl_statuserdail_tim_ix` (`timeend`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='To accumulate daily stats per course/user';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_stats_user_daily`
--

LOCK TABLES `mdl_stats_user_daily` WRITE;
/*!40000 ALTER TABLE `mdl_stats_user_daily` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_stats_user_daily` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_stats_user_monthly`
--

DROP TABLE IF EXISTS `mdl_stats_user_monthly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_stats_user_monthly` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `roleid` bigint(10) NOT NULL DEFAULT 0,
  `timeend` bigint(10) NOT NULL DEFAULT 0,
  `statsreads` bigint(10) NOT NULL DEFAULT 0,
  `statswrites` bigint(10) NOT NULL DEFAULT 0,
  `stattype` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_statusermont_cou_ix` (`courseid`),
  KEY `mdl_statusermont_use_ix` (`userid`),
  KEY `mdl_statusermont_rol_ix` (`roleid`),
  KEY `mdl_statusermont_tim_ix` (`timeend`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='To accumulate monthly stats per course/user';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_stats_user_monthly`
--

LOCK TABLES `mdl_stats_user_monthly` WRITE;
/*!40000 ALTER TABLE `mdl_stats_user_monthly` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_stats_user_monthly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_stats_user_weekly`
--

DROP TABLE IF EXISTS `mdl_stats_user_weekly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_stats_user_weekly` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `roleid` bigint(10) NOT NULL DEFAULT 0,
  `timeend` bigint(10) NOT NULL DEFAULT 0,
  `statsreads` bigint(10) NOT NULL DEFAULT 0,
  `statswrites` bigint(10) NOT NULL DEFAULT 0,
  `stattype` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_statuserweek_cou_ix` (`courseid`),
  KEY `mdl_statuserweek_use_ix` (`userid`),
  KEY `mdl_statuserweek_rol_ix` (`roleid`),
  KEY `mdl_statuserweek_tim_ix` (`timeend`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='To accumulate weekly stats per course/user';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_stats_user_weekly`
--

LOCK TABLES `mdl_stats_user_weekly` WRITE;
/*!40000 ALTER TABLE `mdl_stats_user_weekly` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_stats_user_weekly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_stats_weekly`
--

DROP TABLE IF EXISTS `mdl_stats_weekly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_stats_weekly` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL DEFAULT 0,
  `timeend` bigint(10) NOT NULL DEFAULT 0,
  `roleid` bigint(10) NOT NULL DEFAULT 0,
  `stattype` varchar(20) NOT NULL DEFAULT 'activity',
  `stat1` bigint(10) NOT NULL DEFAULT 0,
  `stat2` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_statweek_cou_ix` (`courseid`),
  KEY `mdl_statweek_tim_ix` (`timeend`),
  KEY `mdl_statweek_rol_ix` (`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='To accumulate weekly stats';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_stats_weekly`
--

LOCK TABLES `mdl_stats_weekly` WRITE;
/*!40000 ALTER TABLE `mdl_stats_weekly` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_stats_weekly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_survey`
--

DROP TABLE IF EXISTS `mdl_survey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_survey` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `template` bigint(10) NOT NULL DEFAULT 0,
  `days` mediumint(6) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `intro` longtext NOT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT 0,
  `questions` varchar(255) NOT NULL DEFAULT '',
  `completionsubmit` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_surv_cou_ix` (`course`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Each record is one SURVEY module with its configuration';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_survey`
--

LOCK TABLES `mdl_survey` WRITE;
/*!40000 ALTER TABLE `mdl_survey` DISABLE KEYS */;
INSERT INTO `mdl_survey` VALUES (1,0,0,0,985017600,985017600,'collesaname','collesaintro',0,'25,26,27,28,29,30,43,44',0),(2,0,0,0,985017600,985017600,'collespname','collespintro',0,'31,32,33,34,35,36,43,44',0),(3,0,0,0,985017600,985017600,'collesapname','collesapintro',0,'37,38,39,40,41,42,43,44',0),(4,0,0,0,985017600,985017600,'attlsname','attlsintro',0,'65,67,68',0),(5,0,0,0,985017600,985017600,'ciqname','ciqintro',0,'69,70,71,72,73',0);
/*!40000 ALTER TABLE `mdl_survey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_survey_analysis`
--

DROP TABLE IF EXISTS `mdl_survey_analysis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_survey_analysis` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `survey` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `notes` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_survanal_use_ix` (`userid`),
  KEY `mdl_survanal_sur_ix` (`survey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='text about each survey submission';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_survey_analysis`
--

LOCK TABLES `mdl_survey_analysis` WRITE;
/*!40000 ALTER TABLE `mdl_survey_analysis` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_survey_analysis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_survey_answers`
--

DROP TABLE IF EXISTS `mdl_survey_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_survey_answers` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `survey` bigint(10) NOT NULL DEFAULT 0,
  `question` bigint(10) NOT NULL DEFAULT 0,
  `time` bigint(10) NOT NULL DEFAULT 0,
  `answer1` longtext NOT NULL,
  `answer2` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_survansw_use_ix` (`userid`),
  KEY `mdl_survansw_sur_ix` (`survey`),
  KEY `mdl_survansw_que_ix` (`question`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='the answers to each questions filled by the users';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_survey_answers`
--

LOCK TABLES `mdl_survey_answers` WRITE;
/*!40000 ALTER TABLE `mdl_survey_answers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_survey_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_survey_questions`
--

DROP TABLE IF EXISTS `mdl_survey_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_survey_questions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) NOT NULL DEFAULT '',
  `shorttext` varchar(30) NOT NULL DEFAULT '',
  `multi` varchar(100) NOT NULL DEFAULT '',
  `intro` varchar(50) NOT NULL DEFAULT '',
  `type` smallint(3) NOT NULL DEFAULT 0,
  `options` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 COMMENT='the questions conforming one survey';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_survey_questions`
--

LOCK TABLES `mdl_survey_questions` WRITE;
/*!40000 ALTER TABLE `mdl_survey_questions` DISABLE KEYS */;
INSERT INTO `mdl_survey_questions` VALUES (1,'colles1','colles1short','','',1,'scaletimes5'),(2,'colles2','colles2short','','',1,'scaletimes5'),(3,'colles3','colles3short','','',1,'scaletimes5'),(4,'colles4','colles4short','','',1,'scaletimes5'),(5,'colles5','colles5short','','',1,'scaletimes5'),(6,'colles6','colles6short','','',1,'scaletimes5'),(7,'colles7','colles7short','','',1,'scaletimes5'),(8,'colles8','colles8short','','',1,'scaletimes5'),(9,'colles9','colles9short','','',1,'scaletimes5'),(10,'colles10','colles10short','','',1,'scaletimes5'),(11,'colles11','colles11short','','',1,'scaletimes5'),(12,'colles12','colles12short','','',1,'scaletimes5'),(13,'colles13','colles13short','','',1,'scaletimes5'),(14,'colles14','colles14short','','',1,'scaletimes5'),(15,'colles15','colles15short','','',1,'scaletimes5'),(16,'colles16','colles16short','','',1,'scaletimes5'),(17,'colles17','colles17short','','',1,'scaletimes5'),(18,'colles18','colles18short','','',1,'scaletimes5'),(19,'colles19','colles19short','','',1,'scaletimes5'),(20,'colles20','colles20short','','',1,'scaletimes5'),(21,'colles21','colles21short','','',1,'scaletimes5'),(22,'colles22','colles22short','','',1,'scaletimes5'),(23,'colles23','colles23short','','',1,'scaletimes5'),(24,'colles24','colles24short','','',1,'scaletimes5'),(25,'collesm1','collesm1short','1,2,3,4','collesmintro',1,'scaletimes5'),(26,'collesm2','collesm2short','5,6,7,8','collesmintro',1,'scaletimes5'),(27,'collesm3','collesm3short','9,10,11,12','collesmintro',1,'scaletimes5'),(28,'collesm4','collesm4short','13,14,15,16','collesmintro',1,'scaletimes5'),(29,'collesm5','collesm5short','17,18,19,20','collesmintro',1,'scaletimes5'),(30,'collesm6','collesm6short','21,22,23,24','collesmintro',1,'scaletimes5'),(31,'collesm1','collesm1short','1,2,3,4','collesmintro',2,'scaletimes5'),(32,'collesm2','collesm2short','5,6,7,8','collesmintro',2,'scaletimes5'),(33,'collesm3','collesm3short','9,10,11,12','collesmintro',2,'scaletimes5'),(34,'collesm4','collesm4short','13,14,15,16','collesmintro',2,'scaletimes5'),(35,'collesm5','collesm5short','17,18,19,20','collesmintro',2,'scaletimes5'),(36,'collesm6','collesm6short','21,22,23,24','collesmintro',2,'scaletimes5'),(37,'collesm1','collesm1short','1,2,3,4','collesmintro',3,'scaletimes5'),(38,'collesm2','collesm2short','5,6,7,8','collesmintro',3,'scaletimes5'),(39,'collesm3','collesm3short','9,10,11,12','collesmintro',3,'scaletimes5'),(40,'collesm4','collesm4short','13,14,15,16','collesmintro',3,'scaletimes5'),(41,'collesm5','collesm5short','17,18,19,20','collesmintro',3,'scaletimes5'),(42,'collesm6','collesm6short','21,22,23,24','collesmintro',3,'scaletimes5'),(43,'howlong','','','',1,'howlongoptions'),(44,'othercomments','','','',0,NULL),(45,'attls1','attls1short','','',1,'scaleagree5'),(46,'attls2','attls2short','','',1,'scaleagree5'),(47,'attls3','attls3short','','',1,'scaleagree5'),(48,'attls4','attls4short','','',1,'scaleagree5'),(49,'attls5','attls5short','','',1,'scaleagree5'),(50,'attls6','attls6short','','',1,'scaleagree5'),(51,'attls7','attls7short','','',1,'scaleagree5'),(52,'attls8','attls8short','','',1,'scaleagree5'),(53,'attls9','attls9short','','',1,'scaleagree5'),(54,'attls10','attls10short','','',1,'scaleagree5'),(55,'attls11','attls11short','','',1,'scaleagree5'),(56,'attls12','attls12short','','',1,'scaleagree5'),(57,'attls13','attls13short','','',1,'scaleagree5'),(58,'attls14','attls14short','','',1,'scaleagree5'),(59,'attls15','attls15short','','',1,'scaleagree5'),(60,'attls16','attls16short','','',1,'scaleagree5'),(61,'attls17','attls17short','','',1,'scaleagree5'),(62,'attls18','attls18short','','',1,'scaleagree5'),(63,'attls19','attls19short','','',1,'scaleagree5'),(64,'attls20','attls20short','','',1,'scaleagree5'),(65,'attlsm1','attlsm1','45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64','attlsmintro',1,'scaleagree5'),(66,'-','-','-','-',0,'-'),(67,'attlsm2','attlsm2','63,62,59,57,55,49,52,50,48,47','attlsmintro',-1,'scaleagree5'),(68,'attlsm3','attlsm3','46,54,45,51,60,53,56,58,61,64','attlsmintro',-1,'scaleagree5'),(69,'ciq1','ciq1short','','',0,NULL),(70,'ciq2','ciq2short','','',0,NULL),(71,'ciq3','ciq3short','','',0,NULL),(72,'ciq4','ciq4short','','',0,NULL),(73,'ciq5','ciq5short','','',0,NULL);
/*!40000 ALTER TABLE `mdl_survey_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tag`
--

DROP TABLE IF EXISTS `mdl_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tag` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `tagcollid` bigint(10) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `rawname` varchar(255) NOT NULL DEFAULT '',
  `isstandard` tinyint(1) NOT NULL DEFAULT 0,
  `description` longtext DEFAULT NULL,
  `descriptionformat` tinyint(2) NOT NULL DEFAULT 0,
  `flag` smallint(4) DEFAULT 0,
  `timemodified` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_tag_tagnam_uix` (`tagcollid`,`name`),
  KEY `mdl_tag_tagiss_ix` (`tagcollid`,`isstandard`),
  KEY `mdl_tag_use_ix` (`userid`),
  KEY `mdl_tag_tag_ix` (`tagcollid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag table - this generic table will replace the old "tags" t';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tag`
--

LOCK TABLES `mdl_tag` WRITE;
/*!40000 ALTER TABLE `mdl_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tag_area`
--

DROP TABLE IF EXISTS `mdl_tag_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tag_area` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `component` varchar(100) NOT NULL DEFAULT '',
  `itemtype` varchar(100) NOT NULL DEFAULT '',
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `tagcollid` bigint(10) NOT NULL,
  `callback` varchar(100) DEFAULT NULL,
  `callbackfile` varchar(100) DEFAULT NULL,
  `showstandard` tinyint(1) NOT NULL DEFAULT 0,
  `multiplecontexts` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_tagarea_comite_uix` (`component`,`itemtype`),
  KEY `mdl_tagarea_tag_ix` (`tagcollid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='Defines various tag areas, one area is identified by compone';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tag_area`
--

LOCK TABLES `mdl_tag_area` WRITE;
/*!40000 ALTER TABLE `mdl_tag_area` DISABLE KEYS */;
INSERT INTO `mdl_tag_area` VALUES (1,'core','user',1,1,'user_get_tagged_users','/user/lib.php',2,0),(2,'core','course',1,1,'course_get_tagged_courses','/course/lib.php',0,0),(3,'core_question','question',1,1,NULL,NULL,0,1),(4,'core','post',1,1,'blog_get_tagged_posts','/blog/lib.php',0,0),(5,'core','blog_external',1,1,NULL,NULL,0,0),(6,'core','course_modules',1,1,'course_get_tagged_course_modules','/course/lib.php',0,0),(7,'mod_book','book_chapters',1,1,'mod_book_get_tagged_chapters','/mod/book/locallib.php',0,0),(8,'mod_data','data_records',1,1,'mod_data_get_tagged_records','/mod/data/locallib.php',0,0),(9,'mod_forum','forum_posts',1,1,'mod_forum_get_tagged_posts','/mod/forum/locallib.php',0,0),(10,'mod_glossary','glossary_entries',1,1,'mod_glossary_get_tagged_entries','/mod/glossary/locallib.php',0,0),(11,'mod_wiki','wiki_pages',1,1,'mod_wiki_get_tagged_pages','/mod/wiki/locallib.php',0,0);
/*!40000 ALTER TABLE `mdl_tag_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tag_coll`
--

DROP TABLE IF EXISTS `mdl_tag_coll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tag_coll` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `isdefault` tinyint(2) NOT NULL DEFAULT 0,
  `component` varchar(100) DEFAULT NULL,
  `sortorder` mediumint(5) NOT NULL DEFAULT 0,
  `searchable` tinyint(2) NOT NULL DEFAULT 1,
  `customurl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Defines different set of tags';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tag_coll`
--

LOCK TABLES `mdl_tag_coll` WRITE;
/*!40000 ALTER TABLE `mdl_tag_coll` DISABLE KEYS */;
INSERT INTO `mdl_tag_coll` VALUES (1,NULL,1,NULL,0,1,NULL);
/*!40000 ALTER TABLE `mdl_tag_coll` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tag_correlation`
--

DROP TABLE IF EXISTS `mdl_tag_correlation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tag_correlation` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `tagid` bigint(10) NOT NULL,
  `correlatedtags` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_tagcorr_tag_ix` (`tagid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='The rationale for the ''tag_correlation'' table is performance';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tag_correlation`
--

LOCK TABLES `mdl_tag_correlation` WRITE;
/*!40000 ALTER TABLE `mdl_tag_correlation` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_tag_correlation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tag_instance`
--

DROP TABLE IF EXISTS `mdl_tag_instance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tag_instance` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `tagid` bigint(10) NOT NULL,
  `component` varchar(100) NOT NULL DEFAULT '',
  `itemtype` varchar(100) NOT NULL DEFAULT '',
  `itemid` bigint(10) NOT NULL,
  `contextid` bigint(10) DEFAULT NULL,
  `tiuserid` bigint(10) NOT NULL DEFAULT 0,
  `ordering` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_taginst_comiteiteconti_uix` (`component`,`itemtype`,`itemid`,`contextid`,`tiuserid`,`tagid`),
  KEY `mdl_taginst_itecomtagcon_ix` (`itemtype`,`component`,`tagid`,`contextid`),
  KEY `mdl_taginst_tag_ix` (`tagid`),
  KEY `mdl_taginst_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='tag_instance table holds the information of associations bet';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tag_instance`
--

LOCK TABLES `mdl_tag_instance` WRITE;
/*!40000 ALTER TABLE `mdl_tag_instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_tag_instance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_task_adhoc`
--

DROP TABLE IF EXISTS `mdl_task_adhoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_task_adhoc` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `component` varchar(255) NOT NULL DEFAULT '',
  `classname` varchar(255) NOT NULL DEFAULT '',
  `nextruntime` bigint(10) NOT NULL,
  `faildelay` bigint(10) DEFAULT NULL,
  `customdata` longtext DEFAULT NULL,
  `userid` bigint(10) DEFAULT NULL,
  `blocking` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_taskadho_nex_ix` (`nextruntime`),
  KEY `mdl_taskadho_use_ix` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='List of adhoc tasks waiting to run.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_task_adhoc`
--

LOCK TABLES `mdl_task_adhoc` WRITE;
/*!40000 ALTER TABLE `mdl_task_adhoc` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_task_adhoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_task_scheduled`
--

DROP TABLE IF EXISTS `mdl_task_scheduled`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_task_scheduled` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `component` varchar(255) NOT NULL DEFAULT '',
  `classname` varchar(255) NOT NULL DEFAULT '',
  `lastruntime` bigint(10) DEFAULT NULL,
  `nextruntime` bigint(10) DEFAULT NULL,
  `blocking` tinyint(2) NOT NULL DEFAULT 0,
  `minute` varchar(25) NOT NULL DEFAULT '',
  `hour` varchar(25) NOT NULL DEFAULT '',
  `day` varchar(25) NOT NULL DEFAULT '',
  `month` varchar(25) NOT NULL DEFAULT '',
  `dayofweek` varchar(25) NOT NULL DEFAULT '',
  `faildelay` bigint(10) DEFAULT NULL,
  `customised` tinyint(2) NOT NULL DEFAULT 0,
  `disabled` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_tasksche_cla_uix` (`classname`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 COMMENT='List of scheduled tasks to be run by cron.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_task_scheduled`
--

LOCK TABLES `mdl_task_scheduled` WRITE;
/*!40000 ALTER TABLE `mdl_task_scheduled` DISABLE KEYS */;
INSERT INTO `mdl_task_scheduled` VALUES (1,'moodle','\\core\\task\\session_cleanup_task',1601073061,1601073120,0,'*','*','*','*','*',0,0,0),(2,'moodle','\\core\\task\\delete_unconfirmed_users_task',1601071202,1601074800,0,'0','*','*','*','*',0,0,0),(3,'moodle','\\core\\task\\delete_incomplete_users_task',1601071502,1601075100,0,'5','*','*','*','*',0,0,0),(4,'moodle','\\core\\task\\backup_cleanup_task',1601072641,1601075400,0,'10','*','*','*','*',0,0,0),(5,'moodle','\\core\\task\\tag_cron_task',0,1601089500,0,'5','3','*','*','*',0,0,0),(6,'moodle','\\core\\task\\context_cleanup_task',1601072701,1601076300,0,'25','*','*','*','*',0,0,0),(7,'moodle','\\core\\task\\cache_cleanup_task',1601073001,1601076600,0,'30','*','*','*','*',0,0,0),(8,'moodle','\\core\\task\\messaging_cleanup_task',0,1601073300,0,'35','*','*','*','*',0,0,0),(9,'moodle','\\core\\task\\send_new_user_passwords_task',1601073061,1601073120,0,'*','*','*','*','*',0,0,0),(10,'moodle','\\core\\task\\send_failed_login_notifications_task',1601073061,1601073120,0,'*','*','*','*','*',0,0,0),(11,'moodle','\\core\\task\\create_contexts_task',0,1601078400,1,'0','0','*','*','*',0,0,0),(12,'moodle','\\core\\task\\legacy_plugin_cron_task',1601073061,1601073120,0,'*','*','*','*','*',0,0,0),(13,'moodle','\\core\\task\\grade_cron_task',1601073061,1601073120,0,'*','*','*','*','*',0,0,0),(14,'moodle','\\core\\task\\completion_regular_task',1601073061,1601073120,0,'*','*','*','*','*',0,0,0),(15,'moodle','\\core\\task\\completion_daily_task',0,1601111580,0,'13','9','*','*','*',0,0,0),(16,'moodle','\\core\\task\\portfolio_cron_task',1601073061,1601073120,0,'*','*','*','*','*',0,0,0),(17,'moodle','\\core\\task\\plagiarism_cron_task',1601073061,1601073120,0,'*','*','*','*','*',0,0,0),(18,'moodle','\\core\\task\\calendar_cron_task',1601073061,1601073120,0,'*','*','*','*','*',0,0,0),(19,'moodle','\\core\\task\\blog_cron_task',1601073061,1601073120,0,'*','*','*','*','*',0,0,0),(20,'moodle','\\core\\task\\question_cron_task',1601073061,1601073120,0,'*','*','*','*','*',0,0,0),(21,'moodle','\\core\\task\\registration_cron_task',0,1601579400,0,'10','19','*','*','4',0,0,0),(22,'moodle','\\core\\task\\check_for_updates_task',1601071207,1601074800,0,'0','*/2','*','*','*',0,0,0),(23,'moodle','\\core\\task\\cache_cron_task',0,1601074200,0,'50','*','*','*','*',0,0,0),(24,'moodle','\\core\\task\\automated_backup_task',0,1601074200,0,'50','*','*','*','*',0,0,0),(25,'moodle','\\core\\task\\badges_cron_task',1601073001,1601073300,0,'*/5','*','*','*','*',0,0,0),(26,'moodle','\\core\\task\\file_temp_cleanup_task',0,1601081700,0,'55','*/6','*','*','*',0,0,0),(27,'moodle','\\core\\task\\file_trash_cleanup_task',0,1601081700,0,'55','*/6','*','*','*',0,0,0),(28,'moodle','\\core\\task\\search_index_task',1601073001,1601074800,0,'*/30','*','*','*','*',0,0,0),(29,'moodle','\\core\\task\\search_optimize_task',0,1601079300,0,'15','*/12','*','*','*',0,0,0),(30,'moodle','\\core\\task\\stats_cron_task',0,1601078400,0,'0','0','*','*','*',0,0,0),(31,'moodle','\\core\\task\\password_reset_cleanup_task',0,1601078400,0,'0','*/6','*','*','*',0,0,0),(32,'moodle','\\core\\task\\complete_plans_task',1601071442,1601075040,0,'4','*','*','*','*',0,0,0),(33,'moodle','\\core\\task\\sync_plans_from_template_cohorts_task',1601072641,1601076180,0,'23','*','*','*','*',0,0,0),(34,'moodle','\\core_files\\task\\conversion_cleanup_task',0,1601085900,0,'5','2','*','*','*',0,0,0),(35,'moodle','\\core\\oauth2\\refresh_system_tokens_task',1601073001,1601076600,0,'30','*','*','*','*',0,0,0),(36,'moodle','\\core\\task\\analytics_cleanup_task',0,1601073720,0,'42','*','*','*','*',0,0,0),(37,'mod_forum','\\mod_forum\\task\\cron_task',1601073061,1601073120,0,'*','*','*','*','*',0,0,0),(38,'mod_scorm','\\mod_scorm\\task\\cron_task',1601073001,1601073300,0,'*/5','*','*','*','*',0,0,0),(39,'auth_cas','\\auth_cas\\task\\sync_task',0,1601074800,0,'0','0','*','*','*',0,0,1),(40,'auth_db','\\auth_db\\task\\sync_users',0,1601114760,0,'6','11','*','*','*',0,0,1),(41,'auth_ldap','\\auth_ldap\\task\\sync_roles',0,1601074800,0,'0','0','*','*','*',0,0,1),(42,'auth_ldap','\\auth_ldap\\task\\sync_task',0,1601074800,0,'0','0','*','*','*',0,0,1),(43,'enrol_category','\\enrol_category\\task\\enrol_category_sync',0,1601070840,0,'*','*','*','*','*',0,0,0),(44,'enrol_cohort','\\enrol_cohort\\task\\enrol_cohort_sync',1601072641,1601075820,0,'17','*','*','*','*',0,0,0),(45,'enrol_flatfile','\\enrol_flatfile\\task\\flatfile_sync_task',0,1601072100,0,'15','*','*','*','*',0,0,0),(46,'enrol_imsenterprise','\\enrol_imsenterprise\\task\\cron_task',0,1601071800,0,'10','*','*','*','*',0,0,0),(47,'enrol_ldap','\\enrol_ldap\\task\\sync_enrolments',0,1601107500,0,'5','9','*','*','*',0,0,1),(48,'enrol_lti','\\enrol_lti\\task\\sync_grades',0,1601071200,0,'*/30','*','*','*','*',0,0,0),(49,'enrol_lti','\\enrol_lti\\task\\sync_members',0,1601071200,0,'*/30','*','*','*','*',0,0,0),(50,'enrol_manual','\\enrol_manual\\task\\sync_enrolments',1601073001,1601073600,0,'*/10','*','*','*','*',0,0,0),(51,'enrol_manual','\\enrol_manual\\task\\send_expiry_notifications',1601073001,1601073600,0,'*/10','*','*','*','*',0,0,0),(52,'enrol_meta','\\enrol_meta\\task\\enrol_meta_sync',0,1601071620,0,'7','*','*','*','*',0,0,0),(53,'enrol_paypal','\\enrol_paypal\\task\\process_expirations',0,1601070840,0,'*','*','*','*','*',0,0,0),(54,'enrol_self','\\enrol_self\\task\\sync_enrolments',1601073001,1601073600,0,'*/10','*','*','*','*',0,0,0),(55,'enrol_self','\\enrol_self\\task\\send_expiry_notifications',1601073001,1601073600,0,'*/10','*','*','*','*',0,0,0),(56,'block_recent_activity','\\block_recent_activity\\task\\cleanup',0,1601103960,0,'6','8','*','*','*',0,0,0),(57,'block_rss_client','\\block_rss_client\\task\\refreshfeeds',1601073001,1601073300,0,'*/5','*','*','*','*',0,0,0),(58,'editor_atto','\\editor_atto\\task\\autosave_cleanup_task',0,1601129160,0,'6','15','*','*','0',0,0,0),(59,'repository_onedrive','\\repository_onedrive\\remove_temp_access_task',0,1601590500,0,'15','23','*','*','4',0,0,0),(60,'tool_analytics','\\tool_analytics\\task\\train_models',0,1601092800,0,'0','5','*','*','*',0,0,0),(61,'tool_analytics','\\tool_analytics\\task\\predict_models',0,1601085600,0,'0','3','*','*','*',0,0,0),(62,'tool_cohortroles','\\tool_cohortroles\\task\\cohort_role_sync',1601072641,1601076060,0,'21','*','*','*','*',0,0,0),(63,'tool_dataprivacy','\\tool_dataprivacy\\task\\expired_retention_period',0,1601125200,0,'0','14','*','*','*',0,0,0),(64,'tool_dataprivacy','\\tool_dataprivacy\\task\\delete_expired_contexts',0,1601128800,0,'0','15','*','*','*',0,0,0),(65,'tool_dataprivacy','\\tool_dataprivacy\\task\\delete_expired_requests',0,1601082180,0,'3','2','*','*','*',0,0,0),(66,'tool_dataprivacy','\\tool_dataprivacy\\task\\delete_existing_deleted_users',0,1601144460,0,'21','19','*','*','*',0,0,1),(67,'tool_langimport','\\tool_langimport\\task\\update_langpacks_task',0,1601089860,0,'11','4','*','*','*',0,0,0),(68,'tool_messageinbound','\\tool_messageinbound\\task\\pickup_task',1601073061,1601073120,0,'*','*','*','*','*',0,0,0),(69,'tool_messageinbound','\\tool_messageinbound\\task\\cleanup_task',0,1601081700,0,'55','1','*','*','*',0,0,0),(70,'tool_monitor','\\tool_monitor\\task\\clean_events',1601073061,1601073120,0,'*','*','*','*','*',0,0,0),(71,'tool_monitor','\\tool_monitor\\task\\check_subscriptions',0,1601082180,0,'3','2','*','*','*',0,0,0),(72,'tool_recyclebin','\\tool_recyclebin\\task\\cleanup_course_bin',1601073001,1601074800,0,'*/30','*','*','*','*',0,0,0),(73,'tool_recyclebin','\\tool_recyclebin\\task\\cleanup_category_bin',1601073001,1601074800,0,'*/30','*','*','*','*',0,0,0),(74,'assignfeedback_editpdf','\\assignfeedback_editpdf\\task\\convert_submissions',1601073001,1601073900,0,'*/15','*','*','*','*',0,0,0),(75,'ltiservice_gradebookservices','\\ltiservice_gradebookservices\\task\\cleanup_task',0,1601133000,0,'10','16','*','*','*',0,0,0),(76,'logstore_legacy','\\logstore_legacy\\task\\cleanup_task',0,1601093340,0,'9','5','*','*','*',0,0,0),(77,'logstore_standard','\\logstore_standard\\task\\cleanup_task',0,1601089800,0,'10','4','*','*','*',0,0,0);
/*!40000 ALTER TABLE `mdl_task_scheduled` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tool_cohortroles`
--

DROP TABLE IF EXISTS `mdl_tool_cohortroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tool_cohortroles` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `cohortid` bigint(10) NOT NULL,
  `roleid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_toolcoho_cohroluse_uix` (`cohortid`,`roleid`,`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Mapping of users to cohort role assignments.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tool_cohortroles`
--

LOCK TABLES `mdl_tool_cohortroles` WRITE;
/*!40000 ALTER TABLE `mdl_tool_cohortroles` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_tool_cohortroles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tool_customlang`
--

DROP TABLE IF EXISTS `mdl_tool_customlang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tool_customlang` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `lang` varchar(20) NOT NULL DEFAULT '',
  `componentid` bigint(10) NOT NULL,
  `stringid` varchar(255) NOT NULL DEFAULT '',
  `original` longtext NOT NULL,
  `master` longtext DEFAULT NULL,
  `local` longtext DEFAULT NULL,
  `timemodified` bigint(10) NOT NULL,
  `timecustomized` bigint(10) DEFAULT NULL,
  `outdated` smallint(3) DEFAULT 0,
  `modified` smallint(3) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_toolcust_lancomstr_uix` (`lang`,`componentid`,`stringid`),
  KEY `mdl_toolcust_com_ix` (`componentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains the working checkout of all strings and their custo';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tool_customlang`
--

LOCK TABLES `mdl_tool_customlang` WRITE;
/*!40000 ALTER TABLE `mdl_tool_customlang` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_tool_customlang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tool_customlang_components`
--

DROP TABLE IF EXISTS `mdl_tool_customlang_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tool_customlang_components` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `version` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains the list of all installed plugins that provide thei';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tool_customlang_components`
--

LOCK TABLES `mdl_tool_customlang_components` WRITE;
/*!40000 ALTER TABLE `mdl_tool_customlang_components` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_tool_customlang_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tool_dataprivacy_category`
--

DROP TABLE IF EXISTS `mdl_tool_dataprivacy_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tool_dataprivacy_category` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `description` longtext DEFAULT NULL,
  `descriptionformat` tinyint(1) DEFAULT NULL,
  `usermodified` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Data categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tool_dataprivacy_category`
--

LOCK TABLES `mdl_tool_dataprivacy_category` WRITE;
/*!40000 ALTER TABLE `mdl_tool_dataprivacy_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_tool_dataprivacy_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tool_dataprivacy_ctxexpired`
--

DROP TABLE IF EXISTS `mdl_tool_dataprivacy_ctxexpired`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tool_dataprivacy_ctxexpired` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contextid` bigint(10) NOT NULL,
  `unexpiredroles` longtext DEFAULT NULL,
  `expiredroles` longtext DEFAULT NULL,
  `defaultexpired` tinyint(1) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 0,
  `usermodified` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_tooldatactxe_con_uix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Default comment for the table, please edit me';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tool_dataprivacy_ctxexpired`
--

LOCK TABLES `mdl_tool_dataprivacy_ctxexpired` WRITE;
/*!40000 ALTER TABLE `mdl_tool_dataprivacy_ctxexpired` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_tool_dataprivacy_ctxexpired` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tool_dataprivacy_ctxinstance`
--

DROP TABLE IF EXISTS `mdl_tool_dataprivacy_ctxinstance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tool_dataprivacy_ctxinstance` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contextid` bigint(10) NOT NULL,
  `purposeid` bigint(10) DEFAULT NULL,
  `categoryid` bigint(10) DEFAULT NULL,
  `usermodified` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_tooldatactxi_con_uix` (`contextid`),
  KEY `mdl_tooldatactxi_pur_ix` (`purposeid`),
  KEY `mdl_tooldatactxi_cat_ix` (`categoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Default comment for the table, please edit me';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tool_dataprivacy_ctxinstance`
--

LOCK TABLES `mdl_tool_dataprivacy_ctxinstance` WRITE;
/*!40000 ALTER TABLE `mdl_tool_dataprivacy_ctxinstance` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_tool_dataprivacy_ctxinstance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tool_dataprivacy_ctxlevel`
--

DROP TABLE IF EXISTS `mdl_tool_dataprivacy_ctxlevel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tool_dataprivacy_ctxlevel` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contextlevel` smallint(3) NOT NULL,
  `purposeid` bigint(10) DEFAULT NULL,
  `categoryid` bigint(10) DEFAULT NULL,
  `usermodified` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_tooldatactxl_con_uix` (`contextlevel`),
  KEY `mdl_tooldatactxl_cat_ix` (`categoryid`),
  KEY `mdl_tooldatactxl_pur_ix` (`purposeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Default comment for the table, please edit me';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tool_dataprivacy_ctxlevel`
--

LOCK TABLES `mdl_tool_dataprivacy_ctxlevel` WRITE;
/*!40000 ALTER TABLE `mdl_tool_dataprivacy_ctxlevel` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_tool_dataprivacy_ctxlevel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tool_dataprivacy_purpose`
--

DROP TABLE IF EXISTS `mdl_tool_dataprivacy_purpose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tool_dataprivacy_purpose` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `description` longtext DEFAULT NULL,
  `descriptionformat` tinyint(1) DEFAULT NULL,
  `lawfulbases` longtext NOT NULL,
  `sensitivedatareasons` longtext DEFAULT NULL,
  `retentionperiod` varchar(255) NOT NULL DEFAULT '',
  `protected` tinyint(1) DEFAULT NULL,
  `usermodified` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Data purposes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tool_dataprivacy_purpose`
--

LOCK TABLES `mdl_tool_dataprivacy_purpose` WRITE;
/*!40000 ALTER TABLE `mdl_tool_dataprivacy_purpose` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_tool_dataprivacy_purpose` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tool_dataprivacy_purposerole`
--

DROP TABLE IF EXISTS `mdl_tool_dataprivacy_purposerole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tool_dataprivacy_purposerole` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `purposeid` bigint(10) NOT NULL,
  `roleid` bigint(10) NOT NULL,
  `lawfulbases` longtext DEFAULT NULL,
  `sensitivedatareasons` longtext DEFAULT NULL,
  `retentionperiod` varchar(255) NOT NULL DEFAULT '',
  `protected` tinyint(1) DEFAULT NULL,
  `usermodified` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_tooldatapurp_purrol_uix` (`purposeid`,`roleid`),
  KEY `mdl_tooldatapurp_pur_ix` (`purposeid`),
  KEY `mdl_tooldatapurp_rol_ix` (`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Data purpose overrides for a specific role';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tool_dataprivacy_purposerole`
--

LOCK TABLES `mdl_tool_dataprivacy_purposerole` WRITE;
/*!40000 ALTER TABLE `mdl_tool_dataprivacy_purposerole` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_tool_dataprivacy_purposerole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tool_dataprivacy_request`
--

DROP TABLE IF EXISTS `mdl_tool_dataprivacy_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tool_dataprivacy_request` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `type` bigint(10) NOT NULL DEFAULT 0,
  `comments` longtext DEFAULT NULL,
  `commentsformat` tinyint(2) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `requestedby` bigint(10) NOT NULL DEFAULT 0,
  `status` tinyint(2) NOT NULL DEFAULT 0,
  `dpo` bigint(10) DEFAULT 0,
  `dpocomment` longtext DEFAULT NULL,
  `dpocommentformat` tinyint(2) NOT NULL DEFAULT 0,
  `usermodified` bigint(10) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `creationmethod` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_tooldatarequ_use_ix` (`userid`),
  KEY `mdl_tooldatarequ_req_ix` (`requestedby`),
  KEY `mdl_tooldatarequ_dpo_ix` (`dpo`),
  KEY `mdl_tooldatarequ_use2_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Table for data requests';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tool_dataprivacy_request`
--

LOCK TABLES `mdl_tool_dataprivacy_request` WRITE;
/*!40000 ALTER TABLE `mdl_tool_dataprivacy_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_tool_dataprivacy_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tool_monitor_events`
--

DROP TABLE IF EXISTS `mdl_tool_monitor_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tool_monitor_events` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `eventname` varchar(254) NOT NULL DEFAULT '',
  `contextid` bigint(10) NOT NULL,
  `contextlevel` bigint(10) NOT NULL,
  `contextinstanceid` bigint(10) NOT NULL,
  `link` varchar(254) NOT NULL DEFAULT '',
  `courseid` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='A table that keeps a log of events related to subscriptions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tool_monitor_events`
--

LOCK TABLES `mdl_tool_monitor_events` WRITE;
/*!40000 ALTER TABLE `mdl_tool_monitor_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_tool_monitor_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tool_monitor_history`
--

DROP TABLE IF EXISTS `mdl_tool_monitor_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tool_monitor_history` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `sid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `timesent` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_toolmonihist_sidusetim_uix` (`sid`,`userid`,`timesent`),
  KEY `mdl_toolmonihist_sid_ix` (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Table to store history of message notifications sent';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tool_monitor_history`
--

LOCK TABLES `mdl_tool_monitor_history` WRITE;
/*!40000 ALTER TABLE `mdl_tool_monitor_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_tool_monitor_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tool_monitor_rules`
--

DROP TABLE IF EXISTS `mdl_tool_monitor_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tool_monitor_rules` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `description` longtext DEFAULT NULL,
  `descriptionformat` tinyint(1) NOT NULL,
  `name` varchar(254) NOT NULL DEFAULT '',
  `userid` bigint(10) NOT NULL,
  `courseid` bigint(10) NOT NULL,
  `plugin` varchar(254) NOT NULL DEFAULT '',
  `eventname` varchar(254) NOT NULL DEFAULT '',
  `template` longtext NOT NULL,
  `templateformat` tinyint(1) NOT NULL,
  `frequency` smallint(4) NOT NULL,
  `timewindow` mediumint(5) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_toolmonirule_couuse_ix` (`courseid`,`userid`),
  KEY `mdl_toolmonirule_eve_ix` (`eventname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Table to store rules';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tool_monitor_rules`
--

LOCK TABLES `mdl_tool_monitor_rules` WRITE;
/*!40000 ALTER TABLE `mdl_tool_monitor_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_tool_monitor_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tool_monitor_subscriptions`
--

DROP TABLE IF EXISTS `mdl_tool_monitor_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tool_monitor_subscriptions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL,
  `ruleid` bigint(10) NOT NULL,
  `cmid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `lastnotificationsent` bigint(10) NOT NULL DEFAULT 0,
  `inactivedate` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_toolmonisubs_couuse_ix` (`courseid`,`userid`),
  KEY `mdl_toolmonisubs_rul_ix` (`ruleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Table to store user subscriptions to various rules';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tool_monitor_subscriptions`
--

LOCK TABLES `mdl_tool_monitor_subscriptions` WRITE;
/*!40000 ALTER TABLE `mdl_tool_monitor_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_tool_monitor_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tool_policy`
--

DROP TABLE IF EXISTS `mdl_tool_policy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tool_policy` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `sortorder` mediumint(5) NOT NULL DEFAULT 999,
  `currentversionid` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_toolpoli_cur_ix` (`currentversionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains the list of policy documents defined on the site.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tool_policy`
--

LOCK TABLES `mdl_tool_policy` WRITE;
/*!40000 ALTER TABLE `mdl_tool_policy` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_tool_policy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tool_policy_acceptances`
--

DROP TABLE IF EXISTS `mdl_tool_policy_acceptances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tool_policy_acceptances` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `policyversionid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `lang` varchar(30) NOT NULL DEFAULT '',
  `usermodified` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `note` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_toolpoliacce_poluse_uix` (`policyversionid`,`userid`),
  KEY `mdl_toolpoliacce_pol_ix` (`policyversionid`),
  KEY `mdl_toolpoliacce_use_ix` (`userid`),
  KEY `mdl_toolpoliacce_use2_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tracks users accepting the policy versions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tool_policy_acceptances`
--

LOCK TABLES `mdl_tool_policy_acceptances` WRITE;
/*!40000 ALTER TABLE `mdl_tool_policy_acceptances` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_tool_policy_acceptances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tool_policy_versions`
--

DROP TABLE IF EXISTS `mdl_tool_policy_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tool_policy_versions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(1333) NOT NULL DEFAULT '',
  `type` smallint(3) NOT NULL DEFAULT 0,
  `audience` smallint(3) NOT NULL DEFAULT 0,
  `archived` smallint(3) NOT NULL DEFAULT 0,
  `usermodified` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `policyid` bigint(10) NOT NULL,
  `agreementstyle` smallint(3) NOT NULL DEFAULT 0,
  `optional` smallint(3) NOT NULL DEFAULT 0,
  `revision` varchar(1333) NOT NULL DEFAULT '',
  `summary` longtext NOT NULL,
  `summaryformat` smallint(3) NOT NULL,
  `content` longtext NOT NULL,
  `contentformat` smallint(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_toolpolivers_use_ix` (`usermodified`),
  KEY `mdl_toolpolivers_pol_ix` (`policyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Holds versions of the policy documents';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tool_policy_versions`
--

LOCK TABLES `mdl_tool_policy_versions` WRITE;
/*!40000 ALTER TABLE `mdl_tool_policy_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_tool_policy_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tool_recyclebin_category`
--

DROP TABLE IF EXISTS `mdl_tool_recyclebin_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tool_recyclebin_category` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `categoryid` bigint(10) NOT NULL,
  `shortname` varchar(255) NOT NULL DEFAULT '',
  `fullname` varchar(255) NOT NULL DEFAULT '',
  `timecreated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_toolrecycate_tim_ix` (`timecreated`),
  KEY `mdl_toolrecycate_cat_ix` (`categoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='A list of items in the category recycle bin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tool_recyclebin_category`
--

LOCK TABLES `mdl_tool_recyclebin_category` WRITE;
/*!40000 ALTER TABLE `mdl_tool_recyclebin_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_tool_recyclebin_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tool_recyclebin_course`
--

DROP TABLE IF EXISTS `mdl_tool_recyclebin_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tool_recyclebin_course` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL,
  `section` bigint(10) NOT NULL,
  `module` bigint(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_toolrecycour_tim_ix` (`timecreated`),
  KEY `mdl_toolrecycour_cou_ix` (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='A list of items in the course recycle bin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tool_recyclebin_course`
--

LOCK TABLES `mdl_tool_recyclebin_course` WRITE;
/*!40000 ALTER TABLE `mdl_tool_recyclebin_course` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_tool_recyclebin_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tool_usertours_steps`
--

DROP TABLE IF EXISTS `mdl_tool_usertours_steps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tool_usertours_steps` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `tourid` bigint(10) NOT NULL,
  `title` longtext DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `targettype` tinyint(2) NOT NULL,
  `targetvalue` longtext NOT NULL,
  `sortorder` bigint(10) NOT NULL DEFAULT 0,
  `configdata` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_tooluserstep_tousor_ix` (`tourid`,`sortorder`),
  KEY `mdl_tooluserstep_tou_ix` (`tourid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='Steps in an tour';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tool_usertours_steps`
--

LOCK TABLES `mdl_tool_usertours_steps` WRITE;
/*!40000 ALTER TABLE `mdl_tool_usertours_steps` DISABLE KEYS */;
INSERT INTO `mdl_tool_usertours_steps` VALUES (1,1,'tour4_title_messaging,tool_usertours','tour4_content_messaging,tool_usertours',2,'',0,'{\"backdrop\":\"1\"}'),(2,1,'tour4_title_icon,tool_usertours','tour4_content_icon,tool_usertours',0,'[id^=message-drawer-toggle]',1,'{\"backdrop\":\"0\",\"reflex\":\"1\"}'),(3,1,'tour4_title_groupconvo,tool_usertours','tour4_content_groupconvo,tool_usertours',0,'.message-drawer:not(.hidden) [data-region=\"view-overview-group-messages\"]',2,'{\"placement\":\"left\"}'),(4,1,'tour4_title_starred,tool_usertours','tour4_content_starred,tool_usertours',0,'.message-drawer:not(.hidden) [data-region=\"view-overview-favourites\"]',3,'{\"placement\":\"left\"}'),(5,1,'tour4_title_settings,tool_usertours','tour4_content_settings,tool_usertours',0,'.message-drawer:not(.hidden) [data-route=\"view-settings\"]',4,'{\"reflex\":\"1\"}'),(6,1,'tour_final_step_title,tool_usertours','tour_final_step_content,tool_usertours',2,'',5,'{}'),(7,2,'tour3_title_dashboard,tool_usertours','tour3_content_dashboard,tool_usertours',2,'',0,'{\"backdrop\":\"1\"}'),(8,2,'tour3_title_dashboard,tool_usertours','tour3_content_timeline,tool_usertours',1,'timeline',1,'{\"reflex\":\"0\"}'),(9,2,'tour3_title_recentcourses,tool_usertours','tour3_content_recentcourses,tool_usertours',1,'recentlyaccessedcourses',2,'{\"placement\":\"top\",\"backdrop\":\"1\"}'),(10,2,'tour3_title_overview,tool_usertours','tour3_content_overview,tool_usertours',1,'myoverview',3,'{}'),(11,2,'tour3_title_starring,tool_usertours','tour3_content_starring,tool_usertours',0,'.block-myoverview [data-display=\"cards\"] [data-region=\"course-content\"] .coursemenubtn',4,'{\"placement\":\"right\"}'),(12,2,'tour3_title_starring,tool_usertours','tour3_content_starring,tool_usertours',0,'.block-myoverview [data-display]:not([data-display=\"cards\"]) [data-region=\"course-content\"] .coursemenubtn',5,'{}'),(13,2,'tour3_title_displayoptions,tool_usertours','tour3_content_displayoptions,tool_usertours',0,'#sortingdropdown',6,'{\"placement\":\"top\"}'),(14,2,'tour_final_step_title,tool_usertours','tour_final_step_content,tool_usertours',2,'',7,'{}');
/*!40000 ALTER TABLE `mdl_tool_usertours_steps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tool_usertours_tours`
--

DROP TABLE IF EXISTS `mdl_tool_usertours_tours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tool_usertours_tours` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` longtext DEFAULT NULL,
  `pathmatch` varchar(255) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 0,
  `sortorder` bigint(10) NOT NULL DEFAULT 0,
  `configdata` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='List of tours';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tool_usertours_tours`
--

LOCK TABLES `mdl_tool_usertours_tours` WRITE;
/*!40000 ALTER TABLE `mdl_tool_usertours_tours` DISABLE KEYS */;
INSERT INTO `mdl_tool_usertours_tours` VALUES (1,'New Messaging System','New messaging interface in Moodle 3.6','/course/view.php%',1,1,'{\"placement\":\"bottom\",\"orphan\":\"0\",\"backdrop\":\"0\",\"reflex\":\"0\",\"filtervalues\":{\"category\":[],\"course\":[\"0\"],\"courseformat\":[],\"role\":[],\"theme\":[]},\"majorupdatetime\":1543468823,\"shipped_tour\":true,\"shipped_filename\":\"36_messaging.json\",\"shipped_version\":3}'),(2,'Dashboard','New dashboard features','/my/%',1,0,'{\"placement\":\"top\",\"orphan\":\"0\",\"backdrop\":\"0\",\"reflex\":\"0\",\"filtervalues\":{\"category\":[],\"course\":[\"0\"],\"courseformat\":[],\"role\":[],\"theme\":[]},\"majorupdatetime\":1543396938,\"shipped_tour\":true,\"shipped_filename\":\"36_dashboard.json\",\"shipped_version\":3}');
/*!40000 ALTER TABLE `mdl_tool_usertours_tours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_upgrade_log`
--

DROP TABLE IF EXISTS `mdl_upgrade_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_upgrade_log` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `type` bigint(10) NOT NULL,
  `plugin` varchar(100) DEFAULT NULL,
  `version` varchar(100) DEFAULT NULL,
  `targetversion` varchar(100) DEFAULT NULL,
  `info` varchar(255) NOT NULL DEFAULT '',
  `details` longtext DEFAULT NULL,
  `backtrace` longtext DEFAULT NULL,
  `userid` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_upgrlog_tim_ix` (`timemodified`),
  KEY `mdl_upgrlog_typtim_ix` (`type`,`timemodified`),
  KEY `mdl_upgrlog_use_ix` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=1194 DEFAULT CHARSET=utf8 COMMENT='Upgrade logging';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_upgrade_log`
--

LOCK TABLES `mdl_upgrade_log` WRITE;
/*!40000 ALTER TABLE `mdl_upgrade_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_upgrade_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_url`
--

DROP TABLE IF EXISTS `mdl_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_url` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `intro` longtext DEFAULT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT 0,
  `externalurl` longtext NOT NULL,
  `display` smallint(4) NOT NULL DEFAULT 0,
  `displayoptions` longtext DEFAULT NULL,
  `parameters` longtext DEFAULT NULL,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_url_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='each record is one url resource';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_url`
--

LOCK TABLES `mdl_url` WRITE;
/*!40000 ALTER TABLE `mdl_url` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_user`
--

DROP TABLE IF EXISTS `mdl_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_user` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `auth` varchar(20) NOT NULL DEFAULT 'manual',
  `confirmed` tinyint(1) NOT NULL DEFAULT 0,
  `policyagreed` tinyint(1) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `suspended` tinyint(1) NOT NULL DEFAULT 0,
  `mnethostid` bigint(10) NOT NULL DEFAULT 0,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `idnumber` varchar(255) NOT NULL DEFAULT '',
  `firstname` varchar(100) NOT NULL DEFAULT '',
  `lastname` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `emailstop` tinyint(1) NOT NULL DEFAULT 0,
  `icq` varchar(15) NOT NULL DEFAULT '',
  `skype` varchar(50) NOT NULL DEFAULT '',
  `yahoo` varchar(50) NOT NULL DEFAULT '',
  `aim` varchar(50) NOT NULL DEFAULT '',
  `msn` varchar(50) NOT NULL DEFAULT '',
  `phone1` varchar(20) NOT NULL DEFAULT '',
  `phone2` varchar(20) NOT NULL DEFAULT '',
  `institution` varchar(255) NOT NULL DEFAULT '',
  `department` varchar(255) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(120) NOT NULL DEFAULT '',
  `country` varchar(2) NOT NULL DEFAULT '',
  `lang` varchar(30) NOT NULL DEFAULT 'en',
  `calendartype` varchar(30) NOT NULL DEFAULT 'gregorian',
  `theme` varchar(50) NOT NULL DEFAULT '',
  `timezone` varchar(100) NOT NULL DEFAULT '99',
  `firstaccess` bigint(10) NOT NULL DEFAULT 0,
  `lastaccess` bigint(10) NOT NULL DEFAULT 0,
  `lastlogin` bigint(10) NOT NULL DEFAULT 0,
  `currentlogin` bigint(10) NOT NULL DEFAULT 0,
  `lastip` varchar(45) NOT NULL DEFAULT '',
  `secret` varchar(15) NOT NULL DEFAULT '',
  `picture` bigint(10) NOT NULL DEFAULT 0,
  `url` varchar(255) NOT NULL DEFAULT '',
  `description` longtext DEFAULT NULL,
  `descriptionformat` tinyint(2) NOT NULL DEFAULT 1,
  `mailformat` tinyint(1) NOT NULL DEFAULT 1,
  `maildigest` tinyint(1) NOT NULL DEFAULT 0,
  `maildisplay` tinyint(2) NOT NULL DEFAULT 2,
  `autosubscribe` tinyint(1) NOT NULL DEFAULT 1,
  `trackforums` tinyint(1) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `trustbitmask` bigint(10) NOT NULL DEFAULT 0,
  `imagealt` varchar(255) DEFAULT NULL,
  `lastnamephonetic` varchar(255) DEFAULT NULL,
  `firstnamephonetic` varchar(255) DEFAULT NULL,
  `middlename` varchar(255) DEFAULT NULL,
  `alternatename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_user_mneuse_uix` (`mnethostid`,`username`),
  KEY `mdl_user_del_ix` (`deleted`),
  KEY `mdl_user_con_ix` (`confirmed`),
  KEY `mdl_user_fir_ix` (`firstname`),
  KEY `mdl_user_las_ix` (`lastname`),
  KEY `mdl_user_cit_ix` (`city`),
  KEY `mdl_user_cou_ix` (`country`),
  KEY `mdl_user_las2_ix` (`lastaccess`),
  KEY `mdl_user_ema_ix` (`email`),
  KEY `mdl_user_aut_ix` (`auth`),
  KEY `mdl_user_idn_ix` (`idnumber`),
  KEY `mdl_user_fir2_ix` (`firstnamephonetic`),
  KEY `mdl_user_las3_ix` (`lastnamephonetic`),
  KEY `mdl_user_mid_ix` (`middlename`),
  KEY `mdl_user_alt_ix` (`alternatename`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED COMMENT='One record for each person';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_user`
--

LOCK TABLES `mdl_user` WRITE;
/*!40000 ALTER TABLE `mdl_user` DISABLE KEYS */;
INSERT INTO `mdl_user` VALUES (1,'manual',1,0,0,0,1,'guest','$2y$10$lYXIDpm23PEJZF0VCvDeWuf8Z.VS.2CIBrZqY83hOgMZskU7gZ2gC','','Guest user',' ','user@example.com',0,'','','','','','','','','','','','','en','gregorian','','99',0,0,0,0,'','',0,'','This user is a special user that allows read-only access to some courses.',1,1,0,2,1,0,0,1601070775,0,NULL,NULL,NULL,NULL,NULL),(2,'manual',1,0,0,0,1,'user','$2y$10$eue6LJV1J.7F91h4ZvPybu5zvjyEApKaKc8Kqdx/TloOnRFNcxoku','','Admin','User','user@example.com',0,'','','','','','','','','','','','','en','gregorian','','99',1601071199,1601073049,1601071199,1601072606,'192.168.128.1','',0,'',NULL,1,1,0,1,1,0,0,1601070775,0,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `mdl_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_user_devices`
--

DROP TABLE IF EXISTS `mdl_user_devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_user_devices` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `appid` varchar(128) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `model` varchar(32) NOT NULL DEFAULT '',
  `platform` varchar(32) NOT NULL DEFAULT '',
  `version` varchar(32) NOT NULL DEFAULT '',
  `pushid` varchar(255) NOT NULL DEFAULT '',
  `uuid` varchar(255) NOT NULL DEFAULT '',
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_userdevi_pususe_uix` (`pushid`,`userid`),
  KEY `mdl_userdevi_uuiuse_ix` (`uuid`,`userid`),
  KEY `mdl_userdevi_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='This table stores user''s mobile devices information in order';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_user_devices`
--

LOCK TABLES `mdl_user_devices` WRITE;
/*!40000 ALTER TABLE `mdl_user_devices` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_user_devices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_user_enrolments`
--

DROP TABLE IF EXISTS `mdl_user_enrolments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_user_enrolments` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `status` bigint(10) NOT NULL DEFAULT 0,
  `enrolid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `timestart` bigint(10) NOT NULL DEFAULT 0,
  `timeend` bigint(10) NOT NULL DEFAULT 2147483647,
  `modifierid` bigint(10) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_userenro_enruse_uix` (`enrolid`,`userid`),
  KEY `mdl_userenro_enr_ix` (`enrolid`),
  KEY `mdl_userenro_use_ix` (`userid`),
  KEY `mdl_userenro_mod_ix` (`modifierid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Users participating in courses (aka enrolled users) - everyb';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_user_enrolments`
--

LOCK TABLES `mdl_user_enrolments` WRITE;
/*!40000 ALTER TABLE `mdl_user_enrolments` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_user_enrolments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_user_info_category`
--

DROP TABLE IF EXISTS `mdl_user_info_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_user_info_category` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `sortorder` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customisable fields categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_user_info_category`
--

LOCK TABLES `mdl_user_info_category` WRITE;
/*!40000 ALTER TABLE `mdl_user_info_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_user_info_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_user_info_data`
--

DROP TABLE IF EXISTS `mdl_user_info_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_user_info_data` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `fieldid` bigint(10) NOT NULL DEFAULT 0,
  `data` longtext NOT NULL,
  `dataformat` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_userinfodata_usefie_uix` (`userid`,`fieldid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Data for the customisable user fields';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_user_info_data`
--

LOCK TABLES `mdl_user_info_data` WRITE;
/*!40000 ALTER TABLE `mdl_user_info_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_user_info_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_user_info_field`
--

DROP TABLE IF EXISTS `mdl_user_info_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_user_info_field` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `shortname` varchar(255) NOT NULL DEFAULT 'shortname',
  `name` longtext NOT NULL,
  `datatype` varchar(255) NOT NULL DEFAULT '',
  `description` longtext DEFAULT NULL,
  `descriptionformat` tinyint(2) NOT NULL DEFAULT 0,
  `categoryid` bigint(10) NOT NULL DEFAULT 0,
  `sortorder` bigint(10) NOT NULL DEFAULT 0,
  `required` tinyint(2) NOT NULL DEFAULT 0,
  `locked` tinyint(2) NOT NULL DEFAULT 0,
  `visible` smallint(4) NOT NULL DEFAULT 0,
  `forceunique` tinyint(2) NOT NULL DEFAULT 0,
  `signup` tinyint(2) NOT NULL DEFAULT 0,
  `defaultdata` longtext DEFAULT NULL,
  `defaultdataformat` tinyint(2) NOT NULL DEFAULT 0,
  `param1` longtext DEFAULT NULL,
  `param2` longtext DEFAULT NULL,
  `param3` longtext DEFAULT NULL,
  `param4` longtext DEFAULT NULL,
  `param5` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED COMMENT='Customisable user profile fields';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_user_info_field`
--

LOCK TABLES `mdl_user_info_field` WRITE;
/*!40000 ALTER TABLE `mdl_user_info_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_user_info_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_user_lastaccess`
--

DROP TABLE IF EXISTS `mdl_user_lastaccess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_user_lastaccess` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `courseid` bigint(10) NOT NULL DEFAULT 0,
  `timeaccess` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_userlast_usecou_uix` (`userid`,`courseid`),
  KEY `mdl_userlast_use_ix` (`userid`),
  KEY `mdl_userlast_cou_ix` (`courseid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='To keep track of course page access times, used in online pa';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_user_lastaccess`
--

LOCK TABLES `mdl_user_lastaccess` WRITE;
/*!40000 ALTER TABLE `mdl_user_lastaccess` DISABLE KEYS */;
INSERT INTO `mdl_user_lastaccess` VALUES (1,2,2,1601073049);
/*!40000 ALTER TABLE `mdl_user_lastaccess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_user_password_history`
--

DROP TABLE IF EXISTS `mdl_user_password_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_user_password_history` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `hash` varchar(255) NOT NULL DEFAULT '',
  `timecreated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_userpasshist_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='A rotating log of hashes of previously used passwords for ea';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_user_password_history`
--

LOCK TABLES `mdl_user_password_history` WRITE;
/*!40000 ALTER TABLE `mdl_user_password_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_user_password_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_user_password_resets`
--

DROP TABLE IF EXISTS `mdl_user_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_user_password_resets` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `timerequested` bigint(10) NOT NULL,
  `timererequested` bigint(10) NOT NULL DEFAULT 0,
  `token` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_userpassrese_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='table tracking password reset confirmation tokens';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_user_password_resets`
--

LOCK TABLES `mdl_user_password_resets` WRITE;
/*!40000 ALTER TABLE `mdl_user_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_user_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_user_preferences`
--

DROP TABLE IF EXISTS `mdl_user_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_user_preferences` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` varchar(1333) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_userpref_usenam_uix` (`userid`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Allows modules to store arbitrary user preferences';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_user_preferences`
--

LOCK TABLES `mdl_user_preferences` WRITE;
/*!40000 ALTER TABLE `mdl_user_preferences` DISABLE KEYS */;
INSERT INTO `mdl_user_preferences` VALUES (1,2,'core_message_migrate_data','1'),(2,2,'tool_usertours_tour_completion_time_2','1601071215');
/*!40000 ALTER TABLE `mdl_user_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_user_private_key`
--

DROP TABLE IF EXISTS `mdl_user_private_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_user_private_key` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `script` varchar(128) NOT NULL DEFAULT '',
  `value` varchar(128) NOT NULL DEFAULT '',
  `userid` bigint(10) NOT NULL,
  `instance` bigint(10) DEFAULT NULL,
  `iprestriction` varchar(255) DEFAULT NULL,
  `validuntil` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_userprivkey_scrval_ix` (`script`,`value`),
  KEY `mdl_userprivkey_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='access keys used in cookieless scripts - rss, etc.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_user_private_key`
--

LOCK TABLES `mdl_user_private_key` WRITE;
/*!40000 ALTER TABLE `mdl_user_private_key` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_user_private_key` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_wiki`
--

DROP TABLE IF EXISTS `mdl_wiki`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_wiki` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT 'Wiki',
  `intro` longtext DEFAULT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `firstpagetitle` varchar(255) NOT NULL DEFAULT 'First Page',
  `wikimode` varchar(20) NOT NULL DEFAULT 'collaborative',
  `defaultformat` varchar(20) NOT NULL DEFAULT 'creole',
  `forceformat` tinyint(1) NOT NULL DEFAULT 1,
  `editbegin` bigint(10) NOT NULL DEFAULT 0,
  `editend` bigint(10) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_wiki_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores Wiki activity configuration';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_wiki`
--

LOCK TABLES `mdl_wiki` WRITE;
/*!40000 ALTER TABLE `mdl_wiki` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_wiki` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_wiki_links`
--

DROP TABLE IF EXISTS `mdl_wiki_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_wiki_links` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `subwikiid` bigint(10) NOT NULL DEFAULT 0,
  `frompageid` bigint(10) NOT NULL DEFAULT 0,
  `topageid` bigint(10) NOT NULL DEFAULT 0,
  `tomissingpage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_wikilink_fro_ix` (`frompageid`),
  KEY `mdl_wikilink_sub_ix` (`subwikiid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Page wiki links';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_wiki_links`
--

LOCK TABLES `mdl_wiki_links` WRITE;
/*!40000 ALTER TABLE `mdl_wiki_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_wiki_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_wiki_locks`
--

DROP TABLE IF EXISTS `mdl_wiki_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_wiki_locks` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `pageid` bigint(10) NOT NULL DEFAULT 0,
  `sectionname` varchar(255) DEFAULT NULL,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `lockedat` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Manages page locks';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_wiki_locks`
--

LOCK TABLES `mdl_wiki_locks` WRITE;
/*!40000 ALTER TABLE `mdl_wiki_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_wiki_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_wiki_pages`
--

DROP TABLE IF EXISTS `mdl_wiki_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_wiki_pages` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `subwikiid` bigint(10) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT 'title',
  `cachedcontent` longtext NOT NULL,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `timerendered` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `pageviews` bigint(10) NOT NULL DEFAULT 0,
  `readonly` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_wikipage_subtituse_uix` (`subwikiid`,`title`,`userid`),
  KEY `mdl_wikipage_sub_ix` (`subwikiid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores wiki pages';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_wiki_pages`
--

LOCK TABLES `mdl_wiki_pages` WRITE;
/*!40000 ALTER TABLE `mdl_wiki_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_wiki_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_wiki_subwikis`
--

DROP TABLE IF EXISTS `mdl_wiki_subwikis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_wiki_subwikis` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `wikiid` bigint(10) NOT NULL DEFAULT 0,
  `groupid` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_wikisubw_wikgrouse_uix` (`wikiid`,`groupid`,`userid`),
  KEY `mdl_wikisubw_wik_ix` (`wikiid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores subwiki instances';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_wiki_subwikis`
--

LOCK TABLES `mdl_wiki_subwikis` WRITE;
/*!40000 ALTER TABLE `mdl_wiki_subwikis` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_wiki_subwikis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_wiki_synonyms`
--

DROP TABLE IF EXISTS `mdl_wiki_synonyms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_wiki_synonyms` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `subwikiid` bigint(10) NOT NULL DEFAULT 0,
  `pageid` bigint(10) NOT NULL DEFAULT 0,
  `pagesynonym` varchar(255) NOT NULL DEFAULT 'Pagesynonym',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_wikisyno_pagpag_uix` (`pageid`,`pagesynonym`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores wiki pages synonyms';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_wiki_synonyms`
--

LOCK TABLES `mdl_wiki_synonyms` WRITE;
/*!40000 ALTER TABLE `mdl_wiki_synonyms` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_wiki_synonyms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_wiki_versions`
--

DROP TABLE IF EXISTS `mdl_wiki_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_wiki_versions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `pageid` bigint(10) NOT NULL DEFAULT 0,
  `content` longtext NOT NULL,
  `contentformat` varchar(20) NOT NULL DEFAULT 'creole',
  `version` mediumint(5) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_wikivers_pag_ix` (`pageid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores wiki page history';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_wiki_versions`
--

LOCK TABLES `mdl_wiki_versions` WRITE;
/*!40000 ALTER TABLE `mdl_wiki_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_wiki_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_workshop`
--

DROP TABLE IF EXISTS `mdl_workshop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_workshop` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `intro` longtext DEFAULT NULL,
  `introformat` smallint(3) NOT NULL DEFAULT 0,
  `instructauthors` longtext DEFAULT NULL,
  `instructauthorsformat` smallint(3) NOT NULL DEFAULT 0,
  `instructreviewers` longtext DEFAULT NULL,
  `instructreviewersformat` smallint(3) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL,
  `phase` smallint(3) DEFAULT 0,
  `useexamples` tinyint(2) DEFAULT 0,
  `usepeerassessment` tinyint(2) DEFAULT 0,
  `useselfassessment` tinyint(2) DEFAULT 0,
  `grade` decimal(10,5) DEFAULT 80.00000,
  `gradinggrade` decimal(10,5) DEFAULT 20.00000,
  `strategy` varchar(30) NOT NULL DEFAULT '',
  `evaluation` varchar(30) NOT NULL DEFAULT '',
  `gradedecimals` smallint(3) DEFAULT 0,
  `submissiontypetext` tinyint(1) NOT NULL DEFAULT 1,
  `submissiontypefile` tinyint(1) NOT NULL DEFAULT 1,
  `nattachments` smallint(3) DEFAULT 1,
  `submissionfiletypes` varchar(255) DEFAULT NULL,
  `latesubmissions` tinyint(2) DEFAULT 0,
  `maxbytes` bigint(10) DEFAULT 100000,
  `examplesmode` smallint(3) DEFAULT 0,
  `submissionstart` bigint(10) DEFAULT 0,
  `submissionend` bigint(10) DEFAULT 0,
  `assessmentstart` bigint(10) DEFAULT 0,
  `assessmentend` bigint(10) DEFAULT 0,
  `phaseswitchassessment` tinyint(2) NOT NULL DEFAULT 0,
  `conclusion` longtext DEFAULT NULL,
  `conclusionformat` smallint(3) NOT NULL DEFAULT 1,
  `overallfeedbackmode` smallint(3) DEFAULT 1,
  `overallfeedbackfiles` smallint(3) DEFAULT 0,
  `overallfeedbackfiletypes` varchar(255) DEFAULT NULL,
  `overallfeedbackmaxbytes` bigint(10) DEFAULT 100000,
  PRIMARY KEY (`id`),
  KEY `mdl_work_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='This table keeps information about the module instances and ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_workshop`
--

LOCK TABLES `mdl_workshop` WRITE;
/*!40000 ALTER TABLE `mdl_workshop` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_workshop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_workshop_aggregations`
--

DROP TABLE IF EXISTS `mdl_workshop_aggregations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_workshop_aggregations` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `gradinggrade` decimal(10,5) DEFAULT NULL,
  `timegraded` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_workaggr_woruse_uix` (`workshopid`,`userid`),
  KEY `mdl_workaggr_wor_ix` (`workshopid`),
  KEY `mdl_workaggr_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Aggregated grades for assessment are stored here. The aggreg';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_workshop_aggregations`
--

LOCK TABLES `mdl_workshop_aggregations` WRITE;
/*!40000 ALTER TABLE `mdl_workshop_aggregations` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_workshop_aggregations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_workshop_assessments`
--

DROP TABLE IF EXISTS `mdl_workshop_assessments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_workshop_assessments` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `submissionid` bigint(10) NOT NULL,
  `reviewerid` bigint(10) NOT NULL,
  `weight` bigint(10) NOT NULL DEFAULT 1,
  `timecreated` bigint(10) DEFAULT 0,
  `timemodified` bigint(10) DEFAULT 0,
  `grade` decimal(10,5) DEFAULT NULL,
  `gradinggrade` decimal(10,5) DEFAULT NULL,
  `gradinggradeover` decimal(10,5) DEFAULT NULL,
  `gradinggradeoverby` bigint(10) DEFAULT NULL,
  `feedbackauthor` longtext DEFAULT NULL,
  `feedbackauthorformat` smallint(3) DEFAULT 0,
  `feedbackauthorattachment` smallint(3) DEFAULT 0,
  `feedbackreviewer` longtext DEFAULT NULL,
  `feedbackreviewerformat` smallint(3) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_workasse_sub_ix` (`submissionid`),
  KEY `mdl_workasse_gra_ix` (`gradinggradeoverby`),
  KEY `mdl_workasse_rev_ix` (`reviewerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Info about the made assessment and automatically calculated ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_workshop_assessments`
--

LOCK TABLES `mdl_workshop_assessments` WRITE;
/*!40000 ALTER TABLE `mdl_workshop_assessments` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_workshop_assessments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_workshop_grades`
--

DROP TABLE IF EXISTS `mdl_workshop_grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_workshop_grades` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assessmentid` bigint(10) NOT NULL,
  `strategy` varchar(30) NOT NULL DEFAULT '',
  `dimensionid` bigint(10) NOT NULL,
  `grade` decimal(10,5) NOT NULL,
  `peercomment` longtext DEFAULT NULL,
  `peercommentformat` smallint(3) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_workgrad_assstrdim_uix` (`assessmentid`,`strategy`,`dimensionid`),
  KEY `mdl_workgrad_ass_ix` (`assessmentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='How the reviewers filled-up the grading forms, given grades ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_workshop_grades`
--

LOCK TABLES `mdl_workshop_grades` WRITE;
/*!40000 ALTER TABLE `mdl_workshop_grades` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_workshop_grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_workshop_submissions`
--

DROP TABLE IF EXISTS `mdl_workshop_submissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_workshop_submissions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) NOT NULL,
  `example` tinyint(2) DEFAULT 0,
  `authorid` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `content` longtext DEFAULT NULL,
  `contentformat` smallint(3) NOT NULL DEFAULT 0,
  `contenttrust` smallint(3) NOT NULL DEFAULT 0,
  `attachment` tinyint(2) DEFAULT 0,
  `grade` decimal(10,5) DEFAULT NULL,
  `gradeover` decimal(10,5) DEFAULT NULL,
  `gradeoverby` bigint(10) DEFAULT NULL,
  `feedbackauthor` longtext DEFAULT NULL,
  `feedbackauthorformat` smallint(3) DEFAULT 0,
  `timegraded` bigint(10) DEFAULT NULL,
  `published` tinyint(2) DEFAULT 0,
  `late` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_worksubm_wor_ix` (`workshopid`),
  KEY `mdl_worksubm_gra_ix` (`gradeoverby`),
  KEY `mdl_worksubm_aut_ix` (`authorid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Info about the submission and the aggregation of the grade f';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_workshop_submissions`
--

LOCK TABLES `mdl_workshop_submissions` WRITE;
/*!40000 ALTER TABLE `mdl_workshop_submissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_workshop_submissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_workshopallocation_scheduled`
--

DROP TABLE IF EXISTS `mdl_workshopallocation_scheduled`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_workshopallocation_scheduled` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) NOT NULL,
  `enabled` tinyint(2) NOT NULL DEFAULT 0,
  `submissionend` bigint(10) NOT NULL,
  `timeallocated` bigint(10) DEFAULT NULL,
  `settings` longtext DEFAULT NULL,
  `resultstatus` bigint(10) DEFAULT NULL,
  `resultmessage` varchar(1333) DEFAULT NULL,
  `resultlog` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_worksche_wor_uix` (`workshopid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores the allocation settings for the scheduled allocator';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_workshopallocation_scheduled`
--

LOCK TABLES `mdl_workshopallocation_scheduled` WRITE;
/*!40000 ALTER TABLE `mdl_workshopallocation_scheduled` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_workshopallocation_scheduled` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_workshopeval_best_settings`
--

DROP TABLE IF EXISTS `mdl_workshopeval_best_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_workshopeval_best_settings` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) NOT NULL,
  `comparison` smallint(3) DEFAULT 5,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_workbestsett_wor_uix` (`workshopid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Settings for the grading evaluation subplugin Comparison wit';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_workshopeval_best_settings`
--

LOCK TABLES `mdl_workshopeval_best_settings` WRITE;
/*!40000 ALTER TABLE `mdl_workshopeval_best_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_workshopeval_best_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_workshopform_accumulative`
--

DROP TABLE IF EXISTS `mdl_workshopform_accumulative`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_workshopform_accumulative` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) NOT NULL,
  `sort` bigint(10) DEFAULT 0,
  `description` longtext DEFAULT NULL,
  `descriptionformat` smallint(3) DEFAULT 0,
  `grade` bigint(10) NOT NULL,
  `weight` mediumint(5) DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `mdl_workaccu_wor_ix` (`workshopid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='The assessment dimensions definitions of Accumulative gradin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_workshopform_accumulative`
--

LOCK TABLES `mdl_workshopform_accumulative` WRITE;
/*!40000 ALTER TABLE `mdl_workshopform_accumulative` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_workshopform_accumulative` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_workshopform_comments`
--

DROP TABLE IF EXISTS `mdl_workshopform_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_workshopform_comments` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) NOT NULL,
  `sort` bigint(10) DEFAULT 0,
  `description` longtext DEFAULT NULL,
  `descriptionformat` smallint(3) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_workcomm_wor_ix` (`workshopid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='The assessment dimensions definitions of Comments strategy f';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_workshopform_comments`
--

LOCK TABLES `mdl_workshopform_comments` WRITE;
/*!40000 ALTER TABLE `mdl_workshopform_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_workshopform_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_workshopform_numerrors`
--

DROP TABLE IF EXISTS `mdl_workshopform_numerrors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_workshopform_numerrors` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) NOT NULL,
  `sort` bigint(10) DEFAULT 0,
  `description` longtext DEFAULT NULL,
  `descriptionformat` smallint(3) DEFAULT 0,
  `descriptiontrust` bigint(10) DEFAULT NULL,
  `grade0` varchar(50) DEFAULT NULL,
  `grade1` varchar(50) DEFAULT NULL,
  `weight` mediumint(5) DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `mdl_worknume_wor_ix` (`workshopid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='The assessment dimensions definitions of Number of errors gr';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_workshopform_numerrors`
--

LOCK TABLES `mdl_workshopform_numerrors` WRITE;
/*!40000 ALTER TABLE `mdl_workshopform_numerrors` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_workshopform_numerrors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_workshopform_numerrors_map`
--

DROP TABLE IF EXISTS `mdl_workshopform_numerrors_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_workshopform_numerrors_map` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) NOT NULL,
  `nonegative` bigint(10) NOT NULL,
  `grade` decimal(10,5) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_worknumemap_wornon_uix` (`workshopid`,`nonegative`),
  KEY `mdl_worknumemap_wor_ix` (`workshopid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='This maps the number of errors to a percentual grade for sub';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_workshopform_numerrors_map`
--

LOCK TABLES `mdl_workshopform_numerrors_map` WRITE;
/*!40000 ALTER TABLE `mdl_workshopform_numerrors_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_workshopform_numerrors_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_workshopform_rubric`
--

DROP TABLE IF EXISTS `mdl_workshopform_rubric`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_workshopform_rubric` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) NOT NULL,
  `sort` bigint(10) DEFAULT 0,
  `description` longtext DEFAULT NULL,
  `descriptionformat` smallint(3) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_workrubr_wor_ix` (`workshopid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='The assessment dimensions definitions of Rubric grading stra';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_workshopform_rubric`
--

LOCK TABLES `mdl_workshopform_rubric` WRITE;
/*!40000 ALTER TABLE `mdl_workshopform_rubric` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_workshopform_rubric` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_workshopform_rubric_config`
--

DROP TABLE IF EXISTS `mdl_workshopform_rubric_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_workshopform_rubric_config` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) NOT NULL,
  `layout` varchar(30) DEFAULT 'list',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_workrubrconf_wor_uix` (`workshopid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Configuration table for the Rubric grading strategy';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_workshopform_rubric_config`
--

LOCK TABLES `mdl_workshopform_rubric_config` WRITE;
/*!40000 ALTER TABLE `mdl_workshopform_rubric_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_workshopform_rubric_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_workshopform_rubric_levels`
--

DROP TABLE IF EXISTS `mdl_workshopform_rubric_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_workshopform_rubric_levels` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `dimensionid` bigint(10) NOT NULL,
  `grade` decimal(10,5) NOT NULL,
  `definition` longtext DEFAULT NULL,
  `definitionformat` smallint(3) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_workrubrleve_dim_ix` (`dimensionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='The definition of rubric rating scales';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_workshopform_rubric_levels`
--

LOCK TABLES `mdl_workshopform_rubric_levels` WRITE;
/*!40000 ALTER TABLE `mdl_workshopform_rubric_levels` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_workshopform_rubric_levels` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-25 22:31:57