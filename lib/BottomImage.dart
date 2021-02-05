import 'package:flutter/material.dart';

class BottomImage extends StatelessWidget {
  final String imgPath;
  BottomImage({this.imgPath});

  @override
  Widget build(BuildContext context) {
    return ImageIcon(AssetImage(imgPath));
  }
}
