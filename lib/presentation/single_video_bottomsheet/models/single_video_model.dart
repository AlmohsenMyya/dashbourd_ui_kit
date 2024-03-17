import 'tags_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [single_video_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class SingleVideoModel {
  Rx<List<TagsItemModel>> tagsItemList =
      Rx(List.generate(5, (index) => TagsItemModel()));
}
