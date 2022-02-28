import 'package:course_web/app/modules/instructor/controller.dart';
import 'package:get/get.dart';

class InstructorBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InstructorController>(() => InstructorController());
  }
}
