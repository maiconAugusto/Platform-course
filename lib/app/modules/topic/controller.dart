import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';

class TopicController extends GetxController {
  void displaySuccessMotionToast() {
    MotionToast.success(
      title: Text(
        'من اليمين',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      description: Text(
        'هذا مثال بالعربية',
        style: TextStyle(fontSize: 12),
      ),
      layoutOrientation: ORIENTATION.rtl,
      animationType: ANIMATION.fromRight,
      width: 300,
      onClose: () {},
    ).show(Get.context!);
  }
}
