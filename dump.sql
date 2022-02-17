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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Julia Kshlerin V','Sequi quis qui facere itaque eius fuga. Voluptatem quae in dolores quis quis autem impedit. Harum saepe ea harum totam perferendis. Ut alias aspernatur commodi corporis est magni.','2022-02-15 17:47:03','2022-02-15 17:47:03'),(2,'Chaim Konopelski','Ad aliquid molestiae excepturi voluptatum vel sequi. Iure et omnis cum ut. Rerum sed facilis atque libero quisquam et.','2022-02-15 17:47:03','2022-02-15 17:47:03'),(3,'Prof. Buddy Raynor MD','Numquam aut perspiciatis suscipit accusantium. Possimus quia dolores earum pariatur molestiae. Sunt et consequuntur minima voluptatibus nihil.','2022-02-15 17:47:03','2022-02-15 17:47:03'),(4,'Grayce Stroman','Magnam totam nesciunt numquam ea. Eos quae cupiditate qui temporibus qui hic. Sint aut numquam adipisci architecto omnis magnam.','2022-02-15 17:47:03','2022-02-15 17:47:03'),(5,'Jarred Franecki','Hic est illum debitis unde omnis. Et enim quam unde exercitationem ut.','2022-02-15 17:47:03','2022-02-15 17:47:03'),(6,'Jerrod Ernser','Libero maxime harum voluptatem cupiditate qui quae doloribus. Eaque saepe quia enim et rerum quibusdam praesentium quo. Incidunt non sint officia dolor.','2022-02-15 17:47:03','2022-02-15 17:47:03'),(7,'Prof. Francisco Watsica MD','Praesentium accusamus doloremque harum. Nihil dignissimos facere aliquam molestiae provident. Et accusamus et est sapiente. Velit repellendus sunt et similique voluptatibus sint rerum voluptates.','2022-02-15 17:47:03','2022-02-15 17:47:03'),(8,'Lucious Rohan','Unde quod laborum modi accusamus. Voluptas quo ab voluptas modi accusamus. Accusamus sequi qui quo consequuntur.','2022-02-15 17:47:03','2022-02-15 17:47:03'),(9,'Dr. Jacinto Johnson PhD','Dolores maxime odit ut a eaque numquam ducimus. Est eos id exercitationem quia. Alias maiores vitae facere voluptatem.','2022-02-15 17:47:03','2022-02-15 17:47:03'),(10,'Hipolito Stehr','Quo libero eligendi autem non ut omnis et expedita. Aut voluptas iste ratione rerum accusantium quo. Cumque molestias tempora quia facilis dolorem.','2022-02-15 17:47:03','2022-02-15 17:47:03');
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(11,'2022_02_15_194404_create_products_table',2),(12,'2022_02_15_195222_create_categories_table',2),(13,'2022_02_15_195306_create_orders_table',2);
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
  `users_id` bigint unsigned NOT NULL,
  `products_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (101,'Zelma Huels',126,'game-7.jpg','Et voluptatem sint minima sit quibusdam cumque illo et. Fuga rem quae enim excepturi. Quidem aliquid adipisci aliquid totam. Voluptas corrupti odit sequi beatae molestiae saepe inventore.',7,'2022-02-15 17:56:45','2022-02-15 17:56:45'),(102,'Octavia Keebler',94,'game-5.jpg','Fugiat nam voluptatibus harum aliquid consequatur eveniet rerum hic. Eaque facere facilis optio omnis minus. Ut nihil tenetur nihil et omnis dolorem corrupti.',1,'2022-02-15 17:56:45','2022-02-15 17:56:45'),(103,'Mr. Herbert Roob',148,'game-7.jpg','Illum commodi et est voluptatem et dolorem. Quidem quis deleniti corporis vel quae. Recusandae omnis minus ex consequatur vel qui.',5,'2022-02-15 17:56:45','2022-02-15 17:56:45'),(104,'Prof. Johnpaul Lebsack',64,'game-6.jpg','Et laudantium voluptate blanditiis ut magni. Pariatur et aut iusto ut aliquid. Amet quia repellat est veritatis temporibus non rerum.',5,'2022-02-15 17:56:45','2022-02-15 17:56:45'),(105,'Angelita Schmidt',119,'game-8.jpg','Id exercitationem est quae commodi. Culpa incidunt odit similique. Accusamus eum est ut molestias laborum omnis.',9,'2022-02-15 17:56:45','2022-02-15 17:56:45'),(106,'Helena Kerluke DVM',134,'game-2.jpg','Iste natus ab vero. Sapiente ut expedita voluptatem vero consectetur. Odio non delectus et ratione.',8,'2022-02-15 17:56:45','2022-02-15 17:56:45'),(107,'Javonte Murray',82,'game-5.jpg','Eum illum enim est eligendi itaque. Sunt eum excepturi quos eum rem quia. Exercitationem necessitatibus deleniti quaerat ut nam voluptatem. Consequatur quisquam id consequatur voluptatem totam ipsam.',9,'2022-02-15 17:56:45','2022-02-15 17:56:45'),(108,'Otho Hirthe',53,'game-2.jpg','At qui numquam cum. Aut a corporis qui. Exercitationem laboriosam vitae necessitatibus molestiae nobis. Nostrum nam aut ipsam tempore natus molestiae.',6,'2022-02-15 17:56:45','2022-02-15 17:56:45'),(109,'Dr. Malvina Langworth Jr.',45,'game-7.jpg','Libero ad ut similique ut. Quia ipsa voluptate provident. Architecto enim possimus libero dolor sint.',9,'2022-02-15 17:56:45','2022-02-15 17:56:45'),(110,'Simeon Brekke',121,'game-8.jpg','Consectetur modi distinctio commodi laboriosam et. Exercitationem eos quos eos.',7,'2022-02-15 17:56:45','2022-02-15 17:56:45'),(111,'Muriel Olson I',66,'game-1.jpg','Voluptatem omnis et est ipsam rerum sunt iste. Odit eius aut ea iusto reiciendis enim. Ut similique doloribus aut corporis asperiores tempore ut. Aut consequatur esse ut quisquam nisi.',7,'2022-02-15 17:56:45','2022-02-15 17:56:45'),(112,'Richard Lockman II',75,'game-5.jpg','Ut ut aut dolore ut et. Rerum nihil animi illo non. Ducimus ea ut sit velit libero harum.',5,'2022-02-15 17:56:45','2022-02-15 17:56:45'),(113,'Declan Yundt',55,'game-3.jpg','Commodi ut quaerat sed exercitationem maxime maxime. Atque quia sint laudantium sed explicabo cumque. Ea iure labore alias maiores.',1,'2022-02-15 17:56:45','2022-02-15 17:56:45'),(114,'Ramona Dare',38,'game-8.jpg','Fugiat et at aliquam minima quibusdam. Aut quas unde sunt numquam voluptatem molestiae beatae quidem. Natus at ut molestiae sequi ea ut.',6,'2022-02-15 17:56:45','2022-02-15 17:56:45'),(115,'Lincoln Dare Sr.',108,'game-3.jpg','Accusamus neque et sapiente. Ipsam placeat qui eos. Nesciunt sed rem qui nostrum sint quos. Qui natus sed voluptates inventore quos ipsa.',9,'2022-02-15 17:56:45','2022-02-15 17:56:45'),(116,'Jaleel Little PhD',105,'game-2.jpg','Ea alias at architecto similique. Et beatae adipisci enim ratione et sed. Laborum ut voluptatem numquam molestiae odit.',6,'2022-02-15 17:56:45','2022-02-15 17:56:45'),(117,'Prof. Hazel Shanahan III',84,'game-4.jpg','Sit rerum nihil voluptas a. Dolorum aut sequi est recusandae. Est porro non libero saepe nesciunt voluptatem est. Atque et quae non eaque deleniti dolor.',5,'2022-02-15 17:56:45','2022-02-15 17:56:45'),(118,'Mario Kutch',70,'game-1.jpg','Nisi quia omnis id eius repellat. Sit rerum sed quas qui cumque omnis aliquam. Illum veniam autem mollitia culpa suscipit ea.',8,'2022-02-15 17:56:45','2022-02-15 17:56:45'),(119,'Monica Stanton',69,'game-1.jpg','Ullam dicta adipisci dolorem molestias. Voluptate dolor vel nemo voluptatem magnam doloribus sint. Consequuntur ut sit et neque omnis illum aliquam.',6,'2022-02-15 17:56:45','2022-02-15 17:56:45'),(120,'Prof. Tod Satterfield V',140,'game-8.jpg','Ipsa placeat ea ipsam facere magni ut. Accusamus neque aut sunt accusantium. Aut vero illo et. Inventore ut expedita velit sint iste ex voluptatem.',8,'2022-02-15 17:56:45','2022-02-15 17:56:45'),(121,'Helga Weber',116,'game-2.jpg','Aliquid assumenda dolorem non ad non ea. Non dolores dignissimos voluptatem quia mollitia dignissimos commodi. Eveniet ex est ea sit. Et illo incidunt nobis mollitia et.',10,'2022-02-15 17:56:45','2022-02-15 17:56:45'),(122,'Chester Pfannerstill',92,'game-7.jpg','Sit consequuntur deserunt debitis voluptatem voluptas ad ut vitae. Est cupiditate sed ratione maiores.',6,'2022-02-15 17:56:45','2022-02-15 17:56:45'),(123,'Kareem Schmeler',129,'game-2.jpg','Aut aspernatur nihil voluptates amet et. Laudantium distinctio et explicabo nihil. Distinctio dolore blanditiis veniam laboriosam. Corrupti soluta pariatur ut nobis architecto dolorum.',1,'2022-02-15 17:56:45','2022-02-15 17:56:45'),(124,'Mr. Harold Dach DVM',104,'game-7.jpg','Et fugit minus sed. Ut repellendus voluptatem cum neque rerum officiis reiciendis in. Ratione rem quaerat quia ipsa voluptas inventore fugiat. Consequatur laboriosam perferendis sed est.',5,'2022-02-15 17:56:45','2022-02-15 17:56:45'),(125,'Alessandra Senger Sr.',79,'game-9.jpg','Provident ut quibusdam quasi officiis. Ut labore ut aut aliquid. Laboriosam eaque fugit itaque et et excepturi.',4,'2022-02-15 17:56:45','2022-02-15 17:56:45'),(126,'Norris Olson',143,'game-1.jpg','Sed est rerum corporis voluptate fugiat cumque. Facilis cumque est ut. Voluptatum eaque sint rerum vel. Consequatur inventore expedita sequi magnam placeat cumque est.',9,'2022-02-15 17:56:45','2022-02-15 17:56:45'),(127,'Mr. Maximilian Turner DDS',68,'game-3.jpg','Aspernatur facere maiores nihil id ipsam et. Eaque distinctio est temporibus cum et porro aut. Quia voluptatem veritatis quia sed dolores.',5,'2022-02-15 17:56:45','2022-02-15 17:56:45'),(128,'Corene Thompson',131,'game-2.jpg','Neque porro libero quis quisquam asperiores excepturi id. Minus aut vel quam sit. Quo similique rem praesentium vero id harum.',3,'2022-02-15 17:56:45','2022-02-15 17:56:45'),(129,'Eula Altenwerth',143,'game-2.jpg','Libero in ut eveniet. Molestiae molestiae in aliquid laboriosam veniam rerum. Laudantium porro nihil voluptas tempora repellendus nesciunt.',8,'2022-02-15 17:56:45','2022-02-15 17:56:45'),(130,'Avery Murazik',79,'game-1.jpg','Optio qui aut dolorem nostrum quia. Officiis ipsum modi vero consectetur quia quis asperiores. Asperiores nostrum iusto a et reiciendis esse. Quia mollitia vel numquam corporis optio.',9,'2022-02-15 17:56:45','2022-02-15 17:56:45'),(131,'Jose Kshlerin',81,'game-1.jpg','Sit quis est quibusdam modi officiis facere. Doloribus et non delectus fugiat ullam libero cumque. Voluptas sequi blanditiis quidem temporibus velit autem ab.',4,'2022-02-15 17:56:45','2022-02-15 17:56:45'),(132,'Prof. Alysa Blanda',137,'game-6.jpg','Doloremque accusantium commodi magnam iure. Ad quidem quia quo rerum. Earum molestias labore est maxime eveniet voluptates. Quae aut occaecati esse maiores recusandae ratione.',4,'2022-02-15 17:56:45','2022-02-15 17:56:45'),(133,'Dr. Kristopher Shanahan',34,'game-7.jpg','Sed qui nam error qui accusamus. Aut nisi unde dolores aut. Labore quasi repellat doloremque voluptate est repellendus.',3,'2022-02-15 17:56:45','2022-02-15 17:56:45'),(134,'Keenan Blick',135,'game-2.jpg','Occaecati officiis similique soluta. Tempore provident autem blanditiis corrupti omnis. Atque laborum fugit et alias accusamus in ipsum. Nobis quae ut quaerat nihil quisquam eum.',6,'2022-02-15 17:56:45','2022-02-15 17:56:45'),(135,'Alize Koelpin III',98,'game-1.jpg','Ut voluptatem sunt repudiandae nemo perspiciatis enim neque. Sequi officiis optio inventore necessitatibus. Praesentium ut illo explicabo consequuntur quis aspernatur non.',1,'2022-02-15 17:56:45','2022-02-15 17:56:45'),(136,'Jeromy Hoeger',103,'game-5.jpg','Quo et est facilis quia. Totam perspiciatis quos sunt dolore. Ab quas quis quasi ut est qui tempora.',10,'2022-02-15 17:56:45','2022-02-15 17:56:45'),(137,'Miss Gia Gerhold',144,'game-1.jpg','Sint et deleniti nostrum fuga. Voluptates est voluptatem sit veniam accusantium. Facilis nihil assumenda accusamus reprehenderit laboriosam. Eius debitis soluta modi corrupti aut.',8,'2022-02-15 17:56:45','2022-02-15 17:56:45'),(138,'Lizeth Beahan',92,'game-9.jpg','Architecto quasi aut est. Earum odit aspernatur quis ut omnis. Vero aut nostrum esse repellat est pariatur.',6,'2022-02-15 17:56:45','2022-02-15 17:56:45'),(139,'Abbie Larkin',86,'game-8.jpg','Magni qui omnis non ipsum nihil at. Quo modi repellendus sapiente doloribus odit enim aspernatur soluta. Dolores voluptas quisquam recusandae quos assumenda odio.',1,'2022-02-15 17:56:45','2022-02-15 17:56:45'),(140,'Ms. Helene Lubowitz PhD',59,'game-8.jpg','Et itaque voluptates unde inventore eum ut. At molestiae est et itaque nisi commodi beatae. Odio omnis saepe provident explicabo.',6,'2022-02-15 17:56:45','2022-02-15 17:56:45'),(141,'Rosalind Abbott',67,'game-5.jpg','Quidem aut veniam earum error. Velit fugiat corrupti fuga minima et placeat. Eum repellat dicta neque consequatur voluptatem. Eum omnis quisquam aut officiis excepturi eum.',3,'2022-02-15 17:56:45','2022-02-15 17:56:45'),(142,'Dr. Jaquan Hegmann',71,'game-4.jpg','Qui architecto eos esse id ea veritatis. Ab et nemo animi minus. Quis unde dolorem incidunt similique.',2,'2022-02-15 17:56:45','2022-02-15 17:56:45'),(143,'Travis Considine',34,'game-6.jpg','Doloribus omnis nisi fuga quia beatae ipsum. Eligendi voluptate aliquid voluptates. Ipsum ut aliquam voluptatibus similique iusto cumque vitae. Delectus dolore vel dolor quia impedit est fugit.',3,'2022-02-15 17:56:45','2022-02-15 17:56:45'),(144,'Sophie Marks',117,'game-5.jpg','Qui aliquam amet accusantium et. Explicabo aut provident beatae atque ut sit. Debitis ducimus perspiciatis ut eveniet.',8,'2022-02-15 17:56:45','2022-02-15 17:56:45'),(145,'Aubree Mertz',30,'game-6.jpg','Dolorem quibusdam sit rem et non ut aperiam. Unde reprehenderit molestiae molestias. Sed pariatur nostrum eos excepturi placeat. Dolorem eos sed tempora eos nam.',10,'2022-02-15 17:56:45','2022-02-15 17:56:45'),(146,'Hattie Bailey',86,'game-2.jpg','Sint non ullam architecto voluptas hic ipsum dolores. Sint voluptates aut adipisci itaque modi assumenda. Voluptate rerum beatae sed sed soluta quia ipsa repellat.',1,'2022-02-15 17:56:45','2022-02-15 17:56:45'),(147,'Mrs. Kallie Rowe',86,'game-9.jpg','Cupiditate eaque et illum similique dolorem. Quis voluptatem aut qui ipsum iusto dolor. Perferendis placeat itaque porro tempora neque nostrum. Consequuntur sed iure a vero quis enim.',1,'2022-02-15 17:56:45','2022-02-15 17:56:45'),(148,'Jewel Kub',99,'game-1.jpg','Non incidunt officia voluptatem ea minima. Cupiditate sequi quia quia doloribus eius earum. Id deserunt ut tenetur cupiditate pariatur.',6,'2022-02-15 17:56:45','2022-02-15 17:56:45'),(149,'Isabell Konopelski',100,'game-5.jpg','Excepturi soluta aut aut illo error. Cumque eum eum veniam. Quia ex iste voluptas ut. Ratione laboriosam et possimus iusto. Reiciendis placeat ut illo officiis qui.',7,'2022-02-15 17:56:45','2022-02-15 17:56:45'),(150,'Austyn Fahey',85,'','Omnis dolorum harum incidunt aliquid ex nulla voluptas. Recusandae ex saepe tempora sapiente enim magni quas. Excepturi expedita dicta ducimus ipsam tempore cumque.',8,'2022-02-15 17:56:45','2022-02-15 17:56:45');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'andrei',0,'andrei@mail.ru',NULL,'$2y$10$.xTQ0oub4X37qzm/ksaPze6yOjDwAoRuVerI9bbUsbnUzXLX990tO',NULL,'2022-02-15 16:17:21','2022-02-15 16:17:21'),(2,'dima',1,'dima@mail.ru',NULL,'$2y$10$tny2feNMC3btFpijU.elNedmWaWaw.tmboe7mH3ot42YXuYEWHX6K',NULL,'2022-02-15 16:18:46','2022-02-15 16:18:46');
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

-- Dump completed on 2022-02-16  2:09:21
