
import 'package:equatable/equatable.dart';

import 'media_meta_data_entity.dart';

class MediaEntity extends Equatable {
  final String? type;
  final String? subtype;
  final String? caption;
  final String? copyright;
  final int? approvedForSyndication;
  final List<MediaMetaDataEntity>? mediaMetadata;

  const MediaEntity(
      {this.type,
        this.subtype,
        this.caption,
        this.copyright,
        this.approvedForSyndication,
        this.mediaMetadata});

  @override
  List<Object?> get props => [
    type,
    subtype,
    caption,
    copyright,
    approvedForSyndication,
    mediaMetadata
  ];
}