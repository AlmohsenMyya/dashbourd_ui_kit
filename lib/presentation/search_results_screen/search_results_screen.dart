import 'package:almohsen_dashbourd_uikit/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_dashbourd_uikit/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:almohsen_dashbourd_uikit/widgets/app_bar/appbar_title_searchview_one.dart';
import 'package:almohsen_dashbourd_uikit/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_dashbourd_uikit/core/app_export.dart';
import 'controller/search_results_controller.dart';
import 'package:almohsen_dashbourd_uikit/presentation/single_post_bottomsheet/single_post_bottomsheet.dart';
import 'package:almohsen_dashbourd_uikit/presentation/single_post_bottomsheet/controller/single_post_controller.dart';

class SearchResultsScreen extends GetWidget<SearchResultsController> {
  const SearchResultsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 28.h, vertical: 9.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10.v),
                      _buildPeopleColumn(),
                      SizedBox(height: 25.v),
                      Text("lbl_posts".tr, style: theme.textTheme.titleLarge),
                      SizedBox(height: 15.v),
                      _buildCardColumn()
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 84.v,
        leadingWidth: 66.h,
        leading: AppbarLeadingIconbuttonOne(
            imagePath: ImageConstant.imgButtonIcon,
            margin: EdgeInsets.only(left: 28.h, top: 15.v, bottom: 31.v),
            onTap: () {
              onTapButtonIcon();
            }),
        title: AppbarTitleSearchviewOne(
            margin: EdgeInsets.only(left: 10.h),
            hintText: "lbl_nass".tr,
            controller: controller.searchController),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildPeopleColumn() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_people".tr, style: theme.textTheme.titleLarge),
      SizedBox(height: 12.v),
      _buildUserRow(
          username: "lbl_logan_nasser".tr, fullname: "lbl_louisaingram".tr),
      SizedBox(height: 8.v),
      _buildUserRow(
          username: "lbl_logan_nasser".tr, fullname: "lbl_louisaingram".tr),
      SizedBox(height: 12.v),
      CustomOutlinedButton(
          height: 30.v,
          width: 97.h,
          text: "lbl_see_more".tr,
          rightIcon: Container(
              margin: EdgeInsets.only(),
              child: CustomImageView(
                  imagePath: ImageConstant.imgArrowright,
                  height: 14.adaptSize,
                  width: 14.adaptSize)),
          buttonStyle: CustomButtonStyles.outlineBlueGray,
          buttonTextStyle: theme.textTheme.titleSmall!)
    ]);
  }

  /// Section Widget
  Widget _buildCardColumn() {
    return GestureDetector(
        onTap: () {
          onTapCardColumn();
        },
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 16.v),
            decoration: AppDecoration.white
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(right: 17.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                    width: 136.h,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant.imgPlay,
                                              height: 33.v,
                                              width: 38.h),
                                          Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("lbl_katherine_cole".tr,
                                                    style: theme
                                                        .textTheme.titleSmall),
                                                SizedBox(height: 5.v),
                                                Text("lbl_5_min_ago".tr,
                                                    style: theme
                                                        .textTheme.bodySmall)
                                              ])
                                        ])),
                                SizedBox(
                                    height: 33.v,
                                    child: VerticalDivider(
                                        width: 4.h,
                                        thickness: 4.v,
                                        indent: 11.h,
                                        endIndent: 6.h))
                              ]))),
                  SizedBox(height: 25.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgImage119x283,
                      height: 119.v,
                      width: 283.h,
                      radius: BorderRadius.circular(8.h)),
                  SizedBox(height: 23.v),
                  Container(
                      width: 276.h,
                      margin: EdgeInsets.only(right: 6.h),
                      child: Text("msg_the_best_fashion".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.titleMedium!
                              .copyWith(height: 1.38))),
                  SizedBox(height: 49.v),
                  Padding(
                      padding: EdgeInsets.only(left: 6.h, right: 11.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                                width: 46.h,
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgFavoriteGray500,
                                          height: 14.adaptSize,
                                          width: 14.adaptSize,
                                          margin: EdgeInsets.symmetric(
                                              vertical: 1.v)),
                                      Text("lbl_326".tr,
                                          style: theme.textTheme.titleSmall)
                                    ])),
                            Container(
                                width: 45.h,
                                margin: EdgeInsets.only(left: 27.h),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgInstagram,
                                          height: 14.adaptSize,
                                          width: 14.adaptSize,
                                          margin: EdgeInsets.symmetric(
                                              vertical: 1.v)),
                                      Padding(
                                          padding: EdgeInsets.only(left: 6.h),
                                          child: Text("lbl_148".tr,
                                              style:
                                                  theme.textTheme.titleSmall))
                                    ])),
                            Spacer(),
                            Text("lbl_share".tr,
                                style: theme.textTheme.titleSmall),
                            CustomImageView(
                                imagePath: ImageConstant.imgQuestion,
                                height: 14.adaptSize,
                                width: 14.adaptSize)
                          ]))
                ])));
  }

  /// Common widget
  Widget _buildUserRow({
    required String username,
    required String fullname,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 19.v),
        decoration: AppDecoration.white
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgPlay,
              height: 38.adaptSize,
              width: 38.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(username,
                        style: theme.textTheme.titleSmall!
                            .copyWith(color: theme.colorScheme.onPrimary)),
                    SizedBox(height: 3.v),
                    Text(fullname,
                        style: theme.textTheme.bodySmall!
                            .copyWith(color: appTheme.blueGray400))
                  ])),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgChipChipIconLeft,
              height: 28.adaptSize,
              width: 28.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 5.v))
        ]));
  }

  /// Navigates to the previous screen.
  onTapButtonIcon() {
    Get.back();
  }

  /// Displays a scrollable bottom sheet widget using the [Get] package
  /// and the [SinglePostBottomsheet] widget.
  ///
  /// The bottom sheet is controlled by the [SinglePostController]
  /// and is displayed using the [Get.bottomSheet] method with
  /// [isScrollControlled] set to true.

  onTapCardColumn() {
    Get.bottomSheet(
      SinglePostBottomsheet(
        Get.put(
          SinglePostController(),
        ),
      ),
      isScrollControlled: true,
    );
  }
}
