import '../../core/models/auth_model.dart';

abstract interface class AuthRepository {


Future<AuthModel> login (String email, String password);
}