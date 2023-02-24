// ignore_for_file: lines_longer_than_80_chars

import 'package:simply_easy_layout/simply_easy_layout.dart';

/// get/set configuration as a factory
class SimplyEasyLayoutFactory {
  /// singleton instance for the easy layout
  factory SimplyEasyLayoutFactory() => _instance;

  SimplyEasyLayoutFactory._internal();

  static final SimplyEasyLayoutFactory _instance = SimplyEasyLayoutFactory._internal();

  /// layout width
  double width = 800;

  /// layout height
  double height = 400;

  /// easyLayout instance
  SimplyEasyLayout? easyLayout;
}
