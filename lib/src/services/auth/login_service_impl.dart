import 'dart:developer';
import '../../core/exceptions/repository_exception.dart';
import '../../core/exceptions/unautorized_exception.dart';
import '../../core/shared_global/constants.dart';
import '../../core/storage/storage.dart';
import '../../repositories/auth/auth_repository.dart';
import './login_service.dart';

class LoginServiceImpl implements LoginService {
  final AuthRepository _authRepository;
  final Storage _storage;

  LoginServiceImpl({
    required AuthRepository authRepository,
    required Storage storage,
  })  : _authRepository = authRepository,
        _storage = storage;

  @override
  Future<void> login(String email, String password) async {
    // try {
    final authModel = await _authRepository.login(email, password);
    // _storage.setData('/ACCESS_TOKEN/', valor)
    _storage.setData(
      SessionStorageKey.accessToken.key,
      authModel.accessToken,
    );
    //?preferi tratar o reposition exeption na Controller
    // } on RepositoryException catch (e, s) {
    //   log('login_service erro', error: e, stackTrace: s);
    //   throw UnautorizedException(message: 'login_service erro');
    // }
  }
}
