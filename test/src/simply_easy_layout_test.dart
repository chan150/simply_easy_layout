// ignore_for_file: prefer_const_constructors
import 'package:simply_easy_layout/simply_easy_layout.dart';
import 'package:test/test.dart';

void main() {
  group(
    'SimplyEasyLayout',
    () {
      test(
        'can be instantiated',
        () {
          expect(
            SimplyEasyLayout(
              screenHeight: 0,
              layoutWidth: 0,
              layoutHeight: 0,
              screenWidth: 0,
            ),
            isNotNull,
          );
        },
      );
    },
  );
}
