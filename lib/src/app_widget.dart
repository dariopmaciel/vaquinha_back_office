import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'core/ui/theme/theme_config.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    //?Não está funcionando o comando para outro caminho fora o '/'
    //*usado '/' por conveniencia técnica, correto seria usar /login e '/' ser o splashPage
    Modular.setInitialRoute('/');
    

    return MaterialApp.router(
      title: 'Application Name',
      // theme: ThemeData(primaryColor: Colors.blue,useMaterial3: false),
      theme: ThemeConfig.theme,
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
      
    );
  }
}
