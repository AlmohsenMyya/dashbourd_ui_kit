import '../models/archivedmessage_item_model.dart';
import '../controller/archived_message_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_dashbourd_uikit/core/app_export.dart';

// ignore: must_be_immutable
class ArchivedmessageItemWidget extends StatelessWidget {
  ArchivedmessageItemWidget(
    this.archivedmessageItemModelObj, {
    Key? key,
    this.onTapMessage,
  }) : super(
          key: key,
        );

  ArchivedmessageItemModel archivedmessageItemModelObj;

  var controller = Get.find<ArchivedMessageController>();

  VoidCallback? onTapMessage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapMessage!.call();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 51.adaptSize,
            width: 51.adaptSize,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Obx(
                  () => CustomImageView(
                    imagePath: archivedmessageItemModelObj.image!.value,
                    height: 28.adaptSize,
                    width: 28.adaptSize,
                    alignment: Alignment.topLeft,
                  ),
                ),
                Obx(
                  () => CustomImageView(
                    imagePath: archivedmessageItemModelObj.image1!.value,
                    height: 28.adaptSize,
                    width: 28.adaptSize,
                    radius: BorderRadius.circular(
                      8.h,
                    ),
                    alignment: Alignment.topRight,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: 28.adaptSize,
                    padding: EdgeInsets.all(5.h),
                    decoration: AppDecoration.fillOnPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder4,
                    ),
                    child: Obx(
                      () => Text(
                        archivedmessageItemModelObj.more!.value,
                        style: CustomTextStyles.labelLargeWhiteA700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 15.h,
              top: 4.v,
              bottom: 7.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    archivedmessageItemModelObj.username!.value,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                SizedBox(height: 5.v),
                Obx(
                  () => Text(
                    archivedmessageItemModelObj.message!.value,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 6.v,
              bottom: 8.v,
            ),
            child: Column(
              children: [
                Obx(
                  () => Text(
                    archivedmessageItemModelObj.time!.value,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                SizedBox(height: 3.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: 18.adaptSize,
                    padding: EdgeInsets.symmetric(
                      horizontal: 6.h,
                      vertical: 2.v,
                    ),
                    decoration: AppDecoration.error.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder4,
                    ),
                    child: Obx(
                      () => Text(
                        archivedmessageItemModelObj.notifications!.value,
                        style: CustomTextStyles.labelMediumMedium,
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
