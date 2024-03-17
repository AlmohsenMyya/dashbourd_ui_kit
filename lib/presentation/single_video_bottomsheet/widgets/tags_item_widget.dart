import '../models/tags_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_dashbourd_uikit/core/app_export.dart';

// ignore: must_be_immutable
class TagsItemWidget extends StatelessWidget {
  TagsItemWidget(
    this.tagsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TagsItemModel tagsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 8.h,
          vertical: 2.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          tagsItemModelObj.chipSmall!.value,
          style: TextStyle(
            color: appTheme.blueGray400,
            fontSize: 12.fSize,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
          ),
        ),
        selected: (tagsItemModelObj.isSelected?.value ?? false),
        backgroundColor: appTheme.blueGray100,
        selectedColor: appTheme.blueGray100,
        shape: (tagsItemModelObj.isSelected?.value ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.blueGray400.withOpacity(0.6),
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  4.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  4.h,
                ),
              ),
        onSelected: (value) {
          tagsItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
