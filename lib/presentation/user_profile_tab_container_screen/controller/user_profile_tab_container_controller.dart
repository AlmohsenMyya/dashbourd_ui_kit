import '../../../core/app_export.dart';
import '../models/user_profile_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the UserProfileTabContainerScreen.
///
/// This class manages the state of the UserProfileTabContainerScreen, including the
/// current userProfileTabContainerModelObj
class UserProfileTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<UserProfileTabContainerModel> userProfileTabContainerModelObj =
      UserProfileTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 4));
}
