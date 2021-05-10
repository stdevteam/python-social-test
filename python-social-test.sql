-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 10, 2021 at 01:55 PM
-- Server version: 8.0.23-0ubuntu0.20.04.1
-- PHP Version: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flask-test`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int NOT NULL,
  `comment` text NOT NULL,
  `post_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `post_id`) VALUES
(1, 'Libero libero dolorum aut ducimus.', 16),
(2, 'Et magni accusantium odio quia. Animi alias vel sint. Deserunt dolorem et sit. Voluptate minima dignissimos doloremque eum.\n \rSunt distinctio commodi totam. Quibusdam ad sit molestias omnis et rerum quia rerum magnam. Sed aliquam illum molestiae iure modi.\n \rEst voluptas et asperiores consequatur ut atque magnam. Aperiam explicabo rerum amet iusto iusto iusto delectus nisi dolorum. Quas sed magni cumque dignissimos. Odio dicta ad. Aut laboriosam voluptatem qui tenetur animi dolor.', 16),
(3, 'veniam', 16),
(4, 'Rerum debitis aut. Vel dolore modi.', 16),
(5, 'Quos maxime hic iure facere veniam et.', 16),
(6, 'Repellendus aut et. Voluptatem velit delectus provident earum.', 16),
(7, 'Eos eum porro laborum nemo minus quidem recusandae.', 16),
(8, 'Aut sunt id sit. Accusamus nulla esse voluptas aperiam. Consequatur quia consequatur ea in quas. Deserunt ad a tempora maiores.', 16),
(9, 'Quo ad delectus provident quisquam ut est. Similique culpa sunt qui reiciendis alias quo et ut. Mollitia quis dolores vero incidunt. Est ratione repellendus laboriosam temporibus id illum. Recusandae alias et ea omnis.', 16),
(10, 'Asperiores doloremque sunt voluptatem non aliquid. Nostrum est molestiae. Impedit id et illo facilis voluptatem. Modi officia dolorem. Et impedit ut in.\n \rVoluptatem ut accusantium perspiciatis vero veniam. Beatae itaque quia recusandae dolorem. Iste quos dignissimos veniam consequuntur voluptatibus culpa distinctio ut. Qui facilis eaque officiis aut quasi voluptatum voluptatem. Voluptas saepe dolorem doloribus a.\n \rEst sint voluptatem quia sit quia saepe nemo repellat. Perspiciatis non amet nisi veniam consequuntur nihil. Odit totam dolores illo consectetur aspernatur accusamus saepe. Nihil doloribus dignissimos corrupti officia. Labore quo sint aut optio qui repellendus autem deleniti.', 16),
(11, 'Laudantium repellat repudiandae enim quia ad.', 16),
(12, 'ad', 16),
(13, 'Ratione itaque quaerat culpa sunt deleniti.', 16),
(14, 'Aut aut eveniet doloremque sint numquam et.', 16),
(15, 'Mollitia nihil dolorum nulla numquam itaque aut consequuntur. Cupiditate labore soluta voluptatibus facere. Cupiditate at ut totam hic sequi cum. Officiis cumque ut ipsum et alias voluptatum nemo atque inventore. Nesciunt cumque maiores et molestias ipsa. Delectus amet et excepturi ab.', 16),
(16, 'Debitis accusamus rem soluta sunt ipsam. Corporis consectetur neque ullam repudiandae harum. Omnis dolor id voluptas explicabo iste ut ullam corrupti omnis. Voluptatem temporibus aspernatur dicta nisi. Animi iste id eos voluptatibus.\n \rQuaerat laborum minus sequi voluptas porro voluptas commodi ut porro. Magni repellendus minus ratione. Voluptatem laborum maxime aut repellat facilis. Ut soluta ea. Maxime numquam error qui velit in perferendis qui perspiciatis modi. Fugit possimus nam alias.\n \rIllo officiis itaque. Perspiciatis saepe minus. Nam et ut autem voluptas ad ut a perspiciatis. Exercitationem quas maiores enim corrupti rerum ullam quibusdam aut similique.', 16),
(17, 'Voluptate ut magni consequatur. Iure exercitationem molestiae possimus ullam et consequatur. Et inventore eius voluptatem. Ut voluptatem placeat dolorem totam. Quidem quo quisquam reiciendis esse. Atque id voluptatum qui qui.', 16),
(18, 'Doloribus minima consequatur nobis cumque earum quis nobis.', 16),
(19, 'Explicabo in maxime molestiae tempore rem deserunt corrupti autem quo. Eius at quod nostrum rerum eum porro delectus. Et ipsam culpa fuga. Quibusdam qui eveniet fuga consequatur consequuntur dolorum ipsum. Ea perferendis pariatur quaerat. Sed veniam distinctio aut officiis.\n \rEveniet cum consequatur inventore vel modi aut. Nobis eos corrupti aliquam. Praesentium quas voluptate dolor neque sequi praesentium.\n \rExplicabo doloribus quisquam voluptatum est dolore beatae odit aperiam. Dignissimos quidem nemo et. Nostrum qui dicta nostrum quia quod veritatis ut impedit dignissimos. Delectus officiis debitis dignissimos vel est.', 16),
(20, 'Itaque dolorem molestias nam et amet. Repellendus veritatis itaque iusto. Architecto dignissimos non repellat odio officiis doloribus sapiente omnis. Aut dolores voluptatem. Ex sit pariatur alias iusto a autem.\n \rQuisquam maiores tenetur quisquam est pariatur nemo aut voluptatem id. Perferendis non molestiae eos. Tempore quibusdam officia est et laborum iure voluptate.\n \rVelit reiciendis est dolores. Et reprehenderit autem architecto omnis cumque velit reprehenderit cumque. Iusto dolorem quo itaque ratione voluptates reprehenderit. Unde quo voluptas.', 16),
(21, 'Ipsum et suscipit aspernatur.', 16),
(22, 'atque illum voluptatem', 16),
(23, 'Quia dolor dolores dolor id eos quae recusandae laudantium occaecati. Qui ea natus. Cum qui molestiae nihil beatae iure. Aperiam repellendus modi voluptatibus nulla quae aut quae harum. Iusto est aut ipsum qui asperiores repudiandae. Animi reiciendis ducimus.', 16),
(24, 'Aliquam quos aut libero. Voluptatem debitis quia dolorem nulla aliquam recusandae nisi pariatur non. Omnis aperiam quis dolor dicta ut sit reprehenderit voluptas iure. Error ea debitis.\n \rSed eum eligendi consequatur. Velit perferendis et ipsum illum sequi reprehenderit libero. Eos voluptate aut iste non.\n \rCorporis tenetur repudiandae. Assumenda soluta iusto pariatur et sed. Eum magnam ducimus at et quibusdam accusantium quaerat rerum non. Quis voluptates aut.', 16),
(25, 'Voluptatem incidunt rem totam sapiente reprehenderit quia quo delectus.', 16),
(26, 'quia consequuntur architecto', 16),
(27, 'Molestiae similique reprehenderit numquam iste tempore autem veniam dicta.\nAmet qui fuga facere veniam rem cupiditate dolorum modi quis.\nDignissimos harum commodi et dicta voluptas tenetur eos id.', 16),
(28, 'consequatur', 16),
(29, 'Et eius nobis ullam est molestiae eius animi inventore labore. Voluptatibus ullam odio magnam veritatis aliquam rerum. Vero debitis eum consectetur placeat omnis non.\n \rAliquam voluptatem placeat nisi ducimus. Quaerat illo voluptatem earum et et. Ut ut asperiores doloribus voluptatem temporibus quisquam alias. Eius dignissimos ratione veniam ut. Alias blanditiis fugit sunt. Accusantium voluptas ipsam omnis nesciunt ad et possimus quia.\n \rCumque fuga atque ad. Ipsa non quis et eius quia et laudantium recusandae reiciendis. Accusantium recusandae nemo id. Totam dolorem iste.', 16),
(30, 'Aperiam nemo maiores in reprehenderit praesentium quaerat dignissimos quasi minima. Delectus voluptatem dignissimos ullam praesentium delectus sint minus est. Error voluptatum quis blanditiis voluptatum occaecati dolorem. Provident magni ipsam quaerat.\n \rPraesentium a ratione voluptates aspernatur consectetur. Quaerat occaecati repellat labore. Cum ut fugiat et vitae et aperiam eaque. Libero qui et. Dolor fugiat similique animi sit est.\n \rVoluptatibus iusto voluptas. Quibusdam laudantium nobis fugit quia aut. Molestiae voluptatem qui in ipsam velit quae nesciunt maiores.', 16),
(31, 'Sit quia in magnam.', 16),
(32, 'a', 16),
(33, 'asd', 16),
(34, 'asdc', 16),
(35, 'asdasd', 1),
(36, 'sdfsdf', 1),
(37, 'asdd', 1),
(38, 'asd', 1),
(39, 'asdasds', 1),
(40, 'asdasds1', 1),
(41, 'asdasds1123123', 1),
(42, 'asdasds1123123', 1),
(43, 'aaaa', 1),
(44, 'asdasd', 1),
(45, '123123123', 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `text`) VALUES
(1, 'Versatile zero defect analyzer2224', 'Illum quam aut laudantium doloribus saepe. Vel aut et sint odit non. Veniam earum asperiores aut omnis autem. Libero quia esse. Maiores qui eveniet et est harum cupiditate illo.123'),
(2, 'Distributed methodical strategy', 'dolorum ex consequuntur'),
(3, 'Visionary national firmware', 'Sit voluptas pariatur quae delectus facilis et. Aut corporis eos aut delectus. Dolor et dolor voluptatem quam fugiat. Perspiciatis sint et ex facilis odio eos debitis.'),
(4, 'Managed radical initiative', 'Aliquam nemo aut aspernatur sit. Occaecati debitis natus totam quod id ut enim sunt accusantium. Et explicabo vitae deserunt id quia magnam.'),
(5, 'Future-proofed even-keeled system engine', 'Temporibus et dolor quis similique itaque culpa deleniti. Porro in est velit ut. Voluptas cumque officia vitae vel aliquam qui ut magnam.\n \rQui fugiat ducimus sit dignissimos unde. Nesciunt facere molestias iure vel ratione doloremque ratione ratione neque. Odio officiis sed numquam dolore iusto. Est et rerum molestiae error animi blanditiis voluptas. Itaque et vel animi recusandae magnam perferendis id et est. Rerum quo distinctio dolore est incidunt cumque minima inventore.\n \rQuaerat aut aperiam quis eos ullam asperiores quia et. Dolorum quasi non sunt quod assumenda velit aliquid et. Quasi repellat in ipsa tempore sit fuga. Quasi vitae atque quia. Qui reiciendis cupiditate molestias magni.'),
(6, 'User-centric directional secured line', 'saepe'),
(7, 'User-friendly real-time firmware', 'Esse et voluptates. Ut quo vitae. Sunt ipsum sed sequi doloribus accusantium itaque est autem mollitia.'),
(8, 'Balanced maximized alliance', 'Qui amet voluptatum et eum unde dolorum ea ex at.\nDeserunt omnis consequatur voluptatibus rerum esse quia eligendi quam quia.\nId itaque qui sint sunt porro in dolorem culpa.\nDignissimos non ipsum qui deleniti aut.\nVoluptatem et fugiat perferendis voluptas et molestiae laudantium asperiores.'),
(9, 'Managed empowering functionalities', 'Quis aliquam ullam explicabo impedit soluta veniam reiciendis.'),
(10, 'Multi-channelled value-added concept', 'enim commodi molestiae'),
(11, 'Business-focused impactful website', 'Aliquid deserunt commodi optio.'),
(12, 'Automated impactful synergy', 'Veritatis fugit minus in. Facere minima facere impedit tempore qui. Repellendus sed ex voluptatibus dolor aut ea et. Id voluptatem iusto reprehenderit velit hic.\n \rVelit culpa laboriosam. Sed corporis ut similique laboriosam sit aperiam eligendi. Et pariatur veniam. Soluta sint enim enim reiciendis eum vero. Sunt porro quibusdam. Nobis saepe error aliquam debitis optio accusantium blanditiis.\n \rDolorum et cumque voluptatem excepturi autem accusantium error. Ab sit est. Molestias eos esse. Asperiores ducimus repellat temporibus voluptates consectetur et. Sint provident vel magni consequuntur nihil libero repellendus ut.'),
(13, 'Re-contextualized analyzing focus group', 'voluptas fuga itaque'),
(14, 'Triple-buffered mission-critical approach', 'Occaecati dolorem odio molestiae cumque mollitia aut quis mollitia dolores. Velit qui repudiandae possimus non quia. Necessitatibus delectus quos eos tempore fuga.\n \rQui et hic eveniet earum explicabo. Expedita magni qui culpa esse. Eveniet ut sequi nobis. Dignissimos rerum aut repellat. Facilis modi omnis. Itaque veritatis itaque eveniet.\n \rSimilique cumque debitis qui dolorum odit quo. Et vitae rerum autem aut odio. Et voluptas explicabo et natus. Sint quod qui quasi corrupti voluptas eaque sapiente aut eum. Labore amet hic culpa est cumque dolorem tempore qui.'),
(16, 'Face to face reciprocal definition', 'Expedita ad dolores accusamus. Et itaque nihil sint deserunt. Explicabo dignissimos nulla eius ipsum. Enim ab quidem et voluptatum quisquam omnis impedit illo deleniti. Asperiores facere enim aut adipisci et voluptatem voluptas doloribus.'),
(17, 'Re-engineered dynamic application', 'Libero dolorum velit dolorum qui harum omnis veritatis velit.\nNam sed nulla ratione cupiditate temporibus.\nDeleniti asperiores eius qui accusamus.\nEius cupiditate autem quia et corporis quas qui provident.\nCupiditate quis temporibus eos.'),
(18, 'Versatile user-facing website', 'sapiente cumque non'),
(19, 'Proactive multimedia structure', 'Vel sit quam nobis deserunt est.'),
(20, 'Customer-focused directional flexibility', 'Dolorum itaque aut. Voluptatibus sed dignissimos assumenda ut. Corrupti fuga et. Rerum esse similique quo quia ipsum. Non amet qui iure velit nobis sunt facilis nam.\n \rSit delectus quo eos voluptates aut non labore consequatur. Et placeat nam exercitationem quisquam et voluptatem cum. Ducimus qui rerum possimus alias earum minus dicta. Saepe quia temporibus assumenda laboriosam eligendi necessitatibus. Repellendus magnam quo omnis neque quo praesentium reiciendis.\n \rAd quo dolorem vitae a eius cum sed. Iusto sunt non in dolorem. Minus id mollitia nihil.'),
(21, 'Profound global emulation', 'exercitationem'),
(22, 'Business-focused systematic infrastructure', 'Suscipit doloremque quia suscipit id sunt. Nesciunt nihil deserunt voluptas. Alias et officia sit impedit rerum aut est. Deleniti quae aliquam iure atque. Voluptate dolore ipsam.'),
(23, 'Distributed asymmetric moderator', 'tenetur velit soluta'),
(24, 'Progressive regional Graphic Interface', 'Optio unde corrupti eos id.'),
(25, 'Optimized composite monitoring', 'Est odio ut accusamus perferendis. Quae corrupti aliquam ratione et. Fugit blanditiis praesentium. Ex sed deserunt velit sit alias qui quibusdam.'),
(26, 'Down-sized systematic moratorium', 'perspiciatis'),
(27, 'Integrated national paradigm', 'Magni non maxime atque vero. Ut et quidem doloremque esse modi. Maxime aperiam vel. Ipsum eius debitis nesciunt amet.\n \rFuga tempore veritatis perferendis praesentium doloribus nemo unde dignissimos. Unde libero dolores voluptatem accusantium consequatur perspiciatis dolor. Aliquid et molestiae accusantium et. Ad assumenda rerum minima omnis dolore et vero magni. Et cumque tempora voluptatem ullam voluptates harum dolorum maiores. Non omnis laudantium aut modi magnam eveniet commodi.\n \rConsequatur fuga eum ea aut vel quidem recusandae. Praesentium est rerum inventore ut. Consequatur id aut eaque sed fugit voluptas quisquam maiores et. Quis qui quis dolorem. Illum porro quisquam qui exercitationem animi fugiat ut rerum architecto. Possimus eos dicta.'),
(28, 'Exclusive zero administration flexibility', 'Aut dignissimos autem eum iure et.\nReiciendis sunt nobis ea animi autem.\nIpsa animi repellendus ex maiores illum.'),
(29, 'De-engineered clear-thinking knowledge user', 'Aspernatur quis ab perferendis ut aperiam ut. Quod ipsam accusamus non sed minima praesentium exercitationem. Perspiciatis aut tempore. Et porro tempore voluptatum rem ut. Cum modi esse repellendus est.'),
(30, 'Universal maximized hardware', 'et'),
(31, 'Extended stable internet solution', 'Impedit harum et eos ipsa aut in. Error in molestiae quod rerum alias sit consectetur tempora. Ut aspernatur nulla exercitationem. Deleniti nihil enim nemo tempore qui eos perferendis. Iusto ab error nulla consequatur perspiciatis.\n \rSed est voluptatum labore est dolor. Voluptates eveniet est nostrum aliquid a blanditiis sunt sint vel. Fuga est perferendis et consequuntur omnis enim fugiat.\n \rError et itaque aut quaerat aut. Est laboriosam placeat qui culpa nam aliquid. Earum dolore quam ipsa omnis praesentium.'),
(32, 'Intuitive secondary algorithm', 'Vero et ducimus error.'),
(33, 'Quality-focused client-driven support', 'aspernatur quia et'),
(34, 'Reverse-engineered bi-directional service-desk', 'Qui corporis exercitationem iste necessitatibus sint sed dolores rerum.'),
(35, 'De-engineered multi-tasking structure', 'Illo illo qui a fugit occaecati quod sunt aliquam. Qui explicabo inventore nihil sed et enim tempore itaque velit. Eaque nesciunt facilis qui eum eveniet debitis nisi.'),
(36, 'Re-engineered logistical attitude', 'Minus provident laborum error aut quos.'),
(37, 'Customer-focused methodical array', 'nobis'),
(38, 'Enterprise-wide asynchronous forecast', 'Aut voluptatem totam fugiat repudiandae quo recusandae. Consequuntur quis deleniti. Harum id id tenetur in corporis ipsam impedit corporis. Eum ad quaerat.'),
(39, 'Integrated client-driven project', 'Minima cum quia soluta sed autem officia eius.\nSimilique et nesciunt quo voluptatem veritatis eaque illo.'),
(40, 'Configurable zero defect middleware', 'porro itaque placeat'),
(41, 'Phased mission-critical instruction set', 'Qui placeat et sed beatae est voluptatibus modi eaque voluptates. Eligendi et totam sunt autem ullam voluptatem aut. Sequi incidunt et ab nulla facere corporis minus. Amet laboriosam asperiores eum nesciunt fuga.'),
(42, 'Multi-layered global archive', 'Nihil harum facere blanditiis adipisci natus dolorem dolor et aut.'),
(43, 'Universal 5th generation definition', 'autem asperiores sint'),
(44, 'Cloned contextually-based intranet', 'quis quod modi'),
(45, 'Synchronised optimal ability', 'Aliquid fuga quo cumque sit est dolorem veniam debitis. Sequi molestiae quam cumque quam qui odio quia.'),
(46, 'Balanced executive architecture', 'nihil'),
(47, 'Centralized background array', 'quam molestiae eligendi'),
(48, 'Operative value-added moderator', 'placeat'),
(49, 'Enterprise-wide user-facing internet solution', 'Occaecati magni consequatur illo. Molestias et neque qui ipsam ut quasi reprehenderit dolores. Voluptas nihil culpa dignissimos et sit sunt perferendis aliquid. Dolore voluptatibus cumque id. Impedit neque officia quibusdam illum dolore.\n \rNam aut quo aut. Totam in est temporibus officiis minima molestias temporibus. Eligendi libero alias nobis ut dignissimos quo. Sed recusandae iure perspiciatis amet.\n \rReprehenderit maxime et ducimus quae officiis optio est. Quae saepe quod totam. Distinctio non maiores debitis provident qui et fuga. Perspiciatis exercitationem qui sed animi. Amet illum culpa voluptatem maiores.'),
(50, 'User-friendly web-enabled workforce', 'Vitae non illum ex nemo.\nEveniet rerum minima consequatur voluptas laudantium ut sit quidem autem.\nEum laborum minima incidunt sed assumenda minima beatae.\nId eaque rerum omnis earum.\nTempore atque ipsa explicabo ea quia nemo harum vero veritatis.'),
(51, 'Re-contextualized upward-trending utilisation', 'dolor voluptatem incidunt'),
(52, 'Universal systematic function', 'distinctio dignissimos molestiae'),
(53, 'Multi-channelled directional hub', 'qui'),
(54, 'Re-engineered optimal internet solution', 'Doloribus in commodi quo debitis rerum. Autem officia tempore. Voluptates veniam laboriosam. Perspiciatis dolor labore quibusdam qui velit qui saepe.'),
(55, 'Synchronised client-server strategy', 'Ad quo est eaque quis excepturi dignissimos. Reprehenderit dolores soluta maxime eos omnis aut rerum hic commodi. Et nulla sit accusamus id qui perferendis aspernatur cum explicabo. At sunt voluptatem fugit quae placeat et. Et et qui quas quidem ea doloremque vel minima.\n \rTempora autem mollitia doloribus consequatur. Ea quibusdam repudiandae quae consequatur excepturi. Suscipit odit quo exercitationem voluptas. Quia ullam necessitatibus voluptas. Eos consequuntur ut. Velit vel beatae quia ullam.\n \rNihil qui ipsam velit architecto. Maiores suscipit quae dolores debitis fugit. Recusandae non voluptas eos pariatur. Ut rerum hic tempora qui dolorem.'),
(56, 'Automated clear-thinking adapter', 'Cum reiciendis laudantium.\nRecusandae natus aliquid est illo beatae in.\nQuo distinctio amet aspernatur quae.\nDistinctio minus rerum cumque numquam rerum.'),
(57, 'Customizable 24 hour array', 'Minus illo repellendus sint laboriosam cupiditate aliquid. Quam dolores vitae. Rerum sunt ut quas iusto commodi quis sunt. In dignissimos excepturi ad quisquam debitis eos odio eveniet nulla.'),
(58, 'Phased impactful process improvement', 'Quasi alias molestiae.'),
(59, 'Ergonomic mobile circuit', 'Et earum quasi illo beatae pariatur tempore.\nNemo est est pariatur dolor voluptatem neque esse sit.\nVoluptatum deleniti eum illum nisi aliquid.\nEt officia ex dolorem modi et fuga.'),
(60, 'Quality-focused high-level intranet', 'Quia porro mollitia non sunt accusamus porro veritatis suscipit eius. Vel voluptatibus qui rem qui earum qui velit ea. Ducimus ipsam exercitationem optio aut minima qui saepe ut. Earum est ut vel blanditiis quos. Et dolorem rem qui ex sit beatae nihil praesentium. Aspernatur consectetur et illum reprehenderit modi odit eos ad.'),
(61, 'Automated hybrid artificial intelligence', 'maxime illum aliquam'),
(62, 'Synchronised solution-oriented success', 'Quaerat qui natus ut consequuntur omnis. In quaerat voluptas. Molestias molestiae tempora magni non eveniet dolores quam deserunt dolores. Inventore assumenda sit quia repellat neque consequuntur velit. Consectetur sit omnis. Dolores omnis aliquid tempore possimus.'),
(63, 'Ameliorated analyzing neural-net', 'et necessitatibus quis'),
(64, 'Diverse zero tolerance task-force', 'Est voluptatibus nisi.'),
(65, 'Down-sized tertiary open system', 'ut'),
(66, 'Configurable analyzing toolset', 'Distinctio tenetur ea eius voluptatibus maiores reiciendis ab eaque qui. Aut dignissimos est. Ut officiis reprehenderit. Iusto veniam ipsa doloribus. Voluptatem eius quis sunt et ex. Aliquid ut voluptas eos et.\n \rEx inventore est provident voluptatem dolor qui consequatur est dolorum. Dolor est hic culpa dolores dignissimos eveniet sunt. Sapiente consectetur mollitia eos totam dignissimos consequatur autem cum corporis. Sit ea voluptate voluptates voluptate.\n \rConsequatur nemo vitae nesciunt non velit eos reiciendis ut quam. Est dignissimos cupiditate ut in. Laborum qui rerum id est doloremque ut magni. Autem temporibus quam ea reiciendis harum dicta rerum dicta. Molestiae quaerat alias.'),
(67, 'Universal user-facing middleware', 'Deserunt magnam quis aut iusto est veritatis. Ea necessitatibus enim non ipsam. Molestiae dicta rerum aperiam. Magnam qui qui fuga et.\n \rA dolorum porro molestiae culpa eos dolores sapiente. Voluptates temporibus esse facere officiis. Voluptates quo perspiciatis. Aut cum nisi fugiat.\n \rCorporis qui corporis et qui vero. Sint ipsam vel eos quis error odit hic excepturi id. Ut et sunt itaque repellat dolor quis quam aut ut. Autem eum aliquid. Ab veritatis cumque omnis eos molestias debitis.'),
(68, 'Visionary human-resource firmware', 'Illo mollitia non repellat ut quisquam quod doloremque praesentium est. Harum pariatur blanditiis et fugiat error et at et saepe. Omnis iure quia molestiae.'),
(69, 'Fully-configurable interactive complexity', 'Animi cum nisi unde aut.\nDoloremque non sunt officia sint totam.\nFugiat ratione excepturi.\nSit at minima ipsam minus unde explicabo et atque.\nNam modi reprehenderit quia nesciunt id molestias aut id.'),
(70, 'Front-line optimal Graphical User Interface', 'Odio perspiciatis quia nesciunt exercitationem voluptas nisi.'),
(71, 'Cross-platform eco-centric array', 'Repudiandae aliquam beatae maiores sed sunt. Id fuga rem placeat amet ut. Rem quia est vitae reprehenderit. Provident sunt assumenda corrupti officia provident amet ut magnam ut. Ut impedit animi ut.'),
(72, 'Adaptive intangible capacity', 'Delectus eius hic ea. Itaque ea ea nemo sed. Id quos velit et placeat iusto. Facilis ullam autem ex modi ab.\n \rRecusandae quas commodi ut animi accusantium praesentium rem eos. Possimus illo aliquid ipsa quos nulla ut ea. Vero autem corrupti.\n \rId veniam ea nesciunt rem dolores rerum nam. Est odit dolore eum neque. Quod unde et repudiandae repellendus facilis. Error atque molestiae quam. Omnis aut sunt ratione.'),
(73, 'Synergized zero tolerance workforce', 'Atque esse quia totam vel cumque.\nQuasi repudiandae ab veritatis vero adipisci voluptas est.'),
(74, 'Operative neutral encryption', 'Ullam est ut facilis autem et est animi. Vero est harum et et qui ullam. Et vero illum quisquam ut. Aliquam animi alias aut adipisci. Ut ut et in.\n \rAut expedita praesentium voluptatem. Soluta tempora ducimus vel et aut quasi vitae consequatur provident. Sed blanditiis consequatur et. Reiciendis alias laborum. Illum autem deleniti. Laboriosam consequuntur necessitatibus nam eius et sequi.\n \rNecessitatibus sit odit facilis. Occaecati error earum mollitia nam sed inventore omnis aut. Eum cupiditate atque non doloribus praesentium et voluptatem illum. Vero maiores autem numquam esse accusantium magnam voluptatum porro dolores.'),
(75, 'Inverse systemic forecast', 'Eligendi veniam sit dolor ut quis. Eveniet suscipit aut aut ea assumenda. Saepe et unde alias dolores quos.\n \rImpedit laudantium neque ut nesciunt. Officia consectetur sunt soluta dolorum expedita id inventore quo. Ex saepe numquam nihil ad qui corporis tenetur. Error pariatur sed omnis laudantium possimus nisi fugiat sequi dolore. Nemo ratione commodi architecto.\n \rOmnis magnam est consequatur et libero doloremque. Omnis nesciunt et perspiciatis. Aut corporis laudantium totam quo doloribus aspernatur eveniet qui ratione.'),
(76, 'Multi-layered explicit moratorium', 'voluptas ipsam minus'),
(77, 'Mandatory modular protocol', 'possimus'),
(78, 'Automated real-time synergy', 'Corrupti dignissimos aut deleniti corporis minus harum placeat. Alias dolorem dolores delectus necessitatibus omnis voluptatum. Pariatur sequi aut. Non necessitatibus debitis adipisci sed autem accusamus.'),
(79, 'Devolved tangible frame', 'Nisi maiores tenetur. Quae et vel enim laudantium molestiae animi hic.'),
(80, 'Advanced didactic concept', 'Deleniti et et facere modi aut. Voluptatem aliquid eos vero nihil quos neque iure in et. Modi ratione dolore et quisquam fugiat incidunt. Dolorem molestiae omnis ipsa aliquid dignissimos.'),
(81, 'Proactive bandwidth-monitored productivity', 'Est aspernatur optio vero. Blanditiis ipsa sit et sint dolores. Impedit minus omnis voluptas tempore et maxime exercitationem amet. Voluptatem deleniti temporibus nihil ad accusantium. Et pariatur quibusdam porro unde.'),
(82, 'Enhanced hybrid emulation', 'fuga'),
(83, 'Secured regional hierarchy', 'Optio sunt aut. Voluptates veritatis a. Consequatur eligendi architecto sint unde similique optio blanditiis. Dolorum dicta vero ipsum eveniet excepturi cupiditate saepe.\n \rNulla rerum explicabo hic iusto et. Recusandae et blanditiis. Vitae architecto nesciunt.\n \rRem qui qui atque tenetur aut pariatur a expedita veniam. Iste ea eligendi iusto aspernatur velit sunt dignissimos qui officia. Voluptas non eum unde molestiae et voluptatum illo voluptas. Aliquid nihil aut. Voluptas molestiae doloremque optio.'),
(84, 'Automated composite policy', 'Quasi at ut ad quia quae ea. Sit aut similique asperiores tempora ex voluptates distinctio et. Est ex iure ut iste. Ut voluptatem voluptatem eius. Numquam dignissimos illo explicabo consequatur.'),
(85, 'Multi-lateral dynamic collaboration', 'Sed sequi rem. Libero laboriosam velit ut libero. Adipisci sed doloribus assumenda et.'),
(86, 'Re-engineered logistical leverage', 'debitis ab non'),
(87, 'Multi-tiered bottom-line project', 'Quod amet et minima. Omnis accusamus perspiciatis voluptas ducimus mollitia harum. Dolores necessitatibus perspiciatis ab voluptates soluta quia aliquam voluptas. Sed dicta dolores architecto eaque ex nobis totam. Mollitia praesentium quasi repellat nobis consequuntur cum sint.'),
(88, 'Ergonomic bi-directional installation', 'Rerum consequatur dicta nam.\nEst voluptas quod alias sunt et rerum blanditiis aut autem.\nNihil unde reiciendis consequatur.'),
(89, 'Devolved responsive task-force', 'Velit voluptates maxime qui aut ut et soluta. Aut ab officia quia ipsa illum nam assumenda sit. Eaque alias quo repellendus quia. Quia velit et est fugit.'),
(90, 'Grass-roots bifurcated utilisation', 'dolor mollitia dolorem'),
(91, 'Proactive client-server secured line', 'tenetur quis eos'),
(92, 'Proactive radical productivity', 'Modi eos quae. Molestiae culpa molestias non saepe ducimus nisi dignissimos sint alias. Quam reiciendis ut.\n \rFugit atque sint praesentium ipsam omnis tempore tempora laudantium dicta. Inventore unde ipsum aut nam. Est et repellendus nemo eveniet.\n \rEa nemo doloribus molestiae sit atque. Ipsam architecto pariatur quae non vitae eius similique asperiores aliquam. Cum veniam tenetur.'),
(93, 'Exclusive multi-tasking analyzer', 'quos est dolorem'),
(94, 'User-friendly 5th generation parallelism', 'Id excepturi laudantium nemo maxime consectetur adipisci.'),
(95, 'Optimized fault-tolerant architecture', 'Omnis ut cupiditate.\nAutem voluptatum natus enim eius sapiente molestiae.\nModi ipsam ut dignissimos nemo reiciendis placeat dolores.\nSit modi vitae voluptatem at inventore.\nUt et adipisci alias.'),
(96, 'Universal exuding instruction set', 'Ut praesentium quasi in. Inventore voluptatibus quaerat et ea quo alias. Asperiores omnis eos ipsam veniam. Nobis nostrum laboriosam. Non amet officia.\n \rUt enim eum aut. Non velit placeat inventore aliquid molestiae. Quo dolor expedita ipsam ut tempore iusto.\n \rEos sit voluptates. Harum officiis ut quas sed accusamus voluptatem fugiat nihil nemo. Sunt ab earum cupiditate est officiis cumque. Sit earum numquam dolore sed commodi ullam dolor temporibus voluptate. Dolores et totam at omnis corporis quae.'),
(97, 'Seamless responsive analyzer', 'et voluptates ut'),
(98, 'Profound high-level system engine', 'Labore sed aut ullam.'),
(99, 'Proactive 4th generation project', 'Cupiditate et temporibus ducimus earum. Corrupti similique quaerat optio accusantium. Nulla enim amet et soluta facilis eum quod. Aut quia eius. Asperiores ut iusto corrupti tempora recusandae alias. Rem eos et.'),
(100, 'Profit-focused encompassing middleware', 'Distinctio unde est omnis modi est. Omnis modi nesciunt explicabo. Et voluptatem distinctio et rerum voluptatem labore et. Ad qui ab sed.');

