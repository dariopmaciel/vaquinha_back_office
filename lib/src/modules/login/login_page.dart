import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../core/ui/helper/loader.dart';
import '../../core/ui/helper/messages.dart';
import '../../core/ui/helper/size_extension.dart';
import '../../core/ui/styles/colors_app.dart';
import '../../core/ui/styles/text_styles.dart';
import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with Loader, Messages {
  final _emailEC = TextEditingController();
  final _passwordEC = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final controller = Modular.get<LoginController>();
//criação de uma reactin para escutar
  late final ReactionDisposer statusReactionDisposer;

  @override
  void dispose() {
    _emailEC.dispose();
    _passwordEC.dispose();
    super.dispose();
  }

  @override
  void initState() {
    //criação de uma reactin para escutar
    statusReactionDisposer = reaction(
      //quem vou escutar
      (_) => controller.loginStatus,
      (status) {
        switch (status) {
          case LoginStateStatus.initial:
            break;
          case LoginStateStatus.loading:
            showLoader();

          case LoginStateStatus.success:
            hideLoader();
            Modular.to.navigate('/homePage');
            break;
          case LoginStateStatus.error:
            hideLoader();
            showError(controller.errorMessage ?? 'Error');
            break;
        }
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenShortsSide = context.screenShortestSize;
    final screenWidth = context.screenWidth;

    return Scaffold(
      //  appBar: AppBar(title: const Text('Login_Page')),
      backgroundColor: context.colors.blacky,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: screenShortsSide * .5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/lanche.png'),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: context.percentHeight(0.1)),
            child: SizedBox(
              width: screenShortsSide * 0.5,
              child: Image.asset(
                'assets/images/logo.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              constraints: BoxConstraints(
                maxWidth: context.percentWidth(screenWidth < 1200 ? .7 : .3),
                // maxHeight: context.percentHeight(.5),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Text('Logo'),
                      FractionallySizedBox(
                        widthFactor: 0.4,
                        child: Image.asset('assets/images/logo.png'),
                      ),
                      const SizedBox(height: 20),
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child:
                            Text('login', style: context.textStyles.textTitle),
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Email'),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Senha'),
                      ),
                      const SizedBox(height: 20),
                      Text('Esqueceu senha?'),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            //!AQUI
                          },
                          child: Text('Entrar'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
