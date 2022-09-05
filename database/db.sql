-- MySQL dump 10.19  Distrib 10.3.34-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: SS_vanilla
-- ------------------------------------------------------
-- Server version	10.3.34-MariaDB-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `AssignUsersToWorkflowAction`
--

DROP TABLE IF EXISTS `AssignUsersToWorkflowAction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssignUsersToWorkflowAction` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AssignInitiator` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssignUsersToWorkflowAction`
--

LOCK TABLES `AssignUsersToWorkflowAction` WRITE;
/*!40000 ALTER TABLE `AssignUsersToWorkflowAction` DISABLE KEYS */;
INSERT INTO `AssignUsersToWorkflowAction` VALUES (1,0),(5,0),(8,0);
/*!40000 ALTER TABLE `AssignUsersToWorkflowAction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssignUsersToWorkflowAction_Groups`
--

DROP TABLE IF EXISTS `AssignUsersToWorkflowAction_Groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssignUsersToWorkflowAction_Groups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AssignUsersToWorkflowActionID` int(11) NOT NULL DEFAULT 0,
  `GroupID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `AssignUsersToWorkflowActionID` (`AssignUsersToWorkflowActionID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssignUsersToWorkflowAction_Groups`
--

LOCK TABLES `AssignUsersToWorkflowAction_Groups` WRITE;
/*!40000 ALTER TABLE `AssignUsersToWorkflowAction_Groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `AssignUsersToWorkflowAction_Groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssignUsersToWorkflowAction_Users`
--

DROP TABLE IF EXISTS `AssignUsersToWorkflowAction_Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssignUsersToWorkflowAction_Users` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AssignUsersToWorkflowActionID` int(11) NOT NULL DEFAULT 0,
  `MemberID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `AssignUsersToWorkflowActionID` (`AssignUsersToWorkflowActionID`),
  KEY `MemberID` (`MemberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssignUsersToWorkflowAction_Users`
--

LOCK TABLES `AssignUsersToWorkflowAction_Users` WRITE;
/*!40000 ALTER TABLE `AssignUsersToWorkflowAction_Users` DISABLE KEYS */;
/*!40000 ALTER TABLE `AssignUsersToWorkflowAction_Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BaseHomePage`
--

DROP TABLE IF EXISTS `BaseHomePage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BaseHomePage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FeatureOneTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FeatureOneCategory` enum('bell','comments','film','flag','globe','group','list','phone','rss','time','user') COLLATE utf8mb4_unicode_ci DEFAULT 'comments',
  `FeatureOneContent` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FeatureOneButtonText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FeatureTwoTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FeatureTwoCategory` enum('bell','comments','film','flag','globe','group','list','phone','rss','time','user') COLLATE utf8mb4_unicode_ci DEFAULT 'comments',
  `FeatureTwoContent` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FeatureTwoButtonText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LearnMorePageID` int(11) NOT NULL DEFAULT 0,
  `FeatureOneLinkID` int(11) NOT NULL DEFAULT 0,
  `FeatureTwoLinkID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `LearnMorePageID` (`LearnMorePageID`),
  KEY `FeatureOneLinkID` (`FeatureOneLinkID`),
  KEY `FeatureTwoLinkID` (`FeatureTwoLinkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BaseHomePage`
--

LOCK TABLES `BaseHomePage` WRITE;
/*!40000 ALTER TABLE `BaseHomePage` DISABLE KEYS */;
/*!40000 ALTER TABLE `BaseHomePage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BaseHomePage_Live`
--

DROP TABLE IF EXISTS `BaseHomePage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BaseHomePage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FeatureOneTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FeatureOneCategory` enum('bell','comments','film','flag','globe','group','list','phone','rss','time','user') COLLATE utf8mb4_unicode_ci DEFAULT 'comments',
  `FeatureOneContent` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FeatureOneButtonText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FeatureTwoTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FeatureTwoCategory` enum('bell','comments','film','flag','globe','group','list','phone','rss','time','user') COLLATE utf8mb4_unicode_ci DEFAULT 'comments',
  `FeatureTwoContent` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FeatureTwoButtonText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LearnMorePageID` int(11) NOT NULL DEFAULT 0,
  `FeatureOneLinkID` int(11) NOT NULL DEFAULT 0,
  `FeatureTwoLinkID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `LearnMorePageID` (`LearnMorePageID`),
  KEY `FeatureOneLinkID` (`FeatureOneLinkID`),
  KEY `FeatureTwoLinkID` (`FeatureTwoLinkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BaseHomePage_Live`
--

LOCK TABLES `BaseHomePage_Live` WRITE;
/*!40000 ALTER TABLE `BaseHomePage_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `BaseHomePage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BaseHomePage_Versions`
--

DROP TABLE IF EXISTS `BaseHomePage_Versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BaseHomePage_Versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `FeatureOneTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FeatureOneCategory` enum('bell','comments','film','flag','globe','group','list','phone','rss','time','user') COLLATE utf8mb4_unicode_ci DEFAULT 'comments',
  `FeatureOneContent` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FeatureOneButtonText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FeatureTwoTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FeatureTwoCategory` enum('bell','comments','film','flag','globe','group','list','phone','rss','time','user') COLLATE utf8mb4_unicode_ci DEFAULT 'comments',
  `FeatureTwoContent` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FeatureTwoButtonText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LearnMorePageID` int(11) NOT NULL DEFAULT 0,
  `FeatureOneLinkID` int(11) NOT NULL DEFAULT 0,
  `FeatureTwoLinkID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `LearnMorePageID` (`LearnMorePageID`),
  KEY `FeatureOneLinkID` (`FeatureOneLinkID`),
  KEY `FeatureTwoLinkID` (`FeatureTwoLinkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BaseHomePage_Versions`
--

LOCK TABLES `BaseHomePage_Versions` WRITE;
/*!40000 ALTER TABLE `BaseHomePage_Versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `BaseHomePage_Versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BasePage_RelatedPages`
--

DROP TABLE IF EXISTS `BasePage_RelatedPages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BasePage_RelatedPages` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('CWP\\CWP\\Model\\RelatedPageLink') COLLATE utf8mb4_unicode_ci DEFAULT 'CWP\\CWP\\Model\\RelatedPageLink',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT 0,
  `SortOrder` int(11) NOT NULL DEFAULT 0,
  `BasePageID` int(11) NOT NULL DEFAULT 0,
  `ChildID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `BasePageID` (`BasePageID`),
  KEY `ChildID` (`ChildID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BasePage_RelatedPages`
--

LOCK TABLES `BasePage_RelatedPages` WRITE;
/*!40000 ALTER TABLE `BasePage_RelatedPages` DISABLE KEYS */;
/*!40000 ALTER TABLE `BasePage_RelatedPages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BasePage_RelatedPages_Live`
--

DROP TABLE IF EXISTS `BasePage_RelatedPages_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BasePage_RelatedPages_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('CWP\\CWP\\Model\\RelatedPageLink') COLLATE utf8mb4_unicode_ci DEFAULT 'CWP\\CWP\\Model\\RelatedPageLink',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT 0,
  `SortOrder` int(11) NOT NULL DEFAULT 0,
  `BasePageID` int(11) NOT NULL DEFAULT 0,
  `ChildID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `BasePageID` (`BasePageID`),
  KEY `ChildID` (`ChildID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BasePage_RelatedPages_Live`
--

LOCK TABLES `BasePage_RelatedPages_Live` WRITE;
/*!40000 ALTER TABLE `BasePage_RelatedPages_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `BasePage_RelatedPages_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BasePage_RelatedPages_Versions`
--

DROP TABLE IF EXISTS `BasePage_RelatedPages_Versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BasePage_RelatedPages_Versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `WasPublished` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `WasDeleted` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `WasDraft` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `AuthorID` int(11) NOT NULL DEFAULT 0,
  `PublisherID` int(11) NOT NULL DEFAULT 0,
  `ClassName` enum('CWP\\CWP\\Model\\RelatedPageLink') COLLATE utf8mb4_unicode_ci DEFAULT 'CWP\\CWP\\Model\\RelatedPageLink',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `SortOrder` int(11) NOT NULL DEFAULT 0,
  `BasePageID` int(11) NOT NULL DEFAULT 0,
  `ChildID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `ClassName` (`ClassName`),
  KEY `BasePageID` (`BasePageID`),
  KEY `ChildID` (`ChildID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BasePage_RelatedPages_Versions`
--

LOCK TABLES `BasePage_RelatedPages_Versions` WRITE;
/*!40000 ALTER TABLE `BasePage_RelatedPages_Versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `BasePage_RelatedPages_Versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BasePage_Terms`
--

DROP TABLE IF EXISTS `BasePage_Terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BasePage_Terms` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BasePageID` int(11) NOT NULL DEFAULT 0,
  `TaxonomyTermID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `BasePageID` (`BasePageID`),
  KEY `TaxonomyTermID` (`TaxonomyTermID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BasePage_Terms`
--

LOCK TABLES `BasePage_Terms` WRITE;
/*!40000 ALTER TABLE `BasePage_Terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `BasePage_Terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Blog`
--

DROP TABLE IF EXISTS `Blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Blog` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PostsPerPage` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Blog`
--

LOCK TABLES `Blog` WRITE;
/*!40000 ALTER TABLE `Blog` DISABLE KEYS */;
/*!40000 ALTER TABLE `Blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlogCategory`
--

DROP TABLE IF EXISTS `BlogCategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlogCategory` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Blog\\Model\\BlogCategory') COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Blog\\Model\\BlogCategory',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `URLSegment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BlogID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `BlogID` (`BlogID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlogCategory`
--

LOCK TABLES `BlogCategory` WRITE;
/*!40000 ALTER TABLE `BlogCategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlogCategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlogPost`
--

DROP TABLE IF EXISTS `BlogPost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlogPost` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PublishDate` datetime DEFAULT NULL,
  `AuthorNames` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Summary` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FeaturedImageID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `PublishDate` (`PublishDate`),
  KEY `FeaturedImageID` (`FeaturedImageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlogPost`
--

LOCK TABLES `BlogPost` WRITE;
/*!40000 ALTER TABLE `BlogPost` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlogPost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlogPost_Authors`
--

DROP TABLE IF EXISTS `BlogPost_Authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlogPost_Authors` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BlogPostID` int(11) NOT NULL DEFAULT 0,
  `MemberID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `BlogPostID` (`BlogPostID`),
  KEY `MemberID` (`MemberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlogPost_Authors`
--

LOCK TABLES `BlogPost_Authors` WRITE;
/*!40000 ALTER TABLE `BlogPost_Authors` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlogPost_Authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlogPost_Categories`
--

DROP TABLE IF EXISTS `BlogPost_Categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlogPost_Categories` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BlogPostID` int(11) NOT NULL DEFAULT 0,
  `BlogCategoryID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `BlogPostID` (`BlogPostID`),
  KEY `BlogCategoryID` (`BlogCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlogPost_Categories`
--

LOCK TABLES `BlogPost_Categories` WRITE;
/*!40000 ALTER TABLE `BlogPost_Categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlogPost_Categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlogPost_Live`
--

DROP TABLE IF EXISTS `BlogPost_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlogPost_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PublishDate` datetime DEFAULT NULL,
  `AuthorNames` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Summary` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FeaturedImageID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `PublishDate` (`PublishDate`),
  KEY `FeaturedImageID` (`FeaturedImageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlogPost_Live`
--

LOCK TABLES `BlogPost_Live` WRITE;
/*!40000 ALTER TABLE `BlogPost_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlogPost_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlogPost_Tags`
--

DROP TABLE IF EXISTS `BlogPost_Tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlogPost_Tags` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BlogPostID` int(11) NOT NULL DEFAULT 0,
  `BlogTagID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `BlogPostID` (`BlogPostID`),
  KEY `BlogTagID` (`BlogTagID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlogPost_Tags`
--

LOCK TABLES `BlogPost_Tags` WRITE;
/*!40000 ALTER TABLE `BlogPost_Tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlogPost_Tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlogPost_Versions`
--

DROP TABLE IF EXISTS `BlogPost_Versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlogPost_Versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `PublishDate` datetime DEFAULT NULL,
  `AuthorNames` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Summary` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FeaturedImageID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `PublishDate` (`PublishDate`),
  KEY `FeaturedImageID` (`FeaturedImageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlogPost_Versions`
--

LOCK TABLES `BlogPost_Versions` WRITE;
/*!40000 ALTER TABLE `BlogPost_Versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlogPost_Versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlogTag`
--

DROP TABLE IF EXISTS `BlogTag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlogTag` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Blog\\Model\\BlogTag') COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Blog\\Model\\BlogTag',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `URLSegment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BlogID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `BlogID` (`BlogID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlogTag`
--

LOCK TABLES `BlogTag` WRITE;
/*!40000 ALTER TABLE `BlogTag` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlogTag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Blog_Contributors`
--

DROP TABLE IF EXISTS `Blog_Contributors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Blog_Contributors` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BlogID` int(11) NOT NULL DEFAULT 0,
  `MemberID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `BlogID` (`BlogID`),
  KEY `MemberID` (`MemberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Blog_Contributors`
--

LOCK TABLES `Blog_Contributors` WRITE;
/*!40000 ALTER TABLE `Blog_Contributors` DISABLE KEYS */;
/*!40000 ALTER TABLE `Blog_Contributors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Blog_Editors`
--

DROP TABLE IF EXISTS `Blog_Editors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Blog_Editors` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BlogID` int(11) NOT NULL DEFAULT 0,
  `MemberID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `BlogID` (`BlogID`),
  KEY `MemberID` (`MemberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Blog_Editors`
--

LOCK TABLES `Blog_Editors` WRITE;
/*!40000 ALTER TABLE `Blog_Editors` DISABLE KEYS */;
/*!40000 ALTER TABLE `Blog_Editors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Blog_Live`
--

DROP TABLE IF EXISTS `Blog_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Blog_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PostsPerPage` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Blog_Live`
--

LOCK TABLES `Blog_Live` WRITE;
/*!40000 ALTER TABLE `Blog_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `Blog_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Blog_Versions`
--

DROP TABLE IF EXISTS `Blog_Versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Blog_Versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `PostsPerPage` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Blog_Versions`
--

LOCK TABLES `Blog_Versions` WRITE;
/*!40000 ALTER TABLE `Blog_Versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `Blog_Versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Blog_Writers`
--

DROP TABLE IF EXISTS `Blog_Writers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Blog_Writers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BlogID` int(11) NOT NULL DEFAULT 0,
  `MemberID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `BlogID` (`BlogID`),
  KEY `MemberID` (`MemberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Blog_Writers`
--

LOCK TABLES `Blog_Writers` WRITE;
/*!40000 ALTER TABLE `Blog_Writers` DISABLE KEYS */;
/*!40000 ALTER TABLE `Blog_Writers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BrokenExternalLink`
--

DROP TABLE IF EXISTS `BrokenExternalLink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BrokenExternalLink` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\ExternalLinks\\Model\\BrokenExternalLink') COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\ExternalLinks\\Model\\BrokenExternalLink',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Link` varchar(2083) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `HTTPCode` int(11) NOT NULL DEFAULT 0,
  `TrackID` int(11) NOT NULL DEFAULT 0,
  `StatusID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `TrackID` (`TrackID`),
  KEY `StatusID` (`StatusID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BrokenExternalLink`
--

LOCK TABLES `BrokenExternalLink` WRITE;
/*!40000 ALTER TABLE `BrokenExternalLink` DISABLE KEYS */;
/*!40000 ALTER TABLE `BrokenExternalLink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BrokenExternalPageTrack`
--

DROP TABLE IF EXISTS `BrokenExternalPageTrack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BrokenExternalPageTrack` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\ExternalLinks\\Model\\BrokenExternalPageTrack') COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\ExternalLinks\\Model\\BrokenExternalPageTrack',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Processed` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `PageID` int(11) NOT NULL DEFAULT 0,
  `StatusID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `PageID` (`PageID`),
  KEY `StatusID` (`StatusID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BrokenExternalPageTrack`
--

LOCK TABLES `BrokenExternalPageTrack` WRITE;
/*!40000 ALTER TABLE `BrokenExternalPageTrack` DISABLE KEYS */;
/*!40000 ALTER TABLE `BrokenExternalPageTrack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BrokenExternalPageTrackStatus`
--

DROP TABLE IF EXISTS `BrokenExternalPageTrackStatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BrokenExternalPageTrackStatus` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\ExternalLinks\\Model\\BrokenExternalPageTrackStatus') COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\ExternalLinks\\Model\\BrokenExternalPageTrackStatus',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Status` enum('Completed','Running') COLLATE utf8mb4_unicode_ci DEFAULT 'Running',
  `JobInfo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BrokenExternalPageTrackStatus`
--

LOCK TABLES `BrokenExternalPageTrackStatus` WRITE;
/*!40000 ALTER TABLE `BrokenExternalPageTrackStatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `BrokenExternalPageTrackStatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ChangeSet`
--

DROP TABLE IF EXISTS `ChangeSet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ChangeSet` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Versioned\\ChangeSet') COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Versioned\\ChangeSet',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `State` enum('open','published','reverted') COLLATE utf8mb4_unicode_ci DEFAULT 'open',
  `IsInferred` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `Description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PublishDate` datetime DEFAULT NULL,
  `LastSynced` datetime DEFAULT NULL,
  `OwnerID` int(11) NOT NULL DEFAULT 0,
  `PublisherID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `State` (`State`),
  KEY `ID` (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `OwnerID` (`OwnerID`),
  KEY `PublisherID` (`PublisherID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ChangeSet`
--

LOCK TABLES `ChangeSet` WRITE;
/*!40000 ALTER TABLE `ChangeSet` DISABLE KEYS */;
INSERT INTO `ChangeSet` VALUES (1,'SilverStripe\\Versioned\\ChangeSet','2022-09-05 00:32:57','2022-09-05 00:32:57','Generated by publish of \'Silverstripe vanilla site\' at Sep 5, 2022, 12:32 AM','published',1,NULL,'2022-09-05 00:32:57','2022-09-05 00:32:57',0,1),(2,'SilverStripe\\Versioned\\ChangeSet','2022-09-05 00:33:25','2022-09-05 00:33:25','Generated by publish of \'Home\' at Sep 5, 2022, 12:33 AM','published',1,NULL,'2022-09-05 00:33:25','2022-09-05 00:33:25',0,1),(3,'SilverStripe\\Versioned\\ChangeSet','2022-09-05 00:34:21','2022-09-05 00:34:21','Generated by publish of \'Home\' at Sep 5, 2022, 12:34 AM','published',1,NULL,'2022-09-05 00:34:21','2022-09-05 00:34:21',0,1);
/*!40000 ALTER TABLE `ChangeSet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ChangeSetItem`
--

DROP TABLE IF EXISTS `ChangeSetItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ChangeSetItem` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Versioned\\ChangeSetItem') COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Versioned\\ChangeSetItem',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `VersionBefore` int(11) NOT NULL DEFAULT 0,
  `VersionAfter` int(11) NOT NULL DEFAULT 0,
  `Added` enum('explicitly','implicitly') COLLATE utf8mb4_unicode_ci DEFAULT 'implicitly',
  `ChangeSetID` int(11) NOT NULL DEFAULT 0,
  `ObjectID` int(11) NOT NULL DEFAULT 0,
  `ObjectClass` enum('SilverStripe\\Assets\\File','SilverStripe\\CronTask\\CronTaskStatus','SilverStripe\\SiteConfig\\SiteConfig','SilverStripe\\Taxonomy\\TaxonomyTerm','SilverStripe\\Taxonomy\\TaxonomyType','SilverStripe\\Versioned\\ChangeSet','SilverStripe\\Versioned\\ChangeSetItem','BringYourOwnIdeas\\Maintenance\\Model\\Package','CWP\\CWP\\Model\\Quicklink','CWP\\CWP\\Model\\RelatedPageLink','nglasl\\misdirection\\LinkMapping','SilverStripe\\Assets\\Shortcodes\\FileLink','SilverStripe\\Blog\\Model\\BlogCategory','SilverStripe\\Blog\\Model\\BlogTag','SilverStripe\\CMS\\Model\\SiteTree','SilverStripe\\CMS\\Model\\SiteTreeLink','SilverStripe\\Comments\\Model\\Comment','SilverStripe\\ContentReview\\Models\\ContentReviewLog','SilverStripe\\ExternalLinks\\Model\\BrokenExternalLink','SilverStripe\\ExternalLinks\\Model\\BrokenExternalPageTrack','SilverStripe\\ExternalLinks\\Model\\BrokenExternalPageTrackStatus','SilverStripe\\Security\\Group','SilverStripe\\Security\\LoginAttempt','SilverStripe\\Security\\Member','SilverStripe\\Security\\MemberPassword','SilverStripe\\Security\\Permission','SilverStripe\\Security\\PermissionRole','SilverStripe\\Security\\PermissionRoleCode','SilverStripe\\Security\\RememberLoginHash','SilverStripe\\HybridSessions\\HybridSessionDataObject','SilverStripe\\MFA\\Model\\RegisteredMethod','SilverStripe\\SessionManager\\Models\\LoginSession','SilverStripe\\ShareDraftContent\\Models\\ShareToken','SilverStripe\\UserForms\\Model\\EditableCustomRule','SilverStripe\\UserForms\\Model\\EditableFormField','Symbiote\\AdvancedWorkflow\\DataObjects\\ImportedWorkflowTemplate','Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowAction','Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowActionInstance','Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowDefinition','Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowInstance','Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowTransition','Symbiote\\QueuedJobs\\DataObjects\\QueuedJobDescriptor','Symbiote\\QueuedJobs\\DataObjects\\QueuedJobRule','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableOption','SilverStripe\\UserForms\\Model\\Recipient\\EmailRecipient','SilverStripe\\UserForms\\Model\\Recipient\\EmailRecipientCondition','SilverStripe\\UserForms\\Model\\Submission\\SubmittedForm','SilverStripe\\UserForms\\Model\\Submission\\SubmittedFormField','SilverStripe\\Assets\\Folder','SilverStripe\\Assets\\Image','Page','CWP\\CWP\\PageTypes\\BasePage','CWP\\Search\\CwpSearchPage','SilverStripe\\ErrorPage\\ErrorPage','SilverStripe\\IFrame\\IFramePage','CWP\\CWP\\PageTypes\\BaseHomePage','CWP\\CWP\\PageTypes\\DatedUpdateHolder','CWP\\CWP\\PageTypes\\DatedUpdatePage','CWP\\CWP\\PageTypes\\SitemapPage','SilverStripe\\Blog\\Model\\Blog','SilverStripe\\Blog\\Model\\BlogPost','SilverStripe\\CMS\\Model\\RedirectorPage','SilverStripe\\CMS\\Model\\VirtualPage','SilverStripe\\UserForms\\Model\\UserDefinedForm','CWP\\CWP\\PageTypes\\EventHolder','CWP\\CWP\\PageTypes\\NewsHolder','CWP\\CWP\\PageTypes\\EventPage','CWP\\CWP\\PageTypes\\NewsPage','CWP\\CWP\\PageTypes\\FooterHolder','SilverStripe\\SpamProtection\\EditableSpamProtectionField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCheckbox','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCountryDropdownField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableDateField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableEmailField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFieldGroup','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFieldGroupEnd','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFileField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormHeading','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableLiteralField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableMemberListField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableMultipleOptionField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableNumericField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableTextField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCheckboxGroupField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableDropdown','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableRadioField','Symbiote\\AdvancedWorkflow\\Actions\\AssignUsersToWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\CancelWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\NotifyUsersWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\PublishItemWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\SetPropertyWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\SimpleApprovalWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\UnpublishItemWorkflowAction','SilverStripe\\UserForms\\Model\\Submission\\SubmittedFileField') COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Assets\\File',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ObjectUniquePerChangeSet` (`ObjectID`,`ObjectClass`,`ChangeSetID`),
  KEY `ClassName` (`ClassName`),
  KEY `ChangeSetID` (`ChangeSetID`),
  KEY `Object` (`ObjectID`,`ObjectClass`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ChangeSetItem`
--

LOCK TABLES `ChangeSetItem` WRITE;
/*!40000 ALTER TABLE `ChangeSetItem` DISABLE KEYS */;
INSERT INTO `ChangeSetItem` VALUES (1,'SilverStripe\\Versioned\\ChangeSetItem','2022-09-05 00:32:57','2022-09-05 00:32:57',0,0,'explicitly',1,1,'SilverStripe\\SiteConfig\\SiteConfig'),(2,'SilverStripe\\Versioned\\ChangeSetItem','2022-09-05 00:33:25','2022-09-05 00:33:25',2,4,'explicitly',2,1,'SilverStripe\\CMS\\Model\\SiteTree'),(3,'SilverStripe\\Versioned\\ChangeSetItem','2022-09-05 00:34:21','2022-09-05 00:34:21',4,6,'explicitly',3,1,'SilverStripe\\CMS\\Model\\SiteTree');
/*!40000 ALTER TABLE `ChangeSetItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ChangeSetItem_ReferencedBy`
--

DROP TABLE IF EXISTS `ChangeSetItem_ReferencedBy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ChangeSetItem_ReferencedBy` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ChangeSetItemID` int(11) NOT NULL DEFAULT 0,
  `ChildID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `ChangeSetItemID` (`ChangeSetItemID`),
  KEY `ChildID` (`ChildID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ChangeSetItem_ReferencedBy`
--

LOCK TABLES `ChangeSetItem_ReferencedBy` WRITE;
/*!40000 ALTER TABLE `ChangeSetItem_ReferencedBy` DISABLE KEYS */;
/*!40000 ALTER TABLE `ChangeSetItem_ReferencedBy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Comment`
--

DROP TABLE IF EXISTS `Comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Comment` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Comments\\Model\\Comment') COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Comments\\Model\\Comment',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Comment` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Email` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `URL` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Moderated` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `IsSpam` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `AllowHtml` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `SecretToken` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Depth` int(11) NOT NULL DEFAULT 0,
  `AuthorID` int(11) NOT NULL DEFAULT 0,
  `ParentCommentID` int(11) NOT NULL DEFAULT 0,
  `ParentID` int(11) NOT NULL DEFAULT 0,
  `ParentClass` enum('SilverStripe\\Assets\\File','SilverStripe\\CronTask\\CronTaskStatus','SilverStripe\\SiteConfig\\SiteConfig','SilverStripe\\Taxonomy\\TaxonomyTerm','SilverStripe\\Taxonomy\\TaxonomyType','SilverStripe\\Versioned\\ChangeSet','SilverStripe\\Versioned\\ChangeSetItem','BringYourOwnIdeas\\Maintenance\\Model\\Package','CWP\\CWP\\Model\\Quicklink','CWP\\CWP\\Model\\RelatedPageLink','nglasl\\misdirection\\LinkMapping','SilverStripe\\Assets\\Shortcodes\\FileLink','SilverStripe\\Blog\\Model\\BlogCategory','SilverStripe\\Blog\\Model\\BlogTag','SilverStripe\\CMS\\Model\\SiteTree','SilverStripe\\CMS\\Model\\SiteTreeLink','SilverStripe\\Comments\\Model\\Comment','SilverStripe\\ContentReview\\Models\\ContentReviewLog','SilverStripe\\ExternalLinks\\Model\\BrokenExternalLink','SilverStripe\\ExternalLinks\\Model\\BrokenExternalPageTrack','SilverStripe\\ExternalLinks\\Model\\BrokenExternalPageTrackStatus','SilverStripe\\Security\\Group','SilverStripe\\Security\\LoginAttempt','SilverStripe\\Security\\Member','SilverStripe\\Security\\MemberPassword','SilverStripe\\Security\\Permission','SilverStripe\\Security\\PermissionRole','SilverStripe\\Security\\PermissionRoleCode','SilverStripe\\Security\\RememberLoginHash','SilverStripe\\HybridSessions\\HybridSessionDataObject','SilverStripe\\MFA\\Model\\RegisteredMethod','SilverStripe\\SessionManager\\Models\\LoginSession','SilverStripe\\ShareDraftContent\\Models\\ShareToken','SilverStripe\\UserForms\\Model\\EditableCustomRule','SilverStripe\\UserForms\\Model\\EditableFormField','Symbiote\\AdvancedWorkflow\\DataObjects\\ImportedWorkflowTemplate','Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowAction','Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowActionInstance','Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowDefinition','Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowInstance','Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowTransition','Symbiote\\QueuedJobs\\DataObjects\\QueuedJobDescriptor','Symbiote\\QueuedJobs\\DataObjects\\QueuedJobRule','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableOption','SilverStripe\\UserForms\\Model\\Recipient\\EmailRecipient','SilverStripe\\UserForms\\Model\\Recipient\\EmailRecipientCondition','SilverStripe\\UserForms\\Model\\Submission\\SubmittedForm','SilverStripe\\UserForms\\Model\\Submission\\SubmittedFormField','SilverStripe\\Assets\\Folder','SilverStripe\\Assets\\Image','Page','CWP\\CWP\\PageTypes\\BasePage','CWP\\Search\\CwpSearchPage','SilverStripe\\ErrorPage\\ErrorPage','SilverStripe\\IFrame\\IFramePage','CWP\\CWP\\PageTypes\\BaseHomePage','CWP\\CWP\\PageTypes\\DatedUpdateHolder','CWP\\CWP\\PageTypes\\DatedUpdatePage','CWP\\CWP\\PageTypes\\SitemapPage','SilverStripe\\Blog\\Model\\Blog','SilverStripe\\Blog\\Model\\BlogPost','SilverStripe\\CMS\\Model\\RedirectorPage','SilverStripe\\CMS\\Model\\VirtualPage','SilverStripe\\UserForms\\Model\\UserDefinedForm','CWP\\CWP\\PageTypes\\EventHolder','CWP\\CWP\\PageTypes\\NewsHolder','CWP\\CWP\\PageTypes\\EventPage','CWP\\CWP\\PageTypes\\NewsPage','CWP\\CWP\\PageTypes\\FooterHolder','SilverStripe\\SpamProtection\\EditableSpamProtectionField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCheckbox','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCountryDropdownField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableDateField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableEmailField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFieldGroup','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFieldGroupEnd','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFileField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormHeading','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableLiteralField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableMemberListField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableMultipleOptionField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableNumericField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableTextField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCheckboxGroupField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableDropdown','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableRadioField','Symbiote\\AdvancedWorkflow\\Actions\\AssignUsersToWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\CancelWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\NotifyUsersWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\PublishItemWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\SetPropertyWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\SimpleApprovalWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\UnpublishItemWorkflowAction','SilverStripe\\UserForms\\Model\\Submission\\SubmittedFileField') COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Assets\\File',
  PRIMARY KEY (`ID`),
  KEY `Created` (`Created`),
  KEY `ClassName` (`ClassName`),
  KEY `AuthorID` (`AuthorID`),
  KEY `ParentCommentID` (`ParentCommentID`),
  KEY `Parent` (`ParentID`,`ParentClass`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Comment`
--

LOCK TABLES `Comment` WRITE;
/*!40000 ALTER TABLE `Comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `Comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ContentReviewLog`
--

DROP TABLE IF EXISTS `ContentReviewLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ContentReviewLog` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\ContentReview\\Models\\ContentReviewLog') COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\ContentReview\\Models\\ContentReviewLog',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Note` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ReviewerID` int(11) NOT NULL DEFAULT 0,
  `SiteTreeID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `Created` (`Created`),
  KEY `ClassName` (`ClassName`),
  KEY `ReviewerID` (`ReviewerID`),
  KEY `SiteTreeID` (`SiteTreeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ContentReviewLog`
--

LOCK TABLES `ContentReviewLog` WRITE;
/*!40000 ALTER TABLE `ContentReviewLog` DISABLE KEYS */;
/*!40000 ALTER TABLE `ContentReviewLog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CronTaskStatus`
--

DROP TABLE IF EXISTS `CronTaskStatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CronTaskStatus` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\CronTask\\CronTaskStatus') COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\CronTask\\CronTaskStatus',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `TaskClass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LastChecked` datetime DEFAULT NULL,
  `LastRun` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CronTaskStatus`
--

LOCK TABLES `CronTaskStatus` WRITE;
/*!40000 ALTER TABLE `CronTaskStatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `CronTaskStatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DatedUpdatePage`
--

DROP TABLE IF EXISTS `DatedUpdatePage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DatedUpdatePage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Abstract` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DatedUpdatePage`
--

LOCK TABLES `DatedUpdatePage` WRITE;
/*!40000 ALTER TABLE `DatedUpdatePage` DISABLE KEYS */;
/*!40000 ALTER TABLE `DatedUpdatePage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DatedUpdatePage_Live`
--

DROP TABLE IF EXISTS `DatedUpdatePage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DatedUpdatePage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Abstract` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DatedUpdatePage_Live`
--

LOCK TABLES `DatedUpdatePage_Live` WRITE;
/*!40000 ALTER TABLE `DatedUpdatePage_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `DatedUpdatePage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DatedUpdatePage_Versions`
--

DROP TABLE IF EXISTS `DatedUpdatePage_Versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DatedUpdatePage_Versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `Abstract` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DatedUpdatePage_Versions`
--

LOCK TABLES `DatedUpdatePage_Versions` WRITE;
/*!40000 ALTER TABLE `DatedUpdatePage_Versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `DatedUpdatePage_Versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableCheckbox`
--

DROP TABLE IF EXISTS `EditableCheckbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EditableCheckbox` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CheckedDefault` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EditableCheckbox`
--

LOCK TABLES `EditableCheckbox` WRITE;
/*!40000 ALTER TABLE `EditableCheckbox` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableCheckbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableCheckbox_Live`
--

DROP TABLE IF EXISTS `EditableCheckbox_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EditableCheckbox_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CheckedDefault` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EditableCheckbox_Live`
--

LOCK TABLES `EditableCheckbox_Live` WRITE;
/*!40000 ALTER TABLE `EditableCheckbox_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableCheckbox_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableCheckbox_Versions`
--

DROP TABLE IF EXISTS `EditableCheckbox_Versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EditableCheckbox_Versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `CheckedDefault` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EditableCheckbox_Versions`
--

LOCK TABLES `EditableCheckbox_Versions` WRITE;
/*!40000 ALTER TABLE `EditableCheckbox_Versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableCheckbox_Versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableCountryDropdownField`
--

DROP TABLE IF EXISTS `EditableCountryDropdownField`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EditableCountryDropdownField` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UseEmptyString` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `EmptyString` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EditableCountryDropdownField`
--

LOCK TABLES `EditableCountryDropdownField` WRITE;
/*!40000 ALTER TABLE `EditableCountryDropdownField` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableCountryDropdownField` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableCountryDropdownField_Live`
--

DROP TABLE IF EXISTS `EditableCountryDropdownField_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EditableCountryDropdownField_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UseEmptyString` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `EmptyString` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EditableCountryDropdownField_Live`
--

LOCK TABLES `EditableCountryDropdownField_Live` WRITE;
/*!40000 ALTER TABLE `EditableCountryDropdownField_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableCountryDropdownField_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableCountryDropdownField_Versions`
--

DROP TABLE IF EXISTS `EditableCountryDropdownField_Versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EditableCountryDropdownField_Versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `UseEmptyString` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `EmptyString` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EditableCountryDropdownField_Versions`
--

LOCK TABLES `EditableCountryDropdownField_Versions` WRITE;
/*!40000 ALTER TABLE `EditableCountryDropdownField_Versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableCountryDropdownField_Versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableCustomRule`
--

DROP TABLE IF EXISTS `EditableCustomRule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EditableCustomRule` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\UserForms\\Model\\EditableCustomRule') COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\UserForms\\Model\\EditableCustomRule',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT 0,
  `Display` enum('Show','Hide') COLLATE utf8mb4_unicode_ci DEFAULT 'Show',
  `ConditionOption` enum('IsBlank','IsNotBlank','HasValue','ValueNot','ValueLessThan','ValueLessThanEqual','ValueGreaterThan','ValueGreaterThanEqual') COLLATE utf8mb4_unicode_ci DEFAULT 'IsBlank',
  `FieldValue` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT 0,
  `ConditionFieldID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `ParentID` (`ParentID`),
  KEY `ConditionFieldID` (`ConditionFieldID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EditableCustomRule`
--

LOCK TABLES `EditableCustomRule` WRITE;
/*!40000 ALTER TABLE `EditableCustomRule` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableCustomRule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableCustomRule_Live`
--

DROP TABLE IF EXISTS `EditableCustomRule_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EditableCustomRule_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\UserForms\\Model\\EditableCustomRule') COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\UserForms\\Model\\EditableCustomRule',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT 0,
  `Display` enum('Show','Hide') COLLATE utf8mb4_unicode_ci DEFAULT 'Show',
  `ConditionOption` enum('IsBlank','IsNotBlank','HasValue','ValueNot','ValueLessThan','ValueLessThanEqual','ValueGreaterThan','ValueGreaterThanEqual') COLLATE utf8mb4_unicode_ci DEFAULT 'IsBlank',
  `FieldValue` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT 0,
  `ConditionFieldID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `ParentID` (`ParentID`),
  KEY `ConditionFieldID` (`ConditionFieldID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EditableCustomRule_Live`
--

LOCK TABLES `EditableCustomRule_Live` WRITE;
/*!40000 ALTER TABLE `EditableCustomRule_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableCustomRule_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableCustomRule_Versions`
--

DROP TABLE IF EXISTS `EditableCustomRule_Versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EditableCustomRule_Versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `WasPublished` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `WasDeleted` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `WasDraft` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `AuthorID` int(11) NOT NULL DEFAULT 0,
  `PublisherID` int(11) NOT NULL DEFAULT 0,
  `ClassName` enum('SilverStripe\\UserForms\\Model\\EditableCustomRule') COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\UserForms\\Model\\EditableCustomRule',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Display` enum('Show','Hide') COLLATE utf8mb4_unicode_ci DEFAULT 'Show',
  `ConditionOption` enum('IsBlank','IsNotBlank','HasValue','ValueNot','ValueLessThan','ValueLessThanEqual','ValueGreaterThan','ValueGreaterThanEqual') COLLATE utf8mb4_unicode_ci DEFAULT 'IsBlank',
  `FieldValue` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT 0,
  `ConditionFieldID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `ClassName` (`ClassName`),
  KEY `ParentID` (`ParentID`),
  KEY `ConditionFieldID` (`ConditionFieldID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EditableCustomRule_Versions`
--

LOCK TABLES `EditableCustomRule_Versions` WRITE;
/*!40000 ALTER TABLE `EditableCustomRule_Versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableCustomRule_Versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableDateField`
--

DROP TABLE IF EXISTS `EditableDateField`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EditableDateField` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DefaultToToday` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EditableDateField`
--

LOCK TABLES `EditableDateField` WRITE;
/*!40000 ALTER TABLE `EditableDateField` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableDateField` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableDateField_Live`
--

DROP TABLE IF EXISTS `EditableDateField_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EditableDateField_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DefaultToToday` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EditableDateField_Live`
--

LOCK TABLES `EditableDateField_Live` WRITE;
/*!40000 ALTER TABLE `EditableDateField_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableDateField_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableDateField_Versions`
--

DROP TABLE IF EXISTS `EditableDateField_Versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EditableDateField_Versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `DefaultToToday` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EditableDateField_Versions`
--

LOCK TABLES `EditableDateField_Versions` WRITE;
/*!40000 ALTER TABLE `EditableDateField_Versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableDateField_Versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableDropdown`
--

DROP TABLE IF EXISTS `EditableDropdown`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EditableDropdown` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UseEmptyString` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `EmptyString` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EditableDropdown`
--

LOCK TABLES `EditableDropdown` WRITE;
/*!40000 ALTER TABLE `EditableDropdown` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableDropdown` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableDropdown_Live`
--

DROP TABLE IF EXISTS `EditableDropdown_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EditableDropdown_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UseEmptyString` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `EmptyString` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EditableDropdown_Live`
--

LOCK TABLES `EditableDropdown_Live` WRITE;
/*!40000 ALTER TABLE `EditableDropdown_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableDropdown_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableDropdown_Versions`
--

DROP TABLE IF EXISTS `EditableDropdown_Versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EditableDropdown_Versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `UseEmptyString` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `EmptyString` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EditableDropdown_Versions`
--

LOCK TABLES `EditableDropdown_Versions` WRITE;
/*!40000 ALTER TABLE `EditableDropdown_Versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableDropdown_Versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableFieldGroup`
--

DROP TABLE IF EXISTS `EditableFieldGroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EditableFieldGroup` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `EndID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `EndID` (`EndID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EditableFieldGroup`
--

LOCK TABLES `EditableFieldGroup` WRITE;
/*!40000 ALTER TABLE `EditableFieldGroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableFieldGroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableFieldGroup_Live`
--

DROP TABLE IF EXISTS `EditableFieldGroup_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EditableFieldGroup_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `EndID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `EndID` (`EndID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EditableFieldGroup_Live`
--

LOCK TABLES `EditableFieldGroup_Live` WRITE;
/*!40000 ALTER TABLE `EditableFieldGroup_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableFieldGroup_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableFieldGroup_Versions`
--

DROP TABLE IF EXISTS `EditableFieldGroup_Versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EditableFieldGroup_Versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `EndID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `EndID` (`EndID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EditableFieldGroup_Versions`
--

LOCK TABLES `EditableFieldGroup_Versions` WRITE;
/*!40000 ALTER TABLE `EditableFieldGroup_Versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableFieldGroup_Versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableFileField`
--

DROP TABLE IF EXISTS `EditableFileField`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EditableFileField` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MaxFileSizeMB` float NOT NULL DEFAULT 0,
  `FolderConfirmed` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `FolderID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `FolderID` (`FolderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EditableFileField`
--

LOCK TABLES `EditableFileField` WRITE;
/*!40000 ALTER TABLE `EditableFileField` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableFileField` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableFileField_Live`
--

DROP TABLE IF EXISTS `EditableFileField_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EditableFileField_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MaxFileSizeMB` float NOT NULL DEFAULT 0,
  `FolderConfirmed` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `FolderID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `FolderID` (`FolderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EditableFileField_Live`
--

LOCK TABLES `EditableFileField_Live` WRITE;
/*!40000 ALTER TABLE `EditableFileField_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableFileField_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableFileField_Versions`
--

DROP TABLE IF EXISTS `EditableFileField_Versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EditableFileField_Versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `MaxFileSizeMB` float NOT NULL DEFAULT 0,
  `FolderConfirmed` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `FolderID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `FolderID` (`FolderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EditableFileField_Versions`
--

LOCK TABLES `EditableFileField_Versions` WRITE;
/*!40000 ALTER TABLE `EditableFileField_Versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableFileField_Versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableFormField`
--

DROP TABLE IF EXISTS `EditableFormField`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EditableFormField` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\UserForms\\Model\\EditableFormField','SilverStripe\\SpamProtection\\EditableSpamProtectionField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCheckbox','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCountryDropdownField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableDateField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableEmailField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFieldGroup','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFieldGroupEnd','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFileField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormHeading','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableLiteralField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableMemberListField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableMultipleOptionField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableNumericField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableTextField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCheckboxGroupField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableDropdown','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableRadioField') COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\UserForms\\Model\\EditableFormField',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT 0,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Default` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Sort` int(11) NOT NULL DEFAULT 0,
  `Required` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `CustomErrorMessage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ExtraClass` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RightTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ShowOnLoad` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `ShowInSummary` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `Placeholder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DisplayRulesConjunction` enum('And','Or') COLLATE utf8mb4_unicode_ci DEFAULT 'Or',
  `ParentID` int(11) NOT NULL DEFAULT 0,
  `ParentClass` enum('SilverStripe\\Assets\\File','SilverStripe\\CronTask\\CronTaskStatus','SilverStripe\\SiteConfig\\SiteConfig','SilverStripe\\Taxonomy\\TaxonomyTerm','SilverStripe\\Taxonomy\\TaxonomyType','SilverStripe\\Versioned\\ChangeSet','SilverStripe\\Versioned\\ChangeSetItem','BringYourOwnIdeas\\Maintenance\\Model\\Package','CWP\\CWP\\Model\\Quicklink','CWP\\CWP\\Model\\RelatedPageLink','nglasl\\misdirection\\LinkMapping','SilverStripe\\Assets\\Shortcodes\\FileLink','SilverStripe\\Blog\\Model\\BlogCategory','SilverStripe\\Blog\\Model\\BlogTag','SilverStripe\\CMS\\Model\\SiteTree','SilverStripe\\CMS\\Model\\SiteTreeLink','SilverStripe\\Comments\\Model\\Comment','SilverStripe\\ContentReview\\Models\\ContentReviewLog','SilverStripe\\ExternalLinks\\Model\\BrokenExternalLink','SilverStripe\\ExternalLinks\\Model\\BrokenExternalPageTrack','SilverStripe\\ExternalLinks\\Model\\BrokenExternalPageTrackStatus','SilverStripe\\Security\\Group','SilverStripe\\Security\\LoginAttempt','SilverStripe\\Security\\Member','SilverStripe\\Security\\MemberPassword','SilverStripe\\Security\\Permission','SilverStripe\\Security\\PermissionRole','SilverStripe\\Security\\PermissionRoleCode','SilverStripe\\Security\\RememberLoginHash','SilverStripe\\HybridSessions\\HybridSessionDataObject','SilverStripe\\MFA\\Model\\RegisteredMethod','SilverStripe\\SessionManager\\Models\\LoginSession','SilverStripe\\ShareDraftContent\\Models\\ShareToken','SilverStripe\\UserForms\\Model\\EditableCustomRule','SilverStripe\\UserForms\\Model\\EditableFormField','Symbiote\\AdvancedWorkflow\\DataObjects\\ImportedWorkflowTemplate','Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowAction','Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowActionInstance','Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowDefinition','Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowInstance','Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowTransition','Symbiote\\QueuedJobs\\DataObjects\\QueuedJobDescriptor','Symbiote\\QueuedJobs\\DataObjects\\QueuedJobRule','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableOption','SilverStripe\\UserForms\\Model\\Recipient\\EmailRecipient','SilverStripe\\UserForms\\Model\\Recipient\\EmailRecipientCondition','SilverStripe\\UserForms\\Model\\Submission\\SubmittedForm','SilverStripe\\UserForms\\Model\\Submission\\SubmittedFormField','SilverStripe\\Assets\\Folder','SilverStripe\\Assets\\Image','Page','CWP\\CWP\\PageTypes\\BasePage','CWP\\Search\\CwpSearchPage','SilverStripe\\ErrorPage\\ErrorPage','SilverStripe\\IFrame\\IFramePage','CWP\\CWP\\PageTypes\\BaseHomePage','CWP\\CWP\\PageTypes\\DatedUpdateHolder','CWP\\CWP\\PageTypes\\DatedUpdatePage','CWP\\CWP\\PageTypes\\SitemapPage','SilverStripe\\Blog\\Model\\Blog','SilverStripe\\Blog\\Model\\BlogPost','SilverStripe\\CMS\\Model\\RedirectorPage','SilverStripe\\CMS\\Model\\VirtualPage','SilverStripe\\UserForms\\Model\\UserDefinedForm','CWP\\CWP\\PageTypes\\EventHolder','CWP\\CWP\\PageTypes\\NewsHolder','CWP\\CWP\\PageTypes\\EventPage','CWP\\CWP\\PageTypes\\NewsPage','CWP\\CWP\\PageTypes\\FooterHolder','SilverStripe\\SpamProtection\\EditableSpamProtectionField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCheckbox','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCountryDropdownField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableDateField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableEmailField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFieldGroup','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFieldGroupEnd','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFileField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormHeading','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableLiteralField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableMemberListField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableMultipleOptionField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableNumericField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableTextField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCheckboxGroupField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableDropdown','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableRadioField','Symbiote\\AdvancedWorkflow\\Actions\\AssignUsersToWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\CancelWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\NotifyUsersWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\PublishItemWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\SetPropertyWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\SimpleApprovalWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\UnpublishItemWorkflowAction','SilverStripe\\UserForms\\Model\\Submission\\SubmittedFileField') COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Assets\\File',
  PRIMARY KEY (`ID`),
  KEY `Sort` (`Sort`),
  KEY `ClassName` (`ClassName`),
  KEY `Parent` (`ParentID`,`ParentClass`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EditableFormField`
--

LOCK TABLES `EditableFormField` WRITE;
/*!40000 ALTER TABLE `EditableFormField` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableFormField` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableFormField_Live`
--

DROP TABLE IF EXISTS `EditableFormField_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EditableFormField_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\UserForms\\Model\\EditableFormField','SilverStripe\\SpamProtection\\EditableSpamProtectionField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCheckbox','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCountryDropdownField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableDateField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableEmailField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFieldGroup','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFieldGroupEnd','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFileField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormHeading','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableLiteralField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableMemberListField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableMultipleOptionField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableNumericField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableTextField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCheckboxGroupField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableDropdown','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableRadioField') COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\UserForms\\Model\\EditableFormField',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT 0,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Default` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Sort` int(11) NOT NULL DEFAULT 0,
  `Required` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `CustomErrorMessage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ExtraClass` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RightTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ShowOnLoad` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `ShowInSummary` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `Placeholder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DisplayRulesConjunction` enum('And','Or') COLLATE utf8mb4_unicode_ci DEFAULT 'Or',
  `ParentID` int(11) NOT NULL DEFAULT 0,
  `ParentClass` enum('SilverStripe\\Assets\\File','SilverStripe\\CronTask\\CronTaskStatus','SilverStripe\\SiteConfig\\SiteConfig','SilverStripe\\Taxonomy\\TaxonomyTerm','SilverStripe\\Taxonomy\\TaxonomyType','SilverStripe\\Versioned\\ChangeSet','SilverStripe\\Versioned\\ChangeSetItem','BringYourOwnIdeas\\Maintenance\\Model\\Package','CWP\\CWP\\Model\\Quicklink','CWP\\CWP\\Model\\RelatedPageLink','nglasl\\misdirection\\LinkMapping','SilverStripe\\Assets\\Shortcodes\\FileLink','SilverStripe\\Blog\\Model\\BlogCategory','SilverStripe\\Blog\\Model\\BlogTag','SilverStripe\\CMS\\Model\\SiteTree','SilverStripe\\CMS\\Model\\SiteTreeLink','SilverStripe\\Comments\\Model\\Comment','SilverStripe\\ContentReview\\Models\\ContentReviewLog','SilverStripe\\ExternalLinks\\Model\\BrokenExternalLink','SilverStripe\\ExternalLinks\\Model\\BrokenExternalPageTrack','SilverStripe\\ExternalLinks\\Model\\BrokenExternalPageTrackStatus','SilverStripe\\Security\\Group','SilverStripe\\Security\\LoginAttempt','SilverStripe\\Security\\Member','SilverStripe\\Security\\MemberPassword','SilverStripe\\Security\\Permission','SilverStripe\\Security\\PermissionRole','SilverStripe\\Security\\PermissionRoleCode','SilverStripe\\Security\\RememberLoginHash','SilverStripe\\HybridSessions\\HybridSessionDataObject','SilverStripe\\MFA\\Model\\RegisteredMethod','SilverStripe\\SessionManager\\Models\\LoginSession','SilverStripe\\ShareDraftContent\\Models\\ShareToken','SilverStripe\\UserForms\\Model\\EditableCustomRule','SilverStripe\\UserForms\\Model\\EditableFormField','Symbiote\\AdvancedWorkflow\\DataObjects\\ImportedWorkflowTemplate','Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowAction','Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowActionInstance','Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowDefinition','Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowInstance','Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowTransition','Symbiote\\QueuedJobs\\DataObjects\\QueuedJobDescriptor','Symbiote\\QueuedJobs\\DataObjects\\QueuedJobRule','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableOption','SilverStripe\\UserForms\\Model\\Recipient\\EmailRecipient','SilverStripe\\UserForms\\Model\\Recipient\\EmailRecipientCondition','SilverStripe\\UserForms\\Model\\Submission\\SubmittedForm','SilverStripe\\UserForms\\Model\\Submission\\SubmittedFormField','SilverStripe\\Assets\\Folder','SilverStripe\\Assets\\Image','Page','CWP\\CWP\\PageTypes\\BasePage','CWP\\Search\\CwpSearchPage','SilverStripe\\ErrorPage\\ErrorPage','SilverStripe\\IFrame\\IFramePage','CWP\\CWP\\PageTypes\\BaseHomePage','CWP\\CWP\\PageTypes\\DatedUpdateHolder','CWP\\CWP\\PageTypes\\DatedUpdatePage','CWP\\CWP\\PageTypes\\SitemapPage','SilverStripe\\Blog\\Model\\Blog','SilverStripe\\Blog\\Model\\BlogPost','SilverStripe\\CMS\\Model\\RedirectorPage','SilverStripe\\CMS\\Model\\VirtualPage','SilverStripe\\UserForms\\Model\\UserDefinedForm','CWP\\CWP\\PageTypes\\EventHolder','CWP\\CWP\\PageTypes\\NewsHolder','CWP\\CWP\\PageTypes\\EventPage','CWP\\CWP\\PageTypes\\NewsPage','CWP\\CWP\\PageTypes\\FooterHolder','SilverStripe\\SpamProtection\\EditableSpamProtectionField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCheckbox','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCountryDropdownField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableDateField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableEmailField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFieldGroup','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFieldGroupEnd','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFileField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormHeading','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableLiteralField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableMemberListField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableMultipleOptionField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableNumericField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableTextField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCheckboxGroupField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableDropdown','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableRadioField','Symbiote\\AdvancedWorkflow\\Actions\\AssignUsersToWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\CancelWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\NotifyUsersWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\PublishItemWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\SetPropertyWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\SimpleApprovalWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\UnpublishItemWorkflowAction','SilverStripe\\UserForms\\Model\\Submission\\SubmittedFileField') COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Assets\\File',
  PRIMARY KEY (`ID`),
  KEY `Sort` (`Sort`),
  KEY `ClassName` (`ClassName`),
  KEY `Parent` (`ParentID`,`ParentClass`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EditableFormField_Live`
--

LOCK TABLES `EditableFormField_Live` WRITE;
/*!40000 ALTER TABLE `EditableFormField_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableFormField_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableFormField_Versions`
--

DROP TABLE IF EXISTS `EditableFormField_Versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EditableFormField_Versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `WasPublished` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `WasDeleted` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `WasDraft` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `AuthorID` int(11) NOT NULL DEFAULT 0,
  `PublisherID` int(11) NOT NULL DEFAULT 0,
  `ClassName` enum('SilverStripe\\UserForms\\Model\\EditableFormField','SilverStripe\\SpamProtection\\EditableSpamProtectionField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCheckbox','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCountryDropdownField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableDateField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableEmailField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFieldGroup','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFieldGroupEnd','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFileField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormHeading','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableLiteralField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableMemberListField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableMultipleOptionField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableNumericField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableTextField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCheckboxGroupField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableDropdown','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableRadioField') COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\UserForms\\Model\\EditableFormField',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Default` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Sort` int(11) NOT NULL DEFAULT 0,
  `Required` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `CustomErrorMessage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ExtraClass` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RightTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ShowOnLoad` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `ShowInSummary` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `Placeholder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DisplayRulesConjunction` enum('And','Or') COLLATE utf8mb4_unicode_ci DEFAULT 'Or',
  `ParentID` int(11) NOT NULL DEFAULT 0,
  `ParentClass` enum('SilverStripe\\Assets\\File','SilverStripe\\CronTask\\CronTaskStatus','SilverStripe\\SiteConfig\\SiteConfig','SilverStripe\\Taxonomy\\TaxonomyTerm','SilverStripe\\Taxonomy\\TaxonomyType','SilverStripe\\Versioned\\ChangeSet','SilverStripe\\Versioned\\ChangeSetItem','BringYourOwnIdeas\\Maintenance\\Model\\Package','CWP\\CWP\\Model\\Quicklink','CWP\\CWP\\Model\\RelatedPageLink','nglasl\\misdirection\\LinkMapping','SilverStripe\\Assets\\Shortcodes\\FileLink','SilverStripe\\Blog\\Model\\BlogCategory','SilverStripe\\Blog\\Model\\BlogTag','SilverStripe\\CMS\\Model\\SiteTree','SilverStripe\\CMS\\Model\\SiteTreeLink','SilverStripe\\Comments\\Model\\Comment','SilverStripe\\ContentReview\\Models\\ContentReviewLog','SilverStripe\\ExternalLinks\\Model\\BrokenExternalLink','SilverStripe\\ExternalLinks\\Model\\BrokenExternalPageTrack','SilverStripe\\ExternalLinks\\Model\\BrokenExternalPageTrackStatus','SilverStripe\\Security\\Group','SilverStripe\\Security\\LoginAttempt','SilverStripe\\Security\\Member','SilverStripe\\Security\\MemberPassword','SilverStripe\\Security\\Permission','SilverStripe\\Security\\PermissionRole','SilverStripe\\Security\\PermissionRoleCode','SilverStripe\\Security\\RememberLoginHash','SilverStripe\\HybridSessions\\HybridSessionDataObject','SilverStripe\\MFA\\Model\\RegisteredMethod','SilverStripe\\SessionManager\\Models\\LoginSession','SilverStripe\\ShareDraftContent\\Models\\ShareToken','SilverStripe\\UserForms\\Model\\EditableCustomRule','SilverStripe\\UserForms\\Model\\EditableFormField','Symbiote\\AdvancedWorkflow\\DataObjects\\ImportedWorkflowTemplate','Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowAction','Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowActionInstance','Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowDefinition','Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowInstance','Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowTransition','Symbiote\\QueuedJobs\\DataObjects\\QueuedJobDescriptor','Symbiote\\QueuedJobs\\DataObjects\\QueuedJobRule','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableOption','SilverStripe\\UserForms\\Model\\Recipient\\EmailRecipient','SilverStripe\\UserForms\\Model\\Recipient\\EmailRecipientCondition','SilverStripe\\UserForms\\Model\\Submission\\SubmittedForm','SilverStripe\\UserForms\\Model\\Submission\\SubmittedFormField','SilverStripe\\Assets\\Folder','SilverStripe\\Assets\\Image','Page','CWP\\CWP\\PageTypes\\BasePage','CWP\\Search\\CwpSearchPage','SilverStripe\\ErrorPage\\ErrorPage','SilverStripe\\IFrame\\IFramePage','CWP\\CWP\\PageTypes\\BaseHomePage','CWP\\CWP\\PageTypes\\DatedUpdateHolder','CWP\\CWP\\PageTypes\\DatedUpdatePage','CWP\\CWP\\PageTypes\\SitemapPage','SilverStripe\\Blog\\Model\\Blog','SilverStripe\\Blog\\Model\\BlogPost','SilverStripe\\CMS\\Model\\RedirectorPage','SilverStripe\\CMS\\Model\\VirtualPage','SilverStripe\\UserForms\\Model\\UserDefinedForm','CWP\\CWP\\PageTypes\\EventHolder','CWP\\CWP\\PageTypes\\NewsHolder','CWP\\CWP\\PageTypes\\EventPage','CWP\\CWP\\PageTypes\\NewsPage','CWP\\CWP\\PageTypes\\FooterHolder','SilverStripe\\SpamProtection\\EditableSpamProtectionField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCheckbox','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCountryDropdownField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableDateField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableEmailField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFieldGroup','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFieldGroupEnd','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFileField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormHeading','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableLiteralField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableMemberListField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableMultipleOptionField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableNumericField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableTextField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCheckboxGroupField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableDropdown','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableRadioField','Symbiote\\AdvancedWorkflow\\Actions\\AssignUsersToWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\CancelWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\NotifyUsersWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\PublishItemWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\SetPropertyWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\SimpleApprovalWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\UnpublishItemWorkflowAction','SilverStripe\\UserForms\\Model\\Submission\\SubmittedFileField') COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Assets\\File',
  PRIMARY KEY (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `Sort` (`Sort`),
  KEY `ClassName` (`ClassName`),
  KEY `Parent` (`ParentID`,`ParentClass`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EditableFormField_Versions`
--

LOCK TABLES `EditableFormField_Versions` WRITE;
/*!40000 ALTER TABLE `EditableFormField_Versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableFormField_Versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableFormHeading`
--

DROP TABLE IF EXISTS `EditableFormHeading`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EditableFormHeading` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Level` int(11) NOT NULL DEFAULT 3,
  `HideFromReports` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EditableFormHeading`
--

LOCK TABLES `EditableFormHeading` WRITE;
/*!40000 ALTER TABLE `EditableFormHeading` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableFormHeading` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableFormHeading_Live`
--

DROP TABLE IF EXISTS `EditableFormHeading_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EditableFormHeading_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Level` int(11) NOT NULL DEFAULT 3,
  `HideFromReports` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EditableFormHeading_Live`
--

LOCK TABLES `EditableFormHeading_Live` WRITE;
/*!40000 ALTER TABLE `EditableFormHeading_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableFormHeading_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableFormHeading_Versions`
--

DROP TABLE IF EXISTS `EditableFormHeading_Versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EditableFormHeading_Versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `Level` int(11) NOT NULL DEFAULT 3,
  `HideFromReports` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EditableFormHeading_Versions`
--

LOCK TABLES `EditableFormHeading_Versions` WRITE;
/*!40000 ALTER TABLE `EditableFormHeading_Versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableFormHeading_Versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableLiteralField`
--

DROP TABLE IF EXISTS `EditableLiteralField`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EditableLiteralField` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Content` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `HideFromReports` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `HideLabel` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EditableLiteralField`
--

LOCK TABLES `EditableLiteralField` WRITE;
/*!40000 ALTER TABLE `EditableLiteralField` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableLiteralField` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableLiteralField_Live`
--

DROP TABLE IF EXISTS `EditableLiteralField_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EditableLiteralField_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Content` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `HideFromReports` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `HideLabel` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EditableLiteralField_Live`
--

LOCK TABLES `EditableLiteralField_Live` WRITE;
/*!40000 ALTER TABLE `EditableLiteralField_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableLiteralField_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableLiteralField_Versions`
--

DROP TABLE IF EXISTS `EditableLiteralField_Versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EditableLiteralField_Versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `Content` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `HideFromReports` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `HideLabel` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EditableLiteralField_Versions`
--

LOCK TABLES `EditableLiteralField_Versions` WRITE;
/*!40000 ALTER TABLE `EditableLiteralField_Versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableLiteralField_Versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableMemberListField`
--

DROP TABLE IF EXISTS `EditableMemberListField`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EditableMemberListField` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EditableMemberListField`
--

LOCK TABLES `EditableMemberListField` WRITE;
/*!40000 ALTER TABLE `EditableMemberListField` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableMemberListField` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableMemberListField_Live`
--

DROP TABLE IF EXISTS `EditableMemberListField_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EditableMemberListField_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EditableMemberListField_Live`
--

LOCK TABLES `EditableMemberListField_Live` WRITE;
/*!40000 ALTER TABLE `EditableMemberListField_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableMemberListField_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableMemberListField_Versions`
--

DROP TABLE IF EXISTS `EditableMemberListField_Versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EditableMemberListField_Versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `GroupID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EditableMemberListField_Versions`
--

LOCK TABLES `EditableMemberListField_Versions` WRITE;
/*!40000 ALTER TABLE `EditableMemberListField_Versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableMemberListField_Versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableNumericField`
--

DROP TABLE IF EXISTS `EditableNumericField`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EditableNumericField` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MinValue` int(11) NOT NULL DEFAULT 0,
  `MaxValue` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EditableNumericField`
--

LOCK TABLES `EditableNumericField` WRITE;
/*!40000 ALTER TABLE `EditableNumericField` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableNumericField` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableNumericField_Live`
--

DROP TABLE IF EXISTS `EditableNumericField_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EditableNumericField_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MinValue` int(11) NOT NULL DEFAULT 0,
  `MaxValue` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EditableNumericField_Live`
--

LOCK TABLES `EditableNumericField_Live` WRITE;
/*!40000 ALTER TABLE `EditableNumericField_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableNumericField_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableNumericField_Versions`
--

DROP TABLE IF EXISTS `EditableNumericField_Versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EditableNumericField_Versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `MinValue` int(11) NOT NULL DEFAULT 0,
  `MaxValue` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EditableNumericField_Versions`
--

LOCK TABLES `EditableNumericField_Versions` WRITE;
/*!40000 ALTER TABLE `EditableNumericField_Versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableNumericField_Versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableOption`
--

DROP TABLE IF EXISTS `EditableOption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EditableOption` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\UserForms\\Model\\EditableFormField\\EditableOption') COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\UserForms\\Model\\EditableFormField\\EditableOption',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT 0,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Default` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `Sort` int(11) NOT NULL DEFAULT 0,
  `Value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `Sort` (`Sort`),
  KEY `ClassName` (`ClassName`),
  KEY `ParentID` (`ParentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EditableOption`
--

LOCK TABLES `EditableOption` WRITE;
/*!40000 ALTER TABLE `EditableOption` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableOption` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableOption_Live`
--

DROP TABLE IF EXISTS `EditableOption_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EditableOption_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\UserForms\\Model\\EditableFormField\\EditableOption') COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\UserForms\\Model\\EditableFormField\\EditableOption',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT 0,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Default` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `Sort` int(11) NOT NULL DEFAULT 0,
  `Value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `Sort` (`Sort`),
  KEY `ClassName` (`ClassName`),
  KEY `ParentID` (`ParentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EditableOption_Live`
--

LOCK TABLES `EditableOption_Live` WRITE;
/*!40000 ALTER TABLE `EditableOption_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableOption_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableOption_Versions`
--

DROP TABLE IF EXISTS `EditableOption_Versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EditableOption_Versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `WasPublished` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `WasDeleted` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `WasDraft` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `AuthorID` int(11) NOT NULL DEFAULT 0,
  `PublisherID` int(11) NOT NULL DEFAULT 0,
  `ClassName` enum('SilverStripe\\UserForms\\Model\\EditableFormField\\EditableOption') COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\UserForms\\Model\\EditableFormField\\EditableOption',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Default` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `Sort` int(11) NOT NULL DEFAULT 0,
  `Value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `Sort` (`Sort`),
  KEY `ClassName` (`ClassName`),
  KEY `ParentID` (`ParentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EditableOption_Versions`
--

LOCK TABLES `EditableOption_Versions` WRITE;
/*!40000 ALTER TABLE `EditableOption_Versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableOption_Versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableSpamProtectionField`
--

DROP TABLE IF EXISTS `EditableSpamProtectionField`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EditableSpamProtectionField` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SpamFieldSettings` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EditableSpamProtectionField`
--

LOCK TABLES `EditableSpamProtectionField` WRITE;
/*!40000 ALTER TABLE `EditableSpamProtectionField` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableSpamProtectionField` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableSpamProtectionField_Live`
--

DROP TABLE IF EXISTS `EditableSpamProtectionField_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EditableSpamProtectionField_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SpamFieldSettings` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EditableSpamProtectionField_Live`
--

LOCK TABLES `EditableSpamProtectionField_Live` WRITE;
/*!40000 ALTER TABLE `EditableSpamProtectionField_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableSpamProtectionField_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableSpamProtectionField_Versions`
--

DROP TABLE IF EXISTS `EditableSpamProtectionField_Versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EditableSpamProtectionField_Versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `SpamFieldSettings` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EditableSpamProtectionField_Versions`
--

LOCK TABLES `EditableSpamProtectionField_Versions` WRITE;
/*!40000 ALTER TABLE `EditableSpamProtectionField_Versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableSpamProtectionField_Versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableTextField`
--

DROP TABLE IF EXISTS `EditableTextField`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EditableTextField` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MinLength` int(11) NOT NULL DEFAULT 0,
  `MaxLength` int(11) NOT NULL DEFAULT 0,
  `Rows` int(11) NOT NULL DEFAULT 1,
  `Autocomplete` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EditableTextField`
--

LOCK TABLES `EditableTextField` WRITE;
/*!40000 ALTER TABLE `EditableTextField` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableTextField` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableTextField_Live`
--

DROP TABLE IF EXISTS `EditableTextField_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EditableTextField_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MinLength` int(11) NOT NULL DEFAULT 0,
  `MaxLength` int(11) NOT NULL DEFAULT 0,
  `Rows` int(11) NOT NULL DEFAULT 1,
  `Autocomplete` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EditableTextField_Live`
--

LOCK TABLES `EditableTextField_Live` WRITE;
/*!40000 ALTER TABLE `EditableTextField_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableTextField_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableTextField_Versions`
--

DROP TABLE IF EXISTS `EditableTextField_Versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EditableTextField_Versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `MinLength` int(11) NOT NULL DEFAULT 0,
  `MaxLength` int(11) NOT NULL DEFAULT 0,
  `Rows` int(11) NOT NULL DEFAULT 1,
  `Autocomplete` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EditableTextField_Versions`
--

LOCK TABLES `EditableTextField_Versions` WRITE;
/*!40000 ALTER TABLE `EditableTextField_Versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableTextField_Versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ErrorPage`
--

DROP TABLE IF EXISTS `ErrorPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ErrorPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ErrorCode` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ErrorPage`
--

LOCK TABLES `ErrorPage` WRITE;
/*!40000 ALTER TABLE `ErrorPage` DISABLE KEYS */;
INSERT INTO `ErrorPage` VALUES (4,404),(5,500);
/*!40000 ALTER TABLE `ErrorPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ErrorPage_Live`
--

DROP TABLE IF EXISTS `ErrorPage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ErrorPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ErrorCode` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ErrorPage_Live`
--

LOCK TABLES `ErrorPage_Live` WRITE;
/*!40000 ALTER TABLE `ErrorPage_Live` DISABLE KEYS */;
INSERT INTO `ErrorPage_Live` VALUES (4,404),(5,500);
/*!40000 ALTER TABLE `ErrorPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ErrorPage_Versions`
--

DROP TABLE IF EXISTS `ErrorPage_Versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ErrorPage_Versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `ErrorCode` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ErrorPage_Versions`
--

LOCK TABLES `ErrorPage_Versions` WRITE;
/*!40000 ALTER TABLE `ErrorPage_Versions` DISABLE KEYS */;
INSERT INTO `ErrorPage_Versions` VALUES (1,4,1,404),(2,4,2,404),(3,5,1,500),(4,5,2,500);
/*!40000 ALTER TABLE `ErrorPage_Versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EventPage`
--

DROP TABLE IF EXISTS `EventPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EventPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `StartTime` time DEFAULT NULL,
  `EndTime` time DEFAULT NULL,
  `Location` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EventPage`
--

LOCK TABLES `EventPage` WRITE;
/*!40000 ALTER TABLE `EventPage` DISABLE KEYS */;
/*!40000 ALTER TABLE `EventPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EventPage_Live`
--

DROP TABLE IF EXISTS `EventPage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EventPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `StartTime` time DEFAULT NULL,
  `EndTime` time DEFAULT NULL,
  `Location` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EventPage_Live`
--

LOCK TABLES `EventPage_Live` WRITE;
/*!40000 ALTER TABLE `EventPage_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `EventPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EventPage_Versions`
--

DROP TABLE IF EXISTS `EventPage_Versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EventPage_Versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `StartTime` time DEFAULT NULL,
  `EndTime` time DEFAULT NULL,
  `Location` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EventPage_Versions`
--

LOCK TABLES `EventPage_Versions` WRITE;
/*!40000 ALTER TABLE `EventPage_Versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `EventPage_Versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `File`
--

DROP TABLE IF EXISTS `File`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `File` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Assets\\File','SilverStripe\\Assets\\Folder','SilverStripe\\Assets\\Image') COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Assets\\File',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT 0,
  `UserFormUpload` enum('f','t') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FileContentCache` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') COLLATE utf8mb4_unicode_ci DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') COLLATE utf8mb4_unicode_ci DEFAULT 'Inherit',
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `ParentID` int(11) NOT NULL DEFAULT 0,
  `OwnerID` int(11) NOT NULL DEFAULT 0,
  `FileHash` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FileFilename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FileVariant` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Name` (`Name`),
  KEY `ClassName` (`ClassName`),
  KEY `ParentID` (`ParentID`),
  KEY `OwnerID` (`OwnerID`),
  KEY `FileHash` (`FileHash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `File`
--

LOCK TABLES `File` WRITE;
/*!40000 ALTER TABLE `File` DISABLE KEYS */;
/*!40000 ALTER TABLE `File` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileLink`
--

DROP TABLE IF EXISTS `FileLink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileLink` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Assets\\Shortcodes\\FileLink') COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Assets\\Shortcodes\\FileLink',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `LinkedID` int(11) NOT NULL DEFAULT 0,
  `ParentID` int(11) NOT NULL DEFAULT 0,
  `ParentClass` enum('SilverStripe\\Assets\\File','SilverStripe\\CronTask\\CronTaskStatus','SilverStripe\\SiteConfig\\SiteConfig','SilverStripe\\Taxonomy\\TaxonomyTerm','SilverStripe\\Taxonomy\\TaxonomyType','SilverStripe\\Versioned\\ChangeSet','SilverStripe\\Versioned\\ChangeSetItem','BringYourOwnIdeas\\Maintenance\\Model\\Package','CWP\\CWP\\Model\\Quicklink','CWP\\CWP\\Model\\RelatedPageLink','nglasl\\misdirection\\LinkMapping','SilverStripe\\Assets\\Shortcodes\\FileLink','SilverStripe\\Blog\\Model\\BlogCategory','SilverStripe\\Blog\\Model\\BlogTag','SilverStripe\\CMS\\Model\\SiteTree','SilverStripe\\CMS\\Model\\SiteTreeLink','SilverStripe\\Comments\\Model\\Comment','SilverStripe\\ContentReview\\Models\\ContentReviewLog','SilverStripe\\ExternalLinks\\Model\\BrokenExternalLink','SilverStripe\\ExternalLinks\\Model\\BrokenExternalPageTrack','SilverStripe\\ExternalLinks\\Model\\BrokenExternalPageTrackStatus','SilverStripe\\Security\\Group','SilverStripe\\Security\\LoginAttempt','SilverStripe\\Security\\Member','SilverStripe\\Security\\MemberPassword','SilverStripe\\Security\\Permission','SilverStripe\\Security\\PermissionRole','SilverStripe\\Security\\PermissionRoleCode','SilverStripe\\Security\\RememberLoginHash','SilverStripe\\HybridSessions\\HybridSessionDataObject','SilverStripe\\MFA\\Model\\RegisteredMethod','SilverStripe\\SessionManager\\Models\\LoginSession','SilverStripe\\ShareDraftContent\\Models\\ShareToken','SilverStripe\\UserForms\\Model\\EditableCustomRule','SilverStripe\\UserForms\\Model\\EditableFormField','Symbiote\\AdvancedWorkflow\\DataObjects\\ImportedWorkflowTemplate','Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowAction','Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowActionInstance','Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowDefinition','Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowInstance','Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowTransition','Symbiote\\QueuedJobs\\DataObjects\\QueuedJobDescriptor','Symbiote\\QueuedJobs\\DataObjects\\QueuedJobRule','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableOption','SilverStripe\\UserForms\\Model\\Recipient\\EmailRecipient','SilverStripe\\UserForms\\Model\\Recipient\\EmailRecipientCondition','SilverStripe\\UserForms\\Model\\Submission\\SubmittedForm','SilverStripe\\UserForms\\Model\\Submission\\SubmittedFormField','SilverStripe\\Assets\\Folder','SilverStripe\\Assets\\Image','Page','CWP\\CWP\\PageTypes\\BasePage','CWP\\Search\\CwpSearchPage','SilverStripe\\ErrorPage\\ErrorPage','SilverStripe\\IFrame\\IFramePage','CWP\\CWP\\PageTypes\\BaseHomePage','CWP\\CWP\\PageTypes\\DatedUpdateHolder','CWP\\CWP\\PageTypes\\DatedUpdatePage','CWP\\CWP\\PageTypes\\SitemapPage','SilverStripe\\Blog\\Model\\Blog','SilverStripe\\Blog\\Model\\BlogPost','SilverStripe\\CMS\\Model\\RedirectorPage','SilverStripe\\CMS\\Model\\VirtualPage','SilverStripe\\UserForms\\Model\\UserDefinedForm','CWP\\CWP\\PageTypes\\EventHolder','CWP\\CWP\\PageTypes\\NewsHolder','CWP\\CWP\\PageTypes\\EventPage','CWP\\CWP\\PageTypes\\NewsPage','CWP\\CWP\\PageTypes\\FooterHolder','SilverStripe\\SpamProtection\\EditableSpamProtectionField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCheckbox','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCountryDropdownField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableDateField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableEmailField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFieldGroup','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFieldGroupEnd','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFileField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormHeading','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableLiteralField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableMemberListField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableMultipleOptionField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableNumericField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableTextField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCheckboxGroupField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableDropdown','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableRadioField','Symbiote\\AdvancedWorkflow\\Actions\\AssignUsersToWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\CancelWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\NotifyUsersWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\PublishItemWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\SetPropertyWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\SimpleApprovalWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\UnpublishItemWorkflowAction','SilverStripe\\UserForms\\Model\\Submission\\SubmittedFileField') COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Assets\\File',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `LinkedID` (`LinkedID`),
  KEY `Parent` (`ParentID`,`ParentClass`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileLink`
--

LOCK TABLES `FileLink` WRITE;
/*!40000 ALTER TABLE `FileLink` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileLink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `File_EditorGroups`
--

DROP TABLE IF EXISTS `File_EditorGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `File_EditorGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FileID` int(11) NOT NULL DEFAULT 0,
  `GroupID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `FileID` (`FileID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `File_EditorGroups`
--

LOCK TABLES `File_EditorGroups` WRITE;
/*!40000 ALTER TABLE `File_EditorGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `File_EditorGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `File_Live`
--

DROP TABLE IF EXISTS `File_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `File_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Assets\\File','SilverStripe\\Assets\\Folder','SilverStripe\\Assets\\Image') COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Assets\\File',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT 0,
  `UserFormUpload` enum('f','t') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FileContentCache` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') COLLATE utf8mb4_unicode_ci DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') COLLATE utf8mb4_unicode_ci DEFAULT 'Inherit',
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `ParentID` int(11) NOT NULL DEFAULT 0,
  `OwnerID` int(11) NOT NULL DEFAULT 0,
  `FileHash` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FileFilename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FileVariant` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Name` (`Name`),
  KEY `ClassName` (`ClassName`),
  KEY `ParentID` (`ParentID`),
  KEY `OwnerID` (`OwnerID`),
  KEY `FileHash` (`FileHash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `File_Live`
--

LOCK TABLES `File_Live` WRITE;
/*!40000 ALTER TABLE `File_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `File_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `File_Versions`
--

DROP TABLE IF EXISTS `File_Versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `File_Versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `WasPublished` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `WasDeleted` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `WasDraft` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `AuthorID` int(11) NOT NULL DEFAULT 0,
  `PublisherID` int(11) NOT NULL DEFAULT 0,
  `ClassName` enum('SilverStripe\\Assets\\File','SilverStripe\\Assets\\Folder','SilverStripe\\Assets\\Image') COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Assets\\File',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `UserFormUpload` enum('f','t') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FileContentCache` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') COLLATE utf8mb4_unicode_ci DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') COLLATE utf8mb4_unicode_ci DEFAULT 'Inherit',
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `ParentID` int(11) NOT NULL DEFAULT 0,
  `OwnerID` int(11) NOT NULL DEFAULT 0,
  `FileHash` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FileFilename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FileVariant` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `Name` (`Name`),
  KEY `ClassName` (`ClassName`),
  KEY `ParentID` (`ParentID`),
  KEY `OwnerID` (`OwnerID`),
  KEY `FileHash` (`FileHash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `File_Versions`
--

LOCK TABLES `File_Versions` WRITE;
/*!40000 ALTER TABLE `File_Versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `File_Versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `File_ViewerGroups`
--

DROP TABLE IF EXISTS `File_ViewerGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `File_ViewerGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FileID` int(11) NOT NULL DEFAULT 0,
  `GroupID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `FileID` (`FileID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `File_ViewerGroups`
--

LOCK TABLES `File_ViewerGroups` WRITE;
/*!40000 ALTER TABLE `File_ViewerGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `File_ViewerGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Group`
--

DROP TABLE IF EXISTS `Group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Security\\Group') COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Security\\Group',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Locked` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `Sort` int(11) NOT NULL DEFAULT 0,
  `HtmlEditorConfig` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `ParentID` (`ParentID`),
  KEY `Title` (`Title`),
  KEY `Code` (`Code`),
  KEY `Sort` (`Sort`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Group`
--

LOCK TABLES `Group` WRITE;
/*!40000 ALTER TABLE `Group` DISABLE KEYS */;
INSERT INTO `Group` VALUES (1,'SilverStripe\\Security\\Group','2022-09-05 00:24:32','2022-09-05 00:24:32','Content Authors',NULL,'content-authors',0,1,NULL,0),(2,'SilverStripe\\Security\\Group','2022-09-05 00:24:32','2022-09-05 00:24:32','Administrators',NULL,'administrators',0,0,NULL,0);
/*!40000 ALTER TABLE `Group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Group_Members`
--

DROP TABLE IF EXISTS `Group_Members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Group_Members` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) NOT NULL DEFAULT 0,
  `MemberID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `MemberID` (`MemberID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Group_Members`
--

LOCK TABLES `Group_Members` WRITE;
/*!40000 ALTER TABLE `Group_Members` DISABLE KEYS */;
INSERT INTO `Group_Members` VALUES (1,2,1);
/*!40000 ALTER TABLE `Group_Members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Group_Roles`
--

DROP TABLE IF EXISTS `Group_Roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Group_Roles` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) NOT NULL DEFAULT 0,
  `PermissionRoleID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `PermissionRoleID` (`PermissionRoleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Group_Roles`
--

LOCK TABLES `Group_Roles` WRITE;
/*!40000 ALTER TABLE `Group_Roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `Group_Roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Group_SiteTreeContentReview`
--

DROP TABLE IF EXISTS `Group_SiteTreeContentReview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Group_SiteTreeContentReview` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) NOT NULL DEFAULT 0,
  `SiteTreeID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `SiteTreeID` (`SiteTreeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Group_SiteTreeContentReview`
--

LOCK TABLES `Group_SiteTreeContentReview` WRITE;
/*!40000 ALTER TABLE `Group_SiteTreeContentReview` DISABLE KEYS */;
/*!40000 ALTER TABLE `Group_SiteTreeContentReview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HybridSessionDataObject`
--

DROP TABLE IF EXISTS `HybridSessionDataObject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HybridSessionDataObject` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\HybridSessions\\HybridSessionDataObject') COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\HybridSessions\\HybridSessionDataObject',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `SessionID` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Expiry` int(11) NOT NULL DEFAULT 0,
  `Data` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `SessionID` (`SessionID`),
  KEY `ClassName` (`ClassName`),
  KEY `Expiry` (`Expiry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HybridSessionDataObject`
--

LOCK TABLES `HybridSessionDataObject` WRITE;
/*!40000 ALTER TABLE `HybridSessionDataObject` DISABLE KEYS */;
/*!40000 ALTER TABLE `HybridSessionDataObject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IFramePage`
--

DROP TABLE IF EXISTS `IFramePage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IFramePage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IFrameURL` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IFrameTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AutoHeight` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `AutoWidth` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `FixedHeight` int(11) NOT NULL DEFAULT 500,
  `FixedWidth` int(11) NOT NULL DEFAULT 0,
  `AlternateContent` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BottomContent` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ForceProtocol` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFramePage`
--

LOCK TABLES `IFramePage` WRITE;
/*!40000 ALTER TABLE `IFramePage` DISABLE KEYS */;
/*!40000 ALTER TABLE `IFramePage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IFramePage_Live`
--

DROP TABLE IF EXISTS `IFramePage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IFramePage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IFrameURL` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IFrameTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AutoHeight` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `AutoWidth` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `FixedHeight` int(11) NOT NULL DEFAULT 500,
  `FixedWidth` int(11) NOT NULL DEFAULT 0,
  `AlternateContent` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BottomContent` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ForceProtocol` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFramePage_Live`
--

LOCK TABLES `IFramePage_Live` WRITE;
/*!40000 ALTER TABLE `IFramePage_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `IFramePage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IFramePage_Versions`
--

DROP TABLE IF EXISTS `IFramePage_Versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IFramePage_Versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `IFrameURL` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IFrameTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AutoHeight` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `AutoWidth` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `FixedHeight` int(11) NOT NULL DEFAULT 500,
  `FixedWidth` int(11) NOT NULL DEFAULT 0,
  `AlternateContent` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BottomContent` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ForceProtocol` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFramePage_Versions`
--

LOCK TABLES `IFramePage_Versions` WRITE;
/*!40000 ALTER TABLE `IFramePage_Versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `IFramePage_Versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ImportedWorkflowTemplate`
--

DROP TABLE IF EXISTS `ImportedWorkflowTemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ImportedWorkflowTemplate` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Symbiote\\AdvancedWorkflow\\DataObjects\\ImportedWorkflowTemplate') COLLATE utf8mb4_unicode_ci DEFAULT 'Symbiote\\AdvancedWorkflow\\DataObjects\\ImportedWorkflowTemplate',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Content` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DefinitionID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `DefinitionID` (`DefinitionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ImportedWorkflowTemplate`
--

LOCK TABLES `ImportedWorkflowTemplate` WRITE;
/*!40000 ALTER TABLE `ImportedWorkflowTemplate` DISABLE KEYS */;
/*!40000 ALTER TABLE `ImportedWorkflowTemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LinkMapping`
--

DROP TABLE IF EXISTS `LinkMapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LinkMapping` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('nglasl\\misdirection\\LinkMapping') COLLATE utf8mb4_unicode_ci DEFAULT 'nglasl\\misdirection\\LinkMapping',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `LinkType` enum('Simple','Regular Expression') COLLATE utf8mb4_unicode_ci DEFAULT 'Simple',
  `MappedLink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IncludesHostname` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `Priority` int(11) NOT NULL DEFAULT 0,
  `RedirectType` enum('Link','Page') COLLATE utf8mb4_unicode_ci DEFAULT 'Link',
  `RedirectLink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RedirectPageID` int(11) NOT NULL DEFAULT 0,
  `ResponseCode` int(11) NOT NULL DEFAULT 0,
  `HostnameRestriction` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID` (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LinkMapping`
--

LOCK TABLES `LinkMapping` WRITE;
/*!40000 ALTER TABLE `LinkMapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `LinkMapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LoginAttempt`
--

DROP TABLE IF EXISTS `LoginAttempt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LoginAttempt` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Security\\LoginAttempt') COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Security\\LoginAttempt',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EmailHashed` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Status` enum('Success','Failure') COLLATE utf8mb4_unicode_ci DEFAULT 'Success',
  `IP` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `MemberID` (`MemberID`),
  KEY `EmailHashed` (`EmailHashed`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LoginAttempt`
--

LOCK TABLES `LoginAttempt` WRITE;
/*!40000 ALTER TABLE `LoginAttempt` DISABLE KEYS */;
INSERT INTO `LoginAttempt` VALUES (1,'SilverStripe\\Security\\LoginAttempt','2022-09-05 00:30:41','2022-09-05 00:30:41',NULL,'d033e22ae348aeb5660fc2140aec35850c4da997','Success','192.168.56.1',1);
/*!40000 ALTER TABLE `LoginAttempt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LoginSession`
--

DROP TABLE IF EXISTS `LoginSession`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LoginSession` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\SessionManager\\Models\\LoginSession') COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\SessionManager\\Models\\LoginSession',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `LastAccessed` datetime DEFAULT NULL,
  `IPAddress` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `UserAgent` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Persistent` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `MemberID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `LastAccessed` (`LastAccessed`),
  KEY `ClassName` (`ClassName`),
  KEY `MemberID` (`MemberID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LoginSession`
--

LOCK TABLES `LoginSession` WRITE;
/*!40000 ALTER TABLE `LoginSession` DISABLE KEYS */;
/*!40000 ALTER TABLE `LoginSession` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MFARegisteredMethod`
--

DROP TABLE IF EXISTS `MFARegisteredMethod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MFARegisteredMethod` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\MFA\\Model\\RegisteredMethod') COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\MFA\\Model\\RegisteredMethod',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `MethodClassName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Data` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `MemberID` (`MemberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MFARegisteredMethod`
--

LOCK TABLES `MFARegisteredMethod` WRITE;
/*!40000 ALTER TABLE `MFARegisteredMethod` DISABLE KEYS */;
/*!40000 ALTER TABLE `MFARegisteredMethod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Member`
--

DROP TABLE IF EXISTS `Member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Member` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Security\\Member') COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Security\\Member',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `AccountResetHash` varchar(160) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AccountResetExpired` datetime DEFAULT NULL,
  `DefaultRegisteredMethodID` int(11) NOT NULL DEFAULT 0,
  `HasSkippedMFARegistration` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `URLSegment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BlogProfileSummary` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FirstName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Surname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Email` varchar(254) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TempIDHash` varchar(160) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TempIDExpired` datetime DEFAULT NULL,
  `Password` varchar(160) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AutoLoginHash` varchar(160) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AutoLoginExpired` datetime DEFAULT NULL,
  `PasswordEncryption` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Salt` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PasswordExpiry` date DEFAULT NULL,
  `LockedOutUntil` datetime DEFAULT NULL,
  `Locale` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FailedLoginCount` int(11) NOT NULL DEFAULT 0,
  `BlogProfileImageID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `Surname` (`Surname`),
  KEY `FirstName` (`FirstName`),
  KEY `ClassName` (`ClassName`),
  KEY `BlogProfileImageID` (`BlogProfileImageID`),
  KEY `Email` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Member`
--

LOCK TABLES `Member` WRITE;
/*!40000 ALTER TABLE `Member` DISABLE KEYS */;
INSERT INTO `Member` VALUES (1,'SilverStripe\\Security\\Member','2022-09-05 00:30:44','2022-09-05 00:24:32',NULL,NULL,0,1,'default-admin',NULL,'Default Admin',NULL,'admin','90f65b3b7b88417af4816f865987b5687cfeeb6e','2022-09-08 00:30:44',NULL,NULL,NULL,'none',NULL,NULL,NULL,'en_US',0,0);
/*!40000 ALTER TABLE `Member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MemberPassword`
--

DROP TABLE IF EXISTS `MemberPassword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MemberPassword` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Security\\MemberPassword') COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Security\\MemberPassword',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Password` varchar(160) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Salt` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PasswordEncryption` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `MemberID` (`MemberID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MemberPassword`
--

LOCK TABLES `MemberPassword` WRITE;
/*!40000 ALTER TABLE `MemberPassword` DISABLE KEYS */;
INSERT INTO `MemberPassword` VALUES (1,'SilverStripe\\Security\\MemberPassword','2022-09-05 00:24:32','2022-09-05 00:24:32',NULL,NULL,'none',1);
/*!40000 ALTER TABLE `MemberPassword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Member_SiteTreeContentReview`
--

DROP TABLE IF EXISTS `Member_SiteTreeContentReview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Member_SiteTreeContentReview` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MemberID` int(11) NOT NULL DEFAULT 0,
  `SiteTreeID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `MemberID` (`MemberID`),
  KEY `SiteTreeID` (`SiteTreeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Member_SiteTreeContentReview`
--

LOCK TABLES `Member_SiteTreeContentReview` WRITE;
/*!40000 ALTER TABLE `Member_SiteTreeContentReview` DISABLE KEYS */;
/*!40000 ALTER TABLE `Member_SiteTreeContentReview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NewsPage`
--

DROP TABLE IF EXISTS `NewsPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NewsPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FeaturedImageID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `FeaturedImageID` (`FeaturedImageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NewsPage`
--

LOCK TABLES `NewsPage` WRITE;
/*!40000 ALTER TABLE `NewsPage` DISABLE KEYS */;
/*!40000 ALTER TABLE `NewsPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NewsPage_Live`
--

DROP TABLE IF EXISTS `NewsPage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NewsPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FeaturedImageID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `FeaturedImageID` (`FeaturedImageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NewsPage_Live`
--

LOCK TABLES `NewsPage_Live` WRITE;
/*!40000 ALTER TABLE `NewsPage_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `NewsPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NewsPage_Versions`
--

DROP TABLE IF EXISTS `NewsPage_Versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NewsPage_Versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `Author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FeaturedImageID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `FeaturedImageID` (`FeaturedImageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NewsPage_Versions`
--

LOCK TABLES `NewsPage_Versions` WRITE;
/*!40000 ALTER TABLE `NewsPage_Versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `NewsPage_Versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NotifyUsersWorkflowAction`
--

DROP TABLE IF EXISTS `NotifyUsersWorkflowAction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NotifyUsersWorkflowAction` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `EmailSubject` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EmailFrom` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EmailTemplate` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NotifyUsersWorkflowAction`
--

LOCK TABLES `NotifyUsersWorkflowAction` WRITE;
/*!40000 ALTER TABLE `NotifyUsersWorkflowAction` DISABLE KEYS */;
INSERT INTO `NotifyUsersWorkflowAction` VALUES (2,NULL,NULL,NULL),(6,NULL,NULL,NULL),(9,NULL,NULL,NULL);
/*!40000 ALTER TABLE `NotifyUsersWorkflowAction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Package`
--

DROP TABLE IF EXISTS `Package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Package` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('BringYourOwnIdeas\\Maintenance\\Model\\Package') COLLATE utf8mb4_unicode_ci DEFAULT 'BringYourOwnIdeas\\Maintenance\\Model\\Package',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `VersionHash` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `VersionConstraint` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AvailableVersion` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AvailableHash` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LatestVersion` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LatestHash` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Version` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Supported` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `Rating` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Package`
--

LOCK TABLES `Package` WRITE;
/*!40000 ALTER TABLE `Package` DISABLE KEYS */;
/*!40000 ALTER TABLE `Package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Permission`
--

DROP TABLE IF EXISTS `Permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Permission` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Security\\Permission') COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Security\\Permission',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Arg` int(11) NOT NULL DEFAULT 0,
  `Type` int(11) NOT NULL DEFAULT 1,
  `GroupID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `GroupID` (`GroupID`),
  KEY `Code` (`Code`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Permission`
--

LOCK TABLES `Permission` WRITE;
/*!40000 ALTER TABLE `Permission` DISABLE KEYS */;
INSERT INTO `Permission` VALUES (1,'SilverStripe\\Security\\Permission','2022-09-05 00:24:32','2022-09-05 00:24:32','CMS_ACCESS_CMSMain',0,1,1),(2,'SilverStripe\\Security\\Permission','2022-09-05 00:24:32','2022-09-05 00:24:32','CMS_ACCESS_AssetAdmin',0,1,1),(3,'SilverStripe\\Security\\Permission','2022-09-05 00:24:32','2022-09-05 00:24:32','CMS_ACCESS_ReportAdmin',0,1,1),(4,'SilverStripe\\Security\\Permission','2022-09-05 00:24:32','2022-09-05 00:24:32','SITETREE_REORGANISE',0,1,1),(5,'SilverStripe\\Security\\Permission','2022-09-05 00:24:32','2022-09-05 00:24:32','ADMIN',0,1,2);
/*!40000 ALTER TABLE `Permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionRole`
--

DROP TABLE IF EXISTS `PermissionRole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionRole` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Security\\PermissionRole') COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Security\\PermissionRole',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OnlyAdminCanApply` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `Title` (`Title`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionRole`
--

LOCK TABLES `PermissionRole` WRITE;
/*!40000 ALTER TABLE `PermissionRole` DISABLE KEYS */;
/*!40000 ALTER TABLE `PermissionRole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionRoleCode`
--

DROP TABLE IF EXISTS `PermissionRoleCode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionRoleCode` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Security\\PermissionRoleCode') COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Security\\PermissionRoleCode',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RoleID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `RoleID` (`RoleID`),
  KEY `Code` (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionRoleCode`
--

LOCK TABLES `PermissionRoleCode` WRITE;
/*!40000 ALTER TABLE `PermissionRoleCode` DISABLE KEYS */;
/*!40000 ALTER TABLE `PermissionRoleCode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PublishItemWorkflowAction`
--

DROP TABLE IF EXISTS `PublishItemWorkflowAction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PublishItemWorkflowAction` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PublishDelay` int(11) NOT NULL DEFAULT 0,
  `AllowEmbargoedEditing` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PublishItemWorkflowAction`
--

LOCK TABLES `PublishItemWorkflowAction` WRITE;
/*!40000 ALTER TABLE `PublishItemWorkflowAction` DISABLE KEYS */;
INSERT INTO `PublishItemWorkflowAction` VALUES (4,0,1);
/*!40000 ALTER TABLE `PublishItemWorkflowAction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QueuedJobDescriptor`
--

DROP TABLE IF EXISTS `QueuedJobDescriptor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QueuedJobDescriptor` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Symbiote\\QueuedJobs\\DataObjects\\QueuedJobDescriptor') COLLATE utf8mb4_unicode_ci DEFAULT 'Symbiote\\QueuedJobs\\DataObjects\\QueuedJobDescriptor',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `JobTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Signature` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Implementation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `StartAfter` datetime DEFAULT NULL,
  `JobStarted` datetime DEFAULT NULL,
  `JobRestarted` datetime DEFAULT NULL,
  `JobFinished` datetime DEFAULT NULL,
  `TotalSteps` int(11) NOT NULL DEFAULT 0,
  `StepsProcessed` int(11) NOT NULL DEFAULT 0,
  `LastProcessedCount` int(11) NOT NULL DEFAULT 1,
  `ResumeCounts` int(11) NOT NULL DEFAULT 0,
  `SavedJobData` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SavedJobMessages` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `JobStatus` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `JobType` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Worker` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Expiry` datetime DEFAULT NULL,
  `NotifiedBroken` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `WorkerCount` int(11) NOT NULL DEFAULT 0,
  `RunAsID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `Created` (`Created`),
  KEY `ClassName` (`ClassName`),
  KEY `RunAsID` (`RunAsID`),
  KEY `JobStatus` (`JobStatus`),
  KEY `StartAfter` (`StartAfter`),
  KEY `Signature` (`Signature`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QueuedJobDescriptor`
--

LOCK TABLES `QueuedJobDescriptor` WRITE;
/*!40000 ALTER TABLE `QueuedJobDescriptor` DISABLE KEYS */;
INSERT INTO `QueuedJobDescriptor` VALUES (1,'Symbiote\\QueuedJobs\\DataObjects\\QueuedJobDescriptor','2022-09-05 00:24:32','2022-09-05 00:24:32','Check for updates to installed modules','9b3b82aa03387a0309e8b98312525c73','BringYourOwnIdeas\\Maintenance\\Jobs\\CheckForUpdatesJob',NULL,NULL,NULL,NULL,1,0,-1,0,'N;','a:0:{}','New','2',NULL,NULL,0,0,0),(2,'Symbiote\\QueuedJobs\\DataObjects\\QueuedJobDescriptor','2022-09-05 00:24:32','2022-09-05 00:24:32','Content Review Notification Job','1b9dcebac8eefbef4052fe7693ee896f','SilverStripe\\ContentReview\\Jobs\\ContentReviewNotificationJob','2022-09-06 09:00:00',NULL,NULL,NULL,1,0,-1,0,'N;','a:0:{}','New','2',NULL,NULL,0,0,0),(3,'Symbiote\\QueuedJobs\\DataObjects\\QueuedJobDescriptor','2022-09-05 00:24:33','2022-09-05 00:24:33','Session manager garbage collection','29c3db38cc3e4f5d2ce3061fde13ab29','SilverStripe\\SessionManager\\Jobs\\GarbageCollectionJob','2022-09-06 00:24:33',NULL,NULL,NULL,0,0,-1,0,'N;','a:0:{}','New','2',NULL,NULL,0,0,0);
/*!40000 ALTER TABLE `QueuedJobDescriptor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QueuedJobRule`
--

DROP TABLE IF EXISTS `QueuedJobRule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QueuedJobRule` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Symbiote\\QueuedJobs\\DataObjects\\QueuedJobRule') COLLATE utf8mb4_unicode_ci DEFAULT 'Symbiote\\QueuedJobs\\DataObjects\\QueuedJobRule',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Processes` int(11) NOT NULL DEFAULT 0,
  `Handler` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MinimumProcessorUsage` decimal(9,2) NOT NULL DEFAULT 0.00,
  `MaximumProcessorUsage` decimal(9,2) NOT NULL DEFAULT 0.00,
  `MinimumMemoryUsage` decimal(9,2) NOT NULL DEFAULT 0.00,
  `MaximumMemoryUsage` decimal(9,2) NOT NULL DEFAULT 0.00,
  `MinimumSiblingProcessorUsage` decimal(9,2) NOT NULL DEFAULT 0.00,
  `MaximumSiblingProcessorUsage` decimal(9,2) NOT NULL DEFAULT 0.00,
  `MinimumSiblingMemoryUsage` decimal(9,2) NOT NULL DEFAULT 0.00,
  `MaximumSiblingMemoryUsage` decimal(9,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QueuedJobRule`
--

LOCK TABLES `QueuedJobRule` WRITE;
/*!40000 ALTER TABLE `QueuedJobRule` DISABLE KEYS */;
/*!40000 ALTER TABLE `QueuedJobRule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Quicklink`
--

DROP TABLE IF EXISTS `Quicklink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Quicklink` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('CWP\\CWP\\Model\\Quicklink') COLLATE utf8mb4_unicode_ci DEFAULT 'CWP\\CWP\\Model\\Quicklink',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ExternalLink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SortOrder` int(11) NOT NULL DEFAULT 0,
  `ParentID` int(11) NOT NULL DEFAULT 0,
  `InternalLinkID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `ParentID` (`ParentID`),
  KEY `InternalLinkID` (`InternalLinkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Quicklink`
--

LOCK TABLES `Quicklink` WRITE;
/*!40000 ALTER TABLE `Quicklink` DISABLE KEYS */;
/*!40000 ALTER TABLE `Quicklink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RedirectorPage`
--

DROP TABLE IF EXISTS `RedirectorPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RedirectorPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RedirectionType` enum('Internal','External','File') COLLATE utf8mb4_unicode_ci DEFAULT 'Internal',
  `ExternalURL` varchar(2083) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT 0,
  `LinkToFileID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `LinkToID` (`LinkToID`),
  KEY `LinkToFileID` (`LinkToFileID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RedirectorPage`
--

LOCK TABLES `RedirectorPage` WRITE;
/*!40000 ALTER TABLE `RedirectorPage` DISABLE KEYS */;
/*!40000 ALTER TABLE `RedirectorPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RedirectorPage_Live`
--

DROP TABLE IF EXISTS `RedirectorPage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RedirectorPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RedirectionType` enum('Internal','External','File') COLLATE utf8mb4_unicode_ci DEFAULT 'Internal',
  `ExternalURL` varchar(2083) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT 0,
  `LinkToFileID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `LinkToID` (`LinkToID`),
  KEY `LinkToFileID` (`LinkToFileID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RedirectorPage_Live`
--

LOCK TABLES `RedirectorPage_Live` WRITE;
/*!40000 ALTER TABLE `RedirectorPage_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `RedirectorPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RedirectorPage_Versions`
--

DROP TABLE IF EXISTS `RedirectorPage_Versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RedirectorPage_Versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `RedirectionType` enum('Internal','External','File') COLLATE utf8mb4_unicode_ci DEFAULT 'Internal',
  `ExternalURL` varchar(2083) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT 0,
  `LinkToFileID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `LinkToID` (`LinkToID`),
  KEY `LinkToFileID` (`LinkToFileID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RedirectorPage_Versions`
--

LOCK TABLES `RedirectorPage_Versions` WRITE;
/*!40000 ALTER TABLE `RedirectorPage_Versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `RedirectorPage_Versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RememberLoginHash`
--

DROP TABLE IF EXISTS `RememberLoginHash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RememberLoginHash` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Security\\RememberLoginHash') COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Security\\RememberLoginHash',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `DeviceID` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Hash` varchar(160) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ExpiryDate` datetime DEFAULT NULL,
  `LoginSessionID` int(11) NOT NULL DEFAULT 0,
  `MemberID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `LoginSessionID` (`LoginSessionID`),
  KEY `MemberID` (`MemberID`),
  KEY `DeviceID` (`DeviceID`),
  KEY `Hash` (`Hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RememberLoginHash`
--

LOCK TABLES `RememberLoginHash` WRITE;
/*!40000 ALTER TABLE `RememberLoginHash` DISABLE KEYS */;
/*!40000 ALTER TABLE `RememberLoginHash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SetPropertyWorkflowAction`
--

DROP TABLE IF EXISTS `SetPropertyWorkflowAction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SetPropertyWorkflowAction` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Property` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Value` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SetPropertyWorkflowAction`
--

LOCK TABLES `SetPropertyWorkflowAction` WRITE;
/*!40000 ALTER TABLE `SetPropertyWorkflowAction` DISABLE KEYS */;
/*!40000 ALTER TABLE `SetPropertyWorkflowAction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ShareToken`
--

DROP TABLE IF EXISTS `ShareToken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ShareToken` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\ShareDraftContent\\Models\\ShareToken') COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\ShareDraftContent\\Models\\ShareToken',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Token` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ValidForDays` int(11) NOT NULL DEFAULT 0,
  `PageID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `PageID` (`PageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ShareToken`
--

LOCK TABLES `ShareToken` WRITE;
/*!40000 ALTER TABLE `ShareToken` DISABLE KEYS */;
/*!40000 ALTER TABLE `ShareToken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteConfig`
--

DROP TABLE IF EXISTS `SiteConfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteConfig` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\SiteConfig\\SiteConfig') COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\SiteConfig\\SiteConfig',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `AllChangesEnabled` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `MFARequired` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `MFAGracePeriodExpires` date DEFAULT NULL,
  `ReviewPeriodDays` int(11) NOT NULL DEFAULT 0,
  `ReviewFrom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ReviewSubject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ReviewBody` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Fallback` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FallbackLink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FallbackResponseCode` int(11) NOT NULL DEFAULT 0,
  `GACode` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FacebookURL` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TwitterUsername` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Tagline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers') COLLATE utf8mb4_unicode_ci DEFAULT 'Anyone',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers') COLLATE utf8mb4_unicode_ci DEFAULT 'LoggedInUsers',
  `CanCreateTopLevelType` enum('LoggedInUsers','OnlyTheseUsers') COLLATE utf8mb4_unicode_ci DEFAULT 'LoggedInUsers',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteConfig`
--

LOCK TABLES `SiteConfig` WRITE;
/*!40000 ALTER TABLE `SiteConfig` DISABLE KEYS */;
INSERT INTO `SiteConfig` VALUES (1,'SilverStripe\\SiteConfig\\SiteConfig','2022-09-05 00:32:57','2022-09-05 00:24:32',1,0,NULL,0,NULL,'Page(s) are due for content review','<h2>Page(s) due for review</h2><p>There are $PagesCount pages that are due for review today by you.</p>',NULL,NULL,303,NULL,NULL,NULL,'Silverstripe vanilla site','did you know spiders dream?','Anyone','LoggedInUsers','LoggedInUsers');
/*!40000 ALTER TABLE `SiteConfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteConfig_ContentReviewGroups`
--

DROP TABLE IF EXISTS `SiteConfig_ContentReviewGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteConfig_ContentReviewGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int(11) NOT NULL DEFAULT 0,
  `GroupID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteConfig_ContentReviewGroups`
--

LOCK TABLES `SiteConfig_ContentReviewGroups` WRITE;
/*!40000 ALTER TABLE `SiteConfig_ContentReviewGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteConfig_ContentReviewGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteConfig_ContentReviewUsers`
--

DROP TABLE IF EXISTS `SiteConfig_ContentReviewUsers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteConfig_ContentReviewUsers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int(11) NOT NULL DEFAULT 0,
  `MemberID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `MemberID` (`MemberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteConfig_ContentReviewUsers`
--

LOCK TABLES `SiteConfig_ContentReviewUsers` WRITE;
/*!40000 ALTER TABLE `SiteConfig_ContentReviewUsers` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteConfig_ContentReviewUsers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteConfig_CreateTopLevelGroups`
--

DROP TABLE IF EXISTS `SiteConfig_CreateTopLevelGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteConfig_CreateTopLevelGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int(11) NOT NULL DEFAULT 0,
  `GroupID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteConfig_CreateTopLevelGroups`
--

LOCK TABLES `SiteConfig_CreateTopLevelGroups` WRITE;
/*!40000 ALTER TABLE `SiteConfig_CreateTopLevelGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteConfig_CreateTopLevelGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteConfig_EditorGroups`
--

DROP TABLE IF EXISTS `SiteConfig_EditorGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteConfig_EditorGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int(11) NOT NULL DEFAULT 0,
  `GroupID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteConfig_EditorGroups`
--

LOCK TABLES `SiteConfig_EditorGroups` WRITE;
/*!40000 ALTER TABLE `SiteConfig_EditorGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteConfig_EditorGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteConfig_ViewerGroups`
--

DROP TABLE IF EXISTS `SiteConfig_ViewerGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteConfig_ViewerGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int(11) NOT NULL DEFAULT 0,
  `GroupID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteConfig_ViewerGroups`
--

LOCK TABLES `SiteConfig_ViewerGroups` WRITE;
/*!40000 ALTER TABLE `SiteConfig_ViewerGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteConfig_ViewerGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree`
--

DROP TABLE IF EXISTS `SiteTree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteTree` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\CMS\\Model\\SiteTree','Page','CWP\\CWP\\PageTypes\\BasePage','CWP\\Search\\CwpSearchPage','SilverStripe\\ErrorPage\\ErrorPage','SilverStripe\\IFrame\\IFramePage','CWP\\CWP\\PageTypes\\BaseHomePage','CWP\\CWP\\PageTypes\\DatedUpdateHolder','CWP\\CWP\\PageTypes\\DatedUpdatePage','CWP\\CWP\\PageTypes\\SitemapPage','SilverStripe\\Blog\\Model\\Blog','SilverStripe\\Blog\\Model\\BlogPost','SilverStripe\\CMS\\Model\\RedirectorPage','SilverStripe\\CMS\\Model\\VirtualPage','SilverStripe\\UserForms\\Model\\UserDefinedForm','CWP\\CWP\\PageTypes\\EventHolder','CWP\\CWP\\PageTypes\\NewsHolder','CWP\\CWP\\PageTypes\\EventPage','CWP\\CWP\\PageTypes\\NewsPage','CWP\\CWP\\PageTypes\\FooterHolder') COLLATE utf8mb4_unicode_ci DEFAULT 'Page',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `PublicHistory` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `ShareTokenSalt` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ContentReviewType` enum('Inherit','Disabled','Custom') COLLATE utf8mb4_unicode_ci DEFAULT 'Inherit',
  `ReviewPeriodDays` int(11) NOT NULL DEFAULT 0,
  `NextReviewDate` date DEFAULT NULL,
  `LastEditedByName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OwnerNames` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ProvideComments` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `ModerationRequired` enum('None','Required','NonMembersOnly') COLLATE utf8mb4_unicode_ci DEFAULT 'None',
  `CommentsRequireLogin` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `Fallback` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FallbackLink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FallbackResponseCode` int(11) NOT NULL DEFAULT 0,
  `ShowPageUtilities` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') COLLATE utf8mb4_unicode_ci DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') COLLATE utf8mb4_unicode_ci DEFAULT 'Inherit',
  `Version` int(11) NOT NULL DEFAULT 0,
  `URLSegment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MenuTitle` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Content` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MetaDescription` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ExtraMeta` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `Sort` int(11) NOT NULL DEFAULT 0,
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `ReportClass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `WorkflowDefinitionID` int(11) NOT NULL DEFAULT 0,
  `VanityMappingID` int(11) NOT NULL DEFAULT 0,
  `ParentID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `Sort` (`Sort`),
  KEY `ClassName` (`ClassName`),
  KEY `WorkflowDefinitionID` (`WorkflowDefinitionID`),
  KEY `VanityMappingID` (`VanityMappingID`),
  KEY `ParentID` (`ParentID`),
  KEY `URLSegment` (`URLSegment`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteTree`
--

LOCK TABLES `SiteTree` WRITE;
/*!40000 ALTER TABLE `SiteTree` DISABLE KEYS */;
INSERT INTO `SiteTree` VALUES (1,'Page','2022-09-05 00:34:21','2022-09-05 00:24:32',1,NULL,'Inherit',0,NULL,'Default Admin ',NULL,0,'None',0,NULL,NULL,303,1,'Inherit','Inherit',6,'home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vitae ante interdum, lacinia erat vitae, pellentesque orci. <strong>Nulla</strong> a tempor mauris. Vestibulum ut <em>sagittis</em> tellus. Cras finibus magna velit. Quisque ac turpis vitae ex dignissim ultricies vitae eget ante. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent at ultricies nunc. Curabitur elit urna, scelerisque quis arcu vel, venenatis dictum ante. Duis aliquam convallis dui eget iaculis. Nulla non dui ac nisi venenatis ullamcorper sed nec risus.</p><p>Donec tristique porttitor ipsum, vel scelerisque nisl dictum ac. Proin dui est, hendrerit id malesuada at, facilisis sed justo. Vivamus molestie ullamcorper fringilla. Praesent viverra purus ligula, molestie tincidunt nulla elementum non. Phasellus et ultricies ligula. Sed non nunc faucibus, hendrerit ante vitae, aliquet metus. Nullam eget laoreet ipsum, vitae posuere velit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla pulvinar mi vel tortor egestas, vitae aliquam nisl sagittis.</p>',NULL,NULL,1,1,1,0,0,NULL,0,0,0),(2,'Page','2022-09-05 00:24:32','2022-09-05 00:24:32',1,NULL,'Inherit',0,NULL,NULL,NULL,1,'None',0,NULL,NULL,303,1,'Inherit','Inherit',2,'about-us','About Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.</p>',NULL,NULL,1,1,2,0,0,NULL,0,0,0),(3,'Page','2022-09-05 00:24:32','2022-09-05 00:24:32',1,NULL,'Inherit',0,NULL,NULL,NULL,1,'None',0,NULL,NULL,303,1,'Inherit','Inherit',2,'contact-us','Contact Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.</p>',NULL,NULL,1,1,3,0,0,NULL,0,0,0),(4,'SilverStripe\\ErrorPage\\ErrorPage','2022-09-05 00:24:32','2022-09-05 00:24:32',1,NULL,'Inherit',0,NULL,NULL,NULL,1,'None',0,NULL,NULL,303,1,'Inherit','Inherit',2,'page-not-found','Page not found',NULL,'<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>',NULL,NULL,0,0,4,0,0,NULL,0,0,0),(5,'SilverStripe\\ErrorPage\\ErrorPage','2022-09-05 00:24:33','2022-09-05 00:24:32',1,NULL,'Inherit',0,NULL,NULL,NULL,1,'None',0,NULL,NULL,303,1,'Inherit','Inherit',2,'server-error','Server error',NULL,'<p>Sorry, there was a problem handling your request.</p>',NULL,NULL,0,0,5,0,0,NULL,0,0,0);
/*!40000 ALTER TABLE `SiteTree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTreeLink`
--

DROP TABLE IF EXISTS `SiteTreeLink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteTreeLink` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\CMS\\Model\\SiteTreeLink') COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\CMS\\Model\\SiteTreeLink',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `LinkedID` int(11) NOT NULL DEFAULT 0,
  `ParentID` int(11) NOT NULL DEFAULT 0,
  `ParentClass` enum('SilverStripe\\Assets\\File','SilverStripe\\CronTask\\CronTaskStatus','SilverStripe\\SiteConfig\\SiteConfig','SilverStripe\\Taxonomy\\TaxonomyTerm','SilverStripe\\Taxonomy\\TaxonomyType','SilverStripe\\Versioned\\ChangeSet','SilverStripe\\Versioned\\ChangeSetItem','BringYourOwnIdeas\\Maintenance\\Model\\Package','CWP\\CWP\\Model\\Quicklink','CWP\\CWP\\Model\\RelatedPageLink','nglasl\\misdirection\\LinkMapping','SilverStripe\\Assets\\Shortcodes\\FileLink','SilverStripe\\Blog\\Model\\BlogCategory','SilverStripe\\Blog\\Model\\BlogTag','SilverStripe\\CMS\\Model\\SiteTree','SilverStripe\\CMS\\Model\\SiteTreeLink','SilverStripe\\Comments\\Model\\Comment','SilverStripe\\ContentReview\\Models\\ContentReviewLog','SilverStripe\\ExternalLinks\\Model\\BrokenExternalLink','SilverStripe\\ExternalLinks\\Model\\BrokenExternalPageTrack','SilverStripe\\ExternalLinks\\Model\\BrokenExternalPageTrackStatus','SilverStripe\\Security\\Group','SilverStripe\\Security\\LoginAttempt','SilverStripe\\Security\\Member','SilverStripe\\Security\\MemberPassword','SilverStripe\\Security\\Permission','SilverStripe\\Security\\PermissionRole','SilverStripe\\Security\\PermissionRoleCode','SilverStripe\\Security\\RememberLoginHash','SilverStripe\\HybridSessions\\HybridSessionDataObject','SilverStripe\\MFA\\Model\\RegisteredMethod','SilverStripe\\SessionManager\\Models\\LoginSession','SilverStripe\\ShareDraftContent\\Models\\ShareToken','SilverStripe\\UserForms\\Model\\EditableCustomRule','SilverStripe\\UserForms\\Model\\EditableFormField','Symbiote\\AdvancedWorkflow\\DataObjects\\ImportedWorkflowTemplate','Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowAction','Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowActionInstance','Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowDefinition','Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowInstance','Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowTransition','Symbiote\\QueuedJobs\\DataObjects\\QueuedJobDescriptor','Symbiote\\QueuedJobs\\DataObjects\\QueuedJobRule','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableOption','SilverStripe\\UserForms\\Model\\Recipient\\EmailRecipient','SilverStripe\\UserForms\\Model\\Recipient\\EmailRecipientCondition','SilverStripe\\UserForms\\Model\\Submission\\SubmittedForm','SilverStripe\\UserForms\\Model\\Submission\\SubmittedFormField','SilverStripe\\Assets\\Folder','SilverStripe\\Assets\\Image','Page','CWP\\CWP\\PageTypes\\BasePage','CWP\\Search\\CwpSearchPage','SilverStripe\\ErrorPage\\ErrorPage','SilverStripe\\IFrame\\IFramePage','CWP\\CWP\\PageTypes\\BaseHomePage','CWP\\CWP\\PageTypes\\DatedUpdateHolder','CWP\\CWP\\PageTypes\\DatedUpdatePage','CWP\\CWP\\PageTypes\\SitemapPage','SilverStripe\\Blog\\Model\\Blog','SilverStripe\\Blog\\Model\\BlogPost','SilverStripe\\CMS\\Model\\RedirectorPage','SilverStripe\\CMS\\Model\\VirtualPage','SilverStripe\\UserForms\\Model\\UserDefinedForm','CWP\\CWP\\PageTypes\\EventHolder','CWP\\CWP\\PageTypes\\NewsHolder','CWP\\CWP\\PageTypes\\EventPage','CWP\\CWP\\PageTypes\\NewsPage','CWP\\CWP\\PageTypes\\FooterHolder','SilverStripe\\SpamProtection\\EditableSpamProtectionField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCheckbox','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCountryDropdownField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableDateField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableEmailField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFieldGroup','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFieldGroupEnd','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFileField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormHeading','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableLiteralField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableMemberListField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableMultipleOptionField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableNumericField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableTextField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCheckboxGroupField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableDropdown','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableRadioField','Symbiote\\AdvancedWorkflow\\Actions\\AssignUsersToWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\CancelWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\NotifyUsersWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\PublishItemWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\SetPropertyWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\SimpleApprovalWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\UnpublishItemWorkflowAction','SilverStripe\\UserForms\\Model\\Submission\\SubmittedFileField') COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Assets\\File',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `LinkedID` (`LinkedID`),
  KEY `Parent` (`ParentID`,`ParentClass`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteTreeLink`
--

LOCK TABLES `SiteTreeLink` WRITE;
/*!40000 ALTER TABLE `SiteTreeLink` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteTreeLink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree_AdditionalWorkflowDefinitions`
--

DROP TABLE IF EXISTS `SiteTree_AdditionalWorkflowDefinitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteTree_AdditionalWorkflowDefinitions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT 0,
  `WorkflowDefinitionID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `WorkflowDefinitionID` (`WorkflowDefinitionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteTree_AdditionalWorkflowDefinitions`
--

LOCK TABLES `SiteTree_AdditionalWorkflowDefinitions` WRITE;
/*!40000 ALTER TABLE `SiteTree_AdditionalWorkflowDefinitions` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteTree_AdditionalWorkflowDefinitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree_EditorGroups`
--

DROP TABLE IF EXISTS `SiteTree_EditorGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteTree_EditorGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT 0,
  `GroupID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteTree_EditorGroups`
--

LOCK TABLES `SiteTree_EditorGroups` WRITE;
/*!40000 ALTER TABLE `SiteTree_EditorGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteTree_EditorGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree_Live`
--

DROP TABLE IF EXISTS `SiteTree_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteTree_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\CMS\\Model\\SiteTree','Page','CWP\\CWP\\PageTypes\\BasePage','CWP\\Search\\CwpSearchPage','SilverStripe\\ErrorPage\\ErrorPage','SilverStripe\\IFrame\\IFramePage','CWP\\CWP\\PageTypes\\BaseHomePage','CWP\\CWP\\PageTypes\\DatedUpdateHolder','CWP\\CWP\\PageTypes\\DatedUpdatePage','CWP\\CWP\\PageTypes\\SitemapPage','SilverStripe\\Blog\\Model\\Blog','SilverStripe\\Blog\\Model\\BlogPost','SilverStripe\\CMS\\Model\\RedirectorPage','SilverStripe\\CMS\\Model\\VirtualPage','SilverStripe\\UserForms\\Model\\UserDefinedForm','CWP\\CWP\\PageTypes\\EventHolder','CWP\\CWP\\PageTypes\\NewsHolder','CWP\\CWP\\PageTypes\\EventPage','CWP\\CWP\\PageTypes\\NewsPage','CWP\\CWP\\PageTypes\\FooterHolder') COLLATE utf8mb4_unicode_ci DEFAULT 'Page',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `PublicHistory` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `ShareTokenSalt` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ContentReviewType` enum('Inherit','Disabled','Custom') COLLATE utf8mb4_unicode_ci DEFAULT 'Inherit',
  `ReviewPeriodDays` int(11) NOT NULL DEFAULT 0,
  `NextReviewDate` date DEFAULT NULL,
  `LastEditedByName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OwnerNames` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ProvideComments` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `ModerationRequired` enum('None','Required','NonMembersOnly') COLLATE utf8mb4_unicode_ci DEFAULT 'None',
  `CommentsRequireLogin` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `Fallback` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FallbackLink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FallbackResponseCode` int(11) NOT NULL DEFAULT 0,
  `ShowPageUtilities` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') COLLATE utf8mb4_unicode_ci DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') COLLATE utf8mb4_unicode_ci DEFAULT 'Inherit',
  `Version` int(11) NOT NULL DEFAULT 0,
  `URLSegment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MenuTitle` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Content` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MetaDescription` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ExtraMeta` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `Sort` int(11) NOT NULL DEFAULT 0,
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `ReportClass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `WorkflowDefinitionID` int(11) NOT NULL DEFAULT 0,
  `VanityMappingID` int(11) NOT NULL DEFAULT 0,
  `ParentID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `Sort` (`Sort`),
  KEY `ClassName` (`ClassName`),
  KEY `WorkflowDefinitionID` (`WorkflowDefinitionID`),
  KEY `VanityMappingID` (`VanityMappingID`),
  KEY `ParentID` (`ParentID`),
  KEY `URLSegment` (`URLSegment`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteTree_Live`
--

LOCK TABLES `SiteTree_Live` WRITE;
/*!40000 ALTER TABLE `SiteTree_Live` DISABLE KEYS */;
INSERT INTO `SiteTree_Live` VALUES (1,'Page','2022-09-05 00:34:21','2022-09-05 00:24:32',1,NULL,'Inherit',0,NULL,'Default Admin ',NULL,0,'None',0,NULL,NULL,303,1,'Inherit','Inherit',6,'home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vitae ante interdum, lacinia erat vitae, pellentesque orci. <strong>Nulla</strong> a tempor mauris. Vestibulum ut <em>sagittis</em> tellus. Cras finibus magna velit. Quisque ac turpis vitae ex dignissim ultricies vitae eget ante. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent at ultricies nunc. Curabitur elit urna, scelerisque quis arcu vel, venenatis dictum ante. Duis aliquam convallis dui eget iaculis. Nulla non dui ac nisi venenatis ullamcorper sed nec risus.</p><p>Donec tristique porttitor ipsum, vel scelerisque nisl dictum ac. Proin dui est, hendrerit id malesuada at, facilisis sed justo. Vivamus molestie ullamcorper fringilla. Praesent viverra purus ligula, molestie tincidunt nulla elementum non. Phasellus et ultricies ligula. Sed non nunc faucibus, hendrerit ante vitae, aliquet metus. Nullam eget laoreet ipsum, vitae posuere velit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla pulvinar mi vel tortor egestas, vitae aliquam nisl sagittis.</p>',NULL,NULL,1,1,1,0,0,NULL,0,0,0),(2,'Page','2022-09-05 00:24:32','2022-09-05 00:24:32',1,NULL,'Inherit',0,NULL,NULL,NULL,1,'None',0,NULL,NULL,303,1,'Inherit','Inherit',2,'about-us','About Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.</p>',NULL,NULL,1,1,2,0,0,NULL,0,0,0),(3,'Page','2022-09-05 00:24:32','2022-09-05 00:24:32',1,NULL,'Inherit',0,NULL,NULL,NULL,1,'None',0,NULL,NULL,303,1,'Inherit','Inherit',2,'contact-us','Contact Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.</p>',NULL,NULL,1,1,3,0,0,NULL,0,0,0),(4,'SilverStripe\\ErrorPage\\ErrorPage','2022-09-05 00:24:32','2022-09-05 00:24:32',1,NULL,'Inherit',0,NULL,NULL,NULL,1,'None',0,NULL,NULL,303,1,'Inherit','Inherit',2,'page-not-found','Page not found',NULL,'<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>',NULL,NULL,0,0,4,0,0,NULL,0,0,0),(5,'SilverStripe\\ErrorPage\\ErrorPage','2022-09-05 00:24:33','2022-09-05 00:24:32',1,NULL,'Inherit',0,NULL,NULL,NULL,1,'None',0,NULL,NULL,303,1,'Inherit','Inherit',2,'server-error','Server error',NULL,'<p>Sorry, there was a problem handling your request.</p>',NULL,NULL,0,0,5,0,0,NULL,0,0,0);
/*!40000 ALTER TABLE `SiteTree_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree_Versions`
--

DROP TABLE IF EXISTS `SiteTree_Versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteTree_Versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `WasPublished` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `WasDeleted` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `WasDraft` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `AuthorID` int(11) NOT NULL DEFAULT 0,
  `PublisherID` int(11) NOT NULL DEFAULT 0,
  `ClassName` enum('SilverStripe\\CMS\\Model\\SiteTree','Page','CWP\\CWP\\PageTypes\\BasePage','CWP\\Search\\CwpSearchPage','SilverStripe\\ErrorPage\\ErrorPage','SilverStripe\\IFrame\\IFramePage','CWP\\CWP\\PageTypes\\BaseHomePage','CWP\\CWP\\PageTypes\\DatedUpdateHolder','CWP\\CWP\\PageTypes\\DatedUpdatePage','CWP\\CWP\\PageTypes\\SitemapPage','SilverStripe\\Blog\\Model\\Blog','SilverStripe\\Blog\\Model\\BlogPost','SilverStripe\\CMS\\Model\\RedirectorPage','SilverStripe\\CMS\\Model\\VirtualPage','SilverStripe\\UserForms\\Model\\UserDefinedForm','CWP\\CWP\\PageTypes\\EventHolder','CWP\\CWP\\PageTypes\\NewsHolder','CWP\\CWP\\PageTypes\\EventPage','CWP\\CWP\\PageTypes\\NewsPage','CWP\\CWP\\PageTypes\\FooterHolder') COLLATE utf8mb4_unicode_ci DEFAULT 'Page',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `PublicHistory` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `ShareTokenSalt` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ContentReviewType` enum('Inherit','Disabled','Custom') COLLATE utf8mb4_unicode_ci DEFAULT 'Inherit',
  `ReviewPeriodDays` int(11) NOT NULL DEFAULT 0,
  `NextReviewDate` date DEFAULT NULL,
  `LastEditedByName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OwnerNames` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ProvideComments` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `ModerationRequired` enum('None','Required','NonMembersOnly') COLLATE utf8mb4_unicode_ci DEFAULT 'None',
  `CommentsRequireLogin` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `Fallback` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FallbackLink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FallbackResponseCode` int(11) NOT NULL DEFAULT 0,
  `ShowPageUtilities` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') COLLATE utf8mb4_unicode_ci DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') COLLATE utf8mb4_unicode_ci DEFAULT 'Inherit',
  `URLSegment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MenuTitle` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Content` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MetaDescription` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ExtraMeta` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `Sort` int(11) NOT NULL DEFAULT 0,
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `ReportClass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `WorkflowDefinitionID` int(11) NOT NULL DEFAULT 0,
  `VanityMappingID` int(11) NOT NULL DEFAULT 0,
  `ParentID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `Sort` (`Sort`),
  KEY `ClassName` (`ClassName`),
  KEY `WorkflowDefinitionID` (`WorkflowDefinitionID`),
  KEY `VanityMappingID` (`VanityMappingID`),
  KEY `ParentID` (`ParentID`),
  KEY `URLSegment` (`URLSegment`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteTree_Versions`
--

LOCK TABLES `SiteTree_Versions` WRITE;
/*!40000 ALTER TABLE `SiteTree_Versions` DISABLE KEYS */;
INSERT INTO `SiteTree_Versions` VALUES (1,1,1,0,0,1,0,0,'Page','2022-09-05 00:24:32','2022-09-05 00:24:32',1,NULL,'Inherit',0,NULL,NULL,NULL,1,'None',0,NULL,NULL,303,1,'Inherit','Inherit','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>',NULL,NULL,1,1,1,0,0,NULL,0,0,0),(2,1,2,1,0,1,0,0,'Page','2022-09-05 00:24:32','2022-09-05 00:24:32',1,NULL,'Inherit',0,NULL,NULL,NULL,1,'None',0,NULL,NULL,303,1,'Inherit','Inherit','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>',NULL,NULL,1,1,1,0,0,NULL,0,0,0),(3,2,1,0,0,1,0,0,'Page','2022-09-05 00:24:32','2022-09-05 00:24:32',1,NULL,'Inherit',0,NULL,NULL,NULL,1,'None',0,NULL,NULL,303,1,'Inherit','Inherit','about-us','About Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.</p>',NULL,NULL,1,1,2,0,0,NULL,0,0,0),(4,2,2,1,0,1,0,0,'Page','2022-09-05 00:24:32','2022-09-05 00:24:32',1,NULL,'Inherit',0,NULL,NULL,NULL,1,'None',0,NULL,NULL,303,1,'Inherit','Inherit','about-us','About Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.</p>',NULL,NULL,1,1,2,0,0,NULL,0,0,0),(5,3,1,0,0,1,0,0,'Page','2022-09-05 00:24:32','2022-09-05 00:24:32',1,NULL,'Inherit',0,NULL,NULL,NULL,1,'None',0,NULL,NULL,303,1,'Inherit','Inherit','contact-us','Contact Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.</p>',NULL,NULL,1,1,3,0,0,NULL,0,0,0),(6,3,2,1,0,1,0,0,'Page','2022-09-05 00:24:32','2022-09-05 00:24:32',1,NULL,'Inherit',0,NULL,NULL,NULL,1,'None',0,NULL,NULL,303,1,'Inherit','Inherit','contact-us','Contact Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.</p>',NULL,NULL,1,1,3,0,0,NULL,0,0,0),(7,4,1,0,0,1,0,0,'SilverStripe\\ErrorPage\\ErrorPage','2022-09-05 00:24:32','2022-09-05 00:24:32',1,NULL,'Inherit',0,NULL,NULL,NULL,1,'None',0,NULL,NULL,303,1,'Inherit','Inherit','page-not-found','Page not found',NULL,'<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>',NULL,NULL,0,0,4,0,0,NULL,0,0,0),(8,4,2,1,0,1,0,0,'SilverStripe\\ErrorPage\\ErrorPage','2022-09-05 00:24:32','2022-09-05 00:24:32',1,NULL,'Inherit',0,NULL,NULL,NULL,1,'None',0,NULL,NULL,303,1,'Inherit','Inherit','page-not-found','Page not found',NULL,'<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>',NULL,NULL,0,0,4,0,0,NULL,0,0,0),(9,5,1,0,0,1,0,0,'SilverStripe\\ErrorPage\\ErrorPage','2022-09-05 00:24:32','2022-09-05 00:24:32',1,NULL,'Inherit',0,NULL,NULL,NULL,1,'None',0,NULL,NULL,303,1,'Inherit','Inherit','server-error','Server error',NULL,'<p>Sorry, there was a problem handling your request.</p>',NULL,NULL,0,0,5,0,0,NULL,0,0,0),(10,5,2,1,0,1,0,0,'SilverStripe\\ErrorPage\\ErrorPage','2022-09-05 00:24:33','2022-09-05 00:24:32',1,NULL,'Inherit',0,NULL,NULL,NULL,1,'None',0,NULL,NULL,303,1,'Inherit','Inherit','server-error','Server error',NULL,'<p>Sorry, there was a problem handling your request.</p>',NULL,NULL,0,0,5,0,0,NULL,0,0,0),(11,1,3,0,0,1,1,0,'Page','2022-09-05 00:33:23','2022-09-05 00:24:32',1,NULL,'Inherit',0,NULL,'Default Admin ',NULL,0,'None',0,NULL,NULL,303,1,'Inherit','Inherit','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>',NULL,NULL,1,1,1,0,0,NULL,0,0,0),(12,1,4,1,0,1,1,1,'Page','2022-09-05 00:33:25','2022-09-05 00:24:32',1,NULL,'Inherit',0,NULL,'Default Admin ',NULL,0,'None',0,NULL,NULL,303,1,'Inherit','Inherit','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>',NULL,NULL,1,1,1,0,0,NULL,0,0,0),(13,1,5,0,0,1,1,0,'Page','2022-09-05 00:34:20','2022-09-05 00:24:32',1,NULL,'Inherit',0,NULL,'Default Admin ',NULL,0,'None',0,NULL,NULL,303,1,'Inherit','Inherit','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vitae ante interdum, lacinia erat vitae, pellentesque orci. <strong>Nulla</strong> a tempor mauris. Vestibulum ut <em>sagittis</em> tellus. Cras finibus magna velit. Quisque ac turpis vitae ex dignissim ultricies vitae eget ante. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent at ultricies nunc. Curabitur elit urna, scelerisque quis arcu vel, venenatis dictum ante. Duis aliquam convallis dui eget iaculis. Nulla non dui ac nisi venenatis ullamcorper sed nec risus.</p><p>Donec tristique porttitor ipsum, vel scelerisque nisl dictum ac. Proin dui est, hendrerit id malesuada at, facilisis sed justo. Vivamus molestie ullamcorper fringilla. Praesent viverra purus ligula, molestie tincidunt nulla elementum non. Phasellus et ultricies ligula. Sed non nunc faucibus, hendrerit ante vitae, aliquet metus. Nullam eget laoreet ipsum, vitae posuere velit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla pulvinar mi vel tortor egestas, vitae aliquam nisl sagittis.</p>',NULL,NULL,1,1,1,0,0,NULL,0,0,0),(14,1,6,1,0,1,1,1,'Page','2022-09-05 00:34:21','2022-09-05 00:24:32',1,NULL,'Inherit',0,NULL,'Default Admin ',NULL,0,'None',0,NULL,NULL,303,1,'Inherit','Inherit','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vitae ante interdum, lacinia erat vitae, pellentesque orci. <strong>Nulla</strong> a tempor mauris. Vestibulum ut <em>sagittis</em> tellus. Cras finibus magna velit. Quisque ac turpis vitae ex dignissim ultricies vitae eget ante. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent at ultricies nunc. Curabitur elit urna, scelerisque quis arcu vel, venenatis dictum ante. Duis aliquam convallis dui eget iaculis. Nulla non dui ac nisi venenatis ullamcorper sed nec risus.</p><p>Donec tristique porttitor ipsum, vel scelerisque nisl dictum ac. Proin dui est, hendrerit id malesuada at, facilisis sed justo. Vivamus molestie ullamcorper fringilla. Praesent viverra purus ligula, molestie tincidunt nulla elementum non. Phasellus et ultricies ligula. Sed non nunc faucibus, hendrerit ante vitae, aliquet metus. Nullam eget laoreet ipsum, vitae posuere velit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla pulvinar mi vel tortor egestas, vitae aliquam nisl sagittis.</p>',NULL,NULL,1,1,1,0,0,NULL,0,0,0);
/*!40000 ALTER TABLE `SiteTree_Versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree_ViewerGroups`
--

DROP TABLE IF EXISTS `SiteTree_ViewerGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteTree_ViewerGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT 0,
  `GroupID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteTree_ViewerGroups`
--

LOCK TABLES `SiteTree_ViewerGroups` WRITE;
/*!40000 ALTER TABLE `SiteTree_ViewerGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteTree_ViewerGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SubmittedFileField`
--

DROP TABLE IF EXISTS `SubmittedFileField`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SubmittedFileField` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UploadedFileID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `UploadedFileID` (`UploadedFileID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SubmittedFileField`
--

LOCK TABLES `SubmittedFileField` WRITE;
/*!40000 ALTER TABLE `SubmittedFileField` DISABLE KEYS */;
/*!40000 ALTER TABLE `SubmittedFileField` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SubmittedForm`
--

DROP TABLE IF EXISTS `SubmittedForm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SubmittedForm` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\UserForms\\Model\\Submission\\SubmittedForm') COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\UserForms\\Model\\Submission\\SubmittedForm',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `SubmittedByID` int(11) NOT NULL DEFAULT 0,
  `ParentID` int(11) NOT NULL DEFAULT 0,
  `ParentClass` enum('SilverStripe\\Assets\\File','SilverStripe\\CronTask\\CronTaskStatus','SilverStripe\\SiteConfig\\SiteConfig','SilverStripe\\Taxonomy\\TaxonomyTerm','SilverStripe\\Taxonomy\\TaxonomyType','SilverStripe\\Versioned\\ChangeSet','SilverStripe\\Versioned\\ChangeSetItem','BringYourOwnIdeas\\Maintenance\\Model\\Package','CWP\\CWP\\Model\\Quicklink','CWP\\CWP\\Model\\RelatedPageLink','nglasl\\misdirection\\LinkMapping','SilverStripe\\Assets\\Shortcodes\\FileLink','SilverStripe\\Blog\\Model\\BlogCategory','SilverStripe\\Blog\\Model\\BlogTag','SilverStripe\\CMS\\Model\\SiteTree','SilverStripe\\CMS\\Model\\SiteTreeLink','SilverStripe\\Comments\\Model\\Comment','SilverStripe\\ContentReview\\Models\\ContentReviewLog','SilverStripe\\ExternalLinks\\Model\\BrokenExternalLink','SilverStripe\\ExternalLinks\\Model\\BrokenExternalPageTrack','SilverStripe\\ExternalLinks\\Model\\BrokenExternalPageTrackStatus','SilverStripe\\Security\\Group','SilverStripe\\Security\\LoginAttempt','SilverStripe\\Security\\Member','SilverStripe\\Security\\MemberPassword','SilverStripe\\Security\\Permission','SilverStripe\\Security\\PermissionRole','SilverStripe\\Security\\PermissionRoleCode','SilverStripe\\Security\\RememberLoginHash','SilverStripe\\HybridSessions\\HybridSessionDataObject','SilverStripe\\MFA\\Model\\RegisteredMethod','SilverStripe\\SessionManager\\Models\\LoginSession','SilverStripe\\ShareDraftContent\\Models\\ShareToken','SilverStripe\\UserForms\\Model\\EditableCustomRule','SilverStripe\\UserForms\\Model\\EditableFormField','Symbiote\\AdvancedWorkflow\\DataObjects\\ImportedWorkflowTemplate','Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowAction','Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowActionInstance','Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowDefinition','Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowInstance','Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowTransition','Symbiote\\QueuedJobs\\DataObjects\\QueuedJobDescriptor','Symbiote\\QueuedJobs\\DataObjects\\QueuedJobRule','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableOption','SilverStripe\\UserForms\\Model\\Recipient\\EmailRecipient','SilverStripe\\UserForms\\Model\\Recipient\\EmailRecipientCondition','SilverStripe\\UserForms\\Model\\Submission\\SubmittedForm','SilverStripe\\UserForms\\Model\\Submission\\SubmittedFormField','SilverStripe\\Assets\\Folder','SilverStripe\\Assets\\Image','Page','CWP\\CWP\\PageTypes\\BasePage','CWP\\Search\\CwpSearchPage','SilverStripe\\ErrorPage\\ErrorPage','SilverStripe\\IFrame\\IFramePage','CWP\\CWP\\PageTypes\\BaseHomePage','CWP\\CWP\\PageTypes\\DatedUpdateHolder','CWP\\CWP\\PageTypes\\DatedUpdatePage','CWP\\CWP\\PageTypes\\SitemapPage','SilverStripe\\Blog\\Model\\Blog','SilverStripe\\Blog\\Model\\BlogPost','SilverStripe\\CMS\\Model\\RedirectorPage','SilverStripe\\CMS\\Model\\VirtualPage','SilverStripe\\UserForms\\Model\\UserDefinedForm','CWP\\CWP\\PageTypes\\EventHolder','CWP\\CWP\\PageTypes\\NewsHolder','CWP\\CWP\\PageTypes\\EventPage','CWP\\CWP\\PageTypes\\NewsPage','CWP\\CWP\\PageTypes\\FooterHolder','SilverStripe\\SpamProtection\\EditableSpamProtectionField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCheckbox','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCountryDropdownField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableDateField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableEmailField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFieldGroup','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFieldGroupEnd','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFileField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormHeading','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableLiteralField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableMemberListField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableMultipleOptionField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableNumericField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableTextField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCheckboxGroupField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableDropdown','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableRadioField','Symbiote\\AdvancedWorkflow\\Actions\\AssignUsersToWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\CancelWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\NotifyUsersWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\PublishItemWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\SetPropertyWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\SimpleApprovalWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\UnpublishItemWorkflowAction','SilverStripe\\UserForms\\Model\\Submission\\SubmittedFileField') COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Assets\\File',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `SubmittedByID` (`SubmittedByID`),
  KEY `Parent` (`ParentID`,`ParentClass`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SubmittedForm`
--

LOCK TABLES `SubmittedForm` WRITE;
/*!40000 ALTER TABLE `SubmittedForm` DISABLE KEYS */;
/*!40000 ALTER TABLE `SubmittedForm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SubmittedFormField`
--

DROP TABLE IF EXISTS `SubmittedFormField`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SubmittedFormField` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\UserForms\\Model\\Submission\\SubmittedFormField','SilverStripe\\UserForms\\Model\\Submission\\SubmittedFileField') COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\UserForms\\Model\\Submission\\SubmittedFormField',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Value` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Displayed` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `ParentID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `ParentID` (`ParentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SubmittedFormField`
--

LOCK TABLES `SubmittedFormField` WRITE;
/*!40000 ALTER TABLE `SubmittedFormField` DISABLE KEYS */;
/*!40000 ALTER TABLE `SubmittedFormField` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TaxonomyTerm`
--

DROP TABLE IF EXISTS `TaxonomyTerm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TaxonomyTerm` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Taxonomy\\TaxonomyTerm') COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Taxonomy\\TaxonomyTerm',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Sort` int(11) NOT NULL DEFAULT 0,
  `ParentID` int(11) NOT NULL DEFAULT 0,
  `TypeID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `Sort` (`Sort`),
  KEY `ClassName` (`ClassName`),
  KEY `ParentID` (`ParentID`),
  KEY `TypeID` (`TypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TaxonomyTerm`
--

LOCK TABLES `TaxonomyTerm` WRITE;
/*!40000 ALTER TABLE `TaxonomyTerm` DISABLE KEYS */;
/*!40000 ALTER TABLE `TaxonomyTerm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TaxonomyType`
--

DROP TABLE IF EXISTS `TaxonomyType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TaxonomyType` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Taxonomy\\TaxonomyType') COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Taxonomy\\TaxonomyType',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TaxonomyType`
--

LOCK TABLES `TaxonomyType` WRITE;
/*!40000 ALTER TABLE `TaxonomyType` DISABLE KEYS */;
/*!40000 ALTER TABLE `TaxonomyType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UnpublishItemWorkflowAction`
--

DROP TABLE IF EXISTS `UnpublishItemWorkflowAction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UnpublishItemWorkflowAction` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UnpublishDelay` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UnpublishItemWorkflowAction`
--

LOCK TABLES `UnpublishItemWorkflowAction` WRITE;
/*!40000 ALTER TABLE `UnpublishItemWorkflowAction` DISABLE KEYS */;
/*!40000 ALTER TABLE `UnpublishItemWorkflowAction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserDefinedForm`
--

DROP TABLE IF EXISTS `UserDefinedForm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserDefinedForm` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SubmitButtonText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ClearButtonText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OnCompleteMessage` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ShowClearButton` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `DisableSaveSubmissions` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `EnableLiveValidation` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `DisplayErrorMessagesAtTop` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `DisableAuthenicatedFinishAction` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `DisableCsrfSecurityToken` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserDefinedForm`
--

LOCK TABLES `UserDefinedForm` WRITE;
/*!40000 ALTER TABLE `UserDefinedForm` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserDefinedForm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserDefinedForm_EmailRecipient`
--

DROP TABLE IF EXISTS `UserDefinedForm_EmailRecipient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserDefinedForm_EmailRecipient` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\UserForms\\Model\\Recipient\\EmailRecipient') COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\UserForms\\Model\\Recipient\\EmailRecipient',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `EmailAddress` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EmailSubject` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EmailFrom` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EmailReplyTo` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EmailBody` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EmailBodyHtml` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EmailTemplate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SendPlain` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `HideFormData` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `HideInvisibleFields` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `CustomRulesCondition` enum('And','Or') COLLATE utf8mb4_unicode_ci DEFAULT 'And',
  `SendEmailFromFieldID` int(11) NOT NULL DEFAULT 0,
  `SendEmailToFieldID` int(11) NOT NULL DEFAULT 0,
  `SendEmailSubjectFieldID` int(11) NOT NULL DEFAULT 0,
  `FormID` int(11) NOT NULL DEFAULT 0,
  `FormClass` enum('SilverStripe\\Assets\\File','SilverStripe\\CronTask\\CronTaskStatus','SilverStripe\\SiteConfig\\SiteConfig','SilverStripe\\Taxonomy\\TaxonomyTerm','SilverStripe\\Taxonomy\\TaxonomyType','SilverStripe\\Versioned\\ChangeSet','SilverStripe\\Versioned\\ChangeSetItem','BringYourOwnIdeas\\Maintenance\\Model\\Package','CWP\\CWP\\Model\\Quicklink','CWP\\CWP\\Model\\RelatedPageLink','nglasl\\misdirection\\LinkMapping','SilverStripe\\Assets\\Shortcodes\\FileLink','SilverStripe\\Blog\\Model\\BlogCategory','SilverStripe\\Blog\\Model\\BlogTag','SilverStripe\\CMS\\Model\\SiteTree','SilverStripe\\CMS\\Model\\SiteTreeLink','SilverStripe\\Comments\\Model\\Comment','SilverStripe\\ContentReview\\Models\\ContentReviewLog','SilverStripe\\ExternalLinks\\Model\\BrokenExternalLink','SilverStripe\\ExternalLinks\\Model\\BrokenExternalPageTrack','SilverStripe\\ExternalLinks\\Model\\BrokenExternalPageTrackStatus','SilverStripe\\Security\\Group','SilverStripe\\Security\\LoginAttempt','SilverStripe\\Security\\Member','SilverStripe\\Security\\MemberPassword','SilverStripe\\Security\\Permission','SilverStripe\\Security\\PermissionRole','SilverStripe\\Security\\PermissionRoleCode','SilverStripe\\Security\\RememberLoginHash','SilverStripe\\HybridSessions\\HybridSessionDataObject','SilverStripe\\MFA\\Model\\RegisteredMethod','SilverStripe\\SessionManager\\Models\\LoginSession','SilverStripe\\ShareDraftContent\\Models\\ShareToken','SilverStripe\\UserForms\\Model\\EditableCustomRule','SilverStripe\\UserForms\\Model\\EditableFormField','Symbiote\\AdvancedWorkflow\\DataObjects\\ImportedWorkflowTemplate','Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowAction','Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowActionInstance','Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowDefinition','Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowInstance','Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowTransition','Symbiote\\QueuedJobs\\DataObjects\\QueuedJobDescriptor','Symbiote\\QueuedJobs\\DataObjects\\QueuedJobRule','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableOption','SilverStripe\\UserForms\\Model\\Recipient\\EmailRecipient','SilverStripe\\UserForms\\Model\\Recipient\\EmailRecipientCondition','SilverStripe\\UserForms\\Model\\Submission\\SubmittedForm','SilverStripe\\UserForms\\Model\\Submission\\SubmittedFormField','SilverStripe\\Assets\\Folder','SilverStripe\\Assets\\Image','Page','CWP\\CWP\\PageTypes\\BasePage','CWP\\Search\\CwpSearchPage','SilverStripe\\ErrorPage\\ErrorPage','SilverStripe\\IFrame\\IFramePage','CWP\\CWP\\PageTypes\\BaseHomePage','CWP\\CWP\\PageTypes\\DatedUpdateHolder','CWP\\CWP\\PageTypes\\DatedUpdatePage','CWP\\CWP\\PageTypes\\SitemapPage','SilverStripe\\Blog\\Model\\Blog','SilverStripe\\Blog\\Model\\BlogPost','SilverStripe\\CMS\\Model\\RedirectorPage','SilverStripe\\CMS\\Model\\VirtualPage','SilverStripe\\UserForms\\Model\\UserDefinedForm','CWP\\CWP\\PageTypes\\EventHolder','CWP\\CWP\\PageTypes\\NewsHolder','CWP\\CWP\\PageTypes\\EventPage','CWP\\CWP\\PageTypes\\NewsPage','CWP\\CWP\\PageTypes\\FooterHolder','SilverStripe\\SpamProtection\\EditableSpamProtectionField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCheckbox','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCountryDropdownField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableDateField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableEmailField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFieldGroup','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFieldGroupEnd','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFileField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormHeading','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableFormStep','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableLiteralField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableMemberListField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableMultipleOptionField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableNumericField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableTextField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableCheckboxGroupField','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableDropdown','SilverStripe\\UserForms\\Model\\EditableFormField\\EditableRadioField','Symbiote\\AdvancedWorkflow\\Actions\\AssignUsersToWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\CancelWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\NotifyUsersWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\PublishItemWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\SetPropertyWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\SimpleApprovalWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\UnpublishItemWorkflowAction','SilverStripe\\UserForms\\Model\\Submission\\SubmittedFileField') COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Assets\\File',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `SendEmailFromFieldID` (`SendEmailFromFieldID`),
  KEY `SendEmailToFieldID` (`SendEmailToFieldID`),
  KEY `SendEmailSubjectFieldID` (`SendEmailSubjectFieldID`),
  KEY `Form` (`FormID`,`FormClass`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserDefinedForm_EmailRecipient`
--

LOCK TABLES `UserDefinedForm_EmailRecipient` WRITE;
/*!40000 ALTER TABLE `UserDefinedForm_EmailRecipient` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserDefinedForm_EmailRecipient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserDefinedForm_EmailRecipientCondition`
--

DROP TABLE IF EXISTS `UserDefinedForm_EmailRecipientCondition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserDefinedForm_EmailRecipientCondition` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\UserForms\\Model\\Recipient\\EmailRecipientCondition') COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\UserForms\\Model\\Recipient\\EmailRecipientCondition',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `ConditionOption` enum('IsBlank','IsNotBlank','Equals','NotEquals','ValueLessThan','ValueLessThanEqual','ValueGreaterThan','ValueGreaterThanEqual') COLLATE utf8mb4_unicode_ci DEFAULT 'IsBlank',
  `ConditionValue` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT 0,
  `ConditionFieldID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `ParentID` (`ParentID`),
  KEY `ConditionFieldID` (`ConditionFieldID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserDefinedForm_EmailRecipientCondition`
--

LOCK TABLES `UserDefinedForm_EmailRecipientCondition` WRITE;
/*!40000 ALTER TABLE `UserDefinedForm_EmailRecipientCondition` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserDefinedForm_EmailRecipientCondition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserDefinedForm_Live`
--

DROP TABLE IF EXISTS `UserDefinedForm_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserDefinedForm_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SubmitButtonText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ClearButtonText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OnCompleteMessage` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ShowClearButton` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `DisableSaveSubmissions` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `EnableLiveValidation` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `DisplayErrorMessagesAtTop` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `DisableAuthenicatedFinishAction` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `DisableCsrfSecurityToken` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserDefinedForm_Live`
--

LOCK TABLES `UserDefinedForm_Live` WRITE;
/*!40000 ALTER TABLE `UserDefinedForm_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserDefinedForm_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserDefinedForm_Versions`
--

DROP TABLE IF EXISTS `UserDefinedForm_Versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserDefinedForm_Versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `SubmitButtonText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ClearButtonText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OnCompleteMessage` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ShowClearButton` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `DisableSaveSubmissions` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `EnableLiveValidation` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `DisplayErrorMessagesAtTop` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `DisableAuthenicatedFinishAction` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `DisableCsrfSecurityToken` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserDefinedForm_Versions`
--

LOCK TABLES `UserDefinedForm_Versions` WRITE;
/*!40000 ALTER TABLE `UserDefinedForm_Versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserDefinedForm_Versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VirtualPage`
--

DROP TABLE IF EXISTS `VirtualPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VirtualPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VersionID` int(11) NOT NULL DEFAULT 0,
  `CopyContentFromID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VirtualPage`
--

LOCK TABLES `VirtualPage` WRITE;
/*!40000 ALTER TABLE `VirtualPage` DISABLE KEYS */;
/*!40000 ALTER TABLE `VirtualPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VirtualPage_Live`
--

DROP TABLE IF EXISTS `VirtualPage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VirtualPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VersionID` int(11) NOT NULL DEFAULT 0,
  `CopyContentFromID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VirtualPage_Live`
--

LOCK TABLES `VirtualPage_Live` WRITE;
/*!40000 ALTER TABLE `VirtualPage_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `VirtualPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VirtualPage_Versions`
--

DROP TABLE IF EXISTS `VirtualPage_Versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VirtualPage_Versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `VersionID` int(11) NOT NULL DEFAULT 0,
  `CopyContentFromID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VirtualPage_Versions`
--

LOCK TABLES `VirtualPage_Versions` WRITE;
/*!40000 ALTER TABLE `VirtualPage_Versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `VirtualPage_Versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowAction`
--

DROP TABLE IF EXISTS `WorkflowAction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowAction` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\AssignUsersToWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\CancelWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\NotifyUsersWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\PublishItemWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\SetPropertyWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\SimpleApprovalWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\UnpublishItemWorkflowAction') COLLATE utf8mb4_unicode_ci DEFAULT 'Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowAction',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Comment` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Type` enum('Dynamic','Manual') COLLATE utf8mb4_unicode_ci DEFAULT 'Manual',
  `Executed` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `AllowEditing` enum('By Assignees','Content Settings','No') COLLATE utf8mb4_unicode_ci DEFAULT 'No',
  `Sort` int(11) NOT NULL DEFAULT 0,
  `AllowCommenting` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `WorkflowDefID` int(11) NOT NULL DEFAULT 0,
  `MemberID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `Sort` (`Sort`),
  KEY `ClassName` (`ClassName`),
  KEY `WorkflowDefID` (`WorkflowDefID`),
  KEY `MemberID` (`MemberID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowAction`
--

LOCK TABLES `WorkflowAction` WRITE;
/*!40000 ALTER TABLE `WorkflowAction` DISABLE KEYS */;
INSERT INTO `WorkflowAction` VALUES (1,'Symbiote\\AdvancedWorkflow\\Actions\\AssignUsersToWorkflowAction','2022-09-05 00:24:32','2022-09-05 00:24:32','Apply for approval',NULL,'Manual',0,'No',1,1,1,0),(2,'Symbiote\\AdvancedWorkflow\\Actions\\NotifyUsersWorkflowAction','2022-09-05 00:24:32','2022-09-05 00:24:32','Notify users',NULL,'Manual',0,'No',2,1,1,0),(3,'Symbiote\\AdvancedWorkflow\\Actions\\SimpleApprovalWorkflowAction','2022-09-05 00:24:32','2022-09-05 00:24:32','Approval',NULL,'Manual',0,'No',3,1,1,0),(4,'Symbiote\\AdvancedWorkflow\\Actions\\PublishItemWorkflowAction','2022-09-05 00:24:32','2022-09-05 00:24:32','Publish',NULL,'Manual',0,'No',4,1,1,0),(5,'Symbiote\\AdvancedWorkflow\\Actions\\AssignUsersToWorkflowAction','2022-09-05 00:24:32','2022-09-05 00:24:32','Assign Initiator Publish',NULL,'Manual',0,'No',5,1,1,0),(6,'Symbiote\\AdvancedWorkflow\\Actions\\NotifyUsersWorkflowAction','2022-09-05 00:24:32','2022-09-05 00:24:32','Notify Initiator Publish',NULL,'Manual',0,'No',6,1,1,0),(7,'Symbiote\\AdvancedWorkflow\\Actions\\CancelWorkflowAction','2022-09-05 00:24:32','2022-09-05 00:24:32','Reject changes',NULL,'Manual',0,'No',7,1,1,0),(8,'Symbiote\\AdvancedWorkflow\\Actions\\AssignUsersToWorkflowAction','2022-09-05 00:24:32','2022-09-05 00:24:32','Assign Initiator Cancel',NULL,'Manual',0,'No',8,1,1,0),(9,'Symbiote\\AdvancedWorkflow\\Actions\\NotifyUsersWorkflowAction','2022-09-05 00:24:32','2022-09-05 00:24:32','Notify Initiator Cancel',NULL,'Manual',0,'No',9,1,1,0);
/*!40000 ALTER TABLE `WorkflowAction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowActionInstance`
--

DROP TABLE IF EXISTS `WorkflowActionInstance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowActionInstance` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowActionInstance') COLLATE utf8mb4_unicode_ci DEFAULT 'Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowActionInstance',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Comment` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Finished` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `WorkflowID` int(11) NOT NULL DEFAULT 0,
  `BaseActionID` int(11) NOT NULL DEFAULT 0,
  `MemberID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `WorkflowID` (`WorkflowID`),
  KEY `BaseActionID` (`BaseActionID`),
  KEY `MemberID` (`MemberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowActionInstance`
--

LOCK TABLES `WorkflowActionInstance` WRITE;
/*!40000 ALTER TABLE `WorkflowActionInstance` DISABLE KEYS */;
/*!40000 ALTER TABLE `WorkflowActionInstance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowDefinition`
--

DROP TABLE IF EXISTS `WorkflowDefinition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowDefinition` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowDefinition') COLLATE utf8mb4_unicode_ci DEFAULT 'Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowDefinition',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Template` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TemplateVersion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RemindDays` int(11) NOT NULL DEFAULT 0,
  `Sort` int(11) NOT NULL DEFAULT 0,
  `InitialActionButtonText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Sort` (`Sort`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowDefinition`
--

LOCK TABLES `WorkflowDefinition` WRITE;
/*!40000 ALTER TABLE `WorkflowDefinition` DISABLE KEYS */;
INSERT INTO `WorkflowDefinition` VALUES (1,'Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowDefinition','2022-09-05 00:24:32','2022-09-05 00:24:32','Two-step Workflow','Content Authors can write content and Content Publishers can approve/reject.','Review and Approve','0.2',3,1,NULL);
/*!40000 ALTER TABLE `WorkflowDefinition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowDefinition_Groups`
--

DROP TABLE IF EXISTS `WorkflowDefinition_Groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowDefinition_Groups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `WorkflowDefinitionID` int(11) NOT NULL DEFAULT 0,
  `GroupID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `WorkflowDefinitionID` (`WorkflowDefinitionID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowDefinition_Groups`
--

LOCK TABLES `WorkflowDefinition_Groups` WRITE;
/*!40000 ALTER TABLE `WorkflowDefinition_Groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `WorkflowDefinition_Groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowDefinition_Users`
--

DROP TABLE IF EXISTS `WorkflowDefinition_Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowDefinition_Users` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `WorkflowDefinitionID` int(11) NOT NULL DEFAULT 0,
  `MemberID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `WorkflowDefinitionID` (`WorkflowDefinitionID`),
  KEY `MemberID` (`MemberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowDefinition_Users`
--

LOCK TABLES `WorkflowDefinition_Users` WRITE;
/*!40000 ALTER TABLE `WorkflowDefinition_Users` DISABLE KEYS */;
/*!40000 ALTER TABLE `WorkflowDefinition_Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowInstance`
--

DROP TABLE IF EXISTS `WorkflowInstance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowInstance` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowInstance') COLLATE utf8mb4_unicode_ci DEFAULT 'Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowInstance',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `WorkflowStatus` enum('Active','Paused','Complete','Cancelled') COLLATE utf8mb4_unicode_ci DEFAULT 'Active',
  `TargetClass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TargetID` int(11) NOT NULL DEFAULT 0,
  `DefinitionID` int(11) NOT NULL DEFAULT 0,
  `CurrentActionID` int(11) NOT NULL DEFAULT 0,
  `InitiatorID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `DefinitionID` (`DefinitionID`),
  KEY `CurrentActionID` (`CurrentActionID`),
  KEY `InitiatorID` (`InitiatorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowInstance`
--

LOCK TABLES `WorkflowInstance` WRITE;
/*!40000 ALTER TABLE `WorkflowInstance` DISABLE KEYS */;
/*!40000 ALTER TABLE `WorkflowInstance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowInstance_Groups`
--

DROP TABLE IF EXISTS `WorkflowInstance_Groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowInstance_Groups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `WorkflowInstanceID` int(11) NOT NULL DEFAULT 0,
  `GroupID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `WorkflowInstanceID` (`WorkflowInstanceID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowInstance_Groups`
--

LOCK TABLES `WorkflowInstance_Groups` WRITE;
/*!40000 ALTER TABLE `WorkflowInstance_Groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `WorkflowInstance_Groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowInstance_Users`
--

DROP TABLE IF EXISTS `WorkflowInstance_Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowInstance_Users` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `WorkflowInstanceID` int(11) NOT NULL DEFAULT 0,
  `MemberID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `WorkflowInstanceID` (`WorkflowInstanceID`),
  KEY `MemberID` (`MemberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowInstance_Users`
--

LOCK TABLES `WorkflowInstance_Users` WRITE;
/*!40000 ALTER TABLE `WorkflowInstance_Users` DISABLE KEYS */;
/*!40000 ALTER TABLE `WorkflowInstance_Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowTransition`
--

DROP TABLE IF EXISTS `WorkflowTransition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowTransition` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowTransition') COLLATE utf8mb4_unicode_ci DEFAULT 'Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowTransition',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Sort` int(11) NOT NULL DEFAULT 0,
  `Type` enum('Active','Passive') COLLATE utf8mb4_unicode_ci DEFAULT 'Active',
  `ActionID` int(11) NOT NULL DEFAULT 0,
  `NextActionID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `Sort` (`Sort`),
  KEY `ClassName` (`ClassName`),
  KEY `ActionID` (`ActionID`),
  KEY `NextActionID` (`NextActionID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowTransition`
--

LOCK TABLES `WorkflowTransition` WRITE;
/*!40000 ALTER TABLE `WorkflowTransition` DISABLE KEYS */;
INSERT INTO `WorkflowTransition` VALUES (1,'Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowTransition','2022-09-05 00:24:32','2022-09-05 00:24:32','notify',0,'Active',1,2),(2,'Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowTransition','2022-09-05 00:24:32','2022-09-05 00:24:32','approval',1,'Active',2,3),(3,'Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowTransition','2022-09-05 00:24:32','2022-09-05 00:24:32','Approve',2,'Active',3,4),(4,'Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowTransition','2022-09-05 00:24:32','2022-09-05 00:24:32','Reject',3,'Active',3,7),(5,'Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowTransition','2022-09-05 00:24:32','2022-09-05 00:24:32','assign',4,'Active',4,5),(6,'Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowTransition','2022-09-05 00:24:32','2022-09-05 00:24:32','notify',5,'Active',5,6),(7,'Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowTransition','2022-09-05 00:24:32','2022-09-05 00:24:32','assign',6,'Active',7,8),(8,'Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowTransition','2022-09-05 00:24:32','2022-09-05 00:24:32','notify',7,'Active',8,9);
/*!40000 ALTER TABLE `WorkflowTransition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowTransition_Groups`
--

DROP TABLE IF EXISTS `WorkflowTransition_Groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowTransition_Groups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `WorkflowTransitionID` int(11) NOT NULL DEFAULT 0,
  `GroupID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `WorkflowTransitionID` (`WorkflowTransitionID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowTransition_Groups`
--

LOCK TABLES `WorkflowTransition_Groups` WRITE;
/*!40000 ALTER TABLE `WorkflowTransition_Groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `WorkflowTransition_Groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowTransition_Users`
--

DROP TABLE IF EXISTS `WorkflowTransition_Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowTransition_Users` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `WorkflowTransitionID` int(11) NOT NULL DEFAULT 0,
  `MemberID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `WorkflowTransitionID` (`WorkflowTransitionID`),
  KEY `MemberID` (`MemberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowTransition_Users`
--

LOCK TABLES `WorkflowTransition_Users` WRITE;
/*!40000 ALTER TABLE `WorkflowTransition_Users` DISABLE KEYS */;
/*!40000 ALTER TABLE `WorkflowTransition_Users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-05  0:39:36
