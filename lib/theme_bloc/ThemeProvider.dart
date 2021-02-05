import 'package:flutter/material.dart';
import 'ThemeBloc.dart';

class ThemeProvider extends InheritedWidget {
  final ThemeBloc themebloc;

  ThemeProvider({Key key, Widget child}) :
        themebloc = ThemeBloc(),
        super(key: key, child: child);

  @override
  bool updateShouldNotify(_) => true;

  static ThemeBloc of(BuildContext context) =>
      (context.dependOnInheritedWidgetOfExactType<ThemeProvider>()).themebloc;
}
