import 'dart:convert';

class AuthModel {
  // "email": "rodrigorahman@academiadoflutter.com.br",
  //   "password": "123123",
  //   "admin": true
  //!RECEBE 'access_token'

  final String accessToken;

  AuthModel({required this.accessToken});

  Map<String, dynamic> toMap() {
    return {
      'accessToken': accessToken,
    };
  }

  factory AuthModel.fromMap(Map<String, dynamic> map) {
    return AuthModel(
      accessToken: map['accessToken'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory AuthModel.fromJson(String source) => AuthModel.fromMap(json.decode(source));
}
