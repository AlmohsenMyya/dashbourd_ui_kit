import '../../../core/app_export.dart';
import '../models/user_profile_model.dart';

/// A controller class for the UserProfilePage.
///
/// This class manages the state of the UserProfilePage, including the
/// current userProfileModelObj
class UserProfileController extends GetxController {
  UserProfileController(this.userProfileModelObj);

  Rx<UserProfileModel> userProfileModelObj;
}
