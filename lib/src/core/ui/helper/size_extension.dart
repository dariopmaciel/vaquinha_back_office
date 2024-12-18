import 'package:flutter/material.dart';

extension SizeExtension on BuildContext {
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;
  double get screenShortestSize => MediaQuery.of(this).size.shortestSide;
  double get screenLongestSize => MediaQuery.of(this).size.longestSide;

  double percentWidth(double percent) => screenWidth * percent;
  double percentHeight(double percent) => screenHeight * percent;
}
