import 'package:almohsen_dashbourd_uikit/widgets/custom_icon_button.dart';
import 'models/tags_item_model.dart';
import '../single_video_bottomsheet/widgets/tags_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_dashbourd_uikit/core/app_export.dart';
import 'controller/single_video_controller.dart';

class SingleVideoBottomsheet extends StatelessWidget {
  SingleVideoBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  SingleVideoController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL32,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 22.v),
          CustomImageView(
            imagePath: ImageConstant.imgIndicatorOnLight,
            height: 5.v,
            width: 38.h,
          ),
          SizedBox(height: 21.v),
          _buildVideoPlayerMobile(),
          SizedBox(height: 18.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 306.h,
              margin: EdgeInsets.only(
                left: 28.h,
                right: 40.h,
              ),
              child: Text(
                "msg_tropical_fresh_tourism".tr,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.titleLarge!.copyWith(
                  height: 1.36,
                ),
              ),
            ),
          ),
          SizedBox(height: 16.v),
          _buildAuthor(),
          SizedBox(height: 31.v),
          Container(
            width: 319.h,
            margin: EdgeInsets.symmetric(horizontal: 28.h),
            child: Text(
              "msg_cancun_is_back".tr,
              maxLines: 7,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyMedium!.copyWith(
                height: 1.57,
              ),
            ),
          ),
          SizedBox(height: 5.v),
          _buildTags(),
          SizedBox(height: 10.v),
          _buildBottomInteractions(),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildVideoPlayerMobile() {
    return SizedBox(
      height: 200.v,
      width: 319.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage119x283,
            height: 200.v,
            width: 319.h,
            radius: BorderRadius.circular(
              8.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                left: 18.h,
                right: 18.h,
                bottom: 19.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRefresh,
                        height: 18.adaptSize,
                        width: 18.adaptSize,
                        margin: EdgeInsets.symmetric(vertical: 5.v),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgThumbsUp,
                        height: 28.adaptSize,
                        width: 28.adaptSize,
                        margin: EdgeInsets.only(left: 28.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgContrast,
                        height: 18.adaptSize,
                        width: 18.adaptSize,
                        margin: EdgeInsets.only(
                          left: 28.h,
                          top: 5.v,
                          bottom: 5.v,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 49.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 1.v),
                        child: Text(
                          "lbl_01_23".tr,
                          style: CustomTextStyles.bodySmallWhiteA700,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 7.v),
                        child: Container(
                          height: 4.v,
                          width: 179.h,
                          decoration: BoxDecoration(
                            color: appTheme.blueGray100.withOpacity(0.42),
                            borderRadius: BorderRadius.circular(
                              2.h,
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                              2.h,
                            ),
                            child: LinearProgressIndicator(
                              value: 0.6,
                              backgroundColor:
                                  appTheme.blueGray100.withOpacity(0.42),
                              valueColor: AlwaysStoppedAnimation<Color>(
                                appTheme.whiteA700.withOpacity(0.64),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 1.v),
                        child: Text(
                          "lbl_05_46".tr,
                          style: CustomTextStyles.bodySmallWhiteA700,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgIconFullscreen,
                        height: 18.adaptSize,
                        width: 18.adaptSize,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAuthor() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 28.h),
      child: Row(
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
                  "lbl_edward_ford".tr,
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 4.v),
                Text(
                  "lbl_5_min_ago".tr,
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomIconButton(
            height: 38.adaptSize,
            width: 38.adaptSize,
            padding: EdgeInsets.all(10.h),
            decoration: IconButtonStyleHelper.fillPrimary,
            child: CustomImageView(
              imagePath: ImageConstant.imgCheckmarkWhiteA700,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTags() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 28.h),
        child: Obx(
          () => Wrap(
            runSpacing: 10.v,
            spacing: 10.h,
            children: List<Widget>.generate(
              controller.singleVideoModelObj.value.tagsItemList.value.length,
              (index) {
                TagsItemModel model = controller
                    .singleVideoModelObj.value.tagsItemList.value[index];

                return TagsItemWidget(
                  model,
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomInteractions() {
    return SizedBox(
      height: 118.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 168.h,
                vertical: 22.v,
              ),
              decoration: AppDecoration.fillOnPrimary.copyWith(
                borderRadius: BorderRadiusStyle.customBorderTL32,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 69.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgIndicatorOnLight,
                    height: 5.v,
                    width: 38.h,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.fromLTRB(38.h, 38.v, 38.h, 62.v),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgFavoriteSecondarycontainer,
                    height: 14.adaptSize,
                    width: 14.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5.h),
                    child: Text(
                      "lbl_326".tr,
                      style: CustomTextStyles.titleSmallWhiteA700,
                    ),
                  ),
                  Spacer(
                    flex: 25,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgComputer,
                    height: 14.adaptSize,
                    width: 14.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Text(
                      "lbl_148".tr,
                      style: CustomTextStyles.titleSmallWhiteA700,
                    ),
                  ),
                  Spacer(
                    flex: 25,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgQuestionWhiteA700,
                    height: 14.adaptSize,
                    width: 14.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5.h),
                    child: Text(
                      "lbl_share".tr,
                      style: CustomTextStyles.titleSmallWhiteA700,
                    ),
                  ),
                  Spacer(
                    flex: 50,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgIconOptions,
                    height: 18.adaptSize,
                    width: 18.adaptSize,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
