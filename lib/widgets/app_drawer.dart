import 'package:flutter/material.dart';
import 'package:flutter_getx_starter/routes/app_route.dart';
import 'package:get/get.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Setting'),
            onTap: () {
              Navigator.pop(context);
              Get.toNamed(Routes.setting);
            },
          ),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text('About'),
          )
        ],
      ),
    );
  }
}
