-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: laravel
-- ------------------------------------------------------
-- Server version	8.0.24

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (14,'Holden Denesik','Blanditiis architecto voluptas non veniam qui voluptatem ut cumque. Rerum voluptas perferendis id corrupti. Sapiente sint harum sed minima. Vitae quam nemo sit voluptatem natus dolor deleniti.','2022-02-18 15:23:11','2022-02-18 15:23:11'),(15,'Jacklyn Lakin','Voluptas aut sit deleniti non adipisci tempora error. Blanditiis et illo quis ut quo vitae corporis. Quam non velit earum quas facilis ut consequuntur.','2022-02-18 15:23:11','2022-02-18 15:23:11'),(16,'Sheridan Cummerata','Saepe mollitia corporis delectus at unde. Vitae enim natus qui aperiam. Est temporibus ipsum voluptatibus culpa doloribus.','2022-02-18 15:23:11','2022-02-18 15:23:11'),(17,'Rosemarie Jones','Deleniti ea veniam totam voluptas explicabo et eum. Enim natus dolorum repellendus ea ut. Aperiam est voluptatibus quae odio dolorem. Sit quam ex sint ut nihil.','2022-02-18 15:23:11','2022-02-18 15:23:11'),(18,'Kathlyn Ullrich','Quos sint vel eius omnis rerum ipsam id. Delectus repudiandae quas occaecati ut odio. Rerum consequatur porro beatae eos. Modi cum eos facere non.','2022-02-18 15:23:11','2022-02-18 15:23:11'),(19,'Broderick Mayert','Sit unde excepturi voluptas optio. Harum nihil ipsam consequatur nihil provident et odit.','2022-02-18 15:23:11','2022-02-18 15:23:11'),(20,'Salvatore Brekke','Harum sunt rerum sit est. Ullam amet et atque quia aut minus consequuntur sit. Voluptatum dolore alias voluptatem dolorum. Dolores quia et beatae nostrum laborum.','2022-02-18 15:23:11','2022-02-18 15:23:11'),(21,'Mr. Garfield Leffler','Eaque nihil earum eos voluptates odio. Qui debitis vero harum. Quasi nihil sequi iste perferendis qui qui consequatur. Id ab libero at impedit aut.','2022-02-18 15:23:11','2022-02-18 15:23:11'),(22,'Haylee Streich','Qui recusandae et numquam. Tempora magni quia maxime sed porro illum. Exercitationem ut voluptatibus repellat aut ipsam. Iste numquam exercitationem sequi impedit consectetur totam.','2022-02-18 15:23:11','2022-02-18 15:23:11'),(23,'Tod Stehr','Provident qui porro aut. Ipsam consequatur accusantium enim non molestias dolorum. Ratione quia aut dolorem fugit et est. Quod voluptas at voluptatum alias saepe dolorem.','2022-02-18 15:23:11','2022-02-18 15:23:11');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(11,'2022_02_15_194404_create_products_table',2),(12,'2022_02_15_195222_create_categories_table',2),(14,'2022_02_15_195306_create_orders_table',3),(15,'2022_02_18_162135_create_settings_table',4);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `products_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (39,'dima','dima@mail.ru',277,'2022-02-18 15:27:41','2022-02-18 15:27:41'),(40,'dima','dima@mail.ru',282,'2022-02-18 15:27:51','2022-02-18 15:27:51'),(41,'anton','anton@mail.ru',273,'2022-02-18 15:28:36','2022-02-18 15:28:36'),(42,'andrei','andrei@mail.ru',297,'2022-02-18 15:29:12','2022-02-18 15:29:12'),(43,'dima','dima@mail.ru',281,'2022-02-18 15:32:37','2022-02-18 15:32:37'),(44,'dima','dima@mail.ru',272,'2022-02-18 15:39:14','2022-02-18 15:39:14'),(45,'andrei','andrei@mail.ru',299,'2022-02-18 15:42:25','2022-02-18 15:42:25');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=302 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (252,'Lonnie Stanton',37,'game-6.jpg','Dignissimos et et recusandae ea ratione qui. A eum pariatur vel quo animi. Fuga voluptates minus et est. Corrupti aut dolorem sit sit fugiat impedit.',17,'2022-02-18 15:27:18','2022-02-18 15:27:18'),(253,'Ike Bartell',266,'game-3.jpg','Sit veritatis velit qui aut officiis quam autem error. Commodi ea magni officia ab aliquid ipsam. Dolor vel accusamus odio maiores. Quia et rem vel.',14,'2022-02-18 15:27:18','2022-02-18 15:27:18'),(254,'Dr. Lambert Reichel V',130,'game-5.jpg','Laudantium eos eum tenetur qui veritatis vero iste qui. Ut perspiciatis deleniti tempora aperiam eius. Inventore nisi labore qui iure quia distinctio.',20,'2022-02-18 15:27:18','2022-02-18 15:27:18'),(255,'Krista Bruen',44,'game-8.jpg','Quae numquam et a. Ut quis qui ipsa consectetur et et et. Repudiandae unde et fugiat voluptatem ipsam.',15,'2022-02-18 15:27:18','2022-02-18 15:27:18'),(256,'Mrs. Domenica Kulas',218,'game-3.jpg','At libero ea provident ut. Dolore sit autem voluptatem numquam. Laboriosam nulla ratione mollitia vero quisquam tempora. Voluptatem rerum corrupti architecto maiores.',20,'2022-02-18 15:27:18','2022-02-18 15:27:18'),(257,'Leanna Wolff',179,'game-6.jpg','Tempora doloremque facere nulla facilis. Quaerat voluptas sit sapiente ipsa. Eius omnis est illum voluptatum dolorem autem at.',22,'2022-02-18 15:27:18','2022-02-18 15:27:18'),(258,'Reba Dooley',143,'game-3.jpg','Sunt tempora sit et. Eius quidem qui est voluptate. Recusandae eos accusamus perspiciatis consequatur.',21,'2022-02-18 15:27:18','2022-02-18 15:27:18'),(259,'Prof. Jada Fahey',113,'game-6.jpg','Ut blanditiis tempora aperiam commodi saepe. In dolor aliquid consequatur molestiae dolorum qui ex nostrum. Est sint sed voluptates ducimus dolor eos pariatur. Repellat nobis neque autem alias.',18,'2022-02-18 15:27:18','2022-02-18 15:27:18'),(260,'Elna Steuber',218,'game-9.jpg','Fugit vel quam et omnis ea. In qui possimus dolores architecto odit asperiores. Illo est molestias dignissimos dolorem aut fuga magnam. Nam ad consequatur quaerat facere et molestiae.',23,'2022-02-18 15:27:18','2022-02-18 15:27:18'),(261,'Emmalee Bailey',69,'game-2.jpg','Repudiandae est mollitia officia voluptatum voluptas maiores quia. Asperiores maxime sapiente atque. Aut facilis voluptatum et.',15,'2022-02-18 15:27:18','2022-02-18 15:27:18'),(262,'Lois Shields',235,'game-3.jpg','Nam tempora vel et eum hic voluptate. Aut consequuntur quos numquam odit quisquam. Nesciunt hic ut vel dolore voluptas quo consequatur iste.',20,'2022-02-18 15:27:18','2022-02-18 15:27:18'),(263,'Ms. Alvena Powlowski IV',112,'game-9.jpg','Dolorem vel corrupti quasi labore aliquid minima. Doloribus aut odio nostrum ipsam harum id. Architecto quo maiores recusandae sequi cum ducimus praesentium.',14,'2022-02-18 15:27:18','2022-02-18 15:27:18'),(264,'Adelia Herman',98,'game-3.jpg','Et minima sequi maiores dolor unde officiis. Fuga repellat laboriosam laudantium fugit voluptatem. Dolore esse sed est qui porro. Laboriosam placeat ratione dolores sit molestiae unde officia.',18,'2022-02-18 15:27:18','2022-02-18 15:27:18'),(265,'Mrs. Gwen Dickens V',43,'game-3.jpg','Sint fugiat officia voluptatem ad deleniti. Magnam ducimus ad eius consectetur. Molestiae atque enim rerum facilis molestiae. Magnam asperiores fugit explicabo quis.',14,'2022-02-18 15:27:18','2022-02-18 15:27:18'),(266,'Ansel Blanda',265,'game-2.jpg','Ut ut voluptatem provident ducimus. Repellat dolores ad dolorem tempora. Sunt eum atque sed non.',15,'2022-02-18 15:27:18','2022-02-18 15:27:18'),(267,'Dr. Daryl Reynolds',220,'game-2.jpg','Deleniti est velit consectetur saepe alias repellat dolor. Doloribus non perferendis asperiores dicta. Est sequi sint et maxime aut.',18,'2022-02-18 15:27:18','2022-02-18 15:27:18'),(268,'Janice Satterfield Sr.',148,'game-8.jpg','Nam deleniti odit est. Voluptas exercitationem aut et sit blanditiis repellendus. Et possimus a odit eligendi. Quia provident quae enim.',18,'2022-02-18 15:27:18','2022-02-18 15:27:18'),(269,'Damaris Zulauf',106,'game-3.jpg','Harum maxime accusantium optio. Sit voluptatem omnis est iure. Dolorem quasi quod soluta sed.',22,'2022-02-18 15:27:18','2022-02-18 15:27:18'),(270,'Orville Predovic',261,'game-5.jpg','Labore molestiae doloribus nesciunt quo corrupti excepturi eligendi. Repudiandae qui non beatae ut. Debitis qui voluptatibus maxime saepe.',15,'2022-02-18 15:27:18','2022-02-18 15:27:18'),(271,'Alvera Klocko',49,'game-8.jpg','Molestiae officia quo magnam aspernatur optio. Illo ut et adipisci sint velit impedit. Ut quis sed tempora ipsam iste nobis voluptatem.',18,'2022-02-18 15:27:18','2022-02-18 15:27:18'),(272,'Allen Barton',51,'game-5.jpg','Explicabo ut quasi ut est quos dolor. Omnis et omnis quisquam et. Non est doloribus nesciunt optio. Voluptatem sint suscipit architecto labore.',14,'2022-02-18 15:27:18','2022-02-18 15:27:18'),(273,'Jerrell Collins',34,'game-7.jpg','Nobis doloremque iusto nobis itaque. Ratione aut rerum cumque non ut mollitia consequatur. Ipsam consequatur ad non nam corporis.',19,'2022-02-18 15:27:18','2022-02-18 15:27:18'),(274,'Rylee Schneider',178,'game-5.jpg','Illo velit exercitationem quis molestiae beatae corrupti praesentium. Ad consectetur dolores eveniet sunt. Aspernatur rerum vitae error commodi. Sapiente est aspernatur iure consequatur magnam.',20,'2022-02-18 15:27:18','2022-02-18 15:27:18'),(275,'Cathy Kuhlman',225,'game-9.jpg','Nisi doloribus possimus quidem doloribus laborum quis. Neque inventore temporibus quaerat dolorem commodi ut rerum. Non voluptatem ratione tempora. Et enim blanditiis error nemo vero.',19,'2022-02-18 15:27:18','2022-02-18 15:27:18'),(276,'Prof. Herman Nikolaus PhD',155,'game-7.jpg','Dolorem hic inventore omnis sit et corporis delectus. Nihil molestias quas nisi corporis saepe quia est. Aperiam facere impedit rerum maiores quis magnam et.',15,'2022-02-18 15:27:18','2022-02-18 15:27:18'),(277,'Dandre Mayert',145,'game-4.jpg','Voluptatum ipsam ut aut dolore. Et incidunt eaque quia iusto maiores. Iusto explicabo vel ea dignissimos dolores sed.',22,'2022-02-18 15:27:18','2022-02-18 15:27:18'),(278,'Roberta Fritsch',297,'game-8.jpg','Non ducimus iure nesciunt. Voluptas vel quia fuga. Consectetur pariatur quae et soluta corporis. Sit quasi eum perspiciatis illum alias ea consectetur vel.',18,'2022-02-18 15:27:18','2022-02-18 15:27:18'),(279,'Royal Dach',249,'game-3.jpg','Ad esse libero quis. Suscipit laborum natus consectetur voluptatum reiciendis accusantium. Quam sint nulla dolores. Est enim fuga eaque qui. In illo dolorem mollitia maiores.',15,'2022-02-18 15:27:18','2022-02-18 15:27:18'),(280,'Alyson Kassulke',153,'game-4.jpg','Et ex et unde cumque et quam. Hic alias inventore necessitatibus dicta fugit ut ut. Dolores ipsam vel rerum eos quis rem et sit.',20,'2022-02-18 15:27:18','2022-02-18 15:27:18'),(281,'Bennett Parisian',104,'game-5.jpg','Possimus itaque voluptatum neque quo quas. Odio aut beatae voluptatem a rerum voluptas enim. Necessitatibus porro accusantium earum soluta nulla a. Inventore et placeat ducimus facilis aut neque.',14,'2022-02-18 15:27:18','2022-02-18 15:27:18'),(282,'Howell Koelpin',165,'game-3.jpg','Optio itaque iure consequatur error laboriosam necessitatibus possimus. Est ut rerum ipsam quam velit. Et unde tenetur dolorum ipsum quaerat at eius. Aut iste illum pariatur.',20,'2022-02-18 15:27:18','2022-02-18 15:27:18'),(283,'Lonnie Ratke',103,'game-4.jpg','Consequatur atque explicabo officia dicta. Optio veritatis dignissimos et debitis. Distinctio eos quibusdam nihil eligendi.',14,'2022-02-18 15:27:18','2022-02-18 15:27:18'),(284,'Prof. Morgan Daugherty',172,'game-3.jpg','Reiciendis nemo labore cum a. Deserunt mollitia placeat recusandae quia molestiae. Iste voluptas qui voluptas et iusto. Temporibus voluptatum aperiam expedita aut. Expedita harum cum vel repellendus.',18,'2022-02-18 15:27:18','2022-02-18 15:27:18'),(285,'Tiara Dietrich',279,'game-6.jpg','Et id commodi soluta perferendis eum atque porro. Quaerat facilis reprehenderit et ut animi odio est. Tempore at consequatur hic accusamus corporis ullam.',17,'2022-02-18 15:27:18','2022-02-18 15:27:18'),(286,'Herbert Murphy',98,'game-1.jpg','Quis id est optio aperiam dolorem sed. Iusto ab corporis ea et autem odit voluptatibus.',21,'2022-02-18 15:27:18','2022-02-18 15:27:18'),(287,'Dr. Ivy Stiedemann II',240,'game-2.jpg','Delectus deleniti ut soluta et et. Repellendus et labore enim qui non dolores. Autem sed nisi et reiciendis sunt et aut. Repellat quasi et quod voluptas suscipit.',18,'2022-02-18 15:27:18','2022-02-18 15:27:18'),(288,'Leatha Jacobi',114,'game-6.jpg','Voluptas aut dolorum nulla ratione. Eligendi quis excepturi doloribus sequi esse facilis. Eos vel dignissimos ea voluptatem impedit. Impedit voluptatibus quas eligendi non dolorem.',15,'2022-02-18 15:27:18','2022-02-18 15:27:18'),(289,'Mr. Leone Turner',176,'game-7.jpg','Occaecati vero nisi aliquid error aut. Illum enim dolores sunt qui. Dolore tenetur omnis et vel fugit sed. Eveniet enim reiciendis laboriosam sint incidunt.',21,'2022-02-18 15:27:18','2022-02-18 15:27:18'),(290,'Ila Armstrong',38,'game-9.jpg','Corporis in eius et. Explicabo a molestiae numquam voluptas. Excepturi fugit molestiae beatae illum officia unde. Et aspernatur quis qui et.',17,'2022-02-18 15:27:18','2022-02-18 15:27:18'),(291,'Tyson Donnelly',48,'game-9.jpg','Omnis consectetur maxime laborum non recusandae magnam voluptatem. Iure sint laboriosam deserunt aut non. Modi et nesciunt quis laborum et.',17,'2022-02-18 15:27:18','2022-02-18 15:27:18'),(292,'Arely Harber',54,'game-1.jpg','Occaecati fugit officia ut. Numquam qui aspernatur eligendi eum qui. Tempora magnam rerum natus quidem recusandae. Impedit deleniti expedita explicabo. Quam vel molestiae incidunt.',18,'2022-02-18 15:27:18','2022-02-18 15:27:18'),(293,'Miss Valentine Price II',126,'game-9.jpg','Ut quos maxime in quia veritatis ipsa. Voluptas facilis sit eligendi nemo laboriosam vero id mollitia. Consequatur quas temporibus qui et consequatur eum aliquid.',16,'2022-02-18 15:27:18','2022-02-18 15:27:18'),(294,'Mr. Casimir Murazik DVM',290,'game-5.jpg','Quia deserunt architecto voluptatem qui qui veniam. Illum quis in tempora. Sed aut et est qui sint.',17,'2022-02-18 15:27:18','2022-02-18 15:27:18'),(295,'Lionel Stehr',219,'game-3.jpg','Incidunt nobis soluta nobis eligendi aut exercitationem. Numquam officia omnis recusandae est. Accusantium ex odio et deserunt consequatur distinctio.',16,'2022-02-18 15:27:18','2022-02-18 15:27:18'),(296,'Alexander Nikolaus V',129,'game-9.jpg','Ex temporibus et dicta explicabo. Et sed harum ex iste et. Illum qui enim commodi optio et. Autem quo maiores qui accusantium. Impedit fuga voluptatem eos recusandae rerum perspiciatis.',19,'2022-02-18 15:27:18','2022-02-18 15:27:18'),(297,'Dakota Rempel',233,'game-2.jpg','Quia rerum officia est enim laboriosam. Neque ratione cupiditate aut ea nihil autem.',18,'2022-02-18 15:27:18','2022-02-18 15:27:18'),(298,'Yessenia Rolfson',190,'game-8.jpg','Odio id totam sint nihil quam eius in. Ipsa et vitae laboriosam iure fugiat. Veritatis eius nostrum sit et veniam repellat possimus. A quis dolore et soluta culpa dolor sit.',16,'2022-02-18 15:27:18','2022-02-18 15:27:18'),(299,'Elinore Halvorson',280,'game-6.jpg','Ullam vero eos quisquam. Consequatur minus quis voluptate et nisi ipsa. Quaerat pariatur et eligendi et aut amet suscipit. Molestias veritatis voluptatibus veritatis saepe eaque eum a et.',22,'2022-02-18 15:27:18','2022-02-18 15:27:18'),(300,'Dr. Macey Stark',92,'game-8.jpg','Quam facere nisi maxime itaque. Rem laboriosam velit quo sint reprehenderit. Sed incidunt voluptas et consequuntur praesentium sit. Temporibus asperiores debitis consectetur quae a.',15,'2022-02-18 15:27:18','2022-02-18 15:27:18'),(301,'Ardella Bergnaum',76,'game-7.jpg','Perspiciatis libero perspiciatis inventore architecto officia quaerat eos. Quisquam eligendi earum omnis neque quia aut. Praesentium tenetur hic explicabo commodi.',20,'2022-02-18 15:27:18','2022-02-18 15:27:18');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (3,'email','correctaddress@mail.ru',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isAdmin` tinyint NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'andrei',0,'andrei@mail.ru',NULL,'$2y$10$.xTQ0oub4X37qzm/ksaPze6yOjDwAoRuVerI9bbUsbnUzXLX990tO',NULL,'2022-02-15 16:17:21','2022-02-15 16:17:21'),(2,'dima',1,'dima@mail.ru',NULL,'$2y$10$tny2feNMC3btFpijU.elNedmWaWaw.tmboe7mH3ot42YXuYEWHX6K',NULL,'2022-02-15 16:18:46','2022-02-15 16:18:46'),(3,'anton',0,'anton@mail.ru',NULL,'$2y$10$wbpYM3vcNwUOXFwer/cNROS1ZAVUaO81D7Rh7PPJ5GRV3QdDg/ZSS',NULL,'2022-02-18 14:58:53','2022-02-18 14:58:53');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-18 21:43:52
