import '../../../core/app_export.dart';
import 'searchgrid_item_model.dart';

/// This class defines the variables used in the [search_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchModel {
  Rx<List<SearchgridItemModel>> searchgridItemList = Rx([
    SearchgridItemModel(
        edwardFord: ImageConstant.imgThumbnail.obs,
        username: "Edward Ford".obs,
        edwardFord1: ImageConstant.imgThumbnail229x154.obs,
        edwardFord2: ImageConstant.imgImage6.obs,
        username1: "Edward Ford".obs,
        edwardFord3: ImageConstant.imgThumbnail1.obs,
        edwardFord4: ImageConstant.imgImage7.obs,
        username2: "Edward Ford".obs,
        edwardFord5: ImageConstant.imgThumbnail2.obs,
        edwardFord6: ImageConstant.imgImage8.obs,
        username3: "Edward Ford".obs)
  ]);
}
