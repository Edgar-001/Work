
import 'package:dio/dio.dart';
import 'package:my_profile/model/leaderboard._model.dart';

class LeaderApi {
  final Dio appDioClient;

  LeaderApi(
    this.appDioClient,
  );

  Future<List<LeaderModel>> getProductsData() async {
    List<LeaderModel> leader = [];

    final result = await appDioClient.get(
      'https://my-json-server.typicode.com/narekpog/my-json/leaderboard',
    );

    if (result.data is List) {
      leader = result.data.first
          .map<LeaderModel>(
            (e) => LeaderModel.fromJson(e),
          )
          .toList();
    }

    return leader;
  }
}
