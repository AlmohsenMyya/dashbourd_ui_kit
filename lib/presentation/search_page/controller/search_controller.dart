import '../../../core/app_export.dart';
import '../models/search_model.dart';

/// A controller class for the SearchPage.
///
/// This class manages the state of the SearchPage, including the
/// current searchModelObj
class SearchController extends GetxController {
  SearchController(this.searchModelObj);

  Rx<SearchModel> searchModelObj;
}
