import '../controller/booking_completed_tab_container_controller.dart';
import 'package:get/get.dart';

class BookingCompletedTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BookingCompletedTabContainerController());
  }
}
