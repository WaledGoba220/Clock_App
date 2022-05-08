import 'package:clock_app/controller/home_controller.dart';
import 'package:clock_app/view/widgets/clock_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Clock',
              style: Get.isDarkMode
                  ? GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.normal)
                  : GoogleFonts.poppins(
                      color: const Color(0xff686868),
                      fontSize: 24,
                      fontWeight: FontWeight.normal)),
          centerTitle: true,
          elevation: 0.0,
          // ignore: use_full_hex_values_for_flutter_colors
          shadowColor: const Color(0xff00000029),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: FlutterSwitch(
                width: 50.0,
                height: 30.0,
                toggleSize: 20.0,
                value: controller.status.value,
                borderRadius: 30.0,
                padding: 2.0,
                activeToggleColor: const Color(0xFF6E40C9),
                inactiveToggleColor: const Color(0xFF2F363D),
                activeSwitchBorder: Border.all(
                  color: const Color(0xFF3C1E70),
                  width: 1.0,
                ),
                inactiveSwitchBorder: Border.all(
                  color: const Color(0xFFD1D5DA),
                  width: 1.0,
                ),
                activeColor: const Color(0xFF271052),
                inactiveColor: Colors.white,
                activeIcon: const Icon(
                  Icons.nightlight_round,
                  color: Color(0xFFF8E3A1),
                ),
                inactiveIcon: const Icon(
                  Icons.wb_sunny,
                  color: Color(0xFFFFDF5D),
                ),
                onToggle: (val) {
                  controller.status.value = val;

                  if (Get.isDarkMode) {
                    Get.changeThemeMode(ThemeMode.light);
                  } else {
                    Get.changeThemeMode(ThemeMode.dark);
                  }

                  (context as Element).markNeedsBuild();
                },
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: [
              const ClockWidget(),
              Obx(
                () => Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 280,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Get.isDarkMode
                              ? const Color(0xff141414)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(44),
                          boxShadow: [
                            BoxShadow(
                              color: Get.isDarkMode
                                  // ignore: use_full_hex_values_for_flutter_colors
                                  ? const Color(0xff98989829)
                                  // ignore: use_full_hex_values_for_flutter_colors
                                  : const Color(0xff57575729),
                            )
                          ]),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("date :",
                              style: Get.isDarkMode
                                  ? GoogleFonts.poppins(
                                      color: const Color(0xffC9C9C9),
                                      fontSize: 12)
                                  : GoogleFonts.poppins(
                                      color: const Color(0xff2E2E2E),
                                      fontSize: 12)),
                          const SizedBox(
                            width: 16,
                          ),
                          Text(
                              DateFormat("d - MMM - y")
                                  .format(controller.dateTime.value),
                              style: Get.isDarkMode
                                  ? GoogleFonts.poppins(
                                      color: const Color(0xffC9C9C9),
                                      fontSize: 21)
                                  : GoogleFonts.poppins(
                                      color: const Color(0xff2E2E2E),
                                      fontSize: 21)),
                        ],
                      ),
                    ),
                    const SizedBox(height: 25.0),
                    Container(
                      alignment: Alignment.center,
                      width: 280,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Get.isDarkMode
                              ? const Color(0xff141414)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(44),
                          boxShadow: const [
                            BoxShadow(
                              // ignore: use_full_hex_values_for_flutter_colors
                              color: Color(0xff00000029),
                              blurRadius: 20,
                              spreadRadius: 6,
                            )
                          ]),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("time :",
                              style: Get.isDarkMode
                                  ? GoogleFonts.poppins(
                                      color: const Color(0xffC9C9C9),
                                      fontSize: 12)
                                  : GoogleFonts.poppins(
                                      color: const Color(0xff2E2E2E),
                                      fontSize: 12)),
                          const SizedBox(
                            width: 16,
                          ),
                          Text(
                              DateFormat("h : m : s a")
                                  .format(controller.dateTime.value),
                              style: Get.isDarkMode
                                  ? GoogleFonts.poppins(
                                      color: const Color(0xffC9C9C9),
                                      fontSize: 21)
                                  : GoogleFonts.poppins(
                                      color: const Color(0xff686868),
                                      fontSize: 21)),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
