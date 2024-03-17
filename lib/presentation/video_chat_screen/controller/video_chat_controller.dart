import '../../../core/app_export.dart';
import '../models/video_chat_model.dart';

/// A controller class for the VideoChatScreen.
///
/// This class manages the state of the VideoChatScreen, including the
/// current videoChatModelObj
class VideoChatController extends GetxController {
  Rx<VideoChatModel> videoChatModelObj = VideoChatModel().obs;
}
