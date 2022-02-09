import 'package:get/get.dart';

import 'homecontroller.dart';



class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}