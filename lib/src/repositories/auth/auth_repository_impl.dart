import 'dart:developer';

import 'package:dio/dio.dart';

import '../../core/exceptions/repository_exception.dart';
import '../../core/exceptions/unautorized_exception.dart';
import '../../core/models/auth_model.dart';
import '../../core/rest_cliente/custom_dio.dart';
import './auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
//acesso a backend acesso a customDio
  final CustomDio _dio;

  AuthRepositoryImpl({required CustomDio dio}) : _dio = dio;

  @override
  Future<AuthModel> login(String email, String password) async {
    try {
      final result = await _dio.unAuth().post(
        '/auth',
        data: {
          'email': email,
          'password': password,
          'admin': true,
        },
      );
      return AuthModel.fromMap(result.data);
    } on DioException catch (e, s) {
      if (e.response?.statusCode == 403) {
        log('Login ou Senha inválidos', error: e, stackTrace: s);
        throw unAutorizedException(message: 'Login ou Senha inválidos');
      }
      log('Erro ao realizar login', error: e, stackTrace: s);
      throw RepositoryException(message: 'Erro ao realizar login');
    }
  }
}
