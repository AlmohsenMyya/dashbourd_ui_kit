import '../models/comments_item_model.dart';
import '../controller/comments_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_dashbourd_uikit/core/app_export.dart';

// ignore: must_be_immutable
class CommentsItemWidget extends StatelessWidget {
  CommentsItemWidget(
    this.commentsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CommentsItemModel commentsItemModelObj;

  var controller = Get.find<CommentsController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgPlay,
              height: 28.adaptSize,
              width: 28.adaptSize,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 5.h,
                top: 6.v,
                bottom: 4.v,
              ),
              child: Obx(
                () => Text(
                  commentsItemModelObj.name!.value,
                  style: CustomTextStyles.titleSmallWhiteA700,
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(
                top: 7.v,
                bottom: 5.v,
              ),
              child: Obx(
                () => Text(
                  commentsItemModelObj.time!.value,
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 11.v),
        Container(
          width: 302.h,
          margin: EdgeInsets.only(right: 7.h),
          child: Obx(
            () => Text(
              commentsItemModelObj.copy!.value,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyMediumWhiteA700.copyWith(
                height: 1.57,
              ),
            ),
          ),
        ),
        SizedBox(height: 8.v),
        Row(
          children: [
            Obx(
              () => CustomImageView(
                imagePath: commentsItemModelObj.image!.value,
                height: 14.adaptSize,
                width: 14.adaptSize,
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgInstagramGray500,
              height: 14.adaptSize,
              width: 14.adaptSize,
              margin: EdgeInsets.only(left: 15.h),
            ),
          ],
        ),
      ],
    );
  }
}
