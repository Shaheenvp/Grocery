import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/presentation/my_cart_page/models/my_cart_model.dart';

/// A controller class for the MyCartPage.
///
/// This class manages the state of the MyCartPage, including the
/// current myCartModelObj
class MyCartController extends GetxController {
  MyCartController(this.myCartModelObj);

  Rx<MyCartModel> myCartModelObj;
}
