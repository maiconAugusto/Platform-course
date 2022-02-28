import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';

class Toast {
  void toastSuccess({required String title, required String subTitle}) {
    MotionToast.success(
            title: Text("Success Motion Toast"),
            description: Text("Example of success motion toast"),
            width: 300)
        .show(Get.context!);
  }

  void toastInfo({required String title, required String subTitle}) {
    MotionToast.info(
            title: Text("Success Motion Toast"),
            description: Text("Example of success motion toast"),
            width: 300)
        .show(Get.context!);
  }

  void toastWarning({required String title, required String subTitle}) {
    MotionToast.warning(
            title: Text("Success Motion Toast"),
            description: Text("Example of success motion toast"),
            width: 300)
        .show(Get.context!);
  }

  void toastError({required String title, required String subTitle}) {
    MotionToast.error(
            title: Text("Success Motion Toast"),
            description: Text("Example of success motion toast"),
            width: 300)
        .show(Get.context!);
  }
}
