import 'dart:math';
import 'package:clock_app/controller/home_controller.dart';
import 'package:clock_app/view/painter/clock_painter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ClockWidget extends GetView<HomeController> {
  const ClockWidget({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding:  EdgeInsets.only(left: 30,right: 30,top: 84),
      child:Obx(()=> AspectRatio(
        aspectRatio: 1,
        child: Container(
          decoration: BoxDecoration(
              color: Get.isDarkMode?Color(0xff141414):Color(0xffFFFFFF),
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 0),
                    blurRadius: 64,
                    color: Color(0xFF364564).withOpacity(0.14))
              ]),
          child: Transform.rotate(
              angle: -pi / 2,
              child:  CustomPaint(
                  painter: ClockPainter(controller.dateTime.value))),
        ),
      ),)
      
    );
  }
}
