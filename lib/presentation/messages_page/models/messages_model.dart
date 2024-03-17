import '../../../core/app_export.dart';
import 'messageslist_item_model.dart';

/// This class defines the variables used in the [messages_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MessagesModel {
  Rx<List<MessageslistItemModel>> messageslistItemList = Rx([
    MessageslistItemModel(
        billyGreen: ImageConstant.imgAvatar.obs,
        username: "Billy Green".obs,
        message: "Thank you for sharing".obs,
        time: "3:03pm".obs,
        notifications: "1".obs),
    MessageslistItemModel(
        billyGreen: ImageConstant.imgImage8.obs,
        username: "Billy Green".obs,
        message: "Thank you for sharing".obs,
        time: "3:03pm".obs,
        notifications: "1".obs),
    MessageslistItemModel(
        billyGreen: ImageConstant.imgAvatar48x48.obs,
        username: "Billy Green".obs,
        message: "Thank you for sharing".obs,
        time: "3:03pm".obs,
        notifications: "1".obs),
    MessageslistItemModel(
        billyGreen: ImageConstant.imgAvatar1.obs,
        username: "Billy Green".obs,
        message: "Thank you for sharing".obs),
    MessageslistItemModel(
        billyGreen: ImageConstant.imgAvatar2.obs,
        username: "Billy Green".obs,
        message: "Thank you for sharing".obs),
    MessageslistItemModel(
        billyGreen: ImageConstant.imgAvatar3.obs,
        username: "Billy Green".obs,
        message: "Thank you for sharing".obs)
  ]);
}
