import '../../../core/app_export.dart';

/// This class is used in the [featuredlist_item_widget] screen.
class FeaturedlistItemModel {
  FeaturedlistItemModel({
    this.close,
    this.id,
  }) {
    close = close ?? Rx(ImageConstant.imgClose);
    id = id ?? Rx("");
  }

  Rx<String>? close;

  Rx<String>? id;
}
