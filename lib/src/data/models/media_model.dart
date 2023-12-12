import 'package:json_annotation/json_annotation.dart';

import '../../domain.dart';
import 'media_meta_data_model.dart';

part 'media_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class MediaModel extends MediaEntity {

 @override
 @JsonKey(name: "media-metadata")
 final List<MediaMetaDataModel>? mediaMetadata;

  const MediaModel(
      {
      super.type,
      super.subtype,
      super.caption,
      super.copyright,
      super.approvedForSyndication,
      this.mediaMetadata});

  factory MediaModel.fromJson(json) => _$MediaModelFromJson(json);

  toJson() => _$MediaModelToJson(this);

  static List<MediaModel> fromJsonList(List json) {
    return json.map((e) => MediaModel.fromJson(e)).toList();
  }

}
