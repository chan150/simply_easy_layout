// ignore_for_file: public_member_api_docs

import 'dart:math';

import 'package:simply_easy_layout/simply_easy_layout.dart';

/// {@template easy_layout}
/// A Very Good Project created by Very Good CLI.
/// {@endtemplate}
class SimplyEasyLayout {
  /// {@macro easy_layout}
  const SimplyEasyLayout({
    required this.layoutWidth,
    required this.layoutHeight,
    required this.screenWidth,
    required this.screenHeight,
    required this.axis,
  });

  final double layoutWidth;
  final double layoutHeight;

  final double screenWidth;
  final double screenHeight;

  final SimplyEasyLayoutAxis axis;

  double relative(double value) {
    switch (axis) {
      case SimplyEasyLayoutAxis.min:
        return min(screenHeight, screenWidth * layoutHeight / layoutWidth) * value / layoutHeight;
      case SimplyEasyLayoutAxis.horizontal:
        return value * screenWidth / layoutWidth;
      case SimplyEasyLayoutAxis.vertical:
        return value * screenHeight / layoutHeight;
    }
  }

  double atLeast(double value) {
    return max(relative(value), value);
  }
}
