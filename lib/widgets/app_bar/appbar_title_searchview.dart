import 'package:almohsen_dashbourd_uikit/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_dashbourd_uikit/core/app_export.dart';

// ignore: must_be_immutable
class AppbarTitleSearchview extends StatelessWidget {
  AppbarTitleSearchview({
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
        hintText: "msg_search_in_social".tr,
        borderDecoration: SearchViewStyleHelper.fillBlueGray,
        fillColor: appTheme.blueGray100,
      ),
    );
  }
}
