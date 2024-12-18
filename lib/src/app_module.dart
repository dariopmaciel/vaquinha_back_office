import 'package:flutter_modular/flutter_modular.dart';

import 'modules/home/home_page.dart';
import 'modules/login/login_module.dart';

class AppModule extends Module {
  @override
  void routes(r) {
    //?Não está funcionando o comando 'Modular.setInitialRoute('/');' para outro caminho fora o '/'
    //? Defeito modular
    r.module('/', module: LoginModule());
    // r.child('/', child: (_) => HomePage());
  }
}
