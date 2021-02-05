import 'package:applythemes/ResponsiveBodyWidget.dart';
import 'package:applythemes/theme_bloc/ThemeProvider.dart';
import 'package:flutter/material.dart';
import 'ResponsivePage.dart';
import 'home.dart';

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
        child: HomePage());
  }
}
