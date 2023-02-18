import 'package:flutter/material.dart';

extension SpaceBetweenExtension on List<Widget> {
  List<Widget> spaceBetween({double? width, double? height}) {
    return [
      for (int i = 0; i < length; i++) ...[
        if (i > 0) SizedBox(width: width, height: height),
        this[i],
      ],
    ];
  }
}
