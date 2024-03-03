import 'package:budaya_jogja/controller/navbar.dart';
import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class TranslateController extends GetxController {
  var selectedLanguage = "en_US".obs;
  var controllerNavbar = Get.find<NavbarController>();

  void onChange(String value) {
    GetStorage().write("translate", value);
    setLanguage();
  }

  void setLanguage() {
    if (GetStorage().read("translate") != null) {
      selectedLanguage.value = GetStorage().read("translate");
    }
    Get.updateLocale(Locale(selectedLanguage.value));
  }

  TextSpan setWidget(BuildContext context, String value) {
    var changeWidget = RxMap<String, TextSpan>(
      {
        "en_US": TextSpan(
          children: [
            WidgetSpan(
              child: Flag.fromCode(
                FlagsCode.US,
                width: 20,
                height: 20,
              ),
            ),
            WidgetSpan(
              child: SizedBox(
                width: 7,
              ),
            ),
            TextSpan(
              text: "en_US",
              style: context.textTheme.titleMedium!.copyWith(
                color: Get.find<NavbarController>().scrollBool() && Get.currentRoute == "/"
                    ? Colors.black
                    : (!context.isDarkMode
                        ? (controllerNavbar.scrollBool() ? Colors.white : Colors.black)
                        : null),
              ),
            ),
          ],
        ),
        "id_ID": TextSpan(
          children: [
            WidgetSpan(
              child: Flag.fromCode(
                FlagsCode.ID,
                width: 20,
                height: 20,
              ),
            ),
            WidgetSpan(
              child: SizedBox(
                width: 7,
              ),
            ),
            TextSpan(
              text: "id_ID",
              style: context.textTheme.titleMedium!.copyWith(
                color: Get.find<NavbarController>().scrollBool() && Get.currentRoute == "/"
                    ? Colors.black
                    : (!context.isDarkMode
                        ? (controllerNavbar.scrollBool() ? Colors.white : Colors.black)
                        : null),
              ),
            ),
          ],
        ),
        "jw_ID": TextSpan(
          children: [
            WidgetSpan(
              child: Flag.fromCode(
                FlagsCode.ID,
                width: 20,
                height: 20,
              ),
            ),
            WidgetSpan(
              child: SizedBox(
                width: 7,
              ),
            ),
            TextSpan(
              text: "jw_ID",
              style: context.textTheme.titleMedium!.copyWith(
                color: Get.find<NavbarController>().scrollBool() && Get.currentRoute == "/"
                    ? Colors.black
                    : (!context.isDarkMode
                        ? (controllerNavbar.scrollBool() ? Colors.white : Colors.black)
                        : null),
              ),
            ),
          ],
        ),
      },
    );
    return changeWidget.value[value]!;
  }

  @override
  void onInit() {
    super.onInit();
    setLanguage();
  }
}

