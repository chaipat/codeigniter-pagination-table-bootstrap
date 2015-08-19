/*
SQLyog Ultimate v8.8 
MySQL - 5.6.24 : Database - ci_pagination
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `books` */

DROP TABLE IF EXISTS `books`;

CREATE TABLE `books` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `author` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `books` */

insert  into `books`(`id`,`title`,`author`,`description`) values (1,'All the Light We Cannot See ','Anthony Doerr ','\"Open your eyes and see what you can with them before they close forever.\"\r\n\r\nFor Marie-Laure, blind since the age of six, the world is full of mazes. The miniature of a Paris neighbourhood, made by her father to teach her the way home. The microscopic layers within the invaluable diamond that her father guards in the Museum of Natural History. The walled city by the sea'),(2,'We Were Liars','E. Lockhart','A beautiful and distinguished family.\r\nA private island.\r\nA brilliant, damaged girl; a passionate, political boy.\r\nA group of four friends—the Liars—whose friendship turns destructive.\r\nA revolution. An accident. A secret.\r\nLies upon lies.\r\nTrue love.\r\nThe truth.'),(3,'City of Heavenly Fire (The Mortal Instruments #6)','Cassandra Clare ','In this dazzling and long-awaited conclusion to the acclaimed Mortal Instruments series, Clary and her friends fight the greatest evil they have ever faced: Clary\'s own brother.'),(4,'Yes Please','Amy Poehler','In Amy Poehler’s highly anticipated first book, Yes Please, she offers up a big juicy stew of personal stories, funny bits on sex and love and friendship and parenthood and real life advice (some useful, some not so much), like when to be funny and when to be serious. Powered by Amy’s charming and hilarious, biting yet wise voice, Yes Please is a book full of words to live'),(5,'Big Little Lies','Liane Moriarty','Big Little Lies follows three women, each at a crossroads:\r\n\r\nMadeline is a force to be reckoned with. She’s funny and biting, passionate, she remembers everything and forgives no one. Her ex-husband and his yogi new wife have moved into her beloved beachside community, and their daughter is in the same kindergarten class as Madeline’s youngest (how is this possible?). '),(6,'Landline','Rainbow Rowell','Georgie McCool knows her marriage is in trouble; it has been in trouble for a long time. She still loves her husband, Neal, and Neal still loves her, deeply — but that almost seems beside the point now.'),(7,'The Invention of Wings','Sue Monk Kidd ','Hetty \"Handful” Grimke, an urban slave in early nineteenth century Charleston, yearns for life beyond the suffocating walls that enclose her within the wealthy Grimke household. The Grimke’s daughter, Sarah, has known from an early age she is meant to do something large in the world, but she is hemmed in by the limits imposed on women.'),(8,'The One (The Selection #3)','Kiera Cass','The time has come for one winner to be crowned.\r\n\r\nWhen she was chosen to compete in the Selection, America never dreamed she would find herself anywhere close to the crown—or to Prince Maxon\'s heart. But as the end of the competition approaches, and the threats outside the palace walls grow more vicious, America realizes just how much she stands to lose—and how hard she\'ll'),(9,'To All the Boys I\'ve Loved Before (To All the Boys I\'ve Loved Before #1)','Jenny Han','To All the Boys I’ve Loved Before is the story of Lara Jean, who has never openly admitted her crushes, but instead wrote each boy a letter about how she felt, sealed it, and hid it in a box under her bed. But one day Lara Jean discovers that somehow her secret box of letters has been mailed, causing all her crushes from her past to confront her about the letters: her firs '),(10,'Station Eleven','Emily St. John Mandel','An audacious, darkly glittering novel set in the eerie days of civilization\'s collapse, Station Eleven tells the spellbinding story of a Hollywood star, his would-be savior, and a nomadic group of actors roaming the scattered outposts of the Great Lakes region, risking everything for art and humanity.'),(11,'Everything I Never Told You','Celeste Ng','Lydia is dead. But they don’t know this yet . . . So begins this debut novel about a mixed-race family living in 1970s Ohio and the tragedy that will either be their undoing or their salvation. Lydia is the favorite child of Marilyn and James Lee; their middle daughter, a girl who inherited her mother’s bright blue eyes and her father’s jet-black hair. Her parents are dete'),(12,'Mr. Mercedes (Bill Hodges Trilogy #1)','Stephen King ','In the frigid pre-dawn hours, in a distressed Midwestern city, hundreds of desperate unemployed folks are lined up for a spot at a job fair. Without warning, a lone driver plows through the crowd in a stolen Mercedes, running over the innocent, backing up, and charging again. Eight people are killed; fifteen are wounded. The killer escapes.'),(13,'I\'ll Give You the Sun','Jandy Nelson','A brilliant, luminous story of first love, family, loss, and betrayal for fans of John Green, David Levithan, and Rainbow Rowell '),(14,'Cress (The Lunar Chronicles #3)','Marissa Meyer','In this third book in the Lunar Chronicles, Cinder and Captain Thorne are fugitives on the run, now with Scarlet and Wolf in tow. Together, they’re plotting to overthrow Queen Levana and her army. '),(16,'The Storied Life of A.J. Fikry','Gabrielle Zevin','On the faded Island Books sign hanging over the porch of the Victorian cottage is the motto \"No Man Is an Island; Every Book Is a World.\" A. J. Fikry, the irascible owner, is about to discover just what that truly means.'),(15,'Maybe Someday (Maybe #1)','Colleen Hoover','At twenty-two years old, Sydney is enjoying a great life: She’s in college, working a steady job, in love with her wonderful boyfriend, Hunter, and rooming with her best friend, Tori. But everything changes when she discovers that Hunter is cheating on her—and she’s forced to decide what her next move should be.');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
