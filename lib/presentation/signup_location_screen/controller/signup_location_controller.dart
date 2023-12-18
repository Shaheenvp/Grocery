import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/presentation/signup_location_screen/models/signup_location_model.dart';

/// A controller class for the SignupLocationScreen.
///
/// This class manages the state of the SignupLocationScreen, including the
/// current signupLocationModelObj
class SignupLocationController extends GetxController {
  Rx<SignupLocationModel> signupLocationModelObj = SignupLocationModel().obs;
}
