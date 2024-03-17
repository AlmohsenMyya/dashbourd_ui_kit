import 'package:almohsen_dashbourd_uikit/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_dashbourd_uikit/core/app_export.dart';
import 'controller/single_story_controller.dart';

// ignore_for_file: must_be_immutable
class SingleStoryScreen extends GetWidget<SingleStoryController> {
  const SingleStoryScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.onPrimary,
        body: Container(
          height: 668.v,
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 18.v),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgThumbnail622x375,
                height: 622.v,
                width: 375.h,
                radius: BorderRadius.circular(
                  12.h,
                ),
                alignment: Alignment.center,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgHead,
                height: 38.v,
                width: 339.h,
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(top: 18.v),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildCommentEditText(),
      ),
    );
  }

  /// Section Widget
  Widget _buildCommentEditText() {
    return Padding(
      padding: EdgeInsets.only(
        left: 28.h,
        right: 28.h,
        bottom: 52.v,
      ),
      child: CustomTextFormField(
        controller: controller.commentEditTextController,
        hintText: "msg_write_a_comment".tr,
        textInputAction: TextInputAction.done,
        suffix: Container(
          margin: EdgeInsets.fromLTRB(30.h, 17.v, 15.h, 17.v),
          child: CustomImageView(
            imagePath: ImageConstant.imgSave,
            height: 14.adaptSize,
            width: 14.adaptSize,
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 48.v,
        ),
        borderDecoration: TextFormFieldStyleHelper.outlineBlueGrayTL4,
      ),
    );
  }
}
