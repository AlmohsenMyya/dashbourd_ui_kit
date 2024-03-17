import 'package:flutter/material.dart';
import 'package:almohsen_dashbourd_uikit/core/app_export.dart';
import 'controller/user_profile_controller.dart';
import 'models/user_profile_model.dart';

class UserProfilePage extends StatelessWidget {
  UserProfilePage({Key? key})
      : super(
          key: key,
        );

  UserProfileController controller =
      Get.put(UserProfileController(UserProfileModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _buildTopRow(),
      ),
    );
  }

  /// Section Widget
  Widget _buildTopRow() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 40.v),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 28.h),
            padding: EdgeInsets.symmetric(
              horizontal: 18.h,
              vertical: 19.v,
            ),
            decoration: AppDecoration.white.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder12,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgPlay,
                      height: 38.adaptSize,
                      width: 38.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_katherine_cole".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                          SizedBox(height: 5.v),
                          Text(
                            "lbl_5_min_ago".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    CustomImageView(
                      imagePath: ImageConstant.imgNotificationGray500,
                      height: 38.adaptSize,
                      width: 38.adaptSize,
                    ),
                  ],
                ),
                SizedBox(height: 19.v),
                CustomImageView(
                  imagePath: ImageConstant.imgImage150x283,
                  height: 150.v,
                  width: 283.h,
                  radius: BorderRadius.circular(
                    8.h,
                  ),
                ),
                SizedBox(height: 18.v),
                Container(
                  width: 276.h,
                  margin: EdgeInsets.only(right: 7.h),
                  child: Text(
                    "msg_the_best_fashion".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleMedium!.copyWith(
                      height: 1.38,
                    ),
                  ),
                ),
                SizedBox(height: 7.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 250.h,
                    margin: EdgeInsets.only(right: 33.h),
                    child: Text(
                      "msg_if_you_are_looking".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleSmallBluegray400.copyWith(
                        height: 1.43,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 23.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 6.h,
                    right: 11.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgFavoriteGray500,
                        height: 14.adaptSize,
                        width: 14.adaptSize,
                        margin: EdgeInsets.symmetric(vertical: 3.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.h),
                        child: Text(
                          "lbl_326".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgInstagram,
                        height: 14.adaptSize,
                        width: 14.adaptSize,
                        margin: EdgeInsets.only(
                          left: 27.h,
                          top: 3.v,
                          bottom: 3.v,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 6.h),
                        child: Text(
                          "lbl_148".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "lbl_share".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgQuestion,
                        height: 14.adaptSize,
                        width: 14.adaptSize,
                        margin: EdgeInsets.symmetric(vertical: 3.v),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 4.v),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
