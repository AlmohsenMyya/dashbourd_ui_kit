import '../../../core/app_export.dart';
import 'myfriends_item_model.dart';

/// This class defines the variables used in the [my_friends_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MyFriendsModel {
  Rx<List<MyfriendsItemModel>> myfriendsItemList = Rx([
    MyfriendsItemModel(
        username: "Logan Nasser".obs, fullname: "@louisaingram".obs),
    MyfriendsItemModel(
        username: "Logan Nasser".obs, fullname: "@louisaingram".obs),
    MyfriendsItemModel(
        username: "Logan Nasser".obs, fullname: "@louisaingram".obs),
    MyfriendsItemModel(
        username: "Logan Nasser".obs, fullname: "@louisaingram".obs),
    MyfriendsItemModel(
        username: "Logan Nasser".obs, fullname: "@louisaingram".obs)
  ]);
}
