import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/app/translations/app_translations.dart';
import 'package:getx_pattern/app/ui/home/home_page.dart';

import 'app/bindings/home_binding.dart';
import 'app/routes/app_routes.dart';
import 'app/ui/theme/app_theme.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.splash,
    theme: appThemeData,
    defaultTransition: Transition.fade,
    initialBinding: HomeBinding(),
    // getPages: AppPages.pages,
    home: const HomePage(),
    locale: const Locale('en', 'US'),
    translationsKeys: AppTranslation.translations,
  ));
}
