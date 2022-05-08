import 'package:clock_app/controller/home_controller.dart';
import 'package:get/get.dart';

class MyBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
  }
}
