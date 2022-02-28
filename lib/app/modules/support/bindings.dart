import 'package:course_web/app/modules/support/controller.dart';
import 'package:get/get.dart';

class SupportBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SupportController>(() => SupportController());
  }
}
