import 'dart:math';

import 'package:flutter/material.dart';

class CustomCurve extends Curve {
  const CustomCurve();
  @override
  double transformInternal(double t) {
    double fx = sin(2.5 * pi * t);
    return fx;
  }
}
