import 'package:json_annotation/json_annotation.dart';

import '../../domain.dart';

part 'media_meta_data_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class MediaMetaDataModel extends MediaMetaDataEntity {

  const MediaMetaDataModel({super.url, super.format, super.height, super.width});

  factory MediaMetaDataModel.fromJson(json) =>
      _$MediaMetaDataModelFromJson(json);

  toJson() => _$MediaMetaDataModelToJson(this);

  static List<MediaMetaDataModel> fromJsonList(List json) {
    return json.map((e) => MediaMetaDataModel.fromJson(e)).toList();
  }
}