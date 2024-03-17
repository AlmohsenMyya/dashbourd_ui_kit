import '../../../core/app_export.dart';
import '../models/events_model.dart';

/// A controller class for the EventsPage.
///
/// This class manages the state of the EventsPage, including the
/// current eventsModelObj
class EventsController extends GetxController {
  EventsController(this.eventsModelObj);

  Rx<EventsModel> eventsModelObj;
}
