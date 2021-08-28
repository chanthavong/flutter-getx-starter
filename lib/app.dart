import 'package:flutter/material.dart';
import 'package:flutter_getx_starter/config/app_config.dart';
import 'package:flutter_getx_starter/routes/app_page.dart';
import 'package:get/route_manager.dart';

import 'routes/app_route.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: AppConfig.AppTitle,
      initialRoute: Routes.home,
      getPages: AppPage.routes,
    );
  }
}
