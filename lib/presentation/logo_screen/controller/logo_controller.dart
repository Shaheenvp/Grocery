import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/presentation/logo_screen/models/logo_model.dart';

class LogoController extends GetxController {
  Rx<LogoModel> logoModelObj = LogoModel().obs;

  @override
  void onInit() {
    super.onInit();
    _navigateToNextScreen();
  }

  void _navigateToNextScreen() async {
    await Future.delayed(Duration(seconds: 3));
    Get.toNamed(AppRoutes
        .splashOneScreen); // Replace YOUR_NEXT_SCREEN with the actual route name
  }
}
