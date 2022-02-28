import 'package:course_web/app/modules/dashboard/controller.dart';
import 'package:get/get.dart';

class DashBoardBinings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashBoardController>(() => DashBoardController());
  }
}
