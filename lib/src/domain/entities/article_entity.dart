import 'package:equatable/equatable.dart';

import 'media_entity.dart';

class ArticleEntity extends Equatable {
  final String? uri;
  final String? url;
  final int? id;
  final int? assetId;
  final String? source;
  final String? publishedDate;
  final String? updated;
  final String? section;
  final String? subsection;
  final String? nyTdSection;
  final String? adxKeywords;
  final String? column;
  final String? byline;
  final String? type;
  final String? title;
  final String? abstract;
  final List<String>? desFacet;
  final List<String>? orgFacet;
  final List<String>? perFacet;
  final List<String>? geoFacet;
  final List<MediaEntity>? media;
  final int? etaId;

  const ArticleEntity({this.uri,
    this.url,
    this.id,
    this.assetId,
    this.source,
    this.publishedDate,
    this.updated,
    this.section,
    this.subsection,
    this.nyTdSection,
    this.adxKeywords,
    this.column,
    this.byline,
    this.type,
    this.title,
    this.abstract,
    this.desFacet,
    this.orgFacet,
    this.perFacet,
    this.geoFacet,
    this.media,
    this.etaId});

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