class GlobalTranslation extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        "en_US": {
          "navbar_history": "history",
          "navbar_script": "script",
          "navbar_culture": "culture",
          "navbar_galeri": "galery",
          "navbar_about_us": "About Us",
          "social_life": "Social Life",
          "event": "Event",
          "warisan": "inheritance",
          "travel": "travel",
          "places": "places",
          "kuliner": "Culinary",
          "region_of": "The Special Region of",
          "show_more": "show more",
          "culinary_title": "Explore all the taste",
          "The Humble Citizen of": "The Humble Citizen of",
          "sopan_santun": "politeness",
          "gotong_royong": "Mutual cooperation",
          "The History of": "The History of",
          "The Beautiful Language of": "The Beautiful Language of",
          "Explore the Charm of Yogyakarta through the lens":
              "Explore the Charm of Yogyakarta through the lens",
          "don't forget to always capture your memories": "don't forget to always capture your memories",
          "aksara_pasangan_desc":
              "The inherent vowels of each basic character can be muted with the use of the pangkon diactric. However, pangkon is not normally used in the middle of words or sentences, so to write closed syllables in the middle of words and sentences, the pair form (ꦥꦱꦔꦤ꧀) is used. In contrast to pangkon, pair not only mutes the consonant it accompanies but also indicates subsequent consonants. For example, the character ma (ꦩ) is accompanied by the form of pa (꧀ꦥ) which becomes mpa (ꦩ꧀ꦥ). The pair form of each character is in the following table",
          "aksara_carakan_desc":
              "The modern Javanese script only uses 20 consonant sounds and 20 basic characters which are then called the nglegena script (ꦲꦏ꧀ꦱꦫꦔ꧀ꦭꦼꦒꦼꦤ). Some of the remaining characters were then converted into murda script (ꦲꦏ꧀ꦱꦫꦩꦸꦂꦢ) to write respected titles and names, both the names of legendary figures (e.g. Bima written ꦨꦶꦩ) and real ones (e.g. Pakubuwana written ꦦꦑꦸꦨꦸꦮꦟ). Of the 20 legendary scripts, only 9 characters have the murda form, therefore the use of murda is not identical to the use of capital letters in Latin spelling",
          "aksara_jawa_desc":
              "Javanese script, also known as Hanacaraka, is a writing system steeped in history and cultural richness. This script is used to write Javanese and has deep roots in Javanese literary, religious and cultural traditions. Understanding Javanese script is not just about learning a writing system, but also about understanding the extraordinary cultural heritage of the island of Java. Through learning Javanese script, you will enter a fascinating world where each character has its own meaning and beauty. Explore the history, philosophy and aesthetics behind each stroke of script, and discover how this writing is a window that reveals the soul and wisdom of Javanese culture.",
          "gotong_royong_desc":
              "The people of Yogyakarta are known for their strong spirit of mutual cooperation and ability to work together in various activities. The concept of mutual cooperation has become an integral part of their daily lives, where people help each other to achieve common goals. Starting from cleaning the environment, renovating houses, to holding religious events, mutual cooperation has always been a practice carried out with great enthusiasm and care. Not only that, in emergency situations or natural disasters, the people of Yogyakarta are always ready to act quickly and work together to help those in need. This spirit of cooperation reflects the togetherness and solidarity that is deeply rooted in the culture and values ​​of Yogyakarta society, making it a strong and united community in facing various challenges.",
          "sopan_santun_desc":
              "In Yogyakarta, the people have highly respected values ​​of politeness. Ethics and manners are an inseparable part of their daily lives. They adhere to customs and traditions that teach the importance of respecting others, especially those who are older or in a higher position. This courtesy is reflected in various interactions, be it in the family, community or in public places. The people of Yogyakarta teach the importance of speaking softly, using polite language, and respecting other people's views. Respect and politeness in communicating are an integral part of the identity of the people of Yogyakarta, which makes it a proud characteristic.",
          "main_social_desc":
              "In Yogyakarta, the people are famous for their characteristic hospitality. They are known to be friendly and warm in welcoming guests, both local and foreign tourists. This friendliness is reflected in various aspects of daily life, from interactions in traditional markets to meeting on city streets. Apart from that, the people of Yogyakarta are also famous for their love of local culture and traditions. They are very proud of their cultural heritage, such as dance, carvings and traditional music, which are passed down from generation to generation. The spirit of mutual cooperation is also strong in Yogyakarta, where people often work together in various social and religious activities. This all reflects the inclusive and harmonious attitude that is characteristic of Yogyakarta society.",
          "about_yogya":
              "a region rich in history, culture, and natural beauty. Located in the southern part of Java Island, this province is known as the cultural and educational center of Indonesia. Yogyakarta is home to the magnificent royal palace, the Yogyakarta Palace, which still serves as the residence of the Sultan and his family. In addition, this province is also known for its diversity of traditional arts, such as shadow puppetry, Javanese dance, and gamelan.\n\nThere are so many exciting stories from its history that are worth exploring. Come on, let's delve deeper into the History of Yogyakarta!",
          "panguripan":
              "Social life in Yogyakarta is reflected in the warmth and friendliness of its people. The culture of mutual cooperation is still very strong here, with people often coming together to help each other in various activities, from mutual cooperation in cleaning up the environment to helping in traditional celebrations. Apart from that, traditional traditions and family values ​​are also deeply rooted in everyday life. The people of Yogyakarta are also known as people who are friendly and open to tourists, ready to provide assistance and information to anyone who needs it.",
          "bosojowo":
              "In Yogyakarta, Javanese remains the commonly used language, although Indonesian is also widely understood and used. A typical Javanese dialect is often used by the majority of the population, while the ability to communicate in English is also common, especially in tourist spots frequented by foreign tourists. Apart from that, Javanese script still plays an important role in social life, although its use is not as widespread as it was several decades ago.",
          "upacara":
              "Every important moment in people's lives is celebrated with lively traditional ceremonies and rituals. From birth to death, nothing is missed. Imagine amidst a festive atmosphere, with family and neighbors, they celebrate with great warmth. Some dazzle with enchanting traditional dances, while others hum along to the distinctive gamelan rhythm. Beautiful, colorful traditional clothing is a special charm in every procession. More than just a ritual, this ceremony is an opportunity for them to unite, enjoy togetherness, and celebrate their rich cultural heritage.",
          "journey_title": "Wanna take a Journey?",
          "journey_description":
              "Temukan destinasi wisata menakjubkan di halaman kami yang penuh dengan keindahan alam, keajaiban budaya, dan petualangan yang menarik di kota istimewa ini. Kunjungi halaman destinasi wisata kami sekarang dan biarkan diri Anda terpesona oleh keindahan Yogyakarta yang menunggu untuk dijelajahi!",
          "deskripsi_kebudayaan":
              "Yogyakarta, as one of the cultural centers in Indonesia, exudes attractive cultural diversity. From traditional arts such as wayang kulit, Javanese dance, to the stunning gamelan, Yogyakarta's rich culture attracts admirers from all over the world. No less interesting is the culinary diversity that can be found in every corner of the city. From sweet to spicy, typical foods such as gudeg, soto and bakpia tempt the taste buds and pamper visitors' taste buds. Yogyakarta presents an unforgettable culinary experience for every tourist who visits it.",
          "history_yogya":
              "The history of Yogyakarta depicts a long journey from pre-kingdom times filled with myths and legends, to the formation of a magnificent kingdom, and continuing its role as a center of culture and education until modern times. Before the founding of Yogyakarta, this area was known for the various myths surrounding it, creating a strong cultural foundation. Then, through various kingdoms such as Ancient Mataram and Medang Kamulan, Yogyakarta developed into a center of power that influenced Indonesian history. The formation of the Ngayogyakarta Hadiningrat Palace in the 18th century by Sultan Hamengkubuwono I was an important milestone in its history. During the colonial era and the period of independence, Yogyakarta continued to fight for its identity and maintain its cultural heritage. Today, Yogyakarta remains a leading cultural destination, attracting visitors from all over the world to witness the beautiful history and culture that still lives there. To explore more about Yogyakarta's interesting journey from pre-kingdom to modern times, let's explore the details below.",
          "Pre-Historic": "Pre-Historic",
          "era_mataram": "Mataram Era",
          "era_perjuangan": "Era of Struggle",
          "era_modern": "Modern Era",
          "prehistoric_desc":
              "The history of Yogyakarta depicts a long journey from pre-kingdom times filled with myths and legends, to the formation of a magnificent kingdom, and continuing its role as a center of culture and education until modern times. Before the founding of Yogyakarta, this area was known for the various myths surrounding it, creating a strong cultural foundation. Then, through various kingdoms such as Ancient Mataram and Medang Kamulan, Yogyakarta developed into a center of power that influenced Indonesian history. The formation of the Ngayogyakarta Hadiningrat Palace in the 18th century by Sultan Hamengkubuwono I was an important milestone in its history. During the colonial era and the period of independence, Yogyakarta continued to fight for its identity and maintain its cultural heritage. Today, Yogyakarta remains a leading cultural destination, attracting visitors from all over the world to witness the beautiful history and culture that still lives there. To explore more about Yogyakarta's interesting journey from pre-kingdom to modern times, let's explore the details below.",
          "era_mataram_desc":
              "Yogyakarta has a long and rich history, starting from the era of the Islamic Mataram Kingdom. During Mataram's heyday in the 17th century, the Yogyakarta region was an integral part of the kingdom. Sultan Agung Hanyokrokusumo, the famous king of Mataram, built the Yogyakarta Palace as the center of government and culture. In 1755, there was a split in the Mataram Kingdom due to the Javanese Civil War. The Giyanti Agreement divided Mataram into two kingdoms: the Surakarta Kasunanan and the Yogyakarta Sultanate. Prince Mangkubumi, who later had the title Sultan Hamengku Buwono I, became the founder and first king of the Yogyakarta Sultanate.\n\n\ nThe formation of Yogyakarta brought major changes to the region. Sultan Hamengku Buwono I built a new palace in Yogyakarta, which became the center of government and new culture. He also formulated the philosophy \"Hamemayu Hayuning Bawono\" which became a guide for the people of Yogyakarta. Yogyakarta developed rapidly under leadership of Sultan Hamengku Buwono I and his successors. This city is the center of Javanese education, arts and culture. Yogyakarta also played an important role in Indonesia's struggle for independence.\n\nIn 1812, Yogyakarta experienced division again. Sultan Hamengku Buwono II was forced by the Dutch to sign the New Giyanti Agreement. This agreement divided Yogyakarta into two regions: Yogyakarta Ngayogyakarta Hadiningrat and Pakualaman.\n\nThe Duchy of Pakualaman was led by Adipati Paku Alam I, who was a descendant of Sultan Hamengku Buwono I. This division lasted until 1945, when Yogyakarta was again united into one region.",
          "era_perjuangan_desc":
              "Yogyakarta played an important role during the struggle against Dutch colonialism. In this period, this city became the center of coordination and planning for the resistance movement against the Dutch. Sri Sultan Hamengkubuwono IX, known for his wise and strong leadership, became one of the central figures in this resistance. Yogyakarta became the headquarters for the Government of the Republic of Indonesia Based in Yogyakarta (PRRI) after the Dutch captured Jakarta in 1948. In the midst of Dutch pressure and threats, the people of Yogyakarta united in a brave spirit of resistance. The March 1 1949 General Attack in Yogyakarta was an important moment in history, where the people of Yogyakarta united to expel the Dutch colonialists from this city.\n\nYogyakarta's struggle against Dutch colonialism marked the spirit and tenacity of the people in defending Indonesian independence. Despite facing great difficulties and pressure, the spirit of resistance never died. Sri Sultan Hamengkubuwono IX, as a loved and respected leader, continues to lead the people of Yogyakarta in their struggle. Yogyakarta, with various forms of support and resistance strategies, remains a strong and strong fortress in facing the invaders. This history not only confirms the courage and fighting spirit of the people of Yogyakarta, but also confirms its position as one of the strongest centers of resistance to Dutch colonialism in Indonesia.",
          "era_modern_desc":
              "Yogyakarta experienced great upheaval after Indonesian independence. This city became the country's capital in 1946 after the Dutch re-colonized Indonesia. The political and economic situation at that time was full of turmoil. The people of Yogyakarta work together to help the government in the struggle to maintain independence. Despite experiencing difficult times, Post-Independence: After independence, Yogyakarta remained one of the centers of political and governmental activities in Indonesia. This city was the site of a number of important events in Indonesian history, including the election of Soekarno as Indonesia's first president in 1945.\n\nG30S/PKI Difficult Times: In 1965, Yogyakarta, like all of Indonesia, experienced difficult times during the G30S/PKI events . Several prominent figures such as General Suharto played a role in silencing this rebellion. Despite tensions and conflicts in several regions, Yogyakarta later recovered and became a strong base for the New Order regime led by Soeharto. Yogyakarta remained a center of culture and education. Gadjah Mada University was founded in 1949, becoming a symbol of hope for the nation's future.expand_more Artistic and cultural life is also developing rapidly, with the emergence of various famous artists and cultural figures.\n\nCurrently, Yogyakarta has developed into a modern and dynamic city. Its natural and cultural beauty is the main attraction for tourists. This city is also a center for higher education with many well-known universities. Even though it is modern, Yogyakarta still maintains its traditions and culture. The Yogyakarta Palace still stands strong as a symbol of Javanese history and culture.expand_more The friendly and tolerant life of the people of Yogyakarta is a special attraction for visitors. Yogyakarta has gone through many changes since independence. Now, this city has become one of the leading cities in Indonesia in various fields. The natural beauty, culture and friendliness of the people make Yogyakarta a special city.",
          "culinary_desc":
              "Yogyakarta, or more popularly known as Jogja, is a paradise for culinary travelers who are thirsty for taste adventures. From the legendary gudeg to delicious goat satay, this city serves a variety of dishes that will pamper your taste buds. Malioboro Street and its surroundings are a magnet for unique street food, while local restaurants offer a more luxurious culinary experience with a traditional touch. Tempeh, tofu and other processed soybeans are also a special attraction for culinary connoisseurs. Let's explore the various culinary delights in Jogja, because every bite is an unforgettable taste journey!",
          "about_1":
              "SABA JOGJA is present as an innovative digital platform, opening the gates for tourists to explore the charm of Yogyakarta thoroughly. This platform not only provides easy access to various tourist services, but also provides a window into the rich history, culture, culinary delights and stunning natural panorama of Yogyakarta.",
          "about_2":
              "In an effort to facilitate tourist travel, SABA JOGJA not only provides information about interesting tourist attractions, but also offers integrated services that include ticket reservations, accommodation and transportation. Thus, visitors can plan and enjoy their trip easily smoother and more comfortable. However, more than just being a tool for tourists, SABA JOGJA also has a strong commitment to supporting the development of local tourism. Through this platform, local tourism actors are given the opportunity to promote their products and services to a wider audience . This not only helps increase their exposure, but also has the potential to increase income and economic growth at the local level. \n\nMoreover, SABA JOGJA is also a manifestation of dedication to preserving the culture and historical heritage of Yogyakarta. By introducing tourists to its rich culture owned by this city, this platform plays a role in maintaining and promoting a unique local identity. Apart from that, through tourism promotion, SABA JOGJA also helps increase awareness of the importance of environmental conservation and preserving nature amidst the rapid development of tourism.",
          "The Magic Land of":"The Magic Land of",
          "places_desc":"Yogyakarta indeed holds many wonders in its various tourist attractions. From natural beauties such as Mount Merapi and Parangtritis Beach, to cultural heritage such as Borobudur Temple and Yogyakarta Palace, every corner of this city exudes amazing charm. Apart from that, traditional culinary delights such as gudeg and sate kere are also not to be missed. Come on, let's explore more of the amazing beauty of Yogyakarta and make unforgettable memories with your loved ones!",
          "let's explore the most recommended tourist attractions !":"let's explore the most recommended tourist attractions !",
        },
        "id_ID": {
          "navbar_history": "sejarah",
          "navbar_script": "aksara",
          "navbar_culture": "budaya",
          "navbar_galeri": "galeri",
          "navbar_about_us": "Tentang Kami",
          "social_life": "Kehidupan Sosial",
          "event": "Pertunjukan",
          "warisan": "warisan",
          "travel": "bepergian",
          "places": "tempat",
          "kuliner": "kuliner",
          "region_of": "Daerah Istimewa",
          "show_more": "selengkapnya",
          "culinary_title": "Jelajahi semua rasanya",
          "The Humble Citizen of": "Warga Negara yang Rendah Hati",
          "sopan_santun": "Sopan Santun",
          "gotong_royong": "Gotong Royong",
          "The Beautiful Language of": "Bahasa Yang Indah dari",
          "The History of": "Sejarah dari",
          "Explore the Charm of Yogyakarta through the lens":
              "Jelajahi Pesona Yogyakarta melalui lensa",
          "be a part of this journey !": "jadilah bagian dari perjalanan ini !",
          "don't forget to always capture your memories": "jangan lupa untuk selalu mengabadikan kenangan anda",
          "aksara_pasangan_desc":
              "Vokal inheren dari tiap aksara dasar dapat dimatikan dengan penggunaan diaktrik pangkon. Akan tetapi, pangkon normalnya tidak digunakan di tengah kata atau kalimat, sehingga untuk menuliskan suku kata tertutup di tengah kata dan kalimat, digunakanlah bentuk pasangan (ꦥꦱꦔꦤ꧀). Berbeda dengan pangkon, pasangan tidak hanya mematikan konsonan yang diiringinya tetapi juga menunjukkan konsonan selanjutnya. Sebagai contoh, aksara ma (ꦩ) yang diiringi bentuk pasangan dari pa (꧀ꦥ) menjadi mpa (ꦩ꧀ꦥ). Bentuk pasangan setiap aksara ada di tabel berikut",
          "aksara_carakan_desc":
              "Aksara Jawa modern hanya menggunakan 20 bunyi konsonan dan 20 aksara dasar yang kemudian disebut sebagai aksara nglegena (ꦲꦏ꧀ꦱꦫꦔ꧀ꦭꦼꦒꦼꦤ). Sebagian aksara yang tersisa kemudian dialihfungsikan sebagai aksara murda (ꦲꦏ꧀ꦱꦫꦩꦸꦂꦢ) untuk menuliskan gelar dan nama yang dihormati, baik nama tokoh legenda (misal Bima ditulis ꦨꦶꦩ) maupun nyata (misal Pakubuwana ditulis ꦦꦑꦸꦨꦸꦮꦟ). Dari 20 aksara nglegena, hanya 9 aksara yang mempunyai bentuk murda, oleh karena itu penggunaan murda tidak identik dengan penggunaan huruf kapital di dalam ejaan Latin",
          "aksara_jawa_desc":
              "Aksara Jawa, juga dikenal sebagai Hanacaraka, adalah sistem tulisan yang kaya akan sejarah dan kekayaan budaya. Aksara ini digunakan untuk menuliskan bahasa Jawa dan memiliki akar yang dalam dalam tradisi sastra, agama, dan kebudayaan Jawa. Memahami aksara Jawa bukan hanya tentang belajar sebuah sistem tulisan, tetapi juga tentang memahami warisan budaya yang luar biasa dari pulau Jawa. Melalui mempelajari aksara Jawa, Anda akan memasuki dunia yang mempesona di mana setiap karakter memiliki makna dan keindahan tersendiri. Jelajahi sejarah, filosofi, dan estetika di balik setiap goresan aksara, dan temukan bagaimana tulisan ini menjadi jendela yang mengungkapkan jiwa dan kearifan budaya Jawa.",
          "gotong_royong_desc":
              "Masyarakat Yogyakarta dikenal dengan semangat gotong royong yang kuat dan kemampuan untuk bekerja sama dalam berbagai kegiatan. Konsep gotong royong telah menjadi bagian integral dari kehidupan sehari-hari mereka, di mana orang-orang saling membantu satu sama lain untuk mencapai tujuan bersama. Mulai dari membersihkan lingkungan, merenovasi rumah, hingga mengadakan acara keagamaan, gotong royong selalu menjadi praktek yang dijalankan dengan antusiasme dan kepedulian yang tinggi. Tidak hanya itu, dalam situasi darurat atau bencana alam, masyarakat Yogyakarta selalu siap bertindak cepat dan bergotong royong untuk membantu mereka yang membutuhkan. Semangat bekerja sama ini mencerminkan kebersamaan dan solidaritas yang mengakar kuat dalam budaya dan nilai-nilai masyarakat Yogyakarta, menjadikannya komunitas yang kuat dan bersatu dalam menghadapi berbagai tantangan.",
          "sopan_santun_desc":
              "Di Yogyakarta, masyarakatnya memiliki nilai-nilai sopan santun yang sangat dijunjung tinggi. Etika dan tata krama menjadi bagian tak terpisahkan dari kehidupan sehari-hari mereka. Mereka memegang teguh adat dan tradisi yang mengajarkan pentingnya menghormati sesama, terutama yang lebih tua atau yang memiliki kedudukan yang lebih tinggi. Sopan santun ini tercermin dalam berbagai interaksi, baik itu di lingkungan keluarga, masyarakat, atau di tempat umum. Masyarakat Yogyakarta mengajarkan pentingnya berbicara dengan lembut, menggunakan bahasa yang sopan, dan menghargai pandangan orang lain. Sikap hormat dan kesantunan dalam berkomunikasi menjadi bagian integral dari identitas masyarakat Yogyakarta, yang menjadikannya salah satu ciri khas yang membanggakan.",
          "main_social_desc":
              "Di Yogyakarta, masyarakatnya terkenal dengan keramahan yang menjadi ciri khasnya. Mereka dikenal ramah dan hangat dalam menyambut tamu, baik itu wisatawan lokal maupun mancanegara. Keramahan ini tercermin dalam berbagai aspek kehidupan sehari-hari, mulai dari interaksi di pasar tradisional hingga saat bertemu di jalan-jalan kota. Selain itu, masyarakat Yogyakarta juga terkenal dengan kecintaannya terhadap budaya dan tradisi lokal. Mereka sangat bangga akan warisan budaya mereka, seperti tari, seni ukir, dan musik tradisional, yang diwariskan dari generasi ke generasi. Semangat gotong royong juga kuat di Yogyakarta, di mana masyarakat sering bekerja sama dalam berbagai kegiatan sosial dan keagamaan. Ini semua mencerminkan sikap inklusif dan harmonis yang menjadi ciri khas masyarakat Yogyakarta.",
          "about_yogya":
              "sebuah wilayah yang kaya akan sejarah, budaya, dan keindahan alamnya. Terletak di bagian selatan Pulau Jawa, provinsi ini dikenal sebagai pusat kebudayaan dan  di Indonesia. Yogyakarta merupakan rumah bagi istana kerajaan yang megah, Keraton Yogyakarta, yang masih menjadi tempat tinggal bagi Sultan dan keluarganya. Selain itu, provinsi ini juga dikenal dengan keberagaman seni tradisionalnya, seperti wayang kulit, tari Jawa, dan gamelan.\n\nAda begitu banyak cerita seru dari sejarahnya yang sayang untuk dilewatkan. Ayo, kita eksplor lebih dalam tentang Sejarah Yogyakarta!",
          "panguripan":
              "Kehidupan sosial di Yogyakarta tercermin dalam kehangatan dan keramahan penduduknya. Budaya gotong-royong masih sangat kuat di sini, dengan masyarakat sering kali bersatu untuk membantu satu sama lain dalam berbagai kegiatan, mulai dari gotong-royong membersihkan lingkungan hingga membantu dalam perayaan tradisional. Selain itu, tradisi adat dan nilai-nilai kekeluargaan turut mengakar dalam kehidupan sehari-hari. Masyarakat Yogyakarta juga dikenal sebagai orang yang ramah dan terbuka terhadap wisatawan, siap memberikan bantuan dan informasi kepada siapa pun yang membutuhkan.",
          "bosojowo":
              "Di Yogyakarta, Bahasa Jawa tetap menjadi bahasa yang umum digunakan, walaupun Bahasa Indonesia juga luas dipahami dan digunakan. Dialek khas Jawa sering digunakan oleh mayoritas penduduk, sementara kemampuan berkomunikasi dalam bahasa Inggris juga umum, terutama di tempat-tempat wisata yang sering dikunjungi wisatawan asing. Selain itu, aksara Jawa juga masih memegang peranan penting dalam kehidupan sosial, meskipun penggunaannya tidak se luas beberapa dekade yang lalu.",
          "upacara":
              "setiap momen penting dalam kehidupan masyarakatnya dirayakan dengan semaraknya upacara adat dan ritual. Dari kelahiran hingga kematian, tak ada yang terlewatkan. Bayangkan di tengah suasana yang meriah, bersama keluarga dan tetangga, mereka merayakan dengan penuh kehangatan. Ada yang memukau dengan tarian tradisional yang mempesona, sementara yang lain bersenandung bersama irama gamelan yang khas. Pakaian adat yang indah berwarna-warni menjadi pesona tersendiri dalam setiap prosesi. Lebih dari sekadar ritual, upacara ini menjadi kesempatan bagi mereka untuk bersatu, menikmati kebersamaan, dan merayakan warisan budaya yang kaya.",
          "journey_title": "Ingin melakukan Perjalanan?",
          "journey_description":
              "Temukan destinasi wisata menakjubkan di halaman kami yang penuh dengan keindahan alam, keajaiban budaya, dan petualangan yang menarik di kota istimewa ini. Kunjungi halaman destinasi wisata kami sekarang dan biarkan diri Anda terpesona oleh keindahan Yogyakarta yang menunggu untuk dijelajahi!",
          "deskripsi_kebudayaan":
              "Yogyakarta, sebagai salah satu pusat kebudayaan di Indonesia, memancarkan keberagaman budaya yang memikat. Dari seni tradisional seperti wayang kulit, tari Jawa, hingga gamelan yang memukau, kekayaan budaya Yogyakarta mengundang pengagum dari seluruh dunia. Tak kalah menariknya adalah keberagaman kuliner yang dapat ditemukan di setiap sudut kota. Dari yang manis hingga pedas, makanan khas seperti gudeg, soto, dan bakpia menggoda lidah dan memanjakan selera para pengunjung. Yogyakarta mempersembahkan pengalaman kuliner yang tak terlupakan bagi setiap wisatawan yang mengunjunginya.",
          "history_yogya":
              "Sejarah Yogyakarta menggambarkan perjalanan panjang dari masa prakerajaan yang dipenuhi dengan mitos dan legenda, hingga pembentukan kerajaan yang megah, dan melanjutkan perannya sebagai pusat budaya dan pendidikan hingga zaman modern. Sebelum berdirinya Yogyakarta, kawasan ini dikenal dengan berbagai mitos yang melingkupinya, menciptakan landasan budaya yang kuat. Kemudian, melalui berbagai kerajaan seperti Mataram Kuno dan Medang Kamulan, Yogyakarta berkembang menjadi pusat kekuasaan yang memengaruhi sejarah Indonesia. Pembentukan Keraton Ngayogyakarta Hadiningrat pada abad ke-18 oleh Sultan Hamengkubuwono I menjadi tonggak penting dalam sejarahnya. Selama era kolonial dan masa kemerdekaan, Yogyakarta terus memperjuangkan identitasnya dan menjaga warisan budayanya. Hari ini, Yogyakarta tetap menjadi destinasi budaya terkemuka, menarik pengunjung dari seluruh dunia untuk menyaksikan keindahan sejarah dan budaya yang masih hidup di sana. Untuk menjelajahi lebih lanjut tentang perjalanan menarik Yogyakarta dari masa prakerajaan hingga zaman modern, mari kita telusuri detailnya di bawah ini.",
          "Pre-Historic": "Prasejarah",
          "era_mataram": "Era Mataram",
          "era_perjuangan": "Era Perjuangan",
          "era_modern": "Era Modern",
          "prehistoric_desc":
              "Sejarah Yogyakarta menggambarkan perjalanan panjang dari masa prakerajaan yang dipenuhi dengan mitos dan legenda, hingga pembentukan kerajaan yang megah, dan melanjutkan perannya sebagai pusat budaya dan pendidikan hingga zaman modern. Sebelum berdirinya Yogyakarta, kawasan ini dikenal dengan berbagai mitos yang melingkupinya, menciptakan landasan budaya yang kuat. Kemudian, melalui berbagai kerajaan seperti Mataram Kuno dan Medang Kamulan, Yogyakarta berkembang menjadi pusat kekuasaan yang memengaruhi sejarah Indonesia. Pembentukan Keraton Ngayogyakarta Hadiningrat pada abad ke-18 oleh Sultan Hamengkubuwono I menjadi tonggak penting dalam sejarahnya. Selama era kolonial dan masa kemerdekaan, Yogyakarta terus memperjuangkan identitasnya dan menjaga warisan budayanya. Hari ini, Yogyakarta tetap menjadi destinasi budaya terkemuka, menarik pengunjung dari seluruh dunia untuk menyaksikan keindahan sejarah dan budaya yang masih hidup di sana. Untuk menjelajahi lebih lanjut tentang perjalanan menarik Yogyakarta dari masa prakerajaan hingga zaman modern, mari kita telusuri detailnya di bawah ini.",
          "era_mataram_desc":
              "Yogyakarta memiliki sejarah panjang dan kaya, dimulai dari era Kerajaan Mataram Islam. Pada masa kejayaan Mataram di abad ke-17, wilayah Yogyakarta merupakan bagian integral kerajaan. Sultan Agung Hanyokrokusumo, raja Mataram yang terkenal, membangun Keraton Yogyakarta sebagai pusat pemerintahan dan budaya. Pada tahun 1755, terjadi perpecahan dalam Kerajaan Mataram akibat Perang Saudara Jawa. Perjanjian Giyanti membagi Mataram menjadi dua kerajaan: Kasunanan Surakarta dan Kasultanan Yogyakarta. Pangeran Mangkubumi, yang kemudian bergelar Sultan Hamengku Buwono I, menjadi pendiri dan raja pertama Kasultanan Yogyakarta.\n\nPembentukan Yogyakarta membawa perubahan besar bagi wilayah tersebut. Sultan Hamengku Buwono I membangun keraton baru di Yogyakarta, yang menjadi pusat pemerintahan dan budaya baru. Beliau juga merumuskan filosofi \"Hamemayu Hayuning Bawono\" yang menjadi pedoman bagi rakyat Yogyakarta. Yogyakarta berkembang pesat di bawah kepemimpinan Sultan Hamengku Buwono I dan para penerusnya. Kota ini menjadi pusat pendidikan, seni, dan budaya Jawa. Yogyakarta juga memainkan peran penting dalam perjuangan kemerdekaan Indonesia.\n\nPada tahun 1812, Yogyakarta kembali mengalami perpecahan. Sultan Hamengku Buwono II dipaksa oleh Belanda untuk menandatangani Perjanjian Giyanti Baru. Perjanjian ini membagi Yogyakarta menjadi dua wilayah: Yogyakarta Ngayogyakarta Hadiningrat dan Pakualaman.\n\nKadipaten Pakualaman dipimpin oleh Adipati Paku Alam I, yang merupakan keturunan Sultan Hamengku Buwono I. Pembagian ini berlangsung hingga tahun 1945, ketika Yogyakarta kembali bersatu menjadi satu wilayah.",
          "era_perjuangan_desc":
              "Yogyakarta memainkan peran penting selama masa perjuangan melawan penjajah Belanda. Pada periode ini, kota ini menjadi pusat koordinasi dan perencanaan bagi gerakan perlawanan terhadap Belanda. Sri Sultan Hamengkubuwono IX, yang dikenal karena kepemimpinannya yang bijaksana dan kuat, menjadi salah satu tokoh sentral dalam perlawanan tersebut. Yogyakarta menjadi markas besar bagi Pemerintah Republik Indonesia yang Berkedudukan di Yogyakarta (PRRI) setelah Belanda merebut Jakarta pada tahun 1948. Di tengah tekanan dan ancaman Belanda, rakyat Yogyakarta bersatu dalam semangat perlawanan yang gagah berani. Serangan Umum 1 Maret 1949 di Yogyakarta menjadi momen penting dalam sejarah, di mana rakyat Yogyakarta bersatu untuk mengusir penjajah Belanda dari kota ini.\n\nPerjuangan Yogyakarta melawan penjajahan Belanda menandai semangat dan kegigihan rakyat dalam mempertahankan kemerdekaan Indonesia. Meskipun menghadapi kesulitan dan tekanan yang besar, semangat perlawanan tidak pernah padam. Sri Sultan Hamengkubuwono IX, sebagai pemimpin yang dicintai dan dihormati, terus memimpin rakyat Yogyakarta dalam perjuangan mereka. Yogyakarta, dengan berbagai bentuk dukungan dan strategi perlawanan, tetap menjadi benteng yang tangguh dan gagah dalam menghadapi penjajah. Sejarah ini tidak hanya menegaskan keberanian dan semangat juang rakyat Yogyakarta, tetapi juga mengukuhkan posisinya sebagai salah satu pusat perlawanan terkuat terhadap penjajahan Belanda di Indonesia.",
          "era_modern_desc":
              "Yogyakarta mengalami pergolakan besar setelah kemerdekaan Indonesia. Kota ini menjadi ibukota negara pada tahun 1946 setelah Belanda kembali menjajah Indonesia. Situasi politik dan ekonomi kala itu penuh dengan gejolak. Rakyat Yogyakarta bahu membahu membantu pemerintah dalam perjuangan mempertahankan kemerdekaan. Meskipun mengalami masa-masa sulit, Pasca Kemerdekaan: Setelah kemerdekaan, Yogyakarta tetap menjadi salah satu pusat kegiatan politik dan pemerintahan di Indonesia. Kota ini menjadi tempat berlangsungnya sejumlah peristiwa penting dalam sejarah Indonesia, termasuk pemilihan Soekarno sebagai presiden pertama Indonesia pada tahun 1945.\n\nMasa Sulit G30S/PKI: Pada tahun 1965, Yogyakarta, seperti seluruh Indonesia, mengalami masa sulit selama peristiwa G30S/PKI. Beberapa tokoh terkemuka seperti Jenderal Soeharto berperan dalam membungkam pemberontakan ini. Meskipun terjadi ketegangan dan konflik di beberapa wilayah, Yogyakarta kemudian pulih dan menjadi basis kuat bagi rezim Orde Baru yang dipimpin oleh Soeharto.Yogyakarta tetap menjadi pusat budaya dan pendidikan. Universitas Gadjah Mada didirikan pada tahun 1949, menjadi simbol harapan bagi masa depan bangsa.expand_more Kehidupan seni dan budaya juga berkembang pesat, dengan munculnya berbagai seniman dan budayawan ternama.\n\nSaat ini, Yogyakarta telah berkembang menjadi kota yang modern dan dinamis. Keindahan alam dan budayanya menjadi daya tarik utama bagi wisatawan. Kota ini juga menjadi pusat pendidikan tinggi dengan banyak universitas ternama. Meskipun modern, Yogyakarta tetap mempertahankan tradisi dan budayanya. Keraton Yogyakarta masih berdiri kokoh sebagai simbol sejarah dan budaya Jawa.expand_more Kehidupan masyarakat Yogyakarta yang ramah dan toleran menjadi daya tarik tersendiri bagi para pengunjung. Yogyakarta telah melalui banyak perubahan sejak kemerdekaan. Kini, kota ini menjadi salah satu kota terdepan di Indonesia dalam berbagai bidang. Keindahan alam, budaya, dan keramahan masyarakatnya menjadikan Yogyakarta sebagai kota yang istimewa.",
          "culinary_desc":
              " Yogyakarta, atau lebih populer dengan sebutan Jogja, adalah surganya para pelancong kuliner yang haus akan petualangan rasa. Dari gudeg legendaris hingga sate kambing yang lezat, kota ini menyajikan beragam hidangan yang memanjakan lidah. Jalan Malioboro dan sekitarnya menjadi magnet untuk mencicipi makanan jalanan yang unik, sementara restoran-restoran lokal menawarkan pengalaman kuliner yang lebih mewah dengan sentuhan tradisional. Tempe, tahu, dan olahan kedelai lainnya juga menjadi daya tarik tersendiri bagi penikmat kuliner. Mari kita jelajahi beragam kuliner di Jogja, karena setiap suapannya adalah perjalanan rasa yang tak terlupakan!",
          "about_1":
              "SABA JOGJA hadir sebagai platform digital yang inovatif, membuka gerbang bagi para wisatawan untuk menjelajahi pesona Yogyakarta secara menyeluruh. Platform ini tak hanya menyediakan akses mudah ke berbagai layanan wisata, tetapi juga menjadi jendela bagi kekayaan sejarah, budaya, kuliner, dan panorama alam Yogyakarta yang memukau.",
          "about_2":
              "Dalam upaya untuk memfasilitasi perjalanan wisatawan, SABA JOGJA tidak hanya sekadar menyajikan informasi mengenai tempat-tempat wisata yang menarik, tetapi juga menawarkan layanan terpadu yang mencakup pemesanan tiket, penginapan, serta transportasi. Dengan demikian, para pengunjung dapat merencanakan dan menikmati perjalanan mereka dengan lebih lancar dan nyaman. Namun, lebih dari sekadar menjadi alat bantu bagi wisatawan, SABA JOGJA juga memiliki komitmen yang kuat untuk mendukung perkembangan pariwisata lokal. Melalui platform ini, para pelaku wisata lokal diberikan kesempatan untuk mempromosikan produk dan layanan mereka kepada khalayak yang lebih luas. Ini tidak hanya membantu meningkatkan eksposur mereka, tetapi juga berpotensi meningkatkan pendapatan dan pertumbuhan ekonomi di tingkat lokal. \n\nLebih dari itu, SABA JOGJA juga menjadi wujud dari dedikasi untuk melestarikan budaya dan warisan sejarah Yogyakarta. Dengan memperkenalkan para wisatawan pada kekayaan budaya yang dimiliki oleh kota ini, platform ini turut berperan dalam mempertahankan dan mempromosikan identitas lokal yang unik. Selain itu, melalui promosi wisata, SABA JOGJA juga membantu meningkatkan kesadaran akan pentingnya pelestarian lingkungan dan menjaga kelestarian alam di tengah pesatnya perkembangan pariwisata.",
          "The Magic Land of":"Negeri Ajaib",
          "places_desc":"Yogyakarta memang menyimpan banyak keajaiban di berbagai tempat wisatanya. Dari keindahan alam seperti Gunung Merapi dan Pantai Parangtritis, hingga warisan budaya seperti Candi Borobudur dan Keraton Yogyakarta, setiap sudut kota ini memancarkan pesona yang mengagumkan. Selain itu, kelezatan kuliner tradisional seperti gudeg dan sate kere juga tidak boleh dilewatkan. Ayo, mari menjelajahi lebih banyak lagi keindahan Yogyakarta yang menakjubkan ini dan membuat kenangan tak terlupakan bersama orang-orang tercinta!",
          "let's explore the most recommended tourist attractions !":"yuk jelajahi tempat wisata yang paling direkomendasikan!",
        },
        "jw_ID": {
          "navbar_history": "sajarah",
          "navbar_script": "naskah",
          "navbar_culture": "budaya",
          "navbar_galeri": "galeri",
          "social_life": "Panguripan",
          "navbar_about_us": "babagan awake dhewe",
          "event": "Acara",
          "warisan": "warisan",
          "travel": "dolan",
          "places": "panggonan",
          "kuliner": "kuliner",
          "region_of": "Wilayah Khusus Kab",
          "show_more": "nuduhake liyane",
          "culinary_title": "Jelajahi kabeh rasa",
          "The Humble Citizen of": "Warga Asor saka",
          "sopan_santun": "unggah-ungguh",
          "gotong_royong": "Gotong Royong",
          "The Beautiful Language of": "Basa Endah saka",
          "The History of": "Sejarah saka",
          "Explore the Charm of Yogyakarta through the lens":
              "Jelajahi Pesona Yogyakarta liwat lensa",
          "be a part of this journey !": "dadi bagian saka perjalanan iki !",
          "don't forget to always capture your memories": "ojo lali tansah kelingan kenanganmu",
          "aksara_pasangan_desc":
              "Vokal bawaan saben aksara dhasar bisa diredam kanthi nggunakake diaktrik pangkon. Nanging, pangkon biasane ora digunakake ing tengah-tengah tembung utawa ukara, mula kanggo nulis suku kata tertutup ing tengah-tengahe tembung lan ukara, nggunakake wangun pasangan (ꦥꦱꦔꦤ꧀). Beda karo pangkon, pasangan ora mung bisu konsonan, nanging uga nuduhake konsonan sabanjure. Contone, aksara ma (ꦩ) dibarengi karo wujud pa (꧀ꦥ) sing dadi mpa (ꦩ꧀ꦥ). Wangun pasangan saben karakter ana ing tabel ing ngisor iki",
          "aksara_carakan_desc":
              "Aksara Jawa modern mung nggunakake 20 konsonan lan 20 aksara dhasar kang banjur diarani aksara nglegena (ꦲꦏ꧀ꦱꦫꦔ꧀ꦭꦼꦒꦼꦤ). Sawetara karakter sing isih ana banjur diowahi dadi aksara murda (ꦲꦏ꧀ꦱꦫꦩꦸꦂꦢ) kanggo nulis judhul lan jeneng sing dihormati, loro jeneng tokoh legenda (kayata Bima sing ditulis ꦨꦶꦩ) lan sing asli (e.gritꦮꦮꦮꦮꦮ) ꦟ). Saka 20 aksara legenda mung 9 aksara kang awujud murda, mula panganggone aksara murda ora padha karo panganggone aksara gedhe ing ejaan latin.",
          "aksara_jawa_desc":
              "Aksara Jawa, uga diarani Hanacaraka, iku sawijining sistem panulisan kang ngandhut sajarah lan kasugihan budaya. Aksara iki digunakake kanggo nulis basa Jawa lan nduweni oyod sing jero ing sastra Jawa, agama lan tradhisi budaya. Mangertosi aksara Jawa menika boten namung kangge nyinaoni sistem seratan, nanging ugi kangge mangertosi warisan budaya pulo Jawi ingkang mirunggan. Liwat sinau aksara Jawa, sampeyan bakal mlebu ing jagad sing narik kawigaten saben paraga nduweni makna lan kaendahan dhewe-dhewe. Jelajahi sejarah, filosofi lan estetika sing ana ing saben guratan naskah, lan temokake kepriye tulisan iki minangka jendhela sing mbukak jiwa lan kawicaksanan budaya Jawa.",
          "gotong_royong_desc":
              "Masarakat Ngayogyakarta misuwur kanthi semangat gotong royong lan saged gotong royong ing maneka warni kegiatan. Konsep gotong royong wis dadi bagian integral saka urip saben dinane, ing ngendi wong-wong padha tulung-tinulung kanggo nggayuh tujuan umum. Wiwit saka reresik lingkungan, renovasi omah, nganakake acara keagamaan, gotong royong tansah dadi praktik sing ditindakake kanthi semangat lan ati-ati. Ora mung iku, ing kahanan darurat utawa bencana alam, masyarakat Ngayogyakarta tansah siyaga tumindak kanthi cepet lan gotong royong kanggo nulungi wong-wong sing butuh. Semangat gotong royong menika nggambaraken kebersamaan lan solidaritas ingkang rumiyin wonten ing kabudayan lan nilai-nilai masyarakat Yogyakarta, saengga dados masyarakat ingkang kiat lan rukun ngadhepi maneka tantangan.",
          "sopan_santun_desc":
              "Wonten ing Ngayogyakarta masarakat nggadahi nilai-nilai unggah-ungguh. Etika lan tata krama minangka perangan kang ora bisa dipisahake saka urip saben dinane. Padha netepi adat lan tradhisi sing mulangake pentinge ngajeni wong liya, utamane sing luwih tuwa utawa luwih dhuwur. Sopan santun menika kagambaraken wonten ing maneka warni sesrawungan, wonten ing kulawarga, masarakat utawi ing papan-papan umum. Tiyang Ngayogyakarta mulangaken wigatosipun wicantenan ingkang alus, ngginakaken basa krama, saha ngajeni dhateng pamanggihipun tiyang sanes. Unggah-ungguh lan unggah-ungguh sajrone komunikasi mujudake wujud jati diri masyarakat Ngayogyakarta kang ndadekake ciri kang dibanggakake.",
          "main_social_desc":
              "Wonten ing Ngayogyakarta, masarakatipun misuwur kanthi sipat silaturahmi. Wong-wong iki dikenal ramah lan ramah nalika nampa tamu, turis lokal lan manca. Ramah-ramah iki kacetha ing macem-macem aspek urip saben dina, saka interaksi ing pasar tradisional kanggo ketemu ing dalan kutha. Kajawi saking menika, masarakat Ngayogyakarta ugi misuwur kanthi remen kaliyan budaya lan tradhisi lokal. Banget bangga karo warisan budaya, kayata tari, ukir lan musik tradhisional, kang diwarisake saka generasi kanggo generasi. Semangat gotong royong ugi kiyat wonten ing Ngayogyakarta ingkang asring makarya sesarengan ing maneka warni kegiatan sosial lan keagamaan. Iki kabeh nggambarake sikap inklusif lan harmonis sing dadi ciri masyarakat Yogyakarta.",
          "about_yogya":
              "Daerah sing sugih sajarah, budaya, lan kaendahan alam. Dumunung ing sisih kidul Pulo Jawa, provinsi iki dikenal minangka pusat budaya lan pendhidhikan ing Indonesia. dadi papan panggonane Sultan lan kulawargane.Saliyane iku provinsi iki uga misuwur kanthi maneka warna kesenian tradhisional, kayata wayang kulit, tari Jawa, lan gamelan.\n\nAna akeh crita sing nyenengake saka sejarahe sing kudu ditelusuri. Ayo, kita nliti sejarah Ngayogyakarta luwih jero!",
          "panguripan":
              "Panguripan sosial ing Ngayogyakarta kacetha ing rasa sumeh lan ramah wargane. Kabudayan gotong royong ing ngriki taksih kiyat, ingkang asring kempal gotong royong ing maneka warni kagiyatan, saking gotong royong ngresiki lingkungan ngantos tulung-tinulung ing pahargyan adat. Kejaba iku, tradhisi tradhisional lan nilai-nilai kaluwarga uga ana ing panguripan padinan. Masyarakat Ngayogyakarta uga dikenal minangka wong sing ramah lan terbuka marang wisatawan, siap aweh pitulungan lan informasi marang sapa wae sing mbutuhake.",
          "bosojowo":
              "Ing Ngayogyakarta, basa Jawa tetep dadi basa sing umum digunakake, sanajan basa Indonesia uga akeh dimangerteni lan digunakake. Dialek khas Jawa asring digunakake dening mayoritas penduduk, nalika kemampuan kanggo komunikasi nganggo basa Inggris uga umum, utamane ing papan wisata sing asring dikunjungi wisatawan manca. Kajawi saking punika, aksara Jawi taksih gadhah peran ingkang wigatos wonten ing pagesangan sosial, senajan panganggenipun boten kasebar kados dene pinten-pinten dasawarsa kapungkur.",
          "upacara":
              "Saben wayah penting ing urip wong dirayakake kanthi upacara lan ritual tradisional. Wiwit lair nganti mati, ora ana sing kantun. Bayangake ing tengah-tengah suasana perayaan, karo kulawarga lan tangga-tanggane, dheweke ngrayakake kanthi anget. Ana sing nggumunake karo tarian tradhisional sing mempesona, ana uga sing nyengir karo irama gamelan sing khas. Busana tradisional sing apik lan warna-warni minangka daya tarik khusus ing saben prosesi. Luwih saka ritual, upacara iki minangka kesempatan kanggo wong-wong mau kanggo nyawiji, ngrasakake kebersamaan, lan ngrayakake warisan budaya sing sugih.",
          "journey_title": "Arep lelungan?",
          "journey_description":
              "Temokake tujuan wisata sing apik tenan ing kaca kita sing diisi kaendahan alam, keajaiban budaya lan petualangan sing nyenengake ing kutha khusus iki. Dolan maring kaca tujuan wisata saiki lan ayo sampeyan bakal terpesona karo kaendahan Yogyakarta sing nunggu kanggo dijelajahi!",
          "deskripsi_kebudayaan":
              "Ngayogyakarta minangka salah satunggaling pusat kabudayan ing Indonesia, ngedalaken keragaman budaya ingkang atraktif. Saka kesenian tradhisional kayata wayang kulit, tari Jawa, nganti gamelan sing nggumunake, kabudayan Ngayogyakarta sing sugih bisa narik kawigaten para pengagum saka sak ndonya. Sing ora kalah menarik yaiku keragaman kuliner sing bisa ditemokake ing saben pojok kutha. Saka legi nganti pedhes, panganan khas kayata gudeg, soto lan bakpia nggodha indera pangrasa lan manjakan selera pengunjung. Ngayogyakarta nyuguhake pengalaman kuliner sing ora iso dilalekake kanggo saben turis sing teka.",
          "history_yogya":
              "Sejarah Ngayogyakarta nggambaraken lelampahan ingkang panjang wiwit jaman pra-krajan ingkang kebak mitos lan legenda, ngantos kabentukipun karajan ingkang megah, lan nglajengaken peranipun minangka pusat kabudayan lan pendhidhikan ngantos jaman modern. Sadurungé ngadegé Yogyakarta, tlatah iki kondhang karo manéka mitos ing sakiwa-tengené, nuwuhaké pondasi budaya sing kuwat. Banjur, liwat macem-macem kerajaan kayata Mataram Kuna lan Medang Kamulan, Yogyakarta berkembang dadi pusat kekuwatan sing mengaruhi sejarah Indonesia. Pembentukan Kraton Ngayogyakarta Hadiningrat ing abad kaping 18 dening Sultan Hamengkubuwono I minangka tonggak sejarah sing wigati. Ing jaman kolonial lan jaman kamardikan, Ngayogyakarta tetep merjuangake jati diri lan njaga warisan budayane. Saiki, Yogyakarta tetep dadi tujuan budaya sing unggul, narik pengunjung saka saindenging jagad kanggo nyekseni sejarah lan budaya sing isih ana. Kangge njlentrehaken lelampahan Ngayogyakarta ingkang narik kawigatosan wiwit jaman pra-krajan dumugi jaman modern, mangga kita tliti katranganipun ing ngandhap menika.",
          "Pre-Historic": "Prasejarah",
          "era_mataram": "Jaman Mataram",
          "era_perjuangan": "Era Perjuangan",
          "era_modern": "Era Modern",
          "prehistoric_desc":
              "Sejarah Ngayogyakarta nggambaraken lelampahan ingkang panjang wiwit jaman pra-krajan ingkang kebak mitos lan legenda, ngantos kabentukipun karajan ingkang megah, lan nglajengaken peranipun minangka pusat kabudayan lan pendhidhikan ngantos jaman modern. Sadurungé ngadegé Yogyakarta, tlatah iki kondhang karo manéka mitos ing sakiwa-tengené, nuwuhaké pondasi budaya sing kuwat. Banjur, liwat macem-macem kerajaan kayata Mataram Kuna lan Medang Kamulan, Yogyakarta berkembang dadi pusat kekuwatan sing mengaruhi sejarah Indonesia. Pembentukan Kraton Ngayogyakarta Hadiningrat ing abad kaping 18 dening Sultan Hamengkubuwono I minangka tonggak sejarah sing wigati. Ing jaman kolonial lan jaman kamardikan, Ngayogyakarta tetep merjuangake jati diri lan njaga warisan budayane. Saiki, Yogyakarta tetep dadi tujuan budaya sing unggul, narik pengunjung saka saindenging jagad kanggo nyekseni sejarah lan budaya sing isih ana. Kangge njlentrehaken lelampahan Ngayogyakarta ingkang narik kawigatosan wiwit jaman pra-krajan dumugi jaman modern, mangga kita tliti katranganipun ing ngandhap menika.",
          "era_mataram_desc":
              "Yogyakarta nduweni sejarah sing dawa lan sugih, wiwit jaman Kerajaan Mataram Islam, nalika jaman Mataram ing abad kaping 17, wilayah Ngayogyakarta dadi bagian integral saka kerajaan. Sultan Agung Hanyokrokusumo, raja Mataram sing misuwur, dibangun Karaton Ngayogyakarta minangka pusat pemerintahan lan kabudayan.Tahun 1755, Karajan Mataram pecah amarga Perang Sadulur Jawa.Perjanjian Giyanti mbagi Mataram dadi rong kerajaan: Kasunanan Surakarta lan Kasultanan Ngayogyakarta. nduweni gelar Sultan Hamengku Buwono I, dadi pendiri lan raja pisanan Kasultanan Ngayogyakarta.\n\n\ nPembentukan Ngayogyakarta ndadekake owah-owahan gedhe ing wilayah kasebut.Sultan Hamengku Buwono I yasa kraton anyar ing Ngayogyakarta kang dadi pusate. pemerintahan lan kabudayan anyar.Dheweke uga ngrumusake filosofi \“Hamemayu Hayuning Bawono\” kang dadi tuntunan kanggo masyarakat Ngayogyakarta.Yogyakarta berkembang pesat ing pimpinan Sultan Hamengku Buwono I lan para peneruse. Kutha iki minangka pusat pendidikan, seni lan budaya Jawa. Ngayogyakarta uga nduweni peran penting ing perjuangan kemerdekaan Indonesia.\n\nTahun 1812, Yogyakarta ngalami perpecahan maneh. Sultan Hamengku Buwono II kepeksa Walanda nandhatangani Perjanjian Giyanti Anyar. Perjanjian iki mbagi Ngayogyakarta Hadiningrat dadi rong wilayah: Ngayogyakarta Hadiningrat lan Pakualaman.\n\nKadipaten Pakualaman dipimpin dening Adipati Paku Alam I, keturunan Sultan Hamengku Buwono I. Pembagian iki dumadi nganti taun 1945, nalika Ngayogyakarta jumeneng maneh. manunggal dadi siji wilayah",
          "era_perjuangan_desc":
              "Ngayogyakarta nduweni peran wigati sajrone perjuangan nglawan kolonialisme Walanda. Ing periode iki, kutha iki dadi pusat koordinasi lan perencanaan gerakan perlawanan marang Walanda. Sri Sultan Hamengkubuwono IX ingkang misuwur kanthi kepemimpinan ingkang wicaksana lan gagah prakosa, dados salah satunggaling tokoh sentral ing perlawanan punika. Ngayogyakarta dadi markas Pemerintah Republik Indonesia Berbasis Yogyakarta (PRRI) sawise Walanda ngrebut Jakarta ing taun 1948. Ing tengah-tengah tekanan lan ancaman Walanda, masyarakat Yogyakarta nyawiji kanthi semangat perlawanan sing wani. Serangan Umum 1 Maret 1949 ing Ngayogyakarta mujudake momen kang wigati sajrone sejarah, ing ngendi masyarakat Yogyakarta nyawiji kanggo nundhung penjajah Walanda saka kutha iki.\n\nPerjuangan Yogyakarta nglawan kolonialisme Walanda mratelakake semangat lan keteguhan masyarakat kanggo mbela kamardikan Indonesia. . Sanajan ngadhepi kesulitan lan tekanan sing gedhe, semangat perlawanan ora tau mati. Sri Sultan Hamengkubuwono IX minangka pimpinan ingkang dipun tresnani lan dipun kurmati tansah mimpin masyarakat Ngayogyakarta ing perjuanganipun. Ngayogyakarta kanthi maneka wujud strategi panyengkuyung lan perlawanan, tetep dadi beteng sing kuwat lan kuwat ngadhepi penjajah. Sejarah iki ora mung negesake keberanian lan semangat juange masyarakat Yogyakarta, nanging uga negesake posisine minangka salah sawijining pusat perlawanan paling kuat tumrap kolonialisme Walanda ing Indonesia.",
          "era_modern_desc":
              "Ngayogyakarta ngalami pergolakan gedhé sawisé Indonésia mardika. Kutha iki dadi ibukutha negara ing taun 1946 sawisé Walanda njajah maneh Indonésia. Kahanan politik lan ekonomi wektu iku kebak geger. Masarakat Ngayogyakarta sami gotong royong mbiyantu pamarentah ing perjuangan njagi kamardikan. Senadyan ngalami wektu kang angel, Pasca Kamardikan: Sawisé kamardikan, Yogyakarta tetep dadi salah sawijining pusat aktivitas politik lan pamaréntahan ing Indonésia. Kutha iki dadi panggonan sawetara prastawa penting ing sajarah Indonesia, kalebu pemilihan Soekarno minangka presiden pisanan ing Indonesia ing taun 1945.\n\nG30S/PKI Jaman Susah: Ing taun 1965, Yogyakarta, kaya kabeh Indonesia, ngalami mangsa kangelan sajrone acara G30S/PKI. Sawetara tokoh penting kayata Jendral Soeharto nduweni peran kanggo ndhelikake kraman iki. Senadyan ketegangan lan konflik ing sawetara wilayah, Yogyakarta banjur pulih lan dadi basis sing kuat kanggo rezim Orde Baru sing dipimpin dening Soeharto. Yogyakarta tetep dadi pusat budaya lan pendidikan. Universitas Gadjah Mada didegake ing taun 1949, dadi pralambang pangarep-arep kanggo masa depan bangsa.meluas_luwih Urip seni lan budaya uga berkembang kanthi cepet, kanthi muncule macem-macem seniman lan budayawan sing misuwur.\n\nSaiki Yogyakarta wis berkembang dadi modern. lan kutha dinamis. Kaendahan alam lan budayane dadi daya tarik utama para wisatawan. Kutha iki uga dadi pusat pendidikan sing luwih dhuwur kanthi akeh universitas sing kondhang. Sanajan wis modern, Yogyakarta isih tetep ngugemi tradhisi lan budayane. Kraton Ngayogyakarta taksih jumeneng dados pralambang sejarah lan budaya Jawi.expand_more Uripe masyarakat Ngayogyakarta sing grapyak lan toleran dadi daya tarik khusus kanggo para pengunjung. Ngayogyakarta wis ngalami akèh owah-owahan wiwit kamardikan. Saiki, kutha iki wis dadi salah siji kutha unggul ing Indonesia ing macem-macem lapangan. Kaendahan alam, kabudayan lan keramahan masyarakat ndadekake Yogyakarta dadi kutha sing istimewa.",
          "culinary_desc":
              "Ngayogyakarta utawa luwih misuwur kanthi jeneng Jogja, minangka swarga kanggo para wisatawan kuliner sing ngelak petualangan rasa. Saka gudeg sing legendaris nganti sate wedhus sing enak, kutha iki nyedhiyakake macem-macem masakan sing bakal nyenengake rasa sampeyan. Jalan Malioboro lan sakubenge dadi magnet kanggo jajanan dalan sing unik, dene restoran lokal nawakake pengalaman kuliner sing luwih mewah kanthi sentuhan tradisional. Tempe, tahu lan kedele olahan liyane uga dadi daya tarik khusus kanggo para penikmat kuliner. Ayo jelajahi macem-macem kuliner ing Jogja, amarga saben gigitan minangka perjalanan rasa sing ora bisa dilalekake!",
          "about_1":
              "SABA JOGJA hadir minangka platform digital inovatif, mbukak lawang kanggo turis kanggo njelajah pesona Yogyakarta kanthi tuntas. Platform iki ora mung nyedhiyakake akses sing gampang menyang macem-macem layanan wisata, nanging uga menehi jendela menyang sejarah sing sugih, budaya, kuliner lan panorama alam Yogyakarta sing nggumunake.",
          "about_2":
              "Kanggo nggampangake perjalanan wisata, SABA JOGJA ora mung menehi informasi babagan obyek wisata sing menarik, nanging uga nyedhiyakake layanan terpadu sing kalebu reservasi tiket, akomodasi lan transportasi. Kanthi mangkono, pengunjung bisa ngrancang lan nyenengake perjalanan kanthi gampang luwih lancar lan nyaman. , luwih saka mung dadi piranti kanggo wisatawan, SABA JOGJA uga nduweni komitmen sing kuat kanggo nyengkuyung pangembangan pariwisata lokal.Lantaran platform iki, para aktor pariwisata lokal diwenehi kesempatan kanggo promosi produk lan layanan menyang pamirsa sing luwih akeh. mbantu nambah eksposur, nanging uga nduweni potensi kanggo nambah pendapatan lan pertumbuhan ekonomi ing tingkat lokal. budaya diduweni dening kutha iki, platform iki main peran ing njaga lan mromosiaken identitas lokal unik. “Kajawi saking punika, lumantar promosi pariwisata, SABA JOGJA ugi mbiyantu ningkataken kesadaran babagan pentinge pelestarian lingkungan lan nglestantunaken alam ing salebeting perkembangan pariwisata ingkang cepet.",
          "The Magic Land of":"Negeri Ajaib",
          "places_desc":"Ngayogyakarta pancen ngemu akeh keajaiban ing macem-macem obyek wisata. Saka kaendahan alam kayata Gunung Merapi lan Pantai Parangtritis, nganti warisan budaya kayata Candi Borobudur lan Kraton Ngayogyakarta, saben pojok kutha iki ngetokake pesona sing luar biasa. Kajaba iku, kuliner tradhisional kayata gudeg lan sate kere uga ora ketinggalan. Ayo, ayo jelajahi keindahan Yogyakarta lan gawe kenangan sing ora iso dilalekake karo wong sing ditresnani!",
          "let's explore the most recommended tourist attractions !":"ayo njelajah obyek wisata sing paling disaranake!",
        },
      };
}
