import 'package:tots_minimal_api/features/auth/login/model/user_success.dart';

abstract class LoginRepository {
  Future<UserSuccess> loginWIthEmailAndPassword({
    required String email,
    required String password,
  });
}
