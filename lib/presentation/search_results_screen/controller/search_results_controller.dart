import '../../../core/app_export.dart';
import '../models/search_results_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_dashbourd_uikit/presentation/single_post_bottomsheet/single_post_bottomsheet.dart';
import 'package:almohsen_dashbourd_uikit/presentation/single_post_bottomsheet/controller/single_post_controller.dart';

/// A controller class for the SearchResultsScreen.
///
/// This class manages the state of the SearchResultsScreen, including the
/// current searchResultsModelObj
class SearchResultsController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<SearchResultsModel> searchResultsModelObj = SearchResultsModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }

  @override
  void onReady() {
    Get.bottomSheet(
      SinglePostBottomsheet(
        Get.put(
          SinglePostController(),
        ),
      ),
      isScrollControlled: true,
    );
  }
}
