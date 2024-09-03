// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';

extension ScreenExtension on BuildContext {
  double get w => MediaQuery.sizeOf(this).width;
  double get h => MediaQuery.sizeOf(this).height;
}
