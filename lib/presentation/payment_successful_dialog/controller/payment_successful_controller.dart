import 'package:comfort_booking/core/app_export.dart';
import 'package:comfort_booking/presentation/payment_successful_dialog/models/payment_successful_model.dart';

class PaymentSuccessfulController extends GetxController {
  Rx<PaymentSuccessfulModel> paymentSuccessfulModelObj =
      PaymentSuccessfulModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
