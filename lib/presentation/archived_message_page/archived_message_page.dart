import 'widgets/archivedmessage_item_widget.dart';
import 'models/archivedmessage_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_dashbourd_uikit/core/app_export.dart';
import 'controller/archived_message_controller.dart';
import 'models/archived_message_model.dart';
import 'package:almohsen_dashbourd_uikit/presentation/group_chat_bottomsheet/group_chat_bottomsheet.dart';
import 'package:almohsen_dashbourd_uikit/presentation/group_chat_bottomsheet/controller/group_chat_controller.dart';

// ignore_for_file: must_be_immutable
class ArchivedMessagePage extends StatelessWidget {
  ArchivedMessagePage({Key? key}) : super(key: key);

  ArchivedMessageController controller =
      Get.put(ArchivedMessageController(ArchivedMessageModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillGray,
                child: Column(children: [
                  SizedBox(height: 31.v),
                  _buildArchivedMessage()
                ]))));
  }

  /// Section Widget
  Widget _buildArchivedMessage() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 28.h),
        child: Obx(() => ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 39.v);
            },
            itemCount: controller.archivedMessageModelObj.value
                .archivedmessageItemList.value.length,
            itemBuilder: (context, index) {
              ArchivedmessageItemModel model = controller
                  .archivedMessageModelObj
                  .value
                  .archivedmessageItemList
                  .value[index];
              return ArchivedmessageItemWidget(model, onTapMessage: () {
                onTapMessage();
              });
            })));
  }

  /// Displays a scrollable bottom sheet widget using the [Get] package
  /// and the [GroupChatBottomsheet] widget.
  ///
  /// The bottom sheet is controlled by the [GroupChatController]
  /// and is displayed using the [Get.bottomSheet] method with
  /// [isScrollControlled] set to true.

  onTapMessage() {
    Get.bottomSheet(
      GroupChatBottomsheet(
        Get.put(
          GroupChatController(),
        ),
      ),
      isScrollControlled: true,
    );
  }
}
