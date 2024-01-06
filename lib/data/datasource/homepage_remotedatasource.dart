import 'dart:convert';
import 'dart:developer';
import 'package:injectable/injectable.dart';
import 'package:sample_project/core/exceptions.dart';
import 'package:sample_project/data/homepage_model.dart';
import 'package:http/http.dart' as http;
import 'package:sample_project/data/urls.dart';

abstract class HomepageRemoteData {
  Future<List<HomePagemodel>> getremotedatasource();
}

@LazySingleton(as: HomepageRemoteData)
class HomepageRemoteDataImpl implements HomepageRemoteData {
  final http.Client client;

  HomepageRemoteDataImpl({required this.client});
  @override
  Future<List<HomePagemodel>> getremotedatasource() async {
    final response = await client.get(Uri.parse(homepageurl));
    log(response.body);
    if (response.statusCode != 200) {
      throw ServerException();
    }
    // else if (response.statusCode = 200) {
    //   throw GenralException();
    // }
    else {
      final homepagemodel = (jsonDecode(response.body) as List).map((e) {
        return HomePagemodel.fromJson(e);
      }).toList();

      return homepagemodel;
    }
  }
}
