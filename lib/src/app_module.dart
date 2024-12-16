import 'package:flutter_modular/flutter_modular.dart';

import 'modules/home/home_page.dart';
import 'modules/login/login_module.dart';

class AppModule extends Module {
  @override
  void routes(r) {
    //!GAMBIARRA 
    //!MAGAIVERISMO!!!!
    //!! REARRANJO
    r.child('/', child: (_)=>HomePage());
    r.redirect('/', to: '/login');
    r.module('/login', module: LoginModule());
  }
}
