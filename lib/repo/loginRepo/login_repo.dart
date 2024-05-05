import 'package:sweat_squad/data/network/network_api_service.dart';
import 'package:sweat_squad/res/appUrl/app_url.dart';

class LoginRepository {
  final _api = NetworkApiService();
  Future<dynamic> login(dynamic data) async {
    var result = await _api.postApi(
      AppUrl.login,
      data,
    );
    return result;
  }
}
