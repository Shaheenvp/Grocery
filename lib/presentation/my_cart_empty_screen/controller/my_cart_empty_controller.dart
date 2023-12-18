import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/presentation/my_cart_empty_screen/models/my_cart_empty_model.dart';

/// A controller class for the MyCartEmptyScreen.
///
/// This class manages the state of the MyCartEmptyScreen, including the
/// current myCartEmptyModelObj
class MyCartEmptyController extends GetxController {
  Rx<MyCartEmptyModel> myCartEmptyModelObj = MyCartEmptyModel().obs;
}
