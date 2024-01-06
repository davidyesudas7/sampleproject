// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'homepage_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomePagemodelImpl _$$HomePagemodelImplFromJson(Map<String, dynamic> json) =>
    _$HomePagemodelImpl(
      albumId: json['albumId'] as int,
      id: json['id'] as int,
      title: json['title'] as String,
      url: json['url'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String,
    );

Map<String, dynamic> _$$HomePagemodelImplToJson(_$HomePagemodelImpl instance) =>
    <String, dynamic>{
      'albumId': instance.albumId,
      'id': instance.id,
      'title': instance.title,
      'url': instance.url,
      'thumbnailUrl': instance.thumbnailUrl,
    };
