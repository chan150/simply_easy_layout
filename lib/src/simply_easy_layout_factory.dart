// ignore_for_file: lines_longer_than_80_chars

/// get and set configuration
class SimplyEasyLayoutFactory {
  /// singleton object for the easy layout
  factory SimplyEasyLayoutFactory() => _instance;

  SimplyEasyLayoutFactory._internal();

  static final SimplyEasyLayoutFactory _instance = SimplyEasyLayoutFactory._internal();

  /// layout width
  double width = 800;

  /// layout height
  double height = 400;
}
