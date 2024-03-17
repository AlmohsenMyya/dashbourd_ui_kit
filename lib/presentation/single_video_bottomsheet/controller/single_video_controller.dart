import '../../../core/app_export.dart';
import '../models/single_video_model.dart';

/// A controller class for the SingleVideoBottomsheet.
///
/// This class manages the state of the SingleVideoBottomsheet, including the
/// current singleVideoModelObj
class SingleVideoController extends GetxController {
  Rx<SingleVideoModel> singleVideoModelObj = SingleVideoModel().obs;
}
