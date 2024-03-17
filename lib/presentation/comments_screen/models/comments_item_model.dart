import '../../../core/app_export.dart';

/// This class is used in the [comments_item_widget] screen.
class CommentsItemModel {
  CommentsItemModel({
    this.name,
    this.time,
    this.copy,
    this.image,
    this.id,
  }) {
    name = name ?? Rx("Billy Green");
    time = time ?? Rx("20min ago");
    copy = copy ??
        Rx("Awesome Edward, remember that five tips for low cost holidays I sent you?");
    image = image ?? Rx(ImageConstant.imgFavoriteSecondarycontainer);
    id = id ?? Rx("");
  }

  Rx<String>? name;

  Rx<String>? time;

  Rx<String>? copy;

  Rx<String>? image;

  Rx<String>? id;
}
