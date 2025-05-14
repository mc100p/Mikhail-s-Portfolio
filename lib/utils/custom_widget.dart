import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ResponsiveText extends StatelessWidget {
  final String actualText;
  final TextStyle? textStyle;
  final int maxLines;

  const ResponsiveText({
    super.key,
    required this.actualText,
    this.textStyle,
    this.maxLines = 3, // You can adjust this as needed
  });

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      actualText,
      style: textStyle ?? Theme.of(context).textTheme.bodyLarge,
      maxLines: maxLines,
      minFontSize: 12,
      overflow: TextOverflow.ellipsis,
    );
  }
}
