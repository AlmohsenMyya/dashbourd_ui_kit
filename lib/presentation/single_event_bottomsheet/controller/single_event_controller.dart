import '../../../core/app_export.dart';
import '../models/single_event_model.dart';

/// A controller class for the SingleEventBottomsheet.
///
/// This class manages the state of the SingleEventBottomsheet, including the
/// current singleEventModelObj
class SingleEventController extends GetxController {
  Rx<SingleEventModel> singleEventModelObj = SingleEventModel().obs;
}
