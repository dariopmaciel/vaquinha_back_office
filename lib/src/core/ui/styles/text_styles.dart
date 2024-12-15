import 'package:flutter/material.dart';

class TextStyles {
  static TextStyles? _instance;
  // Avoid self instance
  TextStyles._();
  static TextStyles get instance => _instance ??= TextStyles._();




  
}

extension TextStylesExtention on BuildContext {
  TextStyles get colors => TextStyles.instance;
}
