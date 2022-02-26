import 'package:course_web/app/modules/topic/controller.dart';
import 'package:get/get.dart';

class TopicBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TopicController>(() => TopicController());
  }
}
