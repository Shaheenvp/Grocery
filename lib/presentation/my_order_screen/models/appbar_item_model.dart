import '../../../core/app_export.dart';
import 'appbar1_item_model.dart';

/// This class is used in the [appbar_item_widget] screen.
class AppbarItemModel {
  AppbarItemModel({
    this.arrowLeftImage,
    this.appbar1ItemList,
    this.id,
    required RxString myOrderText,
  }) {
    arrowLeftImage = arrowLeftImage ?? Rx(ImageConstant.imgArrowLeft);
    appbar1ItemList = appbar1ItemList ??
        Rx([Appbar1ItemModel(arrowLeftImage: ImageConstant.imgArrowLeft.obs)]);
    id = id ?? Rx("");
  }

  Rx<String>? arrowLeftImage;

  Rx<List<Appbar1ItemModel>>? appbar1ItemList;

  Rx<String>? id;
}
