// To parse this JSON data, do
//
//     final homePageModel = homePageModelFromJson(jsonString);

// ignore_for_file: overridden_fields

import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:sample_project/domain/homepage_entity.dart';

List<HomePageModel> homePageModelFromJson(String str) =>
    List<HomePageModel>.from(
        json.decode(str).map((x) => HomePageModel.fromJson(x)));

String homePageModelToJson(List<HomePageModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class HomePageModel extends HomePageEntity with EquatableMixin {
  @override
  final int albumId;
  @override
  final int id;
  @override
  final String title;
  @override
  final String url;
  @override
  final String thumbnailUrl;

  HomePageModel({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  }) : super(
            albumId: albumId,
            id: id,
            title: title,
            url: url,
            thumbnailUrl: thumbnailUrl);

  factory HomePageModel.fromJson(Map<String, dynamic> json) => HomePageModel(
        albumId: json["albumId"],
        id: json["id"],
        title: json["title"],
        url: json["url"],
        thumbnailUrl: json["thumbnailUrl"],
      );

  Map<String, dynamic> toJson() => {
        "albumId": albumId,
        "id": id,
        "title": title,
        "url": url,
        "thumbnailUrl": thumbnailUrl,
      };
}
