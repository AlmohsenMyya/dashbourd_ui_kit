import 'package:almohsen_dashbourd_uikit/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_dashbourd_uikit/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:almohsen_dashbourd_uikit/widgets/app_bar/appbar_subtitle.dart';
import 'package:almohsen_dashbourd_uikit/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'widgets/featuredlist_item_widget.dart';
import 'models/featuredlist_item_model.dart';
import 'widgets/cardlist_item_widget.dart';
import 'models/cardlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_dashbourd_uikit/core/app_export.dart';
import 'controller/home_controller.dart';
import 'models/home_model.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  HomeController controller = Get.put(HomeController(HomeModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 16.v),
                      Padding(
                          padding: EdgeInsets.only(left: 28.h),
                          child: Text("lbl_featured".tr,
                              style: theme.textTheme.titleMedium)),
                      SizedBox(height: 15.v),
                      _buildFeaturedList(),
                      SizedBox(height: 36.v),
                      _buildCardList()
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 68.v,
        leadingWidth: 66.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgRewind,
            margin: EdgeInsets.only(left: 28.h, top: 15.v, bottom: 15.v),
            onTap: () {
              onTapRewind();
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "lbl_home".tr),
        actions: [
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgIconNotification,
              margin: EdgeInsets.symmetric(horizontal: 28.h, vertical: 15.v))
        ],
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildFeaturedList() {
    return Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
            height: 49.v,
            child: Obx(() => ListView.separated(
                padding: EdgeInsets.only(left: 28.h),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(width: 18.h);
                },
                itemCount: controller
                    .homeModelObj.value.featuredlistItemList.value.length,
                itemBuilder: (context, index) {
                  FeaturedlistItemModel model = controller
                      .homeModelObj.value.featuredlistItemList.value[index];
                  return FeaturedlistItemWidget(model);
                }))));
  }

  /// Section Widget
  Widget _buildCardList() {
    return Expanded(
        child: Align(
            alignment: Alignment.center,
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 28.h),
                child: Obx(() => ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 18.v);
                    },
                    itemCount: controller
                        .homeModelObj.value.cardlistItemList.value.length,
                    itemBuilder: (context, index) {
                      CardlistItemModel model = controller
                          .homeModelObj.value.cardlistItemList.value[index];
                      return CardlistItemWidget(model);
                    })))));
  }

  /// Navigates to the searchTabContainerScreen when the action is triggered.
  onTapRewind() {
    Get.toNamed(
      AppRoutes.searchTabContainerScreen,
    );
  }
}
