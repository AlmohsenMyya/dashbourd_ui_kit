import 'package:almohsen_dashbourd_uikit/presentation/events_tab_container_screen/controller/events_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the EventsTabContainerScreen.
///
/// This class ensures that the EventsTabContainerController is created when the
/// EventsTabContainerScreen is first loaded.
class EventsTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EventsTabContainerController());
  }
}
