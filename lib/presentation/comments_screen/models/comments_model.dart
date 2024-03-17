import '../../../core/app_export.dart';
import 'comments_item_model.dart';

/// This class defines the variables used in the [comments_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CommentsModel {
  Rx<List<CommentsItemModel>> commentsItemList = Rx([
    CommentsItemModel(
        name: "Billy Green".obs,
        time: "20min ago".obs,
        copy:
            "Awesome Edward, remember that five tips for low cost holidays I sent you?"
                .obs,
        image: ImageConstant.imgFavoriteSecondarycontainer.obs),
    CommentsItemModel(
        name: "Billy Green".obs,
        time: "20min ago".obs,
        copy:
            "Awesome Edward, remember that five tips for low cost holidays I sent you?"
                .obs,
        image: ImageConstant.imgFavoriteGray500.obs),
    CommentsItemModel(
        name: "Billy Green".obs,
        time: "20min ago".obs,
        copy:
            "Awesome Edward, remember that five tips for low cost holidays I sent you?"
                .obs,
        image: ImageConstant.imgFavoriteSecondarycontainer.obs),
    CommentsItemModel(
        name: "Billy Green".obs,
        time: "20min ago".obs,
        copy:
            "Awesome Edward, remember that five tips for low cost holidays I sent you?"
                .obs,
        image: ImageConstant.imgFavoriteSecondarycontainer.obs)
  ]);
}
