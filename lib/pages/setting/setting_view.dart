import 'package:flutter/material.dart';
import 'package:flutter_getx_starter/pages/setting/setting_controller.dart';
import 'package:get/get.dart';

class SettingView extends StatelessWidget {
  const SettingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
      ),
      body: ListView(
        children: [
          Obx(
            () => SwitchListTile(
              value: SettingController.to.themeMode.value,
              onChanged: (value) {
                print(value);
                Get.changeThemeMode(value ? ThemeMode.dark : ThemeMode.light);
                SettingController.to.changeTheme();
              },
              title: Row(
                children: [
                  Icon(Icons.light),
                  SizedBox(width: 20),
                  Text('Change theme'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
