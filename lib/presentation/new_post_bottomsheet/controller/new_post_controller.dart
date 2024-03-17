import '../../../core/app_export.dart';
import '../models/new_post_model.dart';

/// A controller class for the NewPostBottomsheet.
///
/// This class manages the state of the NewPostBottomsheet, including the
/// current newPostModelObj
class NewPostController extends GetxController {
  Rx<NewPostModel> newPostModelObj = NewPostModel().obs;
}
