import 'package:comfort_booking/core/app_export.dart';
import 'package:comfort_booking/presentation/profile_settings_page/models/profile_settings_model.dart';

class ProfileSettingsController extends GetxController {
  ProfileSettingsController(this.profileSettingsModelObj);

  Rx<ProfileSettingsModel> profileSettingsModelObj;

  RxBool isSelectedSwitch = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
