import '../../../core/app_export.dart';
import 'archivedmessage_item_model.dart';

/// This class defines the variables used in the [archived_message_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ArchivedMessageModel {
  Rx<List<ArchivedmessageItemModel>> archivedmessageItemList = Rx([
    ArchivedmessageItemModel(
        image: ImageConstant.imgPlay.obs,
        image1: ImageConstant.imgImage28x28.obs,
        more: "+9".obs,
        username: "Close Friends".obs,
        message: "Thank you for sharing".obs,
        time: "3:03pm".obs,
        notifications: "1".obs),
    ArchivedmessageItemModel(
        image: ImageConstant.imgPlay.obs,
        image1: ImageConstant.imgImage11.obs,
        more: "+9".obs,
        username: "Close Friends".obs,
        message: "Thank you for sharing".obs),
    ArchivedmessageItemModel(
        username: "Close Friends".obs,
        message: "Thank you for sharing".obs,
        time: "3:03pm".obs,
        notifications: "1".obs)
  ]);
}
