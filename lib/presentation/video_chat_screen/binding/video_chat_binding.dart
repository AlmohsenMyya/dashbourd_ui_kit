import 'package:almohsen_dashbourd_uikit/presentation/video_chat_screen/controller/video_chat_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VideoChatScreen.
///
/// This class ensures that the VideoChatController is created when the
/// VideoChatScreen is first loaded.
class VideoChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VideoChatController());
  }
}
