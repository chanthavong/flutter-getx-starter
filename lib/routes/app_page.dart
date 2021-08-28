import 'package:flutter_getx_starter/pages/home/home.dart';
import 'package:get/get.dart';

import 'app_route.dart';

class AppPage {
  static final routes = [
    GetPage(
      name: Routes.home,
      page: () => HomeView(),
      binding: HomeBinding(),
    )
  ];
}
