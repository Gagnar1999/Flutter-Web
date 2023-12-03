import 'dart:math';

import 'package:flutter/material.dart';

class ChessPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    print(size);

    var height = size.height / 8;
    var width = size.width / 8;
    var side = max(height, width);
    var sideBy2 = side/2;
    print(side);
    print(size.width);
    var blackPaint = Paint()
      ..color = Colors.transparent

    ;
    var whitePaint = Paint()..color = Colors.black54..blendMode = BlendMode.darken;
    for (int i = 0; i <8; i++) {
      for (int j = 0; j <8; j++) {
        print(Offset((side * j)+sideBy2, (side * i)+sideBy2));
        canvas.drawRect(Rect.fromCenter(center: Offset((side * j)+sideBy2, (side * i)+sideBy2), width: side, height: side), (i + j) % 2 == 0 ? blackPaint : whitePaint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
