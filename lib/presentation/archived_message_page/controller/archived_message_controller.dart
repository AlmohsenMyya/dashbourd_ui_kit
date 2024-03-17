import '../../../core/app_export.dart';
import '../models/archived_message_model.dart';

/// A controller class for the ArchivedMessagePage.
///
/// This class manages the state of the ArchivedMessagePage, including the
/// current archivedMessageModelObj
class ArchivedMessageController extends GetxController {
  ArchivedMessageController(this.archivedMessageModelObj);

  Rx<ArchivedMessageModel> archivedMessageModelObj;
}
