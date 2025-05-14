import 'package:flutter/material.dart';

class ResponsiveUi {
  static const EdgeInsets pagePadding1 = EdgeInsets.symmetric(
        horizontal: 35,
        vertical: 60,
      ),
      pagePadding2 = EdgeInsets.symmetric(horizontal: 20, vertical: 10);

  static Size size(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return size;
  }

  static bool isDesktop(BuildContext context) {
    bool value = MediaQuery.of(context).size.width >= 600;
    return value;
  }

  static bool isMobile(BuildContext context) {
    bool value = MediaQuery.of(context).size.width < 600;
    return value;
  }
}
