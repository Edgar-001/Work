import 'package:flutter/material.dart';
import 'package:my_profile/api/api.dart';
import 'package:my_profile/model/leaderboard._model.dart';

class LeaderPageProvider extends ChangeNotifier {
  LeaderModel? leaderData;
  LeaderPageProvider() {
    getData();
  }

  void getData() async {
    leaderData = (await API().leader.getProductsData()) as LeaderModel?;

    notifyListeners();
  }
}
