import '../../../core/app_export.dart';
import '../models/single_story_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SingleStoryScreen.
///
/// This class manages the state of the SingleStoryScreen, including the
/// current singleStoryModelObj
class SingleStoryController extends GetxController {
  TextEditingController commentEditTextController = TextEditingController();

  Rx<SingleStoryModel> singleStoryModelObj = SingleStoryModel().obs;

  @override
  void onClose() {
    super.onClose();
    commentEditTextController.dispose();
  }
}
