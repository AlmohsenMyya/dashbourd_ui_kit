import 'package:almohsen_dashbourd_uikit/presentation/single_story_screen/controller/single_story_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SingleStoryScreen.
///
/// This class ensures that the SingleStoryController is created when the
/// SingleStoryScreen is first loaded.
class SingleStoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SingleStoryController());
  }
}
