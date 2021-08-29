import 'package:flutter/material.dart';
import 'package:flutter_getx_starter/widgets/app_drawer.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text('Home view'),
      ),
      drawer: AppDrawer(),
      body: Center(child: Obx(() => Text("${controller.counter}"))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
