import 'package:almohsen_dashbourd_uikit/presentation/signup_screen/controller/signup_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SignupScreen.
///
/// This class ensures that the SignupController is created when the
/// SignupScreen is first loaded.
class SignupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignupController());
  }
}
