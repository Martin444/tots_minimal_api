class UserSuccess {
  String accessToken;
  UserSuccess({
    required this.accessToken,
  });

  factory UserSuccess.fromJson(Map<String, dynamic> json) {
    return UserSuccess(
      accessToken: json['access_token'],
    );
  }
}
