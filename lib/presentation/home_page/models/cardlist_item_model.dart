import '../../../core/app_export.dart';

/// This class is used in the [cardlist_item_widget] screen.
class CardlistItemModel {
  CardlistItemModel({
    this.name,
    this.time,
    this.copy,
    this.label,
    this.label1,
    this.label2,
    this.id,
  }) {
    name = name ?? Rx("Dustin Houston");
    time = time ?? Rx("5 min ago");
    copy = copy ?? Rx("Whether its a driving tour 😂");
    label = label ?? Rx("326");
    label1 = label1 ?? Rx("148");
    label2 = label2 ?? Rx("Share");
    id = id ?? Rx("");
  }

  Rx<String>? name;

  Rx<String>? time;

  Rx<String>? copy;

  Rx<String>? label;

  Rx<String>? label1;

  Rx<String>? label2;

  Rx<String>? id;
}
