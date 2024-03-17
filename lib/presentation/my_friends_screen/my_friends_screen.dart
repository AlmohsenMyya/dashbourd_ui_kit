import 'package:almohsen_dashbourd_uikit/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_dashbourd_uikit/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:almohsen_dashbourd_uikit/widgets/app_bar/appbar_title_searchview_two.dart';
import 'widgets/myfriends_item_widget.dart';
import 'models/myfriends_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_dashbourd_uikit/core/app_export.dart';
import 'controller/my_friends_controller.dart';

class MyFriendsScreen extends GetWidget<MyFriendsController> {
  const MyFriendsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Padding(
                padding: EdgeInsets.only(left: 28.h, top: 16.v, right: 28.h),
                child: Obx(() => ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 8.v);
                    },
                    itemCount: controller
                        .myFriendsModelObj.value.myfriendsItemList.value.length,
                    itemBuilder: (context, index) {
                      MyfriendsItemModel model = controller.myFriendsModelObj
                          .value.myfriendsItemList.value[index];
                      return MyfriendsItemWidget(model);
                    })))));
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
        title: AppbarTitleSearchviewTwo(
            margin: EdgeInsets.only(left: 10.h),
            hintText: "msg_search_in_friends".tr,
            controller: controller.searchController),
        styleType: Style.bgFill);
  }

  /// Navigates to the previous screen.
  onTapButtonIcon() {
    Get.back();
  }
}
