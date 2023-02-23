import 'package:flutter/material.dart';
import 'package:simply_easy_layout/simply_easy_layout.dart';

/// extension of flutter to help us make easy layout object
extension SimplyEasyLayoutExtension on BuildContext {
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
