import 'package:flutter/material.dart';

class ResponsiveText extends StatelessWidget {
  const ResponsiveText({super.key, required this.actualText, this.textStyle});
  final String actualText;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 100,
          child: FittedBox(
            child: Wrap(children: [Text(actualText, style: textStyle!)]),
          ),
        ),
      ],
    );
  }
}
