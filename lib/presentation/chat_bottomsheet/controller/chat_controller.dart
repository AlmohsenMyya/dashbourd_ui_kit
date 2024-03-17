import '../../../core/app_export.dart';
import '../models/chat_model.dart';

/// A controller class for the ChatBottomsheet.
///
/// This class manages the state of the ChatBottomsheet, including the
/// current chatModelObj
class ChatController extends GetxController {
  Rx<ChatModel> chatModelObj = ChatModel().obs;

  /// Requests permission to access the camera and storage, and displays a model
  /// sheet for selecting images.
  ///
  /// Throws an error if permission is denied or an error occurs while selecting images.
  @override
  void onReady() async {
    Get.toNamed(
      AppRoutes.videoChatScreen,
    );
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }
}
