import '../models/searchgrid_item_model.dart';
import '../controller/search_controller.dart';
import 'package:flutter/material.dart' hide SearchController;
import 'package:almohsen_dashbourd_uikit/core/app_export.dart';

// ignore: must_be_immutable
class SearchgridItemWidget extends StatelessWidget {
  SearchgridItemWidget(
    this.searchgridItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SearchgridItemModel searchgridItemModelObj;

  var controller = Get.find<SearchController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 229.v,
              width: 154.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Obx(
                    () => CustomImageView(
                      imagePath: searchgridItemModelObj.edwardFord!.value,
                      height: 229.v,
                      width: 154.h,
                      radius: BorderRadius.circular(
                        8.h,
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 28.h,
                        vertical: 20.v,
                      ),
                      decoration: AppDecoration.linear.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder9,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(height: 121.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgImage5,
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                            radius: BorderRadius.circular(
                              12.h,
                            ),
                          ),
                          SizedBox(height: 6.v),
                          Obx(
                            () => Text(
                              searchgridItemModelObj.username!.value,
                              style: CustomTextStyles.titleMediumWhiteA700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 229.v,
              width: 154.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Obx(
                    () => CustomImageView(
                      imagePath: searchgridItemModelObj.edwardFord1!.value,
                      height: 229.v,
                      width: 154.h,
                      radius: BorderRadius.circular(
                        8.h,
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 28.h,
                        vertical: 20.v,
                      ),
                      decoration: AppDecoration.linear.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder9,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(height: 121.v),
                          Obx(
                            () => CustomImageView(
                              imagePath:
                                  searchgridItemModelObj.edwardFord2!.value,
                              height: 40.adaptSize,
                              width: 40.adaptSize,
                              radius: BorderRadius.circular(
                                12.h,
                              ),
                            ),
                          ),
                          SizedBox(height: 6.v),
                          Obx(
                            () => Text(
                              searchgridItemModelObj.username1!.value,
                              style: CustomTextStyles.titleMediumWhiteA700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 11.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 229.v,
              width: 154.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Obx(
                    () => CustomImageView(
                      imagePath: searchgridItemModelObj.edwardFord3!.value,
                      height: 229.v,
                      width: 154.h,
                      radius: BorderRadius.circular(
                        8.h,
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 28.h,
                        vertical: 20.v,
                      ),
                      decoration: AppDecoration.linear.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder9,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(height: 121.v),
                          Obx(
                            () => CustomImageView(
                              imagePath:
                                  searchgridItemModelObj.edwardFord4!.value,
                              height: 40.adaptSize,
                              width: 40.adaptSize,
                              radius: BorderRadius.circular(
                                12.h,
                              ),
                            ),
                          ),
                          SizedBox(height: 6.v),
                          Obx(
                            () => Text(
                              searchgridItemModelObj.username2!.value,
                              style: CustomTextStyles.titleMediumWhiteA700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 229.v,
              width: 154.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Obx(
                    () => CustomImageView(
                      imagePath: searchgridItemModelObj.edwardFord5!.value,
                      height: 229.v,
                      width: 154.h,
                      radius: BorderRadius.circular(
                        8.h,
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 28.h,
                        vertical: 20.v,
                      ),
                      decoration: AppDecoration.linear.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder9,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(height: 121.v),
                          Obx(
                            () => CustomImageView(
                              imagePath:
                                  searchgridItemModelObj.edwardFord6!.value,
                              height: 40.adaptSize,
                              width: 40.adaptSize,
                              radius: BorderRadius.circular(
                                12.h,
                              ),
                            ),
                          ),
                          SizedBox(height: 6.v),
                          Obx(
                            () => Text(
                              searchgridItemModelObj.username3!.value,
                              style: CustomTextStyles.titleMediumWhiteA700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
