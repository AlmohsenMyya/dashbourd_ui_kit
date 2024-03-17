import 'package:almohsen_dashbourd_uikit/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_dashbourd_uikit/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:almohsen_dashbourd_uikit/widgets/app_bar/appbar_title_searchview.dart';
import 'package:almohsen_dashbourd_uikit/presentation/search_page/search_page.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_dashbourd_uikit/core/app_export.dart';
import 'controller/search_tab_container_controller.dart';

class SearchTabContainerScreen extends GetWidget<SearchTabContainerController> {
  const SearchTabContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimary,
            appBar: _buildAppBar(),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 53.v),
                      Padding(
                          padding: EdgeInsets.only(left: 28.h),
                          child: Text("lbl_explore_stories".tr,
                              style: CustomTextStyles.titleLargeWhiteA700)),
                      SizedBox(height: 28.v),
                      _buildTabview(),
                      Expanded(
                          child: SizedBox(
                              height: 570.v,
                              child: TabBarView(
                                  controller: controller.tabviewController,
                                  children: [
                                    SearchPage(),
                                    SearchPage(),
                                    SearchPage(),
                                    SearchPage(),
                                    SearchPage()
                                  ])))
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 66.h,
        leading: AppbarLeadingIconbuttonOne(
            imagePath: ImageConstant.imgButtonIcon,
            margin: EdgeInsets.only(left: 28.h, top: 9.v, bottom: 9.v)),
        title: AppbarTitleSearchview(
            margin: EdgeInsets.only(left: 10.h),
            hintText: "msg_search_in_social".tr,
            controller: controller.searchController));
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
        height: 26.v,
        width: 347.h,
        child: TabBar(
            controller: controller.tabviewController,
            isScrollable: true,
            labelColor: appTheme.whiteA700,
            labelStyle: TextStyle(
                fontSize: 14.fSize,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700),
            unselectedLabelColor: appTheme.blueGray100,
            unselectedLabelStyle: TextStyle(
                fontSize: 14.fSize,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700),
            indicatorColor: appTheme.black90000,
            tabs: [
              Tab(child: Text("lbl_for_you".tr)),
              Tab(child: Text("lbl_following".tr)),
              Tab(child: Text("lbl_popular".tr)),
              Tab(child: Text("lbl_featured".tr)),
              Tab(child: Text("lbl_live".tr))
            ]));
  }
}
