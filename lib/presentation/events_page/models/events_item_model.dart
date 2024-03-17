import '../../../core/app_export.dart';

/// This class is used in the [events_item_widget] screen.
class EventsItemModel {
  EventsItemModel({
    this.fashionMeetup,
    this.monday,
    this.decemberCounter,
    this.monday1,
    this.title,
    this.time,
    this.avatarInitials,
    this.id,
  }) {
    fashionMeetup = fashionMeetup ?? Rx(ImageConstant.imgImage180x283);
    monday = monday ?? Rx("Monday");
    decemberCounter = decemberCounter ?? Rx("December, 2019");
    monday1 = monday1 ?? Rx(ImageConstant.imgIconOptionsGray500);
    title = title ?? Rx("Fashion Meetup");
    time = time ?? Rx("Starts at 9:00am in Los Angeles");
    avatarInitials = avatarInitials ?? Rx("+9");
    id = id ?? Rx("");
  }

  Rx<String>? fashionMeetup;

  Rx<String>? monday;

  Rx<String>? decemberCounter;

  Rx<String>? monday1;

  Rx<String>? title;

  Rx<String>? time;

  Rx<String>? avatarInitials;

  Rx<String>? id;
}
