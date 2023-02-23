import 'package:flutter/material.dart';
import 'package:simply_easy_layout/simply_easy_layout.dart';

/// Extension to help us make an easy layout object
extension EasyLayoutExtension on BuildContext {
  /// [layout] makes an object for the easy layout.
  /// [SimplyEasyLayout] contains layoutWidth, layoutHeight, screenWidth,
  /// and screenHeight.
  ///
  /// Both layoutWidth and layoutHeight is obtained from the factory.
  /// The value of layout can be changed via [SimplyEasyLayoutFactory].
  ///
  /// Both screenWidth and screenHeight is obtained from BuildContext.
  SimplyEasyLayout get layout {
    return SimplyEasyLayout(
      layoutWidth: SimplyEasyLayoutFactory().width,
      layoutHeight: SimplyEasyLayoutFactory().height,
      screenWidth: MediaQuery.of(this).size.width,
      screenHeight: MediaQuery.of(this).size.height,
    );
  }
}

/// Extension to help us make sized box.
extension EasyLayoutNumtoSizedBox on num {
  /// [w] returns a sized box having a width of a given number.
  SizedBox get w => SizedBox(width: toDouble());

  /// [h] returns a sized box having a height of a given number.
  SizedBox get h => SizedBox(height: toDouble());
}
