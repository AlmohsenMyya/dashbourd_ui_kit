import 'package:almohsen_dashbourd_uikit/core/app_export.dart';
import 'package:almohsen_dashbourd_uikit/data/apiClient/api_client.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(PrefUtils());
    Get.put(ApiClient());
    Connectivity connectivity = Connectivity();
    Get.put(NetworkInfo(connectivity));
  }
}
