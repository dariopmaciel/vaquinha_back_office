import 'package:flutter_modular/flutter_modular.dart';

import 'modules/home/home_page.dart';
import 'modules/login/login_module.dart';

class AppModule extends Module {
  @override
  void routes(r) {
    //!GAMBIARRA
    //!MAGAIVERISMO!!!!
    //!! REARRANJO
    //?Não está funcionando o comando para outro caminho fora o '/'
    r.module('/', module: LoginModule());
    // r.child('/', child: (_) => HomePage());
  }
}
