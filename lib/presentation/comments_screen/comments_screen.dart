import 'package:almohsen_dashbourd_uikit/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_dashbourd_uikit/widgets/app_bar/appbar_leading_iconbutton_two.dart';
import 'package:almohsen_dashbourd_uikit/widgets/app_bar/appbar_title.dart';
import 'package:almohsen_dashbourd_uikit/widgets/app_bar/appbar_trailing_image.dart';
import 'widgets/comments_item_widget.dart';
import 'models/comments_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_dashbourd_uikit/core/app_export.dart';
import 'controller/comments_controller.dart';

// ignore_for_file: must_be_immutable
class CommentsScreen extends GetWidget<CommentsController> {
  const CommentsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimary,
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 28.h,
            vertical: 21.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_comments_148".tr,
                style: CustomTextStyles.titleMediumWhiteA700,
              ),
              SizedBox(height: 28.v),
              _buildComments(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 66.h,
      leading: AppbarLeadingIconbuttonTwo(
        imagePath: ImageConstant.imgButtonIconWhiteA700,
        margin: EdgeInsets.only(
          left: 28.h,
          top: 9.v,
          bottom: 9.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_title".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgRightButton,
          margin: EdgeInsets.symmetric(
            horizontal: 28.h,
            vertical: 9.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildComments() {
    return Padding(
      padding: EdgeInsets.only(right: 9.h),
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 24.v,
            );
          },
          itemCount:
              controller.commentsModelObj.value.commentsItemList.value.length,
          itemBuilder: (context, index) {
            CommentsItemModel model =
                controller.commentsModelObj.value.commentsItemList.value[index];
            return CommentsItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
