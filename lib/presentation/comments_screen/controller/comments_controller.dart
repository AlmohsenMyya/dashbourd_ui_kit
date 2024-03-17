import '../../../core/app_export.dart';
import '../models/comments_model.dart';

/// A controller class for the CommentsScreen.
///
/// This class manages the state of the CommentsScreen, including the
/// current commentsModelObj
class CommentsController extends GetxController {
  Rx<CommentsModel> commentsModelObj = CommentsModel().obs;
}
