import 'package:budaya_jogja/controller/navbar.dart';
import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class TranslateController extends GetxController {
  var selectedLanguage = "en_US".obs;
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
            style: Get.theme.textTheme.titleMedium!.copyWith(
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
            style: Get.theme.textTheme.titleMedium!.copyWith(
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
            style: Get.theme.textTheme.titleMedium!.copyWith(
              color: Get.find<NavbarController>().scrollBool() ? Colors.black : null,
            ),
          ),
        ],
      ),
    },
  );

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
          "navbar_diversity": "diversity",
          "navbar_about_us": "about us",
        },
        "id_ID": {
          "navbar_history": "sejarah",
          "navbar_script": "aksara",
          "navbar_culture": "budaya",
          "navbar_diversity": "keberagaman",
          "navbar_about_us": "tentang kami",
        },
        "jw_ID": {
          "navbar_history": "sajarah",
          "navbar_script": "naskah",
          "navbar_culture": "budaya",
          "navbar_diversity": "keragaman",
          "navbar_about_us": "babagan awake dhewe",
        },
      };
}
