// ignore_for_file: public_member_api_docs

import 'dart:math';

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
  }) : ratio = layoutHeight / layoutWidth;

  final double layoutWidth;
  final double layoutHeight;

  final double screenWidth;
  final double screenHeight;

  final double ratio;

  double relative(double value) {
    final double adjustedHeight = min(screenHeight, screenWidth * ratio);
    return adjustedHeight * value / layoutHeight;
  }
}
