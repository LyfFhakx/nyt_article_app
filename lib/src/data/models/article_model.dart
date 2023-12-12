
import 'package:json_annotation/json_annotation.dart';

import '../../domain.dart';
import 'media_model.dart';

part 'article_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ArticleModel extends ArticleEntity {
  @override
  @JsonKey(name: "nytdsection")
  final String? nyTdSection;

  @override
  final List<MediaModel>? media;

  const ArticleModel(
      {this.nyTdSection,
      this.media,
      super.uri,
      super.url,
      super.id,
      super.assetId,
      super.source,
      super.publishedDate,
      super.updated,
      super.section,
      super.subsection,
      super.adxKeywords,
      super.column,
      super.byline,
      super.type,
      super.title,
      super.abstract,
      super.desFacet,
      super.orgFacet,
      super.perFacet,
      super.geoFacet,
      super.etaId});

  factory ArticleModel.fromJson(json) => _$ArticleModelFromJson(json);

  toJson() => _$ArticleModelToJson(this);

  static List<ArticleModel> fromJsonList(List? json) {
    return json?.map((e) => ArticleModel.fromJson(e)).toList() ?? [];
  }

  @override
  List<Object?> get props => [
        uri,
        url,
        id,
        assetId,
        source,
        publishedDate,
        updated,
        section,
        subsection,
        nyTdSection,
        adxKeywords,
        column,
        byline,
        type,
        title,
        abstract,
        desFacet,
        orgFacet,
        perFacet,
        geoFacet,
        media,
        etaId
      ];
}
