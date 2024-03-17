import '../../../core/app_export.dart';
import '../models/home_container_model.dart';
import 'package:almohsen_dashbourd_uikit/presentation/new_post_bottomsheet/new_post_bottomsheet.dart';
import 'package:almohsen_dashbourd_uikit/presentation/new_post_bottomsheet/controller/new_post_controller.dart';

/// A controller class for the HomeContainerScreen.
///
/// This class manages the state of the HomeContainerScreen, including the
/// current homeContainerModelObj
class HomeContainerController extends GetxController {
  Rx<HomeContainerModel> homeContainerModelObj = HomeContainerModel().obs;

  @override
  void onReady() {
    Get.toNamed(
      AppRoutes.archivedMessageTabContainerScreen,
    );
    Get.bottomSheet(
      NewPostBottomsheet(
        Get.put(
          NewPostController(),
        ),
      ),
      isScrollControlled: true,
    );
    Get.toNamed(
      AppRoutes.eventsTabContainerScreen,
    );
    Get.toNamed(
      AppRoutes.userProfileTabContainerScreen,
    );
  }
}
