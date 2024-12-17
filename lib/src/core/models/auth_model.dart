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
      // 'accessToken': accessToken,
      'access_token': accessToken,
    };
  }

  factory AuthModel.fromMap(Map<String, dynamic> map) {
    return AuthModel(
      // accessToken: map['accessToken'] ?? '',//!padrão
      accessToken: map['access_token'] ?? '',//!alteração 1
      // accessToken: (map['access_token'])as String, //!alteração 2 caso necessário
    );
  }

  String toJson() => json.encode(toMap());

  factory AuthModel.fromJson(String source) =>
      AuthModel.fromMap(json.decode(source));
}
