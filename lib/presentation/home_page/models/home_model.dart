import '../../../core/app_export.dart';
import 'featuredlist_item_model.dart';
import 'cardlist_item_model.dart';

/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel {
  Rx<List<FeaturedlistItemModel>> featuredlistItemList =
      Rx([FeaturedlistItemModel(close: ImageConstant.imgClose.obs)]);

  Rx<List<CardlistItemModel>> cardlistItemList = Rx([
    CardlistItemModel(
        name: "Dustin Houston".obs,
        time: "5 min ago".obs,
        copy: "Whether its a driving tour 😂".obs,
        label: "326".obs,
        label1: "148".obs,
        label2: "Share".obs),
    CardlistItemModel(copy: "Whether its a driving tour 😂".obs)
  ]);
}
