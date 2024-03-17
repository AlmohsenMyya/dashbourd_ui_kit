import 'package:almohsen_dashbourd_uikit/presentation/my_friends_screen/controller/my_friends_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MyFriendsScreen.
///
/// This class ensures that the MyFriendsController is created when the
/// MyFriendsScreen is first loaded.
class MyFriendsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyFriendsController());
  }
}
