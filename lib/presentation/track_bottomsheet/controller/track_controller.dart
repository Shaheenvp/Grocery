import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/presentation/track_bottomsheet/models/track_model.dart';

/// A controller class for the TrackBottomsheet.
///
/// This class manages the state of the TrackBottomsheet, including the
/// current trackModelObj
class TrackController extends GetxController {
  Rx<TrackModel> trackModelObj = TrackModel().obs;
}
