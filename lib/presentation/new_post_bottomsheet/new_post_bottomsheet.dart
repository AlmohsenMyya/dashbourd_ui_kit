import 'package:almohsen_dashbourd_uikit/widgets/custom_icon_button.dart';
import 'package:almohsen_dashbourd_uikit/presentation/home_page/home_page.dart';
import 'package:almohsen_dashbourd_uikit/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_dashbourd_uikit/core/app_export.dart';
import 'controller/new_post_controller.dart';

// ignore_for_file: must_be_immutable
class NewPostBottomsheet extends StatelessWidget {
  NewPostBottomsheet(this.controller, {Key? key}) : super(key: key);

  NewPostController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.maxFinite,
        child: Column(children: [
          Spacer(),
          Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 28.h, vertical: 22.v),
              decoration: AppDecoration.fillGray
                  .copyWith(borderRadius: BorderRadiusStyle.customBorderTL32),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgIndicatorOnLight,
                        height: 5.v,
                        width: 38.h,
                        alignment: Alignment.center),
                    SizedBox(height: 21.v),
                    _buildAddVideoRow(dynamicText: "lbl_add_photo".tr),
                    SizedBox(height: 28.v),
                    _buildAddVideoRow(dynamicText: "lbl_add_video".tr),
                    SizedBox(height: 28.v),
                    Row(children: [
                      CustomIconButton(
                          height: 38.adaptSize,
                          width: 38.adaptSize,
                          padding: EdgeInsets.all(10.h),
                          decoration: IconButtonStyleHelper.fillOnPrimary,
                          onTap: () {
                            onTapBtnSettings();
                          },
                          child: CustomImageView(
                              imagePath:
                                  ImageConstant.imgSettingsWhiteA70038x38)),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 18.h, top: 11.v, bottom: 9.v),
                          child: Text("lbl_tag_a_friend".tr,
                              style: CustomTextStyles.titleSmallBold))
                    ]),
                    SizedBox(height: 28.v),
                    Row(children: [
                      CustomIconButton(
                          height: 38.adaptSize,
                          width: 38.adaptSize,
                          padding: EdgeInsets.all(10.h),
                          decoration: IconButtonStyleHelper.fillOnPrimary,
                          child: CustomImageView(
                              imagePath: ImageConstant.imgMegaphone)),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 18.h, top: 10.v, bottom: 10.v),
                          child: Text("msg_write_an_article".tr,
                              style: CustomTextStyles.titleSmallBold))
                    ]),
                    SizedBox(height: 28.v),
                    Row(children: [
                      CustomIconButton(
                          height: 38.adaptSize,
                          width: 38.adaptSize,
                          padding: EdgeInsets.all(10.h),
                          decoration: IconButtonStyleHelper.outlineGray,
                          child: CustomImageView(
                              imagePath: ImageConstant.imgNotification)),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 18.h, top: 11.v, bottom: 9.v),
                          child: Text("lbl_more_options".tr,
                              style: CustomTextStyles.titleSmallBold))
                    ]),
                    SizedBox(height: 5.v)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  /// Common widget
  Widget _buildAddVideoRow({required String dynamicText}) {
    return Row(children: [
      CustomIconButton(
          height: 38.adaptSize,
          width: 38.adaptSize,
          padding: EdgeInsets.all(10.h),
          decoration: IconButtonStyleHelper.fillOnPrimary,
          child: CustomImageView(imagePath: ImageConstant.imgUpload)),
      Padding(
          padding: EdgeInsets.only(left: 18.h, top: 10.v, bottom: 10.v),
          child: Text(dynamicText,
              style: CustomTextStyles.titleSmallBold
                  .copyWith(color: theme.colorScheme.onPrimary)))
    ]);
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Settings:
        return AppRoutes.homePage;
      case BottomBarEnum.Calendar:
        return "/";
      case BottomBarEnum.Add:
        return "/";
      case BottomBarEnum.Message:
        return "/";
      case BottomBarEnum.Profile:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      default:
        return DefaultWidget();
    }
  }

  /// Requests permission to access the camera and storage, and displays a model
  /// sheet for selecting images.
  ///
  /// Throws an error if permission is denied or an error occurs while selecting images.
  onTapBtnSettings() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }
}
