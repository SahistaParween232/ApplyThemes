import 'package:flutter/material.dart';

import 'BottomImage.dart';
import 'ResponsivePage.dart';

//todo responsive bottom and body widget
Widget bottomWithBodyWidget(context, contentWidget) {
  return Stack(
    children: [
      contentWidget,
      Align(
        alignment: Alignment.bottomLeft,
        child: BottomImage(
          imgPath: 'assets/images/logo.png',
        ),
      ),
      Align(
        alignment: Alignment.bottomRight,
        child: BottomImage(
          imgPath: 'assets/images/logo.png',
        ),
      ),
    ],
  );
}

