import 'package:course_web/app/modules/courses/controller.dart';
import 'package:get/get.dart';

class CoursesBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CoursesController>(() => CoursesController());
  }
}
