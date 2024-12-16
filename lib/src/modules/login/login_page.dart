import 'package:flutter/material.dart';

import '../../core/ui/helper/size_extension.dart';
import '../../core/ui/styles/colors_app.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenShortsSide = context.screenShortestSize;

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
            padding:  EdgeInsets.only(top: context.percentHeight(0.1)),
            child: SizedBox(
              width: screenShortsSide *0.5,
              child: Image.asset('assets/images/logo.png', fit: BoxFit.cover,),
            ),
          ),
          Container(constraints: BoxConstraints(),)
        ],
      ),
    );
  }
}
