import 'package:almohsen_dashbourd_uikit/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_dashbourd_uikit/core/app_export.dart';
import 'controller/video_chat_controller.dart';

// ignore_for_file: must_be_immutable
class VideoChatScreen extends GetWidget<VideoChatController> {
  const VideoChatScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: SizedBox(
          height: 668.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  margin: EdgeInsets.only(bottom: 28.v),
                  padding: EdgeInsets.symmetric(
                    horizontal: 168.h,
                    vertical: 22.v,
                  ),
                  decoration: AppDecoration.white.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL32,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Spacer(),
                      CustomImageView(
                        imagePath: ImageConstant.imgIndicatorOnLightOnprimary,
                        height: 5.v,
                        width: 38.h,
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  height: 640.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImageBackground,
                        height: 640.v,
                        width: 375.h,
                        alignment: Alignment.center,
                      ),
                      _buildWidgetRow(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildCallControls(),
      ),
    );
  }

  /// Section Widget
  Widget _buildWidgetRow() {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.fromLTRB(28.h, 15.v, 28.h, 489.v),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 98.v),
              child: CustomIconButton(
                height: 38.adaptSize,
                width: 38.adaptSize,
                child: CustomImageView(
                  imagePath: ImageConstant.imgButtonIconWhiteA700,
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgImage128x88,
              height: 128.v,
              width: 88.h,
              radius: BorderRadius.circular(
                12.h,
              ),
              margin: EdgeInsets.only(top: 8.v),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCallControls() {
    return Padding(
      padding: EdgeInsets.only(
        left: 87.h,
        right: 87.h,
        bottom: 52.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 48.adaptSize,
            width: 48.adaptSize,
            padding: EdgeInsets.all(11.h),
            decoration: IconButtonStyleHelper.fillWhiteA,
            child: CustomImageView(
              imagePath: ImageConstant.imgMusic,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 28.h),
            child: CustomIconButton(
              height: 48.adaptSize,
              width: 48.adaptSize,
              padding: EdgeInsets.all(11.h),
              decoration: IconButtonStyleHelper.fillIndigoA,
              child: CustomImageView(
                imagePath: ImageConstant.imgUserWhiteA70048x48,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 28.h),
            child: CustomIconButton(
              height: 48.adaptSize,
              width: 48.adaptSize,
              padding: EdgeInsets.all(10.h),
              decoration: IconButtonStyleHelper.fillOnError,
              child: CustomImageView(
                imagePath: ImageConstant.imgPhoneHangup,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
