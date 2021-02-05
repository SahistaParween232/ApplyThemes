import 'package:applythemes/adaptive.dart';
import 'package:flutter/material.dart';

class ResponsivePage extends StatelessWidget {
  final Widget widget;

  ResponsivePage({this.widget});

  @override
  Widget build(BuildContext context) {
    return _responsiveWidget(context);
  }

  Widget _responsiveWidget(context) {
    return Scaffold(
      appBar: _appBar(context),
      body: _responsiveBodyWidget(context),
    );
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
    return isDisplayDesktop(context) == true
        ? AppBar(
            title: Text(
              'VAMS 3.1',
              style: TextStyle(color: Colors.cyan),
            ),
            backgroundColor: Colors.white,
            bottom: PreferredSize(
              child: Container(
                color: Colors.cyan,
                height: 4,
              ),
              preferredSize: Size.fromHeight(4.0),
            ),
          )
        : null;
  }
}
