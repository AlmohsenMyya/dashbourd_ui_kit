import 'widgets/events_item_widget.dart';
import 'models/events_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_dashbourd_uikit/core/app_export.dart';
import 'controller/events_controller.dart';
import 'models/events_model.dart';

class EventsPage extends StatelessWidget {
  EventsPage({Key? key})
      : super(
          key: key,
        );

  EventsController controller = Get.put(EventsController(EventsModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              SizedBox(height: 26.v),
              _buildEvents(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEvents() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 28.h),
        child: Obx(
          () => ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 18.v,
              );
            },
            itemCount:
                controller.eventsModelObj.value.eventsItemList.value.length,
            itemBuilder: (context, index) {
              EventsItemModel model =
                  controller.eventsModelObj.value.eventsItemList.value[index];
              return EventsItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }
}
