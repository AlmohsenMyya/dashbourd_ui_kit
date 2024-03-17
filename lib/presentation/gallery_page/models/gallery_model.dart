import '../../../core/app_export.dart';
import 'gallery_item_model.dart';

/// This class defines the variables used in the [gallery_page],
/// and is typically used to hold data that is passed between different parts of the application.
class GalleryModel {
  Rx<List<GalleryItemModel>> galleryItemList = Rx([
    GalleryItemModel(
        image: ImageConstant.imgImage99x99.obs,
        image1: ImageConstant.imgImage12.obs,
        image2: ImageConstant.imgImage13.obs,
        image3: ImageConstant.imgImage14.obs,
        image4: ImageConstant.imgImage15.obs,
        image5: ImageConstant.imgImage16.obs,
        image6: ImageConstant.imgImage17.obs,
        image7: ImageConstant.imgImage18.obs,
        image8: ImageConstant.imgImage19.obs)
  ]);
}
