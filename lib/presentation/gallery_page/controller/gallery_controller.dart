import '../../../core/app_export.dart';
import '../models/gallery_model.dart';

/// A controller class for the GalleryPage.
///
/// This class manages the state of the GalleryPage, including the
/// current galleryModelObj
class GalleryController extends GetxController {
  GalleryController(this.galleryModelObj);

  Rx<GalleryModel> galleryModelObj;
}
