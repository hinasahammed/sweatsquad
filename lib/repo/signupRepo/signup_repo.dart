import 'package:sweat_squad/data/network/network_api_service.dart';
import 'package:sweat_squad/res/appUrl/app_url.dart';

class SignupRepository {
  final api = NetworkApiService();
  Future<dynamic> postApi(dynamic data) async {
    var result = await api.postApi(
      AppUrl.signup,
      data,
    );
    return result;
  }
}
