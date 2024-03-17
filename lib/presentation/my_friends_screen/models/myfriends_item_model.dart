import '../../../core/app_export.dart';

/// This class is used in the [myfriends_item_widget] screen.
class MyfriendsItemModel {
  MyfriendsItemModel({
    this.username,
    this.fullname,
    this.id,
  }) {
    username = username ?? Rx("Logan Nasser");
    fullname = fullname ?? Rx("@louisaingram");
    id = id ?? Rx("");
  }

  Rx<String>? username;

  Rx<String>? fullname;

  Rx<String>? id;
}
