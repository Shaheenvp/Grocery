import '../../../core/app_export.dart';
import 'appbar_item_model.dart';

/// This class defines the variables used in the [my_order_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MyOrderModel {
  Rx<List<AppbarItemModel>> appbarItemList = Rx([
    AppbarItemModel(
        arrowLeftImage: ImageConstant.imgArrowLeft.obs,
        myOrderText: "My order".obs)
  ]);
}
