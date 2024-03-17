import 'package:almohsen_dashbourd_uikit/presentation/user_profile_tab_container_screen/controller/user_profile_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the UserProfileTabContainerScreen.
///
/// This class ensures that the UserProfileTabContainerController is created when the
/// UserProfileTabContainerScreen is first loaded.
class UserProfileTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserProfileTabContainerController());
  }
}
