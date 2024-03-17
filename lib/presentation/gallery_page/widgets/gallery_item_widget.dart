import '../models/gallery_item_model.dart';
import '../controller/gallery_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_dashbourd_uikit/core/app_export.dart';

// ignore: must_be_immutable
class GalleryItemWidget extends StatelessWidget {
  GalleryItemWidget(
    this.galleryItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  GalleryItemModel galleryItemModelObj;

  var controller = Get.find<GalleryController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Obx(
                () => CustomImageView(
                  imagePath: galleryItemModelObj.image!.value,
                  height: 99.adaptSize,
                  width: 99.adaptSize,
                  radius: BorderRadius.circular(
                    12.h,
                  ),
                  margin: EdgeInsets.only(right: 5.h),
                ),
              ),
            ),
            Expanded(
              child: Obx(
                () => CustomImageView(
                  imagePath: galleryItemModelObj.image1!.value,
                  height: 99.adaptSize,
                  width: 99.adaptSize,
                  radius: BorderRadius.circular(
                    12.h,
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 5.h),
                ),
              ),
            ),
            Expanded(
              child: Obx(
                () => CustomImageView(
                  imagePath: galleryItemModelObj.image2!.value,
                  height: 99.adaptSize,
                  width: 99.adaptSize,
                  radius: BorderRadius.circular(
                    12.h,
                  ),
                  margin: EdgeInsets.only(left: 5.h),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 11.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Obx(
                () => CustomImageView(
                  imagePath: galleryItemModelObj.image3!.value,
                  height: 99.adaptSize,
                  width: 99.adaptSize,
                  radius: BorderRadius.circular(
                    12.h,
                  ),
                  margin: EdgeInsets.only(right: 5.h),
                ),
              ),
            ),
            Expanded(
              child: Obx(
                () => CustomImageView(
                  imagePath: galleryItemModelObj.image4!.value,
                  height: 99.adaptSize,
                  width: 99.adaptSize,
                  radius: BorderRadius.circular(
                    12.h,
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 5.h),
                ),
              ),
            ),
            Expanded(
              child: Obx(
                () => CustomImageView(
                  imagePath: galleryItemModelObj.image5!.value,
                  height: 99.adaptSize,
                  width: 99.adaptSize,
                  radius: BorderRadius.circular(
                    12.h,
                  ),
                  margin: EdgeInsets.only(left: 5.h),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 11.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Obx(
                () => CustomImageView(
                  imagePath: galleryItemModelObj.image6!.value,
                  height: 99.adaptSize,
                  width: 99.adaptSize,
                  radius: BorderRadius.circular(
                    12.h,
                  ),
                  margin: EdgeInsets.only(right: 5.h),
                ),
              ),
            ),
            Expanded(
              child: Obx(
                () => CustomImageView(
                  imagePath: galleryItemModelObj.image7!.value,
                  height: 99.adaptSize,
                  width: 99.adaptSize,
                  radius: BorderRadius.circular(
                    12.h,
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 5.h),
                ),
              ),
            ),
            Expanded(
              child: Obx(
                () => CustomImageView(
                  imagePath: galleryItemModelObj.image8!.value,
                  height: 99.adaptSize,
                  width: 99.adaptSize,
                  radius: BorderRadius.circular(
                    12.h,
                  ),
                  margin: EdgeInsets.only(left: 5.h),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
