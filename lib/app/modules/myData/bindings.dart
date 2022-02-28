import 'package:course_web/app/modules/myData/controller.dart';
import 'package:get/get.dart';

class MyDataBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyDataController>(() => MyDataController());
  }
}
