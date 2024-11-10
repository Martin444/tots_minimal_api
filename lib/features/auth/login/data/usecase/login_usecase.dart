import 'package:tots_minimal_api/features/auth/login/data/provider/login_provider.dart';
import 'package:tots_minimal_api/features/auth/login/model/user_success.dart';

class LoginUsecase {
  LoginUsecase();

  Future<UserSuccess> execute({
    required String email,
    required String password,
  }) async {
    var response = await LoginProvider().loginWIthEmailAndPassword(
      email: email,
      password: password,
    );
    return response;
  }
}
