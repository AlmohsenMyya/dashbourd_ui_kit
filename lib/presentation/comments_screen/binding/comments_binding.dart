import 'package:almohsen_dashbourd_uikit/presentation/comments_screen/controller/comments_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CommentsScreen.
///
/// This class ensures that the CommentsController is created when the
/// CommentsScreen is first loaded.
class CommentsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CommentsController());
  }
}
