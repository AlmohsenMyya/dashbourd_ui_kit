import '../../../core/app_export.dart';
import 'events_item_model.dart';

/// This class defines the variables used in the [events_page],
/// and is typically used to hold data that is passed between different parts of the application.
class EventsModel {
  Rx<List<EventsItemModel>> eventsItemList = Rx([
    EventsItemModel(
        fashionMeetup: ImageConstant.imgImage180x283.obs,
        monday: "Monday".obs,
        decemberCounter: "December, 2019".obs,
        monday1: ImageConstant.imgIconOptionsGray500.obs,
        title: "Fashion Meetup".obs,
        time: "Starts at 9:00am in Los Angeles".obs,
        avatarInitials: "+9".obs),
    EventsItemModel(
        fashionMeetup: ImageConstant.imgImage9.obs,
        monday: "Monday".obs,
        decemberCounter: "December, 2019".obs,
        monday1: ImageConstant.imgOptionsGray500.obs,
        title: "Fashion Meetup".obs,
        time: "Starts at 9:00am in Los Angeles".obs,
        avatarInitials: "+9".obs)
  ]);
}
