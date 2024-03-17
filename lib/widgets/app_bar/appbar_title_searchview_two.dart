import 'package:almohsen_dashbourd_uikit/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_dashbourd_uikit/core/app_export.dart';

// ignore: must_be_immutable
class AppbarTitleSearchviewTwo extends StatelessWidget {
  AppbarTitleSearchviewTwo({
    Key? key,
    this.hintText,
    this.controller,
    this.margin,
  }) : super(
          key: key,
        );

  String? hintText;

  TextEditingController? controller;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomSearchView(
        width: 271.h,
        controller: controller,
        hintText: "msg_search_in_friends".tr,
        hintStyle: CustomTextStyles.titleSmallBluegray400,
      ),
    );
  }
}
