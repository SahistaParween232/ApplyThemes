import 'package:applythemes/adaptive.dart';
import 'package:flutter/material.dart';

import 'Theme_Dark_Light.dart';

class ResponsivePage extends StatelessWidget {
  final Widget widget;

  ResponsivePage({this.widget});

  @override
  Widget build(BuildContext context) {
    return _responsiveWidget(context);
  }

  Widget _responsiveWidget(context) {
    return SafeArea(
        child: Scaffold(
      appBar: _appBar(context),
      body: _responsiveBodyWidget(context),
    ));
  }

  Widget _responsiveBodyWidget(context) {
    return LayoutBuilder(builder: (context, constraint) {
      return ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: constraint.maxHeight,
          maxWidth: constraint.maxWidth,
        ),
        child: widget,
      );
    });
  }

  Widget _appBar(context) {
    return isDisplayDesktop(context) || isDisplaySmallDesktop(context)
        ? AppBar(
            title: Image.asset(
              'assets/images/vams_logo.png',
              width: 80,
              height: 50,
            ),
            backgroundColor: Colors.white,
            bottom: PreferredSize(
              child: Container(
                color: hexToColorConvert('#04B4A5'),
                height: 4,
              ),
              preferredSize: Size.fromHeight(4.0),
            ),
          )
        : null;
  }
}
