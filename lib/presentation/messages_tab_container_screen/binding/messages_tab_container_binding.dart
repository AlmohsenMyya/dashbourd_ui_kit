import 'package:almohsen_dashbourd_uikit/presentation/messages_tab_container_screen/controller/messages_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MessagesTabContainerScreen.
///
/// This class ensures that the MessagesTabContainerController is created when the
/// MessagesTabContainerScreen is first loaded.
class MessagesTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MessagesTabContainerController());
  }
}
