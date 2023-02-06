import '../controller/refund_method_one_controller.dart';
import 'package:get/get.dart';

class RefundMethodOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RefundMethodOneController());
  }
}
