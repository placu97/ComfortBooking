import 'package:get/get.dart';import 'sliderrectanglesix_item_model.dart';import 'hotel_details_item_model.dart';import 'package:comfort_booking/data/models/selectionPopupModel/selection_popup_model.dart';class HotelDetailsModel {RxList<SliderrectanglesixItemModel> sliderrectanglesixItemList = RxList.filled(1,SliderrectanglesixItemModel());

RxList<HotelDetailsItemModel> hotelDetailsItemList = RxList.filled(3,HotelDetailsItemModel());

RxList<SelectionPopupModel> dropdownItemList = [SelectionPopupModel(id:1,title:"test",isSelected:true,),SelectionPopupModel(id:2,title:"test1",),SelectionPopupModel(id:3,title:"test2",)].obs;

 }
