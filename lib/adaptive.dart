import 'package:adaptive_breakpoints/adaptive_breakpoints.dart';
import 'package:flutter/material.dart';

//todo Returns a boolean value whether the window is considered medium or large size.
//todo Used to build adaptive and responsive layouts.
bool isDisplayDesktop(BuildContext context) =>
    getWindowType(context) >= AdaptiveWindowType.medium;

//todo Returns boolean value whether the window is considered medium size.
//todo Used to build adaptive and responsive layouts.
bool isDisplaySmallDesktop(BuildContext context) =>
    getWindowType(context) == AdaptiveWindowType.small;
