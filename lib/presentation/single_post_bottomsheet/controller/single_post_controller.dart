import '../../../core/app_export.dart';
import '../models/single_post_model.dart';

/// A controller class for the SinglePostBottomsheet.
///
/// This class manages the state of the SinglePostBottomsheet, including the
/// current singlePostModelObj
class SinglePostController extends GetxController {
  Rx<SinglePostModel> singlePostModelObj = SinglePostModel().obs;
}
