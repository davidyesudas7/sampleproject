// To parse this JSON data, do
//
//     final HomePagemodel = HomePagemodelFromJson(jsonString);

// ignore_for_file: overridden_fields

// import 'dart:convert';

// import 'package:equatable/equatable.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample_project/domain/homepage_entity.dart';
// import 'package:sample_project/domain/homepage_entity.dart';

// String HomePagemodelToJson(List<HomePagemodel> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// class HomePagemodel extends HomePagemodel with EquatableMixin {
//   @override
//   final int albumId;
//   @override
//   final int id;
//   @override
//   final String title;
//   @override
//   final String url;
//   @override
//   final String thumbnailUrl;

// HomePagemodel({
//   required this.albumId,
//   required this.id,
//   required this.title,
//   required this.url,
//   required this.thumbnailUrl,
// }) : super(
//             albumId: albumId,
//             id: id,
//             title: title,
//             url: url,
//             thumbnailUrl: thumbnailUrl);

//   factory HomePagemodel.fromJson(Map<String, dynamic> json) => HomePagemodel(
//         albumId: json["albumId"],
//         id: json["id"],
//         title: json["title"],
//         url: json["url"],
//         thumbnailUrl: json["thumbnailUrl"],
//       );

//   Map<String, dynamic> toJson() => {
//         "albumId": albumId,
//         "id": id,
//         "title": title,
//         "url": url,
//         "thumbnailUrl": thumbnailUrl,
//       };
// }
part 'homepage_model.freezed.dart';
part 'homepage_model.g.dart';

@freezed
class HomePagemodel with _$HomePagemodel {
  const factory HomePagemodel({
    required int albumId,
    required int id,
    required String title,
    required String url,
    required String thumbnailUrl,
  }) = _HomePagemodel;

  factory HomePagemodel.fromJson(Map<String, dynamic> json) =>
      _$HomePagemodelFromJson(json);
}
