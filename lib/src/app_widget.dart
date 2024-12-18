import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'core/ui/theme/theme_config.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    //?Não está funcionando o comando 'Modular.setInitialRoute('/');' para outro caminho fora o '/'
    //? Defeito modular
    
   
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
