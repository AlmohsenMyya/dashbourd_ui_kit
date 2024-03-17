import 'package:almohsen_dashbourd_uikit/presentation/home_page/home_page.dart';
import 'package:almohsen_dashbourd_uikit/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_dashbourd_uikit/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:almohsen_dashbourd_uikit/widgets/app_bar/appbar_subtitle.dart';
import 'package:almohsen_dashbourd_uikit/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:almohsen_dashbourd_uikit/presentation/archived_message_page/archived_message_page.dart';
import 'package:almohsen_dashbourd_uikit/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_dashbourd_uikit/core/app_export.dart';
import 'controller/archived_message_tab_container_controller.dart';

// ignore_for_file: must_be_immutable
class ArchivedMessageTabContainerScreen
    extends GetWidget<ArchivedMessageTabContainerController> {
  const ArchivedMessageTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 33.v),
              _buildTabview(),
              SizedBox(
                height: 518.v,
                child: TabBarView(
                  controller: controller.tabviewController,
                  children: [
                    ArchivedMessagePage(),
                    ArchivedMessagePage(),
                    ArchivedMessagePage(),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 68.v,
      leadingWidth: 66.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgRewindPrimarycontainer38x38,
        margin: EdgeInsets.only(
          left: 28.h,
          top: 15.v,
          bottom: 15.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_home".tr,
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgIconNotification,
          margin: EdgeInsets.symmetric(
            horizontal: 28.h,
            vertical: 15.v,
          ),
        ),
      ],
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
      height: 25.v,
      width: 308.h,
      child: TabBar(
        controller: controller.tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: theme.colorScheme.onPrimary,
        labelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
        unselectedLabelColor: appTheme.gray700,
        unselectedLabelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
        indicatorColor: theme.colorScheme.onPrimary,
        tabs: [
          Tab(
            child: Text(
              "lbl_direct_messages".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_group_chat".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_archived".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
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
}
