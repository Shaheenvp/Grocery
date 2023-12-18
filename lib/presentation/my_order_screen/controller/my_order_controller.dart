import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/presentation/my_order_screen/models/my_order_model.dart';

/// A controller class for the MyOrderScreen.
///
/// This class manages the state of the MyOrderScreen, including the
/// current myOrderModelObj
class MyOrderController extends GetxController {
  Rx<MyOrderModel> myOrderModelObj = MyOrderModel().obs;
}
