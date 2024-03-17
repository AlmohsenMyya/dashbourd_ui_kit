import '../models/featuredlist_item_model.dart';
import '../controller/home_controller.dart';
import 'package:almohsen_dashbourd_uikit/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_dashbourd_uikit/core/app_export.dart';

// ignore: must_be_immutable
class FeaturedlistItemWidget extends StatelessWidget {
  FeaturedlistItemWidget(
    this.featuredlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FeaturedlistItemModel featuredlistItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 48.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Obx(
          () => CustomIconButton(
            height: 49.v,
            width: 48.h,
            padding: EdgeInsets.all(15.h),
            decoration: IconButtonStyleHelper.outlineBlueGrayF,
            child: CustomImageView(
              imagePath: featuredlistItemModelObj.close!.value,
            ),
          ),
        ),
      ),
    );
  }
}
