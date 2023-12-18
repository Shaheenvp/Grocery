import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/presentation/my_cart_product_one_screen/models/my_cart_product_one_model.dart';

/// A controller class for the MyCartProductOneScreen.
///
/// This class manages the state of the MyCartProductOneScreen, including the
/// current myCartProductOneModelObj
class MyCartProductOneController extends GetxController {
  Rx<MyCartProductOneModel> myCartProductOneModelObj =
      MyCartProductOneModel().obs;
}
