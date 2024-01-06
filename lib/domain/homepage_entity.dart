class HomePageEntity {
  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;

  HomePageEntity({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });
}

mixin HomePageModelMixin {
  int get albumId;
  int get id;
  String get title;
  String get url;
  String get thumbnailUrl;
}
