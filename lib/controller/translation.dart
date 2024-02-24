import 'package:budaya_jogja/controller/navbar.dart';
import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class TranslateController extends GetxController {
  var selectedLanguage = "en_US".obs;

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
                color: Get.find<NavbarController>().scrollBool() ? Colors.black : null,
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
                color: Get.find<NavbarController>().scrollBool() ? Colors.black : null,
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
                color: Get.find<NavbarController>().scrollBool() ? Colors.black : null,
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
          "navbar_about_us": "about us",
          "social_life": "social life",
          "event": "event",
          "warisan": "inheritance",
          "travel": "travel",
          "places": "places",
          "kuliner": "culinary",
          "region_of": "The Special Region of",
          "show_more": "show more",
          "culinary_title": "Explore all the taste",
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
          "The History of": "The History of",
          "history_yogya":
              "The history of Yogyakarta depicts a long journey from pre-kingdom times filled with myths and legends, to the formation of a magnificent kingdom, and continuing its role as a center of culture and education until modern times. Before the founding of Yogyakarta, this area was known for the various myths surrounding it, creating a strong cultural foundation. Then, through various kingdoms such as Ancient Mataram and Medang Kamulan, Yogyakarta developed into a center of power that influenced Indonesian history. The formation of the Ngayogyakarta Hadiningrat Palace in the 18th century by Sultan Hamengkubuwono I was an important milestone in its history. During the colonial era and the period of independence, Yogyakarta continued to fight for its identity and maintain its cultural heritage. Today, Yogyakarta remains a leading cultural destination, attracting visitors from all over the world to witness the beautiful history and culture that still lives there. To explore more about Yogyakarta's interesting journey from pre-kingdom to modern times, let's explore the details below.",
          "Pre-Historic": "Pre-Historic",
          "prehistoric_desc":
              "The history of Yogyakarta depicts a long journey from pre-kingdom times filled with myths and legends, to the formation of a magnificent kingdom, and continuing its role as a center of culture and education until modern times. Before the founding of Yogyakarta, this area was known for the various myths surrounding it, creating a strong cultural foundation. Then, through various kingdoms such as Ancient Mataram and Medang Kamulan, Yogyakarta developed into a center of power that influenced Indonesian history. The formation of the Ngayogyakarta Hadiningrat Palace in the 18th century by Sultan Hamengkubuwono I was an important milestone in its history. During the colonial era and the period of independence, Yogyakarta continued to fight for its identity and maintain its cultural heritage. Today, Yogyakarta remains a leading cultural destination, attracting visitors from all over the world to witness the beautiful history and culture that still lives there. To explore more about Yogyakarta's interesting journey from pre-kingdom to modern times, let's explore the details below.",
        },
        "id_ID": {
          "navbar_history": "sejarah",
          "navbar_script": "aksara",
          "navbar_culture": "budaya",
          "navbar_galeri": "galeri",
          "navbar_about_us": "tentang kami",
          "social_life": "kehidupan sosial",
          "event": "peristiwa",
          "warisan": "warisan",
          "travel": "bepergian",
          "places": "tempat",
          "kuliner": "kuliner",
          "region_of": "Daerah Istimewa",
          "show_more": "selengkapnya",
          "culinary_title": "Jelajahi semua rasanya",
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
          "The History of": "Sejarah dari",
          "history_yogya":
              "Sejarah Yogyakarta menggambarkan perjalanan panjang dari masa prakerajaan yang dipenuhi dengan mitos dan legenda, hingga pembentukan kerajaan yang megah, dan melanjutkan perannya sebagai pusat budaya dan pendidikan hingga zaman modern. Sebelum berdirinya Yogyakarta, kawasan ini dikenal dengan berbagai mitos yang melingkupinya, menciptakan landasan budaya yang kuat. Kemudian, melalui berbagai kerajaan seperti Mataram Kuno dan Medang Kamulan, Yogyakarta berkembang menjadi pusat kekuasaan yang memengaruhi sejarah Indonesia. Pembentukan Keraton Ngayogyakarta Hadiningrat pada abad ke-18 oleh Sultan Hamengkubuwono I menjadi tonggak penting dalam sejarahnya. Selama era kolonial dan masa kemerdekaan, Yogyakarta terus memperjuangkan identitasnya dan menjaga warisan budayanya. Hari ini, Yogyakarta tetap menjadi destinasi budaya terkemuka, menarik pengunjung dari seluruh dunia untuk menyaksikan keindahan sejarah dan budaya yang masih hidup di sana. Untuk menjelajahi lebih lanjut tentang perjalanan menarik Yogyakarta dari masa prakerajaan hingga zaman modern, mari kita telusuri detailnya di bawah ini.",
          "Pre-Historic": "Prasejarah",
          "prehistoric_desc":
              "Sejarah Yogyakarta menggambarkan perjalanan panjang dari masa prakerajaan yang dipenuhi dengan mitos dan legenda, hingga pembentukan kerajaan yang megah, dan melanjutkan perannya sebagai pusat budaya dan pendidikan hingga zaman modern. Sebelum berdirinya Yogyakarta, kawasan ini dikenal dengan berbagai mitos yang melingkupinya, menciptakan landasan budaya yang kuat. Kemudian, melalui berbagai kerajaan seperti Mataram Kuno dan Medang Kamulan, Yogyakarta berkembang menjadi pusat kekuasaan yang memengaruhi sejarah Indonesia. Pembentukan Keraton Ngayogyakarta Hadiningrat pada abad ke-18 oleh Sultan Hamengkubuwono I menjadi tonggak penting dalam sejarahnya. Selama era kolonial dan masa kemerdekaan, Yogyakarta terus memperjuangkan identitasnya dan menjaga warisan budayanya. Hari ini, Yogyakarta tetap menjadi destinasi budaya terkemuka, menarik pengunjung dari seluruh dunia untuk menyaksikan keindahan sejarah dan budaya yang masih hidup di sana. Untuk menjelajahi lebih lanjut tentang perjalanan menarik Yogyakarta dari masa prakerajaan hingga zaman modern, mari kita telusuri detailnya di bawah ini.",
        },
        "jw_ID": {
          "navbar_history": "sajarah",
          "navbar_script": "naskah",
          "navbar_culture": "budaya",
          "navbar_galeri": "galeri",
          "social_life": "urip sosial",
          "navbar_about_us": "babagan awake dhewe",
          "event": "acara",
          "warisan": "warisan",
          "travel": "dolan",
          "places": "panggonan",
          "kuliner": "kuliner",
          "region_of": "Wilayah Khusus Kab",
          "show_more": "nuduhake liyane",
          "culinary_title": "Jelajahi kabeh rasa",
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
          "The History of": "Sejarah saka",
          "history_yogya":
              "Sejarah Ngayogyakarta nggambaraken lelampahan ingkang panjang wiwit jaman pra-krajan ingkang kebak mitos lan legenda, ngantos kabentukipun karajan ingkang megah, lan nglajengaken peranipun minangka pusat kabudayan lan pendhidhikan ngantos jaman modern. Sadurungé ngadegé Yogyakarta, tlatah iki kondhang karo manéka mitos ing sakiwa-tengené, nuwuhaké pondasi budaya sing kuwat. Banjur, liwat macem-macem kerajaan kayata Mataram Kuna lan Medang Kamulan, Yogyakarta berkembang dadi pusat kekuwatan sing mengaruhi sejarah Indonesia. Pembentukan Kraton Ngayogyakarta Hadiningrat ing abad kaping 18 dening Sultan Hamengkubuwono I minangka tonggak sejarah sing wigati. Ing jaman kolonial lan jaman kamardikan, Ngayogyakarta tetep merjuangake jati diri lan njaga warisan budayane. Saiki, Yogyakarta tetep dadi tujuan budaya sing unggul, narik pengunjung saka saindenging jagad kanggo nyekseni sejarah lan budaya sing isih ana. Kangge njlentrehaken lelampahan Ngayogyakarta ingkang narik kawigatosan wiwit jaman pra-krajan dumugi jaman modern, mangga kita tliti katranganipun ing ngandhap menika.",
          "Pre-Historic": "Prasejarah",
          "prehistoric_desc":
              "Sejarah Ngayogyakarta nggambaraken lelampahan ingkang panjang wiwit jaman pra-krajan ingkang kebak mitos lan legenda, ngantos kabentukipun karajan ingkang megah, lan nglajengaken peranipun minangka pusat kabudayan lan pendhidhikan ngantos jaman modern. Sadurungé ngadegé Yogyakarta, tlatah iki kondhang karo manéka mitos ing sakiwa-tengené, nuwuhaké pondasi budaya sing kuwat. Banjur, liwat macem-macem kerajaan kayata Mataram Kuna lan Medang Kamulan, Yogyakarta berkembang dadi pusat kekuwatan sing mengaruhi sejarah Indonesia. Pembentukan Kraton Ngayogyakarta Hadiningrat ing abad kaping 18 dening Sultan Hamengkubuwono I minangka tonggak sejarah sing wigati. Ing jaman kolonial lan jaman kamardikan, Ngayogyakarta tetep merjuangake jati diri lan njaga warisan budayane. Saiki, Yogyakarta tetep dadi tujuan budaya sing unggul, narik pengunjung saka saindenging jagad kanggo nyekseni sejarah lan budaya sing isih ana. Kangge njlentrehaken lelampahan Ngayogyakarta ingkang narik kawigatosan wiwit jaman pra-krajan dumugi jaman modern, mangga kita tliti katranganipun ing ngandhap menika.",
        },
      };
}
