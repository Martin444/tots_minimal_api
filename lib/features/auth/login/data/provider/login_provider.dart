import 'dart:convert';

import 'package:tots_minimal_api/core/api.dart';
import 'package:http/http.dart' as http;
import 'package:tots_minimal_api/features/auth/login/data/repository/login_repository.dart';
import 'package:tots_minimal_api/features/auth/login/model/user_success.dart';

class LoginProvider extends LoginRepository {
  @override
  Future<UserSuccess> loginWIthEmailAndPassword({required String email, required String password}) async {
    var loginURl = Uri.parse('${API.defaulBaseUrl}/oauth/token');
    var response = await http.post(
      loginURl,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'email': email,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      return UserSuccess.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('${response.statusCode}, ${response.body}');
    }
  }
}
