import '../../../core/app_export.dart';

/// This class is used in the [searchgrid_item_widget] screen.
class SearchgridItemModel {
  SearchgridItemModel({
    this.edwardFord,
    this.username,
    this.edwardFord1,
    this.edwardFord2,
    this.username1,
    this.edwardFord3,
    this.edwardFord4,
    this.username2,
    this.edwardFord5,
    this.edwardFord6,
    this.username3,
    this.id,
  }) {
    edwardFord = edwardFord ?? Rx(ImageConstant.imgThumbnail);
    username = username ?? Rx("Edward Ford");
    edwardFord1 = edwardFord1 ?? Rx(ImageConstant.imgThumbnail229x154);
    edwardFord2 = edwardFord2 ?? Rx(ImageConstant.imgImage6);
    username1 = username1 ?? Rx("Edward Ford");
    edwardFord3 = edwardFord3 ?? Rx(ImageConstant.imgThumbnail1);
    edwardFord4 = edwardFord4 ?? Rx(ImageConstant.imgImage7);
    username2 = username2 ?? Rx("Edward Ford");
    edwardFord5 = edwardFord5 ?? Rx(ImageConstant.imgThumbnail2);
    edwardFord6 = edwardFord6 ?? Rx(ImageConstant.imgImage8);
    username3 = username3 ?? Rx("Edward Ford");
    id = id ?? Rx("");
  }

  Rx<String>? edwardFord;

  Rx<String>? username;

  Rx<String>? edwardFord1;

  Rx<String>? edwardFord2;

  Rx<String>? username1;

  Rx<String>? edwardFord3;

  Rx<String>? edwardFord4;

  Rx<String>? username2;

  Rx<String>? edwardFord5;

  Rx<String>? edwardFord6;

  Rx<String>? username3;

  Rx<String>? id;
}
