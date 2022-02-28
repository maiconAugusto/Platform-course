import 'package:course_web/utils/toast.dart';
import 'package:get/get.dart';

class TopicController extends GetxController {
  Toast toast = Toast();
  void displaySuccessMotionToast() {
    toast.toastError(title: 'Ok', subTitle: 'sd');
  }
}
