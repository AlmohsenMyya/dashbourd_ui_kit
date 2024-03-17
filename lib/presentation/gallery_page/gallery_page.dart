import 'widgets/gallery_item_widget.dart';
import 'models/gallery_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_dashbourd_uikit/core/app_export.dart';
import 'controller/gallery_controller.dart';
import 'models/gallery_model.dart';

class GalleryPage extends StatelessWidget {
  GalleryPage({Key? key})
      : super(
          key: key,
        );

  GalleryController controller = Get.put(GalleryController(GalleryModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              SizedBox(height: 30.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 28.h),
                child: Obx(
                  () => GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 320.v,
                      crossAxisCount: 1,
                      mainAxisSpacing: 1.h,
                      crossAxisSpacing: 1.h,
                    ),
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: controller
                        .galleryModelObj.value.galleryItemList.value.length,
                    itemBuilder: (context, index) {
                      GalleryItemModel model = controller
                          .galleryModelObj.value.galleryItemList.value[index];
                      return GalleryItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
