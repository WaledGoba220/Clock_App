import 'dart:async';
import 'package:get/get.dart';

class HomeController extends GetxController {
  Rx<DateTime> dateTime = DateTime.now().obs;
  RxBool status = false.obs;

  @override
  void onInit() {
    // ignore: void_checks
    Timer.periodic(const Duration(seconds: 1), (timer) {
      return dateTime.value = DateTime.now();
    });
    super.onInit();
  }
}
