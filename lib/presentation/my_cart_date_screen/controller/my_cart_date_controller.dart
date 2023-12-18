import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/presentation/my_cart_date_screen/models/my_cart_date_model.dart';
import 'package:table_calendar/table_calendar.dart';

/// A controller class for the MyCartDateScreen.
///
/// This class manages the state of the MyCartDateScreen, including the
/// current myCartDateModelObj
class MyCartDateController extends GetxController {
  Rx<MyCartDateModel> myCartDateModelObj = MyCartDateModel().obs;

  DateTime? rangeStart;

  DateTime? rangeEnd;

  DateTime? selectedDay;

  Rx<DateTime> focusedDay = DateTime.now().obs;

  Rx<RangeSelectionMode> rangeSelectionMode = RangeSelectionMode.toggledOn.obs;
}
