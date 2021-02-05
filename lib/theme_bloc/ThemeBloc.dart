import 'dart:async';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import '../Theme_Dark_Light.dart';

class ThemeBloc extends Object {
  //todo to maintain a reference to the last value that
  //todo comes through our stream controller so using below class BehaviorSubject.
  final _themeContrler = BehaviorSubject<ThemeData>();

  /*ThemeBloc() {
    _themeContrler.stream.transform(validateTheme).pipe(_themeContrler);
  }*/

  Stream<ThemeData> get themeData =>
      _themeContrler.stream.transform(validateTheme);

  Function(ThemeData) get getTheme => _themeContrler.sink.add;

  dispose() {
    _themeContrler.close();
  }
}
