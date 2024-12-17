
import '../../core/storage/storage.dart';
import '../../repositories/auth/auth_repository.dart';
import './login_service.dart';

class LoginServiceImpl implements LoginService {
  final AuthRepository _auth;
  final Storage _storage;

  LoginServiceImpl({
    required AuthRepository auth,
    required Storage storage,
  })  : _auth = auth,
        _storage = storage;

  @override
  Future<void> login(String email, String password) async {
    final authModel = await _auth.login(email, password);
    _storage.setData('/ACCESS_TOKEN/', valor)
  }
}
