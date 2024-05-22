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
    final easyLayout = SimplyEasyLayout(
      layoutWidth: SimplyEasyLayoutFactory().width,
      layoutHeight: SimplyEasyLayoutFactory().height,
      screenWidth: w,
      screenHeight: h,
    );

    SimplyEasyLayoutFactory().easyLayout = easyLayout;
    return easyLayout;
  }
}

/// Extension for numb type
extension EasyLayoutNumberExtension on num {
  /// [w] returns a sized box having a width of a given number.
  Widget get w => SizedBox(width: toDouble());

  /// [h] returns a sized box having a height of a given number.
  Widget get h => SizedBox(height: toDouble());

  /// [atLeast] returns a relative double
  /// which is fitted in layout at least a given value.
  double get atLeast {
    if (SimplyEasyLayoutFactory().easyLayout == null) return toDouble();
    return SimplyEasyLayoutFactory().easyLayout!.atLeast(toDouble());
  }

  /// [relative] returns a relative double which is fitted in layout.
  double get relative {
    if (SimplyEasyLayoutFactory().easyLayout == null) return toDouble();
    return SimplyEasyLayoutFactory().easyLayout!.relative(toDouble());
  }
}

extension EasyLayoutTupleExtension on (num, num) {
  double get width => this.$1 as double;

  double get height => this.$2 as double;

  /// [box] return a sized box having size itself.
  Widget get box => SizedBox(width: width, height: height);

  /// [atLeast] return a relative size.
  (double, double) get atLeast => (width.atLeast, height.atLeast);

  /// [relative] return a relative size.
  (double, double) get relative => (width.relative, height.relative);

  /// [cover] return a container having size itself.
  /// It can take declarative arguments, such as child and box decoration.
  Widget cover({Key? key, Widget? child, BoxDecoration? decoration}) {
    return Container(
      key: key,
      width: width == 0 ? null : width,
      height: height == 0 ? null : height,
      decoration: decoration,
      child: child,
    );
  }
}

/// Extension for Size type
extension EasyLayoutSizeExtension on Size {
  /// [box] return a sized box having size itself.
  Widget get box => SizedBox(width: width, height: height);

  /// [atLeast] return a relative size.
  Size get atLeast => Size(width.atLeast, height.atLeast);

  /// [relative] return a relative size.
  Size get relative => Size(width.relative, height.relative);

  /// [cover] return a container having size itself.
  /// It can take declarative arguments, such as child and box decoration.
  Widget cover({Key? key, Widget? child, BoxDecoration? decoration}) {
    return Container(
      key: key,
      width: width == 0 ? null : width,
      height: height == 0 ? null : height,
      decoration: decoration,
      child: child,
    );
  }
}
