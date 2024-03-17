import 'widgets/messageslist_item_widget.dart';
import 'models/messageslist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_dashbourd_uikit/core/app_export.dart';
import 'controller/messages_controller.dart';
import 'models/messages_model.dart';
import 'package:almohsen_dashbourd_uikit/presentation/chat_bottomsheet/chat_bottomsheet.dart';
import 'package:almohsen_dashbourd_uikit/presentation/chat_bottomsheet/controller/chat_controller.dart';

// ignore_for_file: must_be_immutable
class MessagesPage extends StatelessWidget {
  MessagesPage({Key? key}) : super(key: key);

  MessagesController controller =
      Get.put(MessagesController(MessagesModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillGray,
                child: Column(children: [
                  SizedBox(height: 31.v),
                  _buildMessagesList()
                ]))));
  }

  /// Section Widget
  Widget _buildMessagesList() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 28.h),
        child: Obx(() => ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 28.v);
            },
            itemCount: controller
                .messagesModelObj.value.messageslistItemList.value.length,
            itemBuilder: (context, index) {
              MessageslistItemModel model = controller
                  .messagesModelObj.value.messageslistItemList.value[index];
              return MessageslistItemWidget(model, onTapMessage: () {
                onTapMessage();
              });
            })));
  }

  /// Displays a scrollable bottom sheet widget using the [Get] package
  /// and the [ChatBottomsheet] widget.
  ///
  /// The bottom sheet is controlled by the [ChatController]
  /// and is displayed using the [Get.bottomSheet] method with
  /// [isScrollControlled] set to true.

  onTapMessage() {
    Get.bottomSheet(
      ChatBottomsheet(
        Get.put(
          ChatController(),
        ),
      ),
      isScrollControlled: true,
    );
  }
}
