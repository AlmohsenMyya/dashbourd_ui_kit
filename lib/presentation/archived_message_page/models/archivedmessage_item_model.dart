import '../../../core/app_export.dart';

/// This class is used in the [archivedmessage_item_widget] screen.
class ArchivedmessageItemModel {
  ArchivedmessageItemModel({
    this.image,
    this.image1,
    this.more,
    this.username,
    this.message,
    this.time,
    this.notifications,
    this.id,
  }) {
    image = image ?? Rx(ImageConstant.imgPlay);
    image1 = image1 ?? Rx(ImageConstant.imgImage28x28);
    more = more ?? Rx("+9");
    username = username ?? Rx("Close Friends");
    message = message ?? Rx("Thank you for sharing");
    time = time ?? Rx("3:03pm");
    notifications = notifications ?? Rx("1");
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? image1;

  Rx<String>? more;

  Rx<String>? username;

  Rx<String>? message;

  Rx<String>? time;

  Rx<String>? notifications;

  Rx<String>? id;
}
