import 'package:dio/dio.dart';
import 'package:my_profile/api/leader_api.dart';

class API {
  static API? _singleton;

  late LeaderApi leader;
  
  Dio appDioClient = Dio();

  factory API() {
    if (_singleton == null) {
      _singleton = API._internal();
    }
    return _singleton!;
   
  }

  API._internal() {
    // Init subclasses
    leader = LeaderApi(appDioClient);
   
  }
}