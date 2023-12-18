import 'package:mohammed_s_application12/data/models/selectionPopupModel/selection_popup_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [signup_three_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SignupThreeModel {
  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Kerala",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Karnataka",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Goa",
    )
  ]);

  Rx<List<SelectionPopupModel>> dropdownItemList1 = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);
}
