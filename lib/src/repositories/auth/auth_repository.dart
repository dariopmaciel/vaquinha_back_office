abstract interface class AuthRepository {


Future<AuthModel> login (String email, String password);
}