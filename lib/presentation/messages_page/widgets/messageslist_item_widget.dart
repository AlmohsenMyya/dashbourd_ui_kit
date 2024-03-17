import '../models/messageslist_item_model.dart';
import '../controller/messages_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_dashbourd_uikit/core/app_export.dart';

// ignore: must_be_immutable
class MessageslistItemWidget extends StatelessWidget {
  MessageslistItemWidget(
    this.messageslistItemModelObj, {
    Key? key,
    this.onTapMessage,
  }) : super(
          key: key,
        );

  MessageslistItemModel messageslistItemModelObj;

  var controller = Get.find<MessagesController>();

  VoidCallback? onTapMessage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapMessage!.call();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 48.adaptSize,
            width: 48.adaptSize,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Obx(
                  () => CustomImageView(
                    imagePath: messageslistItemModelObj.billyGreen!.value,
                    height: 48.adaptSize,
                    width: 48.adaptSize,
                    radius: BorderRadius.circular(
                      12.h,
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    margin: EdgeInsets.only(left: 35.h),
                    decoration: AppDecoration.fillGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder4,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 2.v),
                        Container(
                          height: 10.adaptSize,
                          width: 10.adaptSize,
                          decoration: BoxDecoration(
                            color: appTheme.green600,
                            borderRadius: BorderRadius.circular(
                              5.h,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 15.h,
              top: 5.v,
              bottom: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    messageslistItemModelObj.username!.value,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                SizedBox(height: 4.v),
                Obx(
                  () => Text(
                    messageslistItemModelObj.message!.value,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 6.v),
            child: Column(
              children: [
                Obx(
                  () => Text(
                    messageslistItemModelObj.time!.value,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                SizedBox(height: 3.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: 18.adaptSize,
                    padding: EdgeInsets.symmetric(
                      horizontal: 5.h,
                      vertical: 1.v,
                    ),
                    decoration: AppDecoration.error.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder4,
                    ),
                    child: Obx(
                      () => Text(
                        messageslistItemModelObj.notifications!.value,
                        style: CustomTextStyles.labelLargeWhiteA700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
