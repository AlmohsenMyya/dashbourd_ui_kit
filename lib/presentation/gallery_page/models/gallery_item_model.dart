import '../../../core/app_export.dart';

/// This class is used in the [gallery_item_widget] screen.
class GalleryItemModel {
  GalleryItemModel({
    this.image,
    this.image1,
    this.image2,
    this.image3,
    this.image4,
    this.image5,
    this.image6,
    this.image7,
    this.image8,
    this.id,
  }) {
    image = image ?? Rx(ImageConstant.imgImage99x99);
    image1 = image1 ?? Rx(ImageConstant.imgImage12);
    image2 = image2 ?? Rx(ImageConstant.imgImage13);
    image3 = image3 ?? Rx(ImageConstant.imgImage14);
    image4 = image4 ?? Rx(ImageConstant.imgImage15);
    image5 = image5 ?? Rx(ImageConstant.imgImage16);
    image6 = image6 ?? Rx(ImageConstant.imgImage17);
    image7 = image7 ?? Rx(ImageConstant.imgImage18);
    image8 = image8 ?? Rx(ImageConstant.imgImage19);
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? image1;

  Rx<String>? image2;

  Rx<String>? image3;

  Rx<String>? image4;

  Rx<String>? image5;

  Rx<String>? image6;

  Rx<String>? image7;

  Rx<String>? image8;

  Rx<String>? id;
}
