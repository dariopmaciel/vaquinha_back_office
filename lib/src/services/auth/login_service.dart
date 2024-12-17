abstract interface class LoginService {
  Future<void> login(String email, String password);
}
