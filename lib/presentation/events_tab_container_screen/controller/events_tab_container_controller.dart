import '../../../core/app_export.dart';
import '../models/events_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the EventsTabContainerScreen.
///
/// This class manages the state of the EventsTabContainerScreen, including the
/// current eventsTabContainerModelObj
class EventsTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<EventsTabContainerModel> eventsTabContainerModelObj =
      EventsTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 5));
}