-- --------------------------------------------------------

--
-- Table structure for table `reactions`
--

CREATE TABLE `reactions` (
  `id` int NOT NULL,
  `reaction_type` enum('1','2') NOT NULL DEFAULT '1',
  `post_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reactions`
--

INSERT INTO `reactions` (`id`, `reaction_type`, `post_id`) VALUES
(1, '1', 12),
(2, '1', 12),
(3, '1', 12),
(4, '1', 12),
(5, '2', 16),
(6, '2', 16),
(7, '2', 16),
(8, '2', 16),
(9, '2', 16),
(10, '2', 16),
(11, '2', 16),
(12, '2', 16),
(13, '2', 16),
(14, '2', 16),
(15, '2', 16),
(16, '2', 16),
(17, '2', 16),
(18, '1', 1),
(19, '1', 1),
(20, '1', 1),
(21, '1', 1),
(22, '1', 1),
(23, '1', 1),
(24, '1', 1),
(25, '1', 1),
(26, '1', 1),
(27, '1', 1),
(28, '1', 1),
(29, '1', 2),
(30, '1', 2),
(31, '1', 2),
(32, '1', 2),
(33, '1', 1),
(34, '1', 1),
(35, '1', 1),
(36, '1', 1),
(37, '1', 2),
(38, '1', 2),
(39, '1', 2),
(40, '1', 2),
(41, '1', 1),
(51, '1', 1),
(52, '1', 1),
(53, '1', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_foreign_key_post_id` (`post_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reactions`
--
ALTER TABLE `reactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reactions_foreign_key_post_id` (`post_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3977;

--
-- AUTO_INCREMENT for table `reactions`
--
ALTER TABLE `reactions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_foreign_key_post_id` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reactions`
--
ALTER TABLE `reactions`
  ADD CONSTRAINT `reactions_foreign_key_post_id` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
