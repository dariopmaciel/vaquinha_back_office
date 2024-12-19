import 'dart:developer';
import 'package:mobx/mobx.dart';
import '../../core/exceptions/unautorized_exception.dart';
import '../../services/auth/login_service.dart';
part 'login_controller.g.dart';

//TODO MobX => Uma Action => Que altera um estado => Que causa uma reação
//por isto ter um geter pois não faz sentido ser publico

enum LoginStateStatus {
  initial,
  loading,
  success,
  error,
}

class LoginController = LoginControllerBase with _$LoginController;

abstract class LoginControllerBase with Store {
  final LoginService _loginService;

  @readonly
  var _loginStatus = LoginStateStatus.initial;
  @readonly
  String? _errorMEssage;

  LoginControllerBase(this._loginService);

  @action
  Future<void> login(String email, String password) async {
    try {
      _loginStatus = LoginStateStatus.loading;
      await _loginService.execute(email, password);
      _loginStatus = LoginStateStatus.success;
    } on unAutorizedException catch (e, s) {
      _errorMEssage = 'Login ou senha inválidos';
      _loginStatus = LoginStateStatus.error;
    } catch (e, s) {
      log('Erro ao realizar login', error: e, stackTrace: s);
      _errorMEssage = 'Tente novamente mais tarde';
      _loginStatus = LoginStateStatus.error;
    }
  }
}
