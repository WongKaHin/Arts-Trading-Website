-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: test
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board` (
  `會員id` varchar(45) DEFAULT NULL,
  `會員名稱` varchar(45) DEFAULT NULL,
  `產品id` varchar(45) DEFAULT NULL,
  `評論內容` varchar(45) DEFAULT NULL,
  `分數` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES ('12345','1234','imp-1','不錯',4);
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buy`
--

DROP TABLE IF EXISTS `buy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buy` (
  `會員id` varchar(45) DEFAULT NULL,
  `產品id` varchar(45) DEFAULT NULL,
  `產品名稱` varchar(100) DEFAULT NULL,
  `購買數量` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buy`
--

LOCK TABLES `buy` WRITE;
/*!40000 ALTER TABLE `buy` DISABLE KEYS */;
/*!40000 ALTER TABLE `buy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `count`
--

DROP TABLE IF EXISTS `count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `count` (
  `count` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `count`
--

LOCK TABLES `count` WRITE;
/*!40000 ALTER TABLE `count` DISABLE KEYS */;
INSERT INTO `count` VALUES (6);
/*!40000 ALTER TABLE `count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `ID` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Phone` varchar(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES ('12345','12345','1234','0912123123','s123@gmail.com','12345'),('234','234','234','234','234','234'),('2345','2345','123','123123123','123@gmail.com','中原大學');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `會員id` varchar(45) DEFAULT NULL,
  `產品id` varchar(45) DEFAULT NULL,
  `產品名稱` varchar(45) DEFAULT NULL,
  `day` varchar(45) DEFAULT NULL,
  `payway` varchar(45) DEFAULT NULL,
  `單價` int DEFAULT NULL,
  `數量` int DEFAULT NULL,
  `total` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES ('12345','imp-2','日出‧印象 | Impression, soleil levant','2022-06-16','貨到付款',10000,1,10000),('12345','imp-2','日出‧印象 | Impression, soleil levant','2022-06-18','貨到付款',10000,2,20000),('12345','imp-3','草地上的午餐 | 法文：Le Déjeuner sur l herbe','2022-06-18','貨到付款',10000,1,30000),('2345','imp-2','日出‧印象 | Impression, soleil levant','2022-06-18','貨到付款',10000,1,10000),('12345','imp-2','日出‧印象 | Impression, soleil levant','2022-06-18','貨到付款',10000,2,20000),('234','imp-2','日出‧印象 | Impression, soleil levant','2022-06-18','貨到付款',10000,2,20000),('234','imp-2','日出‧印象 | Impression, soleil levant','2022-06-18','貨到付款',10000,2,40000),('234','imp-2','日出‧印象 | Impression, soleil levant','2022-06-18','貨到付款',10000,1,10000),('234','imp-1','星夜 | De sterrennacht','2022-06-18','貨到付款',10000,1,10000),('234','imp-4','食用馬鈴薯者 | The Potato Eaters','2022-06-18','貨到付款',10000,1,10000),('234','imp-4','食用馬鈴薯者 | The Potato Eaters','2022-06-18','貨到付款',10000,1,10000),('234','imp-4','食用馬鈴薯者 | The Potato Eaters','2022-06-18','貨到付款',10000,1,10000);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `產品ID` varchar(45) NOT NULL,
  `產品名稱` varchar(100) NOT NULL,
  `作者` varchar(100) NOT NULL,
  `價格` int NOT NULL,
  `圖片` varchar(45) NOT NULL,
  `種類` varchar(45) NOT NULL,
  `內文` varchar(1000) NOT NULL,
  `庫存` int NOT NULL,
  PRIMARY KEY (`產品名稱`,`產品ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES ('imp-2','日出‧印象 | Impression, soleil levant','奧斯卡-克洛德·莫內 | Oscar-Claude Monet',10000,'assets/images/product/product1-2.jpg','印象派','莫內這幅與「蒙娜麗莎」齊名的「印象．日出」，是 1873 年春天在法國海邊阿弗赫完成的，而「印象派」之名的產生，更是取自這幅畫的標題。 莫內是描繪一個橘紅色般的太陽正緩緩昇起，水面上有三艘小艇，其中一艘僅能模糊的看出來，幾條線條表現出波浪的形狀，完全沒有過份的誇張。看到太陽掙扎著想要穿過濃霧，我們的想像開始被挑動。就歷史的記錄性或繪畫本身的藝術性而言，這幅畫都稱得上是無價之寶。',988),('imp-1','星夜 | De sterrennacht','文森·威廉·梵谷 | Vincent Willem van Gogh',10000,'assets/images/product/product1-1.jpg','印象派','1889年12月23日，梵谷在與高更的一次爭吵之後，因思覺失調症復發而割下了自己的左耳，用手帕包起後送給一名妓女。隔年5月8日自願前往普羅旺斯地區聖雷米的一家精神病院治療，在那駐留了108天。在入住精神病院期間，梵谷創作了大量的繪畫作品，共計一百五十多幅油畫和一百多幅素描。在此階段的繪畫，梵谷的畫風開始趨向於表現主義，作品充滿憂鬱精神和悲劇性幻覺，其中作品《星夜》正是其中代表之一。作品《星夜》是在醫生允許梵谷白天可以外出的條件下所創作，而其作品所描述的風景也正是精神病院所在地聖雷米。',999),('the-1','最後的晚餐 | l ultima cena','李奧納多·達文西 | Leonardo da Vinci',10000,'assets/images/product/product3-1.jpg','文藝復興','以往《最後的晚餐》刻意渲染哀痛氣氛，眾門徒各自陷入沉思，猶大遠離眾人，彷彿他的罪行已經確定。但達文西獨具匠心，選擇了耶穌用餐時，宣布座中有人要出賣祂、眾門徒大為震驚的那一刻。 在耶穌右邊的一組中，我們看到一個黑暗的面容，他朝後倚著，仿佛從耶穌面前往後退縮似的。 他的肘部擱在餐桌上，手裏抓著一只錢袋，我們知道他就是那個叛徒猶大。 猶大手中的錢袋是他的象徵，這使我們想起，他就是為耶穌和其他門徒保管錢財的人，錢袋裏裝著出賣耶穌得來的三十塊銀幣的賞錢。即使他沒有拿著那只錢袋，我們也能通過達文西的繪畫方式，辨別出這個罪惡的敵人猶大。',1000),('uki-3','相馬舊王城 | 相馬の古內裏','歌川 国芳',10000,'assets/images/product/product2-3.jpg','浮世絵','這幅畫取材於江戶時代通俗小說山東京伝的《善知鳥安方忠義傳》，故事述說在日本平安時代，一位叫平將門的將領舉兵起義，反對天皇的統治，即「平將門」之亂。平將門後來在幸嶋郡北山一戰時身中藤原秀鄉的鏑矢而戰死，其後遭到斬首。在他死後，天皇對平將門的家族進行肅清，由大宅太郎光國領兵。平將門之女瀧夜叉姬是一名陰陽師，繼承了平將門的遺志，利用所學妖術奮起反抗，要為平將門報仇。',1000),('uki-1','神奈川沖浪裏 | かながわおきなみうら','葛飾 北斎',10000,'assets/images/product/product2-1.jpg','浮世絵','日本浮世繪畫家葛飾北齋創作的木刻版畫，出版於1831年至1833年間，是冨嶽三十六景系列作品。該畫以富士山為背景，描繪了「神奈川沖」（即神奈川外海，現橫濱市神奈川區對出的海面上）的巨浪掀卷著漁船，船工們爲了生存而努力抗爭的圖像，是葛飾北齋的代表作，也是舉世聞名的日本藝術作品。該作品出版時印製了數千幅，但現存於世的估計僅有數百幅，部分收藏於大英博物館、大都會藝術博物館、東京國立博物館等大型博物館。',1000),('the-2','維納斯的誕生 | The Birth of Venus','波提且利 | Sandro Botticelli',10000,'assets/images/product/product3-2.jpg','文藝復興','波提且利為義大利畫家，在十五世紀末的弗羅倫斯畫家中，波提且利雖然不一定是最具影響力的，但可稱得上是最具有個人風格的一位。其作品特色涵蓋了生動有力的寫實主義，以及閒散鬱悶，反自然主義的狂熱。 在作品中，以線條優美，有節奏及表現希臘神話為題材，具仿古傾向而著稱。這也是十五世紀弗羅倫斯畫壇上大致的風潮。 1485 年以畫布、蛋彩創作的「維納斯的誕生」，畫家將情感以柔美的輪廓線，來描繪希臘女神的誕生。創造了一種具感情的、女性的優美和諧的氣氛。',1000),('imp-5','船上的午宴 | Luncheon of the Boating Party','雷諾瓦 | Pierre Auguste Renoir',10000,'assets/images/product/product1-5.jpg','印象派','雷諾瓦在創作這幅油畫期間.時常逗留在夏圖富爾奈斯老爹的河濱旅店裡.那是船夫和他們的女友常常光顧的去處。畫面上飯已吃完.吃剩的東西構成一幅美麗的靜物畫。 雷諾瓦把朋友和模特兒安排在畫面的各個角落：用手托著下巴的少婦是「美人兒阿爾方申」.她是旅店老板的女兒；與小狗玩耍的是畫家心愛的模特兒阿林．夏里戈.畫家很快便要跟她結婚。站在雷諾瓦的畫跟前.觀眾總有一種融入畫面共享歡樂的感覺。 雷諾瓦的畫.構圖跟電影畫面一樣.能使觀眾感到與栩栩如生的畫中人物十分貼近。這幅畫在氣氛上.主題上.創作意圖上堪與「煎餅磨坊」媲美.但畫中人物輪廓清晰.並沒有沐浴在日光中.融進背景裡。 與此相反.涼篷外面的河上景色.則完全是用印象派手法畫的。雖然畫家一絲不苟.精心構思.但畫面卻全部保留了雷諾瓦在七○年代作品中那種可愛的不拘形式和溫馨的情調。',1000),('imp-3','草地上的午餐 | 法文：Le Déjeuner sur l herbe','愛德華·馬奈 | Édouard Manet',10000,'assets/images/product/product1-3.jpg','印象派','《草地上的午餐》用色細心，試圖表現出鮮麗的感覺，可從前景衣物色彩的變化、裸女膚色與男士衣裝色彩的相互襯托中看出。此外，《草地上的午餐》呈現的明暗交錯顯然已注意到光的變化，使它被視為印象派畫作的先驅。該畫背景沒有深度，幾乎沒有陰影，給觀眾的印象是現場不是發生在戶外，而是在一間畫室內。繪畫風格與當時盛行的學院派傳統決然不同。馬奈沒有試圖隱藏筆觸，這幅畫的部分場景似未完成。裸體女子與卡巴內爾或安格爾作品中肌膚光滑無瑕的女性相去甚遠。',992),('sur-1','集體發明 | Collective Invention','瑪格利特 | Rene Magritte',10000,'assets/images/product/product4-1.jpg','超現實主義','1934年馬格利特閱讀了奧地利小說家卡夫卡的名著《變形記》，受到書中所描述景物的啟發，創作了這幅《集體發明物》。遠處遼闊的大海，海浪拍岸、波濤洶湧。在近處的沙灘上躺著一條半人半魚的怪物。上半身是魚身，大大的眼睛、長長的魚嘴；下半身是人形，兩條腿光滑、細長。如果說是美人魚，在我們通常的印像中，美人魚都是人身魚尾，看上去漂亮、美麗，惹人遐想。而馬格里特一反常態，徹底顛覆了這個形象，給人一種啼笑皆非的突兀感覺，可是你又無話可說，彷彿進入了一個與人世迥異的奇特、夢幻世界。',1000),('sur-2','雙重秘密 | The double secret','瑪格利特 | Rene Magritte',10000,'assets/images/product/product4-2.jpg','超現實主義','《雙重秘密》這件作品創作於1927年，那正是馬格利特超現實主義風格日漸成熟的時期，也是馬氏創作生涯中對神秘主義表現得最為直白的階段。從作品風格上看，該作品應當創作於9月中旬馬氏遷居巴黎之前不久，因為此處的人物形象已然具有其表現立體感的手法。在這個不小的畫面中，「兩個」男女莫辨的人物形象出現在波光粼粼的海邊，右側一條看起來仿木板的色塊暗示出窗框的效果，使畫面因層次而具有縱深感，人物形象也因此不再平貼於海面。',1000),('imp-4','食用馬鈴薯者 | The Potato Eaters','文森·威廉·梵谷 | Vincent Willem van Gogh',10000,'assets/images/product/product1-4.jpg','印象派','梵谷早期最出色的作品之一.《食用馬鈴薯者》完成於 1885 年.這是他這期間在魯恩逗留期間觀察和工作的產物。在海牙居住時.由於工業化.城市貧民區的居民被驅趕到礦場山底下工作.他們的悲慘處境帶給梵谷很深的印象.所以他就著手畫一系列習作.描繪他家附近田間和村莊裡的人物。梵谷這個時期雖然深受荷蘭畫的影響.但是.他拒絕走該畫派感傷主義的老路.去描繪星期日身著盛裝的農民.反而是力求表現農民艱辛的現實生活。 為了追求這種意境.梵谷選用了灰暗濃厚的色調.以此體現家境的寒苦。他又以蒼勁的筆觸.刻畫人物布滿皺紋的面孔和瘦骨嶙峋的軀體。桌上懸掛的油燈構成畫面的焦點.昏黃的燈光灑在農民憔悴的面容上。背景敷色稀薄淺淡.反襯出前景中的人物形象。以此看出.梵谷力求表現在光的映射下.幾種色調變化的效果。',992);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-18 15:55:27
