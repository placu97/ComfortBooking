import 'package:comfort_booking/core/app_export.dart';import 'package:comfort_booking/presentation/carousel_one_screen/models/carousel_one_model.dart';class CarouselOneController extends GetxController {Rx<CarouselOneModel> carouselOneModelObj = CarouselOneModel().obs;

Rx<int> silderIndex = 0.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
