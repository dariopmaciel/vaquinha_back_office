import 'package:flutter/material.dart';

class ColorsApp {
  static ColorsApp? _instance;
  // Avoid self instance
  ColorsApp._();
  static ColorsApp get instance => _instance ??= ColorsApp._();
  Color get primary => const Color(0Xff007D21);
  Color get secondary => const Color(0XffFFAB18);
  Color get blacky => const Color(0Xff140E0E);
 

  
}

extension ColorAppExtention on BuildContext {
  ColorsApp get colors => ColorsApp.instance;
}
