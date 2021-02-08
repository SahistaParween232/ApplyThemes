import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:flutter_svg/svg.dart';

import 'BottomImage.dart';

//todo responsive bottom and body widget
Widget bottomWithBodyWidget(context, contentWidget) {
  return Column(
    children: [
      contentWidget,
      Expanded(
          child: Align(
        child: Stack(
          children: [
            /*Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: BottomImage(
                  imgPath: 'assets/images/safeguard_logo.png',
                ),
              ),
            ),*/
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 10, 10),
              child: Align(
                alignment: Alignment.bottomRight,
                child: BottomImage(
                  imgPath: 'assets/images/powered_by_vams.png',
                ),
              ),
            ),
            //supports for android/ios not for web
            Padding(
              padding: EdgeInsets.all(10),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: SvgPicture.asset(
                  'assets/images/logo.svg',
                ),
              ),
            ),
            /*Padding(padding: EdgeInsets.all(10),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: SvgPicture.asset(
          'assets/images/power.svg',
        ),
      ),)*/
          ],
        ),
      ))
    ],
  );
}
