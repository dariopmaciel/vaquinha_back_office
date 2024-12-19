import 'package:flutter_modular/flutter_modular.dart';
import 'modules/core/core_module.dart';
import 'modules/home/home_page.dart';
import 'modules/login/login_module.dart';

class AppModule extends Module {
  @override
  void binds(i) {
    // i.add(constructor);
    // i.addInstance(instance);
    // i.addSingleton(constructor);
    // i.addLazySingleton(constructor);

    i.add(CoreModule.new);
  }
  // @override
  // List<Module> get imports => [
  //       CoreModule(),
  //     ];

  @override
  void routes(r) {
    //?Não está funcionando o comando 'Modular.setInitialRoute('/');' para outro caminho fora o '/'
    //? Defeito modular
    r.module('/', module: LoginModule());
    r.child('/homePage', child: (_) => HomePage());
  }
}
