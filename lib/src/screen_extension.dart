// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';

extension ScreenExtension on BuildContext {
  double get w => MediaQuery.of(this).size.width;
  double get h => MediaQuery.of(this).size.height;
}
