import 'package:flutter/material.dart';
import 'package:sample_project/data/homepage_model.dart';
import 'package:sample_project/domain/homepage_uscase.dart';

class HomepageDtatProvider extends ChangeNotifier {
  List<HomePagemodel> homePageEntity = [];
  String? errormessage;
  bool isloading = true;
  final HomepageUscase homepageUscase;

  HomepageDtatProvider({required this.homepageUscase});
  Future<void> gethomepagedata() async {
    final data = await homepageUscase.gethompagedata();
    data.fold((failure) {
      errormessage = failure.errormessage;
      isloading = false;
      notifyListeners();
    }, (homedata) {
      homePageEntity = homedata;
      isloading = false;
      notifyListeners();
    });

    notifyListeners();
  }

  // String _maperrormessagestofailure(Failure failure) {
  //   switch (failure.runtimeType) {
  //     case ServerFailure:
  //       return kServerfailure;

  //     case CacheFailure:
  //       return kCachefailure;

  //     default:
  //       return kGenaralfailure;
  //   }
  // }
}
