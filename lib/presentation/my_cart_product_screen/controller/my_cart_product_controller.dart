import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/presentation/my_cart_product_screen/models/my_cart_product_model.dart';

/// A controller class for the MyCartProductScreen.
///
/// This class manages the state of the MyCartProductScreen, including the
/// current myCartProductModelObj
class MyCartProductController extends GetxController {
  Rx<MyCartProductModel> myCartProductModelObj = MyCartProductModel().obs;
}
