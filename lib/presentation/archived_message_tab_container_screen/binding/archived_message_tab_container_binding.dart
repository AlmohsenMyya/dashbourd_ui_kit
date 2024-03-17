import 'package:almohsen_dashbourd_uikit/presentation/archived_message_tab_container_screen/controller/archived_message_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ArchivedMessageTabContainerScreen.
///
/// This class ensures that the ArchivedMessageTabContainerController is created when the
/// ArchivedMessageTabContainerScreen is first loaded.
class ArchivedMessageTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ArchivedMessageTabContainerController());
  }
}
