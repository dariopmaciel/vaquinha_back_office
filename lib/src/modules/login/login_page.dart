import 'package:flutter/material.dart';

import '../../core/ui/helper/size_extension.dart';
import '../../core/ui/styles/colors_app.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
          Container(
            constraints: BoxConstraints(
              maxWidth: context.percentWidth(screenWidth < 1200 ? .4 : .3),
              // maxHeight: context.percentHeight(.5),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Logo'),
                  Text('login'),
                  Text('TextformFiel'),
                  Text('TextformFiel'),
                  Text('Esqueceu senha'),
                  Text('btn'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
