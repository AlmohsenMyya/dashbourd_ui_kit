import '../../../core/app_export.dart';

/// This class is used in the [messageslist_item_widget] screen.
class MessageslistItemModel {
  MessageslistItemModel({
    this.billyGreen,
    this.username,
    this.message,
    this.time,
    this.notifications,
    this.id,
  }) {
    billyGreen = billyGreen ?? Rx(ImageConstant.imgAvatar);
    username = username ?? Rx("Billy Green");
    message = message ?? Rx("Thank you for sharing");
    time = time ?? Rx("3:03pm");
    notifications = notifications ?? Rx("1");
    id = id ?? Rx("");
  }

  Rx<String>? billyGreen;

  Rx<String>? username;

  Rx<String>? message;

  Rx<String>? time;

  Rx<String>? notifications;

  Rx<String>? id;
}
