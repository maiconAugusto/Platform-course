import 'package:course_web/app/modules/payment/controller.dart';
import 'package:get/get.dart';

class PaymentBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PaymentController>(() => PaymentController());
  }
}
