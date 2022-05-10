/*
SQLyog Ultimate v12.5.1 (64 bit)
MySQL - 10.4.22-MariaDB : Database - db_onandcoffee
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_onandcoffee` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `db_onandcoffee`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `adminID` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(225) NOT NULL,
  PRIMARY KEY (`adminID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `admin` */

insert  into `admin`(`adminID`,`username`,`password`) values 
(1,'OnandRoy5872','05a775b365e659a64fdc35afac58bef0');

/*Table structure for table `cerita` */

DROP TABLE IF EXISTS `cerita`;

CREATE TABLE `cerita` (
  `id` int(25) NOT NULL AUTO_INCREMENT,
  `judulcerita` varchar(100) NOT NULL,
  `deskripsicerita` text NOT NULL,
  `gambarcerita` varchar(100) NOT NULL,
  `tanggalpost` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

/*Data for the table `cerita` */

insert  into `cerita`(`id`,`judulcerita`,`deskripsicerita`,`gambarcerita`,`tanggalpost`) values 
(2,'2nd Anniversary Kedai Onand Coffee','Dua tahun sudah kami berjalan dalam dunia perkopi kopian ini ... terima kasih atas support yg sudah diberikan.. harapannya semoga kedepan nya kami akan menjadi lebih baik lagi..dan tak lupa pasang keyboard bongkar untuk kalian para orang dalam dan penghuni lapas nusa kambangan cabang balige sektor ONAND COFFEE. Sekali lagi terima kasih banyak, tanpa kalian kami tidak akan bergerak maju...oh iya besok kita bakal kasih nih harga spesial buat kalian semua...horas perkopian Indoensia salam kami orang dalam','','2020-12-01'),
(3,'New Signature â€œKOSU ONANDâ€','Akhirnya selesai juga persiapan menu baru buat para orang dalam â€œKOSU ONANDâ€ salah satu signature dikedai kitaâ€¨Siap diederkan!!â€¨Kalian bisa delivery atau take awayâ€¨Apalagi nongkrong sama di kedai kita...\r\n.\r\nKAMI TUNGGU PARA ORANG DALAM DIKEDAI KAMI .','','2020-05-24'),
(12,'fdsr','mmnbv','432-2019-06-25.jpg','0000-00-00');

/*Table structure for table `infoproduk` */

DROP TABLE IF EXISTS `infoproduk`;

CREATE TABLE `infoproduk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jenisProduk` varchar(100) NOT NULL,
  `namaProduk` varchar(100) NOT NULL,
  `hargaProduk` varchar(50) NOT NULL,
  `deskripsiProduk` varchar(200) DEFAULT '-',
  `gambarProduk` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4;

/*Data for the table `infoproduk` */

insert  into `infoproduk`(`id`,`jenisProduk`,`namaProduk`,`hargaProduk`,`deskripsiProduk`,`gambarProduk`) values 
(1,'Biji Kopi','Espresso Beans Lintong','','',''),
(2,'Biji Kopi','Filter Beans Tapanuli','','',''),
(3,'Biji Kopi','Filter Beans Lintong','','',''),
(4,'Biji Kopi ','Filter Beans Kerinci','','',''),
(5,'Biji Kopi','Filter Beans Sidikalang','','',''),
(6,'Biji Kopi','Robusta Beans Sidikalang','','',''),
(7,'Minuman Panas / Dingin','Kosu Onand','15K / 15K','',''),
(8,'Minuman Panas ','After Sex','20K','',''),
(9,'Minuman Panas / Dingin','Black Mamba','20K / 22K','',''),
(10,'Minuman Panas / Dingin ','Klepon','20K / 22K','',''),
(11,'Minuman Panas / Dingin ','Kacang Ijo','20K / 22K','Kacang Ijo',''),
(12,'Minuman Panas / Dingin ','Red Velvet','20K / 22K','',''),
(13,'Minuman Panas ','Ocean Blue','18K','',''),
(14,'Minuman Panas / Dingin ','Latte','18K / 20K','',''),
(15,'Minuman Panas / Dingin','Capuccino','18K / 20K ','Cappuccino adalah secangkir kopi susu yang berasal dari Italia dan mulai hadir di Eropa dan Amerika sejak tahun 1980-an. Secangkir kopi cappuccino memiliki perbandingan espresso, steamed milk dan busa','67-capucino.jpg'),
(16,'Minuman Panas / Dingin ','Espresso','15K / 18K','',''),
(17,'Minuman Panas / Dingin ','Espresso Susu','15K / 18K','',''),
(18,'Minuman Panas / Dingin ','Sanger','15K / 18K','',''),
(19,'Minuman Panas / Dingin ','Mocca','22K / 25K','',''),
(20,'Minuman Panas / Dingin','Aeropress','20K / 22K','',''),
(21,'Minuman Panas / Dingin','Choco Latte','20K / 22K','',''),
(22,'Minuman Panas / Dingin','Caramel Latte','20K / 22K','',''),
(23,'Minuman Panas / Dingin','Vanila Latte','20K / 22K','',''),
(24,'Minuman Panas / Dingin','Americano','15K / 18K','',''),
(25,'Minuman Panas / Dingin','Matcha','20K / 22K','',''),
(26,'Minuman Panas / Dingin','Vietnam Drip','15K / 18K','',''),
(27,'Minuman Panas','V60','18K','',''),
(28,'Minuman Panas','Japanese Ice','20K','','');

/*Table structure for table `jamoperasi` */

DROP TABLE IF EXISTS `jamoperasi`;

CREATE TABLE `jamoperasi` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `hariOperasi` varchar(20) NOT NULL,
  `jamBuka` time NOT NULL,
  `jamTutup` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

/*Data for the table `jamoperasi` */

insert  into `jamoperasi`(`id`,`hariOperasi`,`jamBuka`,`jamTutup`) values 
(1,'Senin','09:00:00','23:00:00'),
(2,'Selasa','09:00:00','23:00:00'),
(3,'Rabu','09:00:00','23:00:00'),
(4,'Kamis','09:00:00','23:00:00'),
(5,'Jumat','09:00:00','23:00:00'),
(6,'Sabtu','09:00:00','23:00:00'),
(7,'Minggu','09:00:00','23:00:00');

/*Table structure for table `lokasi` */

DROP TABLE IF EXISTS `lokasi`;

CREATE TABLE `lokasi` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `lokasiBerapa` varchar(25) NOT NULL,
  `namaLokasi` varchar(200) NOT NULL,
  `gambarLokasi` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

/*Data for the table `lokasi` */

insert  into `lokasi`(`id`,`lokasiBerapa`,`namaLokasi`,`gambarLokasi`) values 
(1,'Lokasi 1','Jl. Patuan Nagari No.89, Pardede Onan, Balige, Toba, Sumatera Utara 22312','591-lokasi1.jpg');

/*Table structure for table `masukan_customer` */

DROP TABLE IF EXISTS `masukan_customer`;

CREATE TABLE `masukan_customer` (
  `idMasukan` int(11) NOT NULL AUTO_INCREMENT,
  `namaCustomer` varchar(50) NOT NULL,
  `emailCustomer` varchar(50) NOT NULL,
  `masukanCustomer` varchar(200) NOT NULL,
  `tanggalPost` date NOT NULL,
  `gambarCustomer` blob DEFAULT NULL,
  `adminID` int(11) NOT NULL,
  `ratingID` int(11) NOT NULL,
  PRIMARY KEY (`idMasukan`),
  KEY `adminID` (`adminID`),
  KEY `ratingID` (`ratingID`),
  CONSTRAINT `adminID` FOREIGN KEY (`adminID`) REFERENCES `admin` (`adminID`),
  CONSTRAINT `ratingID` FOREIGN KEY (`ratingID`) REFERENCES `rating` (`ratingID`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4;

/*Data for the table `masukan_customer` */

insert  into `masukan_customer`(`idMasukan`,`namaCustomer`,`emailCustomer`,`masukanCustomer`,`tanggalPost`,`gambarCustomer`,`adminID`,`ratingID`) values 
(1,'Hendrik Schicke','hendrikschicke@gmail.com','Good coffee for you, the civilized one','2021-07-27','ʐNG\r\n\Z\n\0\0\0\rIHDR\0\0\0~\0\0\0~\0\0\0⣥ɜ0\0\0	pHYs\0\0\0\0\0ڜ\0\0\0sRGB\0ώꜰ\0\0gAMA\0\0я��0\0mىDATxݽYԤב&秮ҧ垻\nŝ AфԬ$܅ߩNئڵ6=/mcƷމ��쎺ؙى$3I#ʹgڛش$A v\n֦{ݻϑ￮DfUaaKԠ2Ԝ"cڷ_?��ÿ۝Ϳ̆ױώ\\b࠼_Q֔e)��	UUE忴ݗTy��戤ѓ_A߳��ŀࠢ+ѳί9ǄЛ҇p��ܟ܇࠹𞯌ރoӻI񷴉בɛՔeſȺ󜜢wvl𼾯˴򼾽񵘇贃ܯ븋йϷẍ}Y݈֯5龔ܿ%��'և𬤍ə듞l򟽯GBޞ̚\r~O~׿ĝƴMeıcXݙ~#ߘ\\Xą䀼{˷Q񦣾��ޱ࠯̝c#?Φ;ynQ|}|Ĺ&׊ػHʝߑ|Ӽϻ��\n��|-׹	d*xپD޻|ŶA7Q֧򵵝OA픴񺓦.ܡ�wǽÆǢĕޯ܂(x纬,B߳\05򔚸Oߗàa้hɮ\0. 7ֈߜ}ɓ��ØȆŉz̡čޫ䝽dᯜr6Ҳ��ނZ\'��Ѧ��ڗ7寋p⤅\0ܮk՜rWke\"ףϻMq⒈ߘ{,޽\nӢZ쏃H򵦭%ݙ彠uƻɕэOŊ֬�̗ﬗ {髶٭��؛r->͘¸޸SJs޼־֖��\nDՔЃōɎ,՝̧Ѐ[￲٫��ә\\<\ZÇ	ؾۏζroeI.ڐʹЪL܈̚��,܎ր߭۫ĀـB	RBе3KEʼ]֥^7ԥ\"ŉʿ󳓬 ࠿ޥ򹉰bيbΆȞt,׻ҫv��|ܓ渕©⯳ڮ|܁ퟙ�H\0СÃ󟐰$5ۅ󭊬ĞpX8򴟟ż/-ť^V䞏aS糾Q1��hڪqэZ~ٳ<Ti��☤\"J!�зό]`䙈`i˪I`ݒІqΙˡ֤݌kKŗL��ϧé!,]Ɠפ֘77̕ڱ`@tǳOk��񠰻�Y²T}>ƞQRܸ߼܀ݸ\"±��ɿئ~ݣ.鿚��lѹ0ەIѼ𾔷ۈ->~朧\\Ԯv8��͊�54ϐ\r#Є񋞅7ԼA㩞0ٴϮ\n۝h:j󫦳҂Dۡج	֢CԆF0ը0ࠟ͟˥Bh.ܷ࠼|Ú-ѡWࠢLĹДݙʷʨҒUɗJ~ּՐ㌷꾴ʰꔾƻ?PӖռ(	k\06C||㥟򓖰ҫ^\\GҜՄ��񿪃`nۅCҬL��1��õũب֠��HĜr皥$��׫㸩p|H߬ңʄퟖ�,ߕАÜr醧ۊMfSєѰůֲʼ]򹕬y8ʮڒ.񖷬vʭࠬC੾?��ã Ɇy·-bv��8̬𓀯҈:օμЭ;6,q\"nكJMܸ𥭱/(\\ַdS˹Lԇ{ձ͕kօӎǳڴҀʜnۜnם㒠6yԗ8Лօϴۋ{й񳏾߁е\0Սgs2ݛ?gԐh˴!(AJ\03֍��~IڲӽͰBĂ}#󥍩࠿Ϸ,8w��ʿǟ˹��[s׭$1ʜ'\rА̃آuYΞN^4Ϛj̴Щjޠݻ6ՠNro{O��R|Բ϶ܔ﷨0gw\\!F㙦Ń;ΒDbY¹3ʸ񶣱z%`Ɇ焫A_´Vș_6梏Ηի󱛰񏸄ܻi͇೵,\nѨ>_	`@ࠗز\Z鎑ݙ؜Fԍk=ȱpbiŅ[iۈ>Nܷ֜\6`\\ϠɡG��撠f`N折Ι×Tafڄ񮉒^Nڜ"1Ҝ00a.,\']ࠠƿəw��5ퟒ�ջ|ӏZ��ʿࠫqwӆ硺؈=h􅊏pθࠕ๒ӥHmВ̐ʰ\r,!Ѭq𿪐@Vܙ༼đAô\0Ϊæ󺥦\0i͟Eثί݁Ivk񖎼󣿾͖��ݜ'ۖԏ��qഉߢ��%ÝWWٰ桙6Sޖ`ĦKΦ\'ULC܍|Ə!ܐĭҌ+\\܊`yҜ0a񑲱󔲛��jꆅ`X}󌹨Ć-῏񵉷��ｖ࠻��󞂥s\0ع6ͬҎU\\��1 Ӵз̭%4X��񀐓۰8Gp	Ԏ1\ZΤڛۣ򔂫/ݬʬ<$>ŕhPǻ\"߄ҕ~Òλ`4Wߦ慢`IׁҲZ��G}ݍιܾ~R Λᣯǻ\\޻s൷@��&��߯J@Â6ћnӶzߕ0Ûݚ{ȁ撅Iʟ!s/̀䲅f,cڸ{<e¢ܝh+߼ˁἚDη焊ڝ&o|&fdVςy��򶉮🚋��N׮��П��˟��盳ͺ͔۬qæθ󋒉zX̢	aהT|Sݽ6gЇ-ԲѪd,񽻑σˮ>Poۜ0\0􄌵ʀ�ПǨD࠮hߜ椯ݐ߿E=)<ȯݽCV󓞉����ѵۻՎڸyxԍ3|7򸵋梕aԌ#ҊཱsҰ` ҄f4ތ)ޚƖ왆#وs󫙤o)ۛHÃłRΝȜ\5��󸳻l9/n�阂ݟ򄣯��dվQ��񵑰ÜZЇq臎!ޜHV֤eԠͅں0ԴƘݕJjܮuτϑeťFpɾޢZ4䔼ܕɝj䆜\ԞoS1M(ړݡ̬kӿͽ߯fGբ{-��ǽ࠹>ø򽿞܉S����ÿ��Aґ𜮠ߛͦ0PSʜZռႸт<ގ̖W;ܱ`ľ~ևğ(͟qNj݀lS~2L<Pک{ȣ\Zs`ǑƜ0CԜ۷&࠯?IN��ފӲԇ}}Tѹ߿ڣRvȏ9^ĥ	ќeʯ��˯Ŝ"V>쀰^ۻ)͉\rJ{\0	$ŕ!ѻЦʹ/ fM챘߳ٵ_ԩ񻕬қ]rՃB��ͱSv䶆܇yiퟚ�ȴ{��ᒁu��򓩹ʈ󮀯ِě\n̏񄨞ʏp.|͵ǝ	t��9��A˰dí䑈ъࠔѱ8��շW˩%_Ưüć/댍-֐ʇĐԀ❜ČĒҜ'捝3ȶ⽞̫)ǉ޵@͕їэ/gC򙒡[% ȫؗGۊx䓁/œq!ꓥ/\'±М܅󛺑}ʯܝνȠ˿фDKc)Lŝ񂒮˜��̭͠\Z7_p)nʲnCפѹJ󲗐_*ZaՋVӊ𯀨\nנ.Ӕ\'.=ą󩮥ŢͦƞHÁ󈃺ﰈZݞeݎ53υdɁ×;ّޞ;ŝñกֹ]ζOB˰Τ?^̢ñ��ϯѼųטAlޜ\|NX��｀͕+�݄Ɔʚl˒ܣʂҠߙӪX\nMM䆩H͂׊ա!ւ^2揩â՜r߃ݾ~߆aﲞ(��h\0ࠚ◝񧏫�û��ӏJ\\򦞎浪ɷߊݳǨߘrǕà&ޟt8䓡Ո~��Y^򣤋ãѧܱcWk[dؕϦVK΄Ƥ!<��°Pۨg; !8R۩&fKQAbպ㏂zN֮^ՆȖRŭH\näة%פշE򁬊ӧׂƟɔXH򱹫ɓ*I΢ɩ𸎏ZI����Ƈ]̧hn{ٿ@￱\r܉\Zࠒ̿GBRЭUݞTī拗ͩ-Ԃ55j/\\Xނ�ęӴ0kԩ䜰#jJí!㾧@ިʠ*nήޜ'7ϏHU&e!⮦ÁD-ϸLY4޴g.ã\nb򄘜Z7\nˎڋݘġɜ0Rɍ&ȦɈa\"ﰹѭ|̭䞃ڽHȌ˞ق׌\\ѾӢȏ%.��CdKȢ@ȱŜk��Лؓ[^߮ʯ\np$˪��!ㄻۇ۱%/��֢Վ\0rߣࠆ֠\0Хض񆫧ϓ˚\Z��֯ɖxђ쑊׭X?opܓюԝɜ`J󣙯tEã!oܦ۹ѡǳۺ&\rڹ0jօ\'ƅ]>َ̛뇵˕Q4iÆ[1ms\nFތɣ͹uòǨ煑݇ʗ-6��\r̙ޜ\߶RސX��̗ӉXкKM߭5\Zq֣i4˵Ӝ"ܫvʊ0NǬʆ��Fաdϴz��׎?@Yԃ󉄶V6hmkӺݵꞾE�z܅ϼrǶǅ��眭ǐ@сǈ̑Ō&Lͷwhʁ㡔Č῜rǴx{ՇԡЪּ֬L3~.@\"غĔ0G߿ǦƐQTNã\\h֨һbƒ$򴣾٦ȜrXՌMs毑]ͤrTo֛ ̬ȿ4ﱪғĶѾҒ쬟l}ü6ΪhÅػɹ6XS⥭i/޿ю)[ȂͶ1��Ϲ}訑 ٤��Ҕܸǟzƞ󆟐ėƒέȐ\ZǦ؟ґ͛Գ<ĽW細̰ӡخ񤄷å>��5ߌŘM񊹳˞s͐Y򂍅ͨb!	^iɱ4ȇ׸_ʖցׁ\"̕\\ʯůJ IĄ%L/ࠢWaŃۼڈ8ېʬ·SͲƳɐčo|:2ڙVՕK׌ǚi��íпŒӸލӀV*Ʌɛ\Z5܌OͽXї嫝Ь(ܫȵ/ֱ;\'>G:@\0㧊ʣ��{��bΥ\r\rƘËi<p͕׬ʁ\\ɀЬɁŢ̏1B@`ߙ孩Ԑl҈ܗȼтФƠV򆔥8F⏅(,.<,nR5I[ߴwI��Ý4>~.܃˦})eƾPg눉ߗ؆GvΩP]ͮj]ȶסȷ֬h3*\\ܙ\nX̦q憸˘b֢٩jeu҂ͼÝ堾՚~��񟡆Pʇٛݠ޷ئSʿ7W	ѝfԣQؖ&ϊ~e)鈂ْǜѐ喭:؍׈Ăh:]ՊߋNAʟύmd𸕴ڸ0~ِ®��K\ZIŬ@\"��Y(aʪF!Л˺,%α\0Ѣǎ暬ڌ⋩]ȉ\nK)BP)	ڪǶ/bֈ۔z䂩V\nԤԜ⫝ـ߫īڅ瘩8-ŗʜڮ<ص%$\n̍z7@üwbڰ
6Gà馁H��B󤒴ܘ,H)ߎأ꨺3HLm\"yn��m맂eېo\"h`��𗪜"4Sh<H\\ࠒԻ鑜ԌlC ؖ(JPF۾UӬ#։y󝤹٣ꊁE%;3:-ȉwz݉Ɯ'Ù۟Y以>ȄÁ ̅|	?ϛ_V��dUؿ!Ϟi񳬝Cҩ|,\\ЃҫڃȚ?Ǽnԭ��\\٠ ثǙofJꐄÔ{#(˹YË{뢷˛-4Rs��ޛ،żY򡜮ƍ󍴔ëɥ&`Ao]SݐXϵZ_ۡƖҘ̨a˜yq%��ƖP۩̫Uoͭ)i䲭PԪe:ٳ 灧̏Y/Ÿ��ʕˉרڈUȵJp᪔3ɋbɅ厕ퟮ�˥|JK��Ą姆̭DԈMغ\0Á̟ә_RŢդ;Ùnޜ\\'έmڢSC,|D&gf;nǆڷȿ擖\'⮴з+rǍȋ⸿泔\'ەɧ񚦜IN1ࠠ􅱔𶧄م*H۔ܙ5wx񽈫t蜀ޗƱ񧜱؎W֜0#kԦˎސ>αl&לM{맥\\ēʈ̑Ɍ=婳_ܱ\nhޞ@ȒL͂W��๱WAӛԂзӧƷG孫WȓδM3Föo5i׃iɼƉ˼uŇ˗؍N2G	3ﶎɄ؜'*ǲ͋Sӌ́��Bƒܡ|d~۷2hlgUn!Pʞ҈`4󜰝ݨ6gpPt}y&Ύ󓇣>}-\\ڳK`΋BjЈΜ\ӱbׁĠűh\n؉񏷬�CЉեB��9°ޕ3Qى,؜rʪԸ\\4+򦻱)]ࠁ4S19]Œͥ4ƱЌ\Zآ۱Ď_ս̛hfqхsʢ=ąቓ𑳐Y!D5/\nʳ-Ӆؔ؄CƼVΌڈؕ͜rޯ2a؈b$˱؜'վ?ӘĮ!ɥΙږ\Z9]fȢȣBpF>񷹯攲eаѶ>ݮ$Wի^jه@Ț0G~HE\"󃭻۵r1܀ۜn��Ԋ¯īޣ񘀐Ɂԓː4Ӛȫ7ʧĎݤ교㣔D(փ_��ďeڠh0\'��晜Z!]Ԛ䤮ӠśBÅ(°u΃Qݱ4cpϭnnj񉜮ħxƂ-}Tِ8I]Ȯ񴔧צ࠷Aɛϥ؋ن��ŋģʇ뎐r,҈𜧎Xڀōyԧ35?xǌUh7EҬϜrǇO/ӘxӥJԼ9GǪĞÝ$肗֜nH뢪Պ@ĮږԪJя뷾Fú誐řGФȲ}Ԅq.ذVڜZ\r֌ǝʩÑ߆񚃡̴Eqǳ,޻򡖇-$斗DԺɵ࠻ʰOݼ4ͭمmޭ��=m1ߤgOݲ)棾,ȥW{QpܸΔ!e򶖛鈪C֣n(Lƒ:+fʌ噸ŨԌ}\n*@łΑٳ4uɴ<bDƚFǑA&ɞԨI:ɃﻨˋkSSߝ٫򥫢IUڢXpٲ	qȣM[UJ\rű򹱦ɊδRٟW⽲%RRځ˽t6BǐF|a}ղ٨ڗ?ۡ6XxʘZÇ݄��߷ɷ{ɂUs+|ݸݐ儨ٓJҌ)쪦ׂϗɩ\rгӤױ끅.ޟ_𒃖ީ!½ӊn/|	��c؄X3~y1𘝫5E헻ު��Ĥ;-Җu֍ؕ4s싡Ȧޒ\Z��]=#χ񯕙9,ؓ뻜l馵ֱӐӇҵڜƨB*k۴ǿ��ϣ?񵸔˩KҴˈԭ҈fZ׵́^Q؅&\Zلh߮𬗛˜˟��pДŉve,ژ՘۹ǁءʶ댜"x󉈩k(ٴܼCdɌȣEڨ҈Ӛ	7٦H��uAӨZU񄚅̪Nݷ����=~\ȑaէH󻌜r؊Ԏ(��םtڰٗbпZJuwלsއؠѥjϐ4񦫛d_ЕrڲՐΘpEӒZ(ڈ߯񈃌偀֦%f˴й`𯜢֡^ɸ9A֟9X0嗸爍;՛捄ƆΪ𨋂s]EkA\'¤��_ԉ࠽ބܺԪKD۪։CX𨂒5ڐ̉eϢЖ[ږѕ㽏u\'Ƒ#y͔jpY貐𦇯ڵ҉׹nؑ=bĿ=쯩CҤ9��9рӼL\\\0ݮƣҤ��6ŪŖdڧr˲˶ʦި،;2Թנճ⤦Ѡpګ_\núۦϓӖ>ҟ䟎	ɽ~y΢󄷈dׄK֚捌˄$Z1!ð��WΩ�#չ䖄\0|˯󺴁ЗÖ\\CZ~ŴҘJƾ\Z5 ˤXw?g :Ϛ2daΏ4υGŠȲ��?Y0ҁۺ͉18ʋiV!,ݰ3ΓD!\nȖ{.\nؓбΜ"̝%ױN˰I\"ý}0˳biٗ$V≚K^$uŅuՐXLɎ?~Ե3!/ퟚ�\Zv᯦s򄛎°Әʪsy˞ʶխV猁&͛Waҕ䢺Ә5ۆײơh$ۧ-@PX򒈉,Xݶḣrȿk7P͈$\ZF~݈ܼم%\03>\Z,\0:Jޜ"ā}=\"̖4+ʥ͋gڣ[ب :ڙ	rɔʜ'ZۑLǗ֥XЫͣf診i9;ƹ8F݌RҚɾ)Ϭ}M묃ʖ-ʫTќZZղҥƋjŔعڣۧյ̝��꿵Ƒإۺ䚨ɥۖٚz𡩮I7eVZ꟝穩J3ߗۼeN\"{)ճưGiNpЌL{ዞ״õֿW汳i7ۣ+h鬜"t/\r󬖠βUɶӪ㊜Aֵܩ*栙&ZǅfaVڹ[MbΧ:ūv\nȸ૾Aŭkԏ딘<S؜0ԽŮزƔβAˢ;˘)r橽pdϩ׈ӋҺȽRڻĸ҇ʿӱǢ#״<ʓڮۭ¬؆ltܧްJDԘkZ͆BS<ڗ8X\nܱ𿘼۾?ِZޘzͪ(Tô=ȋ{ȪcS>Ӳ&Yğ+b1擴OЂ	ڡ;Ө1ɶjǞݬԶ\Z㖫)ʹr걻k1bڭѪq汖M1ҹ\Za!߹ݐطȴп㢔zԖ* גCȪոŷ̻ͣݑ՗ĆӌUքޑǓ껫̈́+>eZޏA宫𸍯ޜ\P呱z.СqΦ֤ܢͼܒȷX0硒ƘǒĬ4U񾶋21˅dƋ&|?ۈ鲙숱ы˹ӄŷۤA\n񻘍fļP	ޗ׻ƪ1!(H\"_Ӑ1ĠƜ]$Ȫ6玞ӗ{��ޝhњ;лɤdA<ф\0rک&ؕAU[󑥘쀶팹҇:״򕁽򁐮쌩ێeAKэ*θw泊.aXfEϞڴ;WلꞺТ񓕈ё8ʢ.Еѱ甿yࠀƬnY͵0ʴħot鍣_þ񇨽࠻.GTMǓٰ݉B&jퟛ�KaS燲ȁ��?*͒ͤd0،	D獼ȋέAڠ)ߴʘʙ\0Ҡ[Eë֦JҦ\rюr��U򒣫��o6vV	؜rLӁмx`	Jȕه%t(टΛÑbD?љȯ>ފ7޶��{жҭZɛʨթоɉ[ߘE[񘰤ʁ[ݑ耥ժ\Zükև#ϏϣʿԼÊqҥՎeܵh񄵔ʴҽֶ?󭺳��˧ɽᱺ򿿷4ܛrԜ\[P%!H$��5߃ۈс֗bUᴁӎĿퟗ�񞕟ѨũcЪ˂Iܩ*Ѕ晲	\'uR*[m\Z򻿴ߏן>E؎wȗל_58ȸ)˓xH@ֶ`��KƅhϝǬ܆栎͏ϫї׍˿ﴳ󧜚��򲣛��򕛻4ܟPӿCfЄ̄ȝiR؏ʣ,1×̓3̅=٦ڠࠂ쮳a@.?t絥ԫˆ?봌Z=򅯑񜧾GEë,؟$ؘշ9\"fjѯ̸x ~dRȋ ʽؕ\'EЄ7OȜ0Z)r)ީ񆁵 ǿ;MӤ-$��ZڀB1񜜵۱k淚ۦS��@࠹��Ғ7CؐDQ雥LީЁ\rȇ!򆓜\\nw֟#زڷK\n6氟Ürvƣ`޼ܣѪ/GN7驇Wı䇇h\Z¥/㢵˒\n)ؘK쒭»Ďo˳s𺧼ܡu筻��ʯ����ܼ Kˠt^ɿ߁ۗ.Ӧ\'Й��KҘזYjͭSu��񃕄}sʙБ݉扂ݔŐ#Ɛ2\'­ͺȴE\nƥC8k쥉˸\0^ǵh\"Jc{ޞ9Ǔלcݦ��џi˞ߪP3A񲐜"ʨuȺE\"肀ҙ~lۛ˧(ﮋƻϫЕԭާՕֱȜ\9ۏnIzʔuų(єt*θVey􌋾󈺍]ӃÂZA$hѻ̙LՏĺ%qܮQLǣX2骧ޙy_kc7��ׯlΛ։��\ǹۥ7Sǈ,iꍛκM��ٜ\\\0^˹x�薐ɡĄ׵S¸Զd܅kҹܙ ߈$ȯڈď3��ࠏ󢾕7ϓ虂e^Oְʏͬ٘ʋ̪ֆ΃玿[ʳ늞𳜐γe	y#_9ÖŭÒ̇ƻJ%ǯm6񻡖!X]GŐcN+ŇOАo΋7Ϙ𹽕Ξ[\0?!مՖІ\05~жnŔӀxN$w8ſߍɻlퟤ�񸮼ħO_߸zK̈́	 rࠠ˦߄^0.NGS*ګ\"ݍγ4߽͟ۓyΤܽƿ4>[؋ZՈ딭,:¼5ʳҡs\'uů%_345㫸`񶳧谘˷WHK㤬[Yq\'b��'ǠÞȸ|iԏޓВ׮+]Ā9,? ퟢή뛌ИدP1٨��-@\"ԫ\rުǗԤͪ͡Ng8<>$\Z\rY󥘑Ӝ0׀sCDñtȮ\0\"̉΂ՖS��ӣ۱ؘȯϮ޷^(Ύ��ԾҁӓҘҴΒؙҜ0q~ʎξĜZ0Ӻ~&ĺՎݰȒMسڌ��ɨg󂶓̊łݕ+ߥSFȬGɓ,?~ўáЊ_>��䉞��̏ƴ˖[eOנۣΈF:ܙ˙㲡p˴Ѷ%ô򊨀ѰFζ>䣓PΝBl8٭8\n!,ʯ\0ʖ񺟺ף��А7A.©ڥ()LӀǄG̨ۅ\\qƁ׊ޓիฐퟜ�_>z[.=p^\\¨ީ��ښ浥Ͽ࠲ƧݾЖۼԘފ˰%\nֳB90Ǭkܸэׂ	K,ج1?ȩ=̽��ࠠ𼽤M����џ\\jR؉Ά׈`)Ӛz/ƦcȸJ6=5W˖ʩl缽J{ȵӥLֺ͙V٘˫ȝܠꡀ⪊fќZƐ휛287֭ݹ	bڸݝoӈ֩򭉿捰w崀?Sk��ԆҴVr{B݅妪CݪЊatۆͩǳDyޓ4ٔ-`D6তL=^ȁOǵۤ4]Nd9᪲洘ɫ&շ޻Éأ󙭊36p6ڊЂKeܵӾ6ڙuè2ǛӞ6~��ƛȒ?ǹĉ쿾񳧩KϬ0l馹Hv\0I]cۭvo^֜êX\r̩T˷ѷٷg\rrǊlөyYWǝͨx읮·Тpbؿ)ގշߵꗟ&і&tn̍3O󻓱ǉXթeӔإE޴߁䭝Ð̰u�=,ՒǪ坨޼ۭ[̪/ܽ􈹍Ҝnٝx܊ԸpA鳥}ӾإέܴĦ£6{Ȩpo؆Gú`ȱ\"ָퟆ�޿dīҜݵ3Ϝࠂڌ��[ۂyd$ˠ	󅯲ߨ1\nG��Ⱦ��N|J)©\0¡)\rLjŠ҆ޮjԔࠤh3Nkȉg-섉ږ֋Ƿ˦|7ޑ윢iϱsႄH\nz􉘇鄓В\Ző֬רq⢂}󳇀ϸӞЭVњ}=υ͡S Ç߸D��˳ڗvs;KQ.C̍㎜0׎Fcʔՙ��K󞎡֖ةKgƿŽ-꯵፝N\rĉܱ ퟋ�ckR3ӃvŒUՁNC笙 רʇ傒ًһw��撛ͻ׬Cf١cΓ\'򉼦,ΨSʛbv_4۱ʗ󉱅䎯tWkࠜ\OȚᛧ풆׮ɯKg􄯣ݵ؏ݰױؠӫlԭaܬpΠ`õu{寝¦ࠪ2G҄ἕ󮆼߇ƟӬЎ櫍ࠄ>��ΧФ��͗\n󐣺ՍM9و/Ϥ|&^؟Y✢ϔ߼򯾊߹ۗi읃4f->۝Ҳr_ؐۚۄܜZaшدܞࠋӣ?݇A֗Zǿ��\"NUG\'񭈑4	3śʗ0ґΉúfSфêx5߰��ϫ쳆KӋ;𠕪ٺѡlq󵦬au@%7\"ɲҺDʃɣ iZ̜ẔSwƇÃ~��Ԗ#Ԉay}՜"!ۈح*?!L#~ﾱɍ࠻䏭Ν>Û譊sܢP83nϸT۲ۆˬ��`i在nJUjпCm~탏\\'࠸9򆿹S򢟼3:��械ԡ`߫]ܝХPcʈW ;ߥӢPÆ񍘍󜜠񗟼GlPD;3́&<;ݽ��A#Ψ-˦V8͉ˠDN׀{񦣨%Dۖ0ѭgM\\{Ά؞g״򸴚;٥!ŋluںӘјʖ\rӹKʬгN\-0Ǥ eW҆v(r,єN$뵥@źΏɝ<޹y{ƋġD>,OӺ6Ѕ޾ȡ雙K՟ܠ1hڜ欯����+|࠾D㤃벆ιs\'É׺ܴ蓏ԗ��ԟ򇴶ヴëࠠl8𮒚}Rφ}Lܧ٣+Ьгֹc\'F��M{̳s0q��\r$ŐbĬޣWu܊qʞ㫩ХӞǸw)\".ڹ.YۂȂє򌁖弶 Ѣpڊ˙ƎR>��]��QNͳ\'˳��2w)д;߱Q㍯kƩ模Ȑ?甭��а&Øç͚ϖoz[ٸώ_zܮ��ݿ𜰝ݸЖz+ѰNʅ܁ݕv׮����d˱e҈+zӣKvÞ𜧨گ��ܟԙǿ̖቎͎isŖĵ臧s@ʁ<��s��՘ͻhΥ2֙_ٯϓ0׈ۖ䘜\٤߹Вď𻮌^꾃݁iiߛ㎬)03ґ{/S1:Paɔ8%R׳_ᣁŁCөȱKcV]ɝòĠM,̘ŭM܉oѵ=ܰ0Vҋm��㪑+ֵ&aũLڎn��ф԰ˣaퟞ�7漥ݕ۴οAϿuAΥ߾<޹␩{󜢵6ب4܎ڽKѠٳ栿˖ҙmӵȸ/9g؁iѴ෋(c��ߡ3񕎄;ӊM8NΫ��Я~񳺋/]ⓧ#n(଄ɵߠɞݡe\nc��9¶ⷹBΫ̦ũL:?ߚلʪôٳ6񻟈񻺸ܒ��Еى[ՠĒ��򷞜ý̴$̧ܺީv\Z¿*ˢI΀ʘƱՀ匵?u>Ɨߋ鏁F\rƂRo9ԁ,ð̰񜲆5:ȕЯMØv1eդԜn˩Nsm,\0)հμ픏ҧߴ9]uZ9=􅯒շ_Ɲ6塞Փ(/˶JKNMVБַޡ^:Ȧ{ނޒړܸIٜ0<ӡàh\\|#ۭuίӇ܂nεʇi[.4YNŚ㝗&PÁվ܃լՓovxGҋČ3񅴯ބAZt걶Ϲί݇Đќ08nm~xK@ױx*��Pȱq܌	ـƖ\'@`͛0Ɖ󐬢,㍵.@װ憧Ij+噮ӏ|₆��YYς#̱s Ǐ۞҆ꢣ꥗ny࠯GࠖĜnXnз̐љÓڨɀ#򫴅о]8hePßۆ\n}搾%��ЬМnz挟÷_��󅚌j3��ݥظ㒘ퟘ�[Ά\Zjǟ娵欽㗿^{ƾ%c𭜜ۏeFܝ}Ǎ\Z<I4ިzIﮜƶڇq&❜ؐ񆵾ժ\"��%Ӫ^5c\ZJN=,뱷=~߹G򣜚ݹˁʃ͘ˍdܫYPȂӳ:ç!м[1͠ҖѪƥi᳤ɌJU\Z6ēg/v踯ةrޝɌːξW:݀ڱ#cщُRdLו]ܾ/+фܯň豘ɂ찃:\Z񷇫ÛWh��v:kt򁋴񧾍S6]G��ΊA鰸÷࠽цoǸ[ÀYà��Dٔܹǯ����J9kܣ\\nfFюإH7v��rhwͭƓ\\Xٴ$TԸzۺȁ#ђoӱհq\'R$6ࠝ࠭٦bxț}HΕ>޺쩺󴗩佃lֻ6u+Rʤ>\"P$ϓ޼��¤h˱+ٶrϥg)󆭵[領ꌏKڤDM܊ʪ7}yeB\'͜nKV˩;ȖƓf~񋂻��4=XƜ"ƺXÜ'м尭o𣝖����~{҆𓩰ퟂ�jVQǽȖ߷쒧ڭ̌\Z𽝌ŀ\n&qȍ����\'שs܂]ˡڳĵzڔ򃦞*kВڃϐkβ$=Źҵ^̡lʳ񲥸@^زeБ߮Ǿjșӈ픯6Ͳȵ࠙쒆ůJ5Ҥt㧤sT^󺠄khƘĢ4ΡÂՒmYVё|^Γ̲KÝ$ݓK߇VZҊPSʿ5XM͍ߜZ*v󅵬ߏ?O̏쵩LԟዋɗzР*uɥ࠸񧜿ЈY)Ͷjѫ㤲Ǚ?󇟤û7ꆛߔ赓AѦS�҃g֥��.މ��❮Ȗk􋯿Ɓ敎ϯɦ;i��,ߐ鎶%ړ{㽋iп剺臯򎞣Ș\\n֚9לƻ۬Ĩn��9א+𚲞鯩G8<Ź;:zSϙ0ܻݦ��dŜӰ|QˏvĨe̓͜K񜠇ҺՒ᤭ޣ٦{܃۟еј֬Ҝф;͍9Ԕ��쬌Ӡ¤��ñΦ涶.Ș\0!F̆C\'0ܥퟣ�액4.mp5˙뙑ߑΓ誯뛴ط$8⁪4+dAն\Zߎl��|@V¤׺\��̦ܗ鏟ޢ��a	ސ\rHrvS㧚ؠGڧ6eË⎡􄌛ׄޏ׋d,.Ɓ)]ڷ콞̿ӎ٢˖̝\rξ9N񲉙%tܯ3p5?ڻV­̤ۘYӉL θAR7?D򷔸9Śsuv k.ܺ+׏S\\Eۭ\0c\'zϯڤׅƈԌߏ¸֩YΈ׼~֓厧͜ZǢՆʊ޷ߜ\ƣ5Ȭȗػժΐϩn7Ԧ|~ƁНǈ݌ȅsT轞Y윖A۠ ͞ӆӂ��<ޫ򂣫��aކՙo˷ܝ~ȳʓܡ3Ϡϫ ȋI?��l\n>Gb²߼ؘ򨹈љU8Ό̏iã𽙵ĘǷٵ͎ըa]ǞΓRгߨ·Ѫ}Ҙ̬<لnʸ38M@{x󺔆`֋mea]ܜ\2҆��ԑQPĬԤ߸����ꯨ=˙ǭ=ҪﶄfϦ	ا9?ov6X̚Ӝ0̝aЅͼ޺Ꭱ̧ټ%V}kѶäCƖf˒CvtŪȷǴ��ퟘ�ܠ>H]͇΢=-D삋݈έ𺘌rϝMhҼUOД߆��p:㠳V\"챊\'ݷdѫĢϜZ࠳*ۤ-ʆ.惍��ȹ\"ݹ񼭢L姮#֚i®³֝\\ج�ڶ偾Ɵݻ\0хRKҸؑ.Ѷ3ꁿĒǽسΣOc����ٴ+\'4d:ގŜ	ƬdWE걗fǃ򵏿Iﾾ,��ɜnê󟼦9z��TЭ\0ۂ\Zǳn^y��r[/ػnɂº`鱂߿㏛ǁmtɶڏ!ūflۘ̹KM$],aθǀxrM񽜥4캋茇9ʇߪse̚+gXNۂͷܝڞµبr랖ٓƛZσӜ\7.ȧϦG4ٹ6��JDL䶇tԋއz񑎎3]氰Sv̨?9ԴK͠ĚOȍﱼ��҆LCcIɌ��ˌ!S+QZa+Åևԡ=i-\Z߱ҿݒmc˵μϡt˳Ў꽏ВcϿƦ߯լL˝˺ܧɆ;t󆵋p8ݳİ ܗX랓~mĻŵaÈ��蝷G_ظN)kڙюƧʹ즶Ε3ƨ䖲ު%ͮC4>ܥm)ӂǌI`\\~ĳ󎗜\٪$FĂ5\0Jݝ� ՗Ҭͮ␢t,嬦1��\͹S֖ս>ۛ۴v񩎳z{䱤mɠũb\rɒԴi엙#ґ&ۆө>Ѓ̓𝛓ڵґ)@WmЦ̕Hԅկ߭ߣͿޏ`ۜbɘʽYޓ9ws#^\0��4=ؙ5\r)ʗてѳ򫷮ԯ~񓪲§l*Ԧ6[\r\'��Eм󟊤󚯟Tn0=ӳN_}��ҳ՚̅JB˪,ى脫7ƨR	n΍K4ǷըٱЪ!ź̭݉CƳֆ͢𢇹]%hZ\"؂��؍Fࠄ͝ȶ샇wąۇ٭\\ޝ̯	J𐳊i쩎˭ˀ��Z9��rVᛡ̳Ḿ򉔝\nFH󝧓ɄӲ󇬟̿ RДY3њ#dA͜0Î1g˪Ŏt񔹖2,\"։טCܥϛۜúu͝˹􃉖@ò̀i0ƃ��,ّGӍ岧࠿zퟄ�䭩/α;yL̛ް0=񵿕j؋М\µN̮i7󋗮ҷ࠽ĵқoݢ`ٌ=v%ד:ށƓx֝В15��r\n$8A΍2@՟\'ŉ80Xʜ"HW-̃02A[S.еҶ4qڸ:Ľw~Cۼ½󏉴ͳߠ
