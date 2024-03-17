import 'package:almohsen_dashbourd_uikit/presentation/home_page/home_page.dart';
import 'package:almohsen_dashbourd_uikit/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_dashbourd_uikit/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:almohsen_dashbourd_uikit/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:almohsen_dashbourd_uikit/widgets/custom_elevated_button.dart';
import 'package:almohsen_dashbourd_uikit/presentation/user_profile_page/user_profile_page.dart';
import 'package:almohsen_dashbourd_uikit/presentation/gallery_page/gallery_page.dart';
import 'package:almohsen_dashbourd_uikit/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_dashbourd_uikit/core/app_export.dart';
import 'controller/user_profile_tab_container_controller.dart';

class UserProfileTabContainerScreen
    extends GetWidget<UserProfileTabContainerController> {
  const UserProfileTabContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildModalMobile(),
                  SizedBox(height: 39.v),
                  _buildUserProfile()
                ])),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  Widget _buildModalMobile() {
    return SizedBox(
        height: 338.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  margin: EdgeInsets.only(right: 1.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 168.h, vertical: 22.v),
                  decoration: AppDecoration.white.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL32),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 289.v),
                        CustomImageView(
                            imagePath: ImageConstant.imgIndicatorOnLight,
                            height: 5.v,
                            width: 38.h)
                      ]))),
          CustomAppBar(
              height: 68.v,
              leadingWidth: 66.h,
              leading: AppbarLeadingIconbuttonOne(
                  imagePath: ImageConstant.imgArrowLeft,
                  margin: EdgeInsets.only(left: 28.h, top: 15.v, bottom: 15.v),
                  onTap: () {
                    onTapArrowLeft();
                  }),
              actions: [
                AppbarTrailingIconbutton(
                    imagePath: ImageConstant.imgNotificationPrimarycontainer,
                    margin:
                        EdgeInsets.symmetric(horizontal: 28.h, vertical: 15.v))
              ],
              styleType: Style.bgFill),
          Align(
              alignment: Alignment.topCenter,
              child: Padding(
                  padding:
                      EdgeInsets.only(left: 120.h, top: 33.v, right: 120.h),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgImage78x76,
                        height: 78.v,
                        width: 76.h,
                        radius: BorderRadius.circular(20.h)),
                    SizedBox(height: 9.v),
                    Text("lbl_edward_ford".tr,
                        style: theme.textTheme.titleLarge),
                    SizedBox(height: 8.v),
                    Text("lbl_edwardford2".tr,
                        style: theme.textTheme.bodyMedium)
                  ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding:
                      EdgeInsets.only(left: 28.h, right: 28.h, bottom: 57.v),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text("lbl_518".tr, style: theme.textTheme.titleMedium),
                      Padding(
                          padding: EdgeInsets.only(left: 12.h),
                          child: Text("lbl_posts".tr,
                              style: CustomTextStyles.titleMediumBluegray400)),
                      Padding(
                          padding: EdgeInsets.only(left: 21.h),
                          child: Text("lbl_22k".tr,
                              style: theme.textTheme.titleMedium)),
                      Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: Text("lbl_friends".tr,
                              style: CustomTextStyles.titleMediumBluegray400))
                    ]),
                    SizedBox(height: 19.v),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomElevatedButton(
                              height: 58.v,
                              width: 148.h,
                              text: "lbl_friends".tr,
                              leftIcon: Container(
                                  margin: EdgeInsets.only(right: 10.h),
                                  child: CustomImageView(
                                      imagePath:
                                          ImageConstant.imgCheckmarkWhiteA700,
                                      height: 18.adaptSize,
                                      width: 18.adaptSize)),
                              buttonStyle: CustomButtonStyles.fillGreenTL12,
                              buttonTextStyle:
                                  CustomTextStyles.titleSmallWhiteA700Bold),
                          CustomElevatedButton(
                              height: 58.v,
                              width: 159.h,
                              text: "lbl_message".tr,
                              leftIcon: Container(
                                  margin: EdgeInsets.only(right: 10.h),
                                  child: CustomImageView(
                                      imagePath:
                                          ImageConstant.imgLockPrimarycontainer,
                                      height: 18.adaptSize,
                                      width: 18.adaptSize)),
                              buttonStyle: CustomButtonStyles.fillBlueGray,
                              buttonTextStyle: CustomTextStyles.titleSmallBold)
                        ])
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildUserProfile() {
    return Expanded(
        child: SingleChildScrollView(
            child: Column(children: [
      SizedBox(
          height: 26.v,
          width: 273.h,
          child: TabBar(
              controller: controller.tabviewController,
              labelPadding: EdgeInsets.zero,
              labelColor: theme.colorScheme.onPrimary,
              labelStyle: TextStyle(
                  fontSize: 14.fSize,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700),
              unselectedLabelColor: appTheme.gray600,
              unselectedLabelStyle: TextStyle(
                  fontSize: 14.fSize,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700),
              indicatorColor: theme.colorScheme.onPrimary,
              tabs: [
                Tab(child: Text("lbl_posts".tr)),
                Tab(child: Text("lbl_photos".tr)),
                Tab(child: Text("lbl_videos".tr)),
                Tab(child: Text("lbl_events".tr))
              ])),
      SizedBox(
          height: 240.v,
          child: TabBarView(
              controller: controller.tabviewController,
              children: [
                UserProfilePage(),
                GalleryPage(),
                GalleryPage(),
                GalleryPage()
              ]))
    ])));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
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

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
