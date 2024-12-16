import 'package:flutter/material.dart';

import '../../core/ui/styles/colors_app.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  appBar: AppBar(title: const Text('Login_Page')),
      backgroundColor: context.colors.blacky,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: context.,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/lanche.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
