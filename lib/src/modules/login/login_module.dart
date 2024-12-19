import 'package:flutter_modular/flutter_modular.dart';

import '../../repositories/auth/auth_repository.dart';
import '../../repositories/auth/auth_repository_impl.dart';
import '../../services/auth/login_service.dart';
import '../../services/auth/login_service_impl.dart';
import 'login_page.dart';

class LoginModule extends Module {
  @override
  void binds(i) {
    // i.addLazySingleton<AuthRepository>(AuthRepositoryImpl.new);
    i.addLazySingleton<AuthRepository>((i) => AuthRepositoryImpl(dio: i()));
    i.addLazySingleton<LoginService>(
      (i) => LoginServiceImpl(
        authRepository: i(),
        storage: i(),
      ),
    );
  }

  @override
  void routes(r) {
    r.child('/', child: (_) => LoginPage());
  }
}
