import 'dart:developer';
import 'package:sample_project/core/exceptions.dart';
import 'package:sample_project/data/homepage_model.dart';
import 'package:http/http.dart' as http;
import 'package:sample_project/data/urls.dart';

abstract class HomepageRemoteData {
  Future<List<HomePageModel>> getremotedatasource();
}

class HomepageRemoteDataImpl implements HomepageRemoteData {
  final http.Client client;

  HomepageRemoteDataImpl({required this.client});
  @override
  Future<List<HomePageModel>> getremotedatasource() async {
    final response = await client.get(Uri.parse(homepageurl));
    log(response.body);
    if (response.statusCode != 200) {
      throw ServerException();
    } else {
      final homePageModel = homePageModelFromJson(response.body);
      return homePageModel;
    }
  }
}